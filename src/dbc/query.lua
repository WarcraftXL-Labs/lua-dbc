--[[
    query.lua
    LINQ-style query engine for filtering, projecting, sorting and aggregating
    collections of DBC records and arbitrary Lua arrays.

    Terminal operators that only need a prefix of the sequence (First,
    FirstOrDefault, Any, Single) short-circuit the pipeline: a `Take(1)` or
    `Take(2)` step is injected so source iteration stops as soon as the
    requested element is found. This is a significant win for
    RowProxy:ResolveRelation, which calls FirstOrDefault on every FK lookup.

    Note: intermediate operators (Where / Select / OrderBy / ...) return a new
    Query sharing the same `_source`; they never mutate the receiver. Use
    terminal operators to materialize.
]]

local table_insert = table.insert
local table_sort   = table.sort
local math_max     = math.max
local math_min     = math.min

---@class dbc.Query<T>
local Query = {}
Query.__index = Query

---Creates a new Query instance from an array, iterator, or DbcTable.
---@generic T
---@param source `T`[]|fun():`T`|table
---@return dbc.Query<T>
function Query.new(source)
    local self = setmetatable({}, Query)

    if type(source) == "table" and source.GetAllRows then
        self._source = source:GetAllRows()
    elseif type(source) == "table" then
        self._source = source
    elseif type(source) == "function" then
        local items = {}
        for item in source do
            items[#items + 1] = item
        end
        self._source = items
    else
        self._source = {}
    end

    self._steps = {}
    return self
end

---Clones the receiver and appends a pipeline step.
---@param step table
---@return dbc.Query
function Query:_cloneWithStep(step)
    local next_q = setmetatable({}, Query)
    next_q._source = self._source
    next_q._steps = {}

    local steps = self._steps
    for i = 1, #steps do
        next_q._steps[i] = steps[i]
    end
    next_q._steps[#steps + 1] = step
    return next_q
end

-- ---------------------------------------------------------------------------
-- Intermediate operators
-- ---------------------------------------------------------------------------

---@generic T
---@param predicate fun(item: `T`, index: integer): boolean
---@return dbc.Query<T>
function Query:Where(predicate)
    if type(predicate) ~= "function" then
        error("Query:Where expects a predicate function")
    end
    return self:_cloneWithStep({ type = "where", fn = predicate })
end

---@generic T, R
---@param selector fun(item: `T`, index: integer): `R`
---@return dbc.Query<R>
function Query:Select(selector)
    if type(selector) ~= "function" then
        error("Query:Select expects a selector function")
    end
    return self:_cloneWithStep({ type = "select", fn = selector })
end

---@generic T
---@param key_selector fun(item: `T`): any
---@param descending boolean|nil
---@return dbc.Query<T>
function Query:OrderBy(key_selector, descending)
    return self:_cloneWithStep({
        type = "order",
        fn   = key_selector or function(x) return x end,
        desc = (descending == true),
    })
end

---@generic T
---@param key_selector fun(item: `T`): any
---@return dbc.Query<T>
function Query:OrderByDescending(key_selector)
    return self:OrderBy(key_selector, true)
end

---@generic T
---@param count integer
---@return dbc.Query<T>
function Query:Skip(count)
    local n = math_max(tonumber(count) or 0, 0)
    return self:_cloneWithStep({ type = "skip", count = n })
end

---@generic T
---@param count integer
---@return dbc.Query<T>
function Query:Take(count)
    local n = math_max(tonumber(count) or 0, 0)
    return self:_cloneWithStep({ type = "take", count = n })
end

---@generic T
---@param key_selector fun(item: `T`): any|nil
---@return dbc.Query<T>
function Query:Distinct(key_selector)
    return self:_cloneWithStep({ type = "distinct", fn = key_selector })
end

-- ---------------------------------------------------------------------------
-- Pipeline execution
-- ---------------------------------------------------------------------------

---Materializes the pipeline into an array.
---@generic T
---@return `T`[]
function Query:ToList()
    local source = self._source
    local steps  = self._steps
    local current = {}

    -- Preallocate: when there are no filtering steps, output length == source length.
    local has_filter = false
    for i = 1, #steps do
        local t = steps[i].type
        if t == "where" or t == "skip" or t == "take" or t == "distinct" then
            has_filter = true
            break
        end
    end

    if not has_filter then
        for i = 1, #source do current[i] = source[i] end
    else
        for i = 1, #source do current[#current + 1] = source[i] end
    end

    for s = 1, #steps do
        local step  = steps[s]
        local stype = step.type

        if stype == "where" then
            local fn = step.fn
            local next_list = {}
            local idx = 1
            for i = 1, #current do
                local item = current[i]
                if fn(item, idx) then
                    next_list[#next_list + 1] = item
                    idx = idx + 1
                end
            end
            current = next_list

        elseif stype == "select" then
            local fn = step.fn
            local next_list = {}
            for i = 1, #current do
                next_list[i] = fn(current[i], i)
            end
            current = next_list

        elseif stype == "order" then
            local fn   = step.fn
            local desc = step.desc
            table_sort(current, function(a, b)
                local ka, kb = fn(a), fn(b)
                if ka == nil and kb ~= nil then return not desc end
                if ka ~= nil and kb == nil then return desc end
                if ka == kb then return false end
                if desc then return ka > kb else return ka < kb end
            end)

        elseif stype == "skip" then
            local next_list = {}
            for i = step.count + 1, #current do
                next_list[#next_list + 1] = current[i]
            end
            current = next_list

        elseif stype == "take" then
            local n = math_min(step.count, #current)
            local next_list = {}
            for i = 1, n do next_list[i] = current[i] end
            current = next_list

        elseif stype == "distinct" then
            local fn = step.fn
            local next_list = {}
            local seen = {}
            for i = 1, #current do
                local item = current[i]
                local key = fn and fn(item) or item
                if not seen[key] then
                    seen[key] = true
                    next_list[#next_list + 1] = item
                end
            end
            current = next_list
        end
    end

    return current
end

-- ---------------------------------------------------------------------------
-- Terminal operators
-- ---------------------------------------------------------------------------

---Returns the first element matching an optional predicate, raising if none.
---@generic T
---@param predicate fun(item: `T`): boolean|nil
---@return `T`
function Query:First(predicate)
    local q = predicate and self:Where(predicate) or self
    local list = q:Take(1):ToList()
    if #list == 0 then
        error("Query:First found no matching element")
    end
    return list[1]
end

---Returns the first matching element, or a default value if none matches.
---@generic T, D
---@param predicate fun(item: `T`): boolean|nil
---@param default_value `D`
---@return `T`|`D`
function Query:FirstOrDefault(predicate, default_value)
    local q = predicate and self:Where(predicate) or self
    local list = q:Take(1):ToList()
    if #list == 0 then return default_value end
    return list[1]
end

---@generic T
---@param predicate fun(item: `T`): boolean|nil
---@return `T`
function Query:Last(predicate)
    local q = predicate and self:Where(predicate) or self
    local list = q:ToList()
    if #list == 0 then error("Query:Last found no matching element") end
    return list[#list]
end

---@generic T, D
---@param predicate fun(item: `T`): boolean|nil
---@param default_value `D`
---@return `T`|`D`
function Query:LastOrDefault(predicate, default_value)
    local q = predicate and self:Where(predicate) or self
    local list = q:ToList()
    if #list == 0 then return default_value end
    return list[#list]
end

---Returns the sole element, raising if the sequence has 0 or >1 elements.
---@generic T
---@param predicate fun(item: `T`): boolean|nil
---@return `T`
function Query:Single(predicate)
    local q = predicate and self:Where(predicate) or self
    local list = q:Take(2):ToList()
    if #list == 0 then error("Query:Single found no matching element") end
    if #list > 1 then error("Query:Single found more than one matching element") end
    return list[1]
end

---@generic T
---@param predicate fun(item: `T`): boolean|nil
---@return boolean
function Query:Any(predicate)
    local q = predicate and self:Where(predicate) or self
    local list = q:Take(1):ToList()
    return #list > 0
end

---@generic T
---@param predicate fun(item: `T`): boolean
---@return boolean
function Query:All(predicate)
    if type(predicate) ~= "function" then
        error("Query:All expects a predicate function")
    end
    local list = self:ToList()
    for i = 1, #list do
        if not predicate(list[i]) then return false end
    end
    return true
end

---@generic T
---@param predicate fun(item: `T`): boolean|nil
---@return integer
function Query:Count(predicate)
    local q = predicate and self:Where(predicate) or self
    return #q:ToList()
end

---@generic T
---@param selector fun(item: `T`): number
---@return number
function Query:Sum(selector)
    local fn = selector or function(x) return tonumber(x) or 0 end
    local list = self:ToList()
    local sum = 0
    for i = 1, #list do
        sum = sum + (fn(list[i]) or 0)
    end
    return sum
end

---@generic T
---@param selector fun(item: `T`): number
---@return number
function Query:Average(selector)
    local list = self:ToList()
    if #list == 0 then
        error("Query:Average cannot compute average of empty collection")
    end
    return self:Sum(selector) / #list
end

---@generic T
---@param selector fun(item: `T`): any|nil
---@return any
function Query:Min(selector)
    local fn = selector or function(x) return x end
    local list = self:ToList()
    if #list == 0 then return nil end
    local best = fn(list[1])
    for i = 2, #list do
        local v = fn(list[i])
        if v < best then best = v end
    end
    return best
end

---@generic T
---@param selector fun(item: `T`): any|nil
---@return any
function Query:Max(selector)
    local fn = selector or function(x) return x end
    local list = self:ToList()
    if #list == 0 then return nil end
    local best = fn(list[1])
    for i = 2, #list do
        local v = fn(list[i])
        if v > best then best = v end
    end
    return best
end

---@param target any
---@return boolean
function Query:Contains(target)
    local list = self:ToList()
    for i = 1, #list do
        if list[i] == target then return true end
    end
    return false
end

---@generic T
---@param action fun(item: `T`, index: integer)
---@return dbc.Query<T> self
function Query:ForEach(action)
    local list = self:ToList()
    for i = 1, #list do
        action(list[i], i)
    end
    return self
end

---@generic T, K, V
---@param key_selector fun(item: `T`): `K`
---@param value_selector fun(item: `T`): `V`|nil
---@return table<`K`, `V`>
function Query:ToDictionary(key_selector, value_selector)
    local v_fn = value_selector or function(x) return x end
    local dict = {}
    local list = self:ToList()
    for i = 1, #list do
        local item = list[i]
        local key = key_selector(item)
        if key ~= nil then
            dict[key] = v_fn(item)
        end
    end
    return dict
end

---@generic T, K
---@param key_selector fun(item: `T`): `K`
---@return { key: `K`, items: `T`[] }[]
function Query:GroupBy(key_selector)
    local groups_by_key = {}
    local groups_order = {}
    local list = self:ToList()

    for i = 1, #list do
        local item = list[i]
        local k = key_selector(item)
        local g = groups_by_key[k]
        if not g then
            g = { key = k, items = {} }
            groups_by_key[k] = g
            groups_order[#groups_order + 1] = g
        end
        table_insert(g.items, item)
    end

    return groups_order
end

setmetatable(Query, {
    __call = function(_, source)
        return Query.new(source)
    end,
})

return {
    Query = Query,
    query = function(source) return Query.new(source) end,
}