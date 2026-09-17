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
    elseif source ~= nil then
        self._source = source
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

local function make_source_reader(source)
    if type(source) == "table" and source.GetRowByIndex and source.Count then
        local count = source:Count()
        return function(idx)
            if idx <= count then
                return source:GetRowByIndex(idx)
            end
            return nil
        end, count
    elseif type(source) == "table" and not source.GetRowByIndex then
        local count = #source
        return function(idx)
            if idx <= count then
                return source[idx]
            end
            return nil
        end, count
    elseif type(source) == "function" then
        local cache = {}
        local exhausted = false
        return function(idx)
            if idx <= #cache then
                return cache[idx]
            end
            if exhausted then
                return nil
            end
            while #cache < idx do
                local item = source()
                if item == nil then
                    exhausted = true
                    return nil
                end
                cache[#cache + 1] = item
            end
            return cache[idx]
        end, nil
    else
        return function(idx) return nil end, 0
    end
end

local function execute_stage(reader, steps)
    local n_steps = #steps
    local step_states = {}
    for s = 1, n_steps do
        local stype = steps[s].type
        if stype == "skip" then
            step_states[s] = { skipped = 0 }
        elseif stype == "take" then
            step_states[s] = { taken = 0 }
        elseif stype == "distinct" then
            step_states[s] = { seen = {} }
        elseif stype == "where" or stype == "select" then
            step_states[s] = { idx = 1 }
        end
    end

    local result = {}
    local src_idx = 1

    -- Short-circuit check: if any take has count <= 0, return immediately
    for s = 1, n_steps do
        if steps[s].type == "take" and steps[s].count <= 0 then
            return result
        end
    end

    while true do
        local item = reader(src_idx)
        if item == nil then
            break
        end
        src_idx = src_idx + 1

        local passed = true
        local should_terminate = false

        for s = 1, n_steps do
            local step = steps[s]
            local stype = step.type
            local state = step_states[s]

            if stype == "where" then
                if not step.fn(item, state.idx) then
                    passed = false
                    break
                end
                state.idx = state.idx + 1

            elseif stype == "select" then
                item = step.fn(item, state.idx)
                state.idx = state.idx + 1

            elseif stype == "skip" then
                if state.skipped < step.count then
                    state.skipped = state.skipped + 1
                    passed = false
                    break
                end

            elseif stype == "take" then
                if state.taken >= step.count then
                    return result
                end
                state.taken = state.taken + 1
                if state.taken >= step.count then
                    should_terminate = true
                end

            elseif stype == "distinct" then
                local key = step.fn and step.fn(item) or item
                if state.seen[key] then
                    passed = false
                    break
                else
                    state.seen[key] = true
                end
            end
        end

        if passed then
            result[#result + 1] = item
        end

        if should_terminate then
            return result
        end
    end

    return result
end

local function execute_pipeline(reader, steps)
    local order_indices = {}
    for i = 1, #steps do
        if steps[i].type == "order" then
            order_indices[#order_indices + 1] = i
        end
    end

    if #order_indices == 0 then
        return execute_stage(reader, steps)
    end

    local current_reader = reader
    local prev_idx = 1

    for o = 1, #order_indices do
        local order_idx = order_indices[o]
        local stage_steps = {}
        for s = prev_idx, order_idx - 1 do
            stage_steps[#stage_steps + 1] = steps[s]
        end

        local stage_result = execute_stage(current_reader, stage_steps)
        local order_step = steps[order_idx]
        local fn = order_step.fn
        local desc = order_step.desc
        table_sort(stage_result, function(a, b)
            local ka, kb = fn(a), fn(b)
            if ka == nil and kb ~= nil then return not desc end
            if ka ~= nil and kb == nil then return desc end
            if ka == kb then return false end
            if desc then return ka > kb else return ka < kb end
        end)

        local arr_count = #stage_result
        current_reader = function(idx)
            if idx <= arr_count then
                return stage_result[idx]
            end
            return nil
        end
        prev_idx = order_idx + 1
    end

    local remaining_steps = {}
    for s = prev_idx, #steps do
        remaining_steps[#remaining_steps + 1] = steps[s]
    end

    return execute_stage(current_reader, remaining_steps)
end

---Materializes the pipeline into an array.
---@generic T
---@return `T`[]
function Query:ToList()
    if #self._steps == 0 and type(self._source) == "table" and not self._source.GetRowByIndex then
        local src = self._source
        local copy = {}
        for i = 1, #src do copy[i] = src[i] end
        return copy
    end

    local reader = make_source_reader(self._source)
    return execute_pipeline(reader, self._steps)
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
    return not self:Any(function(item) return not predicate(item) end)
end

---@generic T
---@param predicate fun(item: `T`): boolean|nil
---@return integer
function Query:Count(predicate)
    if predicate then
        return #self:Where(predicate):ToList()
    end
    if #self._steps == 0 then
        if type(self._source) == "table" and self._source.Count then
            return self._source:Count()
        elseif type(self._source) == "table" and not self._source.GetRowByIndex then
            return #self._source
        end
    end
    return #self:ToList()
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
    return self:Any(function(item) return item == target end)
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