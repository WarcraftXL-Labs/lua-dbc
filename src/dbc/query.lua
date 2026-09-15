--[[
    query.lua
    Provides a fluent, LINQ-style query engine for filtering, projecting, sorting,
    and aggregating collections of DBC records and arbitrary Lua arrays.
]]

local table_insert = table.insert
local table_sort = table.sort

---@class dbc.Query<T>
---Fluent LINQ query builder.
---@field private _source `T`[] Array of elements or generator function.
---@field private _steps table Sequence of transformations to apply.
local Query = {}
Query.__index = Query

---Creates a new Query instance from an array, generator, or DbcTable.
---@generic T
---@param source `T`[]|fun():`T`|table Source collection or generator function.
---@return dbc.Query<T> query
function Query.new(source)
    local self = setmetatable({}, Query)
    
    if type(source) == "table" and source.GetAllRows then
        self._source = source:GetAllRows()
    elseif type(source) == "table" then
        self._source = source
    elseif type(source) == "function" then
        local items = {}
        for item in source do
            table_insert(items, item)
        end
        self._source = items
    else
        self._source = {}
    end

    self._steps = {}
    return self
end

---Clones the current query with a new step appended.
---@generic T
---@param step table Pipeline step description.
---@return dbc.Query<T> next_query
function Query:_cloneWithStep(step)
    local next_q = setmetatable({}, Query)
    next_q._source = self._source
    next_q._steps = {}
    for i = 1, #self._steps do
        next_q._steps[i] = self._steps[i]
    end
    table_insert(next_q._steps, step)
    return next_q
end

--------------------------------------------------------------------------------
-- Intermediate Operators (Chainable)
--------------------------------------------------------------------------------

---Filters elements based on a predicate function.
---@generic T
---@param predicate fun(item: `T`, index: integer): boolean Filter condition.
---@return dbc.Query<T> query
function Query:Where(predicate)
    if type(predicate) ~= "function" then
        error("Query:Where expects a predicate function")
    end
    return self:_cloneWithStep({ type = "where", fn = predicate })
end

---Transforms each element into a new form.
---@generic T
---@generic R
---@param selector fun(item: `T`, index: integer): `R` Transformation function.
---@return dbc.Query<R> query
function Query:Select(selector)
    if type(selector) ~= "function" then
        error("Query:Select expects a selector function")
    end
    return self:_cloneWithStep({ type = "select", fn = selector })
end

---Sorts elements in ascending order according to a key selector function.
---@generic T
---@param key_selector fun(item: `T`): any Function extracting the comparison key.
---@param descending boolean|nil True for descending order.
---@return dbc.Query<T> query
function Query:OrderBy(key_selector, descending)
    return self:_cloneWithStep({
        type = "order",
        fn = key_selector or function(x) return x end,
        desc = (descending == true)
    })
end

---Sorts elements in descending order according to a key selector function.
---@generic T
---@param key_selector fun(item: `T`): any Function extracting the comparison key.
---@return dbc.Query<T> query
function Query:OrderByDescending(key_selector)
    return self:OrderBy(key_selector, true)
end

---Bypasses a specified number of elements in the sequence.
---@generic T
---@param count integer Number of elements to skip.
---@return dbc.Query<T> query
function Query:Skip(count)
    local n = math.max(tonumber(count) or 0, 0)
    return self:_cloneWithStep({ type = "skip", count = n })
end

---Returns a specified number of contiguous elements from the start.
---@generic T
---@param count integer Number of elements to take.
---@return dbc.Query<T> query
function Query:Take(count)
    local n = math.max(tonumber(count) or 0, 0)
    return self:_cloneWithStep({ type = "take", count = n })
end

---Returns distinct elements using an optional key selector.
---@generic T
---@param key_selector fun(item: `T`): any|nil Optional function extracting distinct key.
---@return dbc.Query<T> query
function Query:Distinct(key_selector)
    return self:_cloneWithStep({ type = "distinct", fn = key_selector })
end

--------------------------------------------------------------------------------
-- Pipeline Execution Engine
--------------------------------------------------------------------------------

---Materializes the pipeline results into an array.
---@generic T
---@return `T`[] items Array of processed items.
function Query:ToList()
    local current = {}
    local source = self._source

    -- Initial load
    for i = 1, #source do
        current[i] = source[i]
    end

    -- Process each step in sequence
    for _, step in ipairs(self._steps) do
        local stype = step.type
        if stype == "where" then
            local next_list = {}
            local fn = step.fn
            local idx = 1
            for i = 1, #current do
                local item = current[i]
                if fn(item, idx) then
                    table_insert(next_list, item)
                    idx = idx + 1
                end
            end
            current = next_list

        elseif stype == "select" then
            local next_list = {}
            local fn = step.fn
            for i = 1, #current do
                next_list[i] = fn(current[i], i)
            end
            current = next_list

        elseif stype == "order" then
            local fn = step.fn
            local desc = step.desc
            table_sort(current, function(a, b)
                local ka = fn(a)
                local kb = fn(b)
                if ka == nil and kb ~= nil then return not desc end
                if ka ~= nil and kb == nil then return desc end
                if ka == kb then return false end
                if desc then
                    return ka > kb
                else
                    return ka < kb
                end
            end)

        elseif stype == "skip" then
            local next_list = {}
            local skip_count = step.count
            for i = skip_count + 1, #current do
                table_insert(next_list, current[i])
            end
            current = next_list

        elseif stype == "take" then
            local next_list = {}
            local take_count = math.min(step.count, #current)
            for i = 1, take_count do
                table_insert(next_list, current[i])
            end
            current = next_list

        elseif stype == "distinct" then
            local next_list = {}
            local seen = {}
            local fn = step.fn
            for i = 1, #current do
                local item = current[i]
                local key = fn and fn(item) or item
                if not seen[key] then
                    seen[key] = true
                    table_insert(next_list, item)
                end
            end
            current = next_list
        end
    end

    return current
end

--------------------------------------------------------------------------------
-- Terminal Operators (Aggregation & Lookup)
--------------------------------------------------------------------------------

---Returns the first element of the sequence matching an optional predicate.
---Raises an error if no element satisfies the condition.
---@generic T
---@param predicate fun(item: `T`): boolean|nil Optional filter.
---@return `T` item
function Query:First(predicate)
    local q = predicate and self:Where(predicate) or self
    local list = q:Take(1):ToList()
    if #list == 0 then
        error("Query:First found no matching element")
    end
    return list[1]
end

---Returns the first element of the sequence or a default value if not found.
---@generic T
---@generic D
---@param predicate fun(item: `T`): boolean|nil Optional filter.
---@param default_value `D` Value to return if no element is found.
---@return `T`|`D` item_or_default
function Query:FirstOrDefault(predicate, default_value)
    local q = predicate and self:Where(predicate) or self
    local list = q:Take(1):ToList()
    if #list == 0 then
        return default_value
    end
    return list[1]
end

---Returns the last element of the sequence matching an optional predicate.
---Raises an error if no element satisfies the condition.
---@generic T
---@param predicate fun(item: `T`): boolean|nil Optional filter.
---@return `T` item
function Query:Last(predicate)
    local q = predicate and self:Where(predicate) or self
    local list = q:ToList()
    if #list == 0 then
        error("Query:Last found no matching element")
    end
    return list[#list]
end

---Returns the last element of the sequence or a default value if not found.
---@generic T
---@generic D
---@param predicate fun(item: `T`): boolean|nil Optional filter.
---@param default_value `D` Value to return if no element is found.
---@return `T`|`D` item_or_default
function Query:LastOrDefault(predicate, default_value)
    local q = predicate and self:Where(predicate) or self
    local list = q:ToList()
    if #list == 0 then
        return default_value
    end
    return list[#list]
end

---Returns the only element of the sequence, and raises an error if 0 or more than 1 exist.
---@generic T
---@param predicate fun(item: `T`): boolean|nil Optional filter.
---@return `T` item
function Query:Single(predicate)
    local q = predicate and self:Where(predicate) or self
    local list = q:Take(2):ToList()
    if #list == 0 then
        error("Query:Single found no matching element")
    elseif #list > 1 then
        error("Query:Single found more than one matching element")
    end
    return list[1]
end

---Determines whether any element exists or satisfies a condition.
---@generic T
---@param predicate fun(item: `T`): boolean|nil Optional condition.
---@return boolean has_any
function Query:Any(predicate)
    local q = predicate and self:Where(predicate) or self
    local list = q:Take(1):ToList()
    return #list > 0
end

---Determines whether all elements satisfy a condition.
---@generic T
---@param predicate fun(item: `T`): boolean Condition to test.
---@return boolean all_match
function Query:All(predicate)
    if type(predicate) ~= "function" then
        error("Query:All expects a predicate function")
    end
    local list = self:ToList()
    for i = 1, #list do
        if not predicate(list[i]) then
            return false
        end
    end
    return true
end

---Counts elements in the sequence matching an optional condition.
---@generic T
---@param predicate fun(item: `T`): boolean|nil Optional condition.
---@return integer count
function Query:Count(predicate)
    local q = predicate and self:Where(predicate) or self
    local list = q:ToList()
    return #list
end

---Computes the sum of sequence values given a numeric selector.
---@generic T
---@param selector fun(item: `T`): number Function returning numeric value.
---@return number sum
function Query:Sum(selector)
    local fn = selector or function(x) return tonumber(x) or 0 end
    local list = self:ToList()
    local sum = 0
    for i = 1, #list do
        sum = sum + (fn(list[i]) or 0)
    end
    return sum
end

---Computes the average of sequence values given a numeric selector.
---@generic T
---@param selector fun(item: `T`): number Function returning numeric value.
---@return number average
function Query:Average(selector)
    local list = self:ToList()
    if #list == 0 then
        error("Query:Average cannot compute average of empty collection")
    end
    return self:Sum(selector) / #list
end

---Returns the minimum value according to an optional selector.
---@generic T
---@param selector fun(item: `T`): any|nil Optional selector.
---@return any min_value
function Query:Min(selector)
    local fn = selector or function(x) return x end
    local list = self:ToList()
    if #list == 0 then return nil end
    local min_val = fn(list[1])
    for i = 2, #list do
        local val = fn(list[i])
        if val < min_val then
            min_val = val
        end
    end
    return min_val
end

---Returns the maximum value according to an optional selector.
---@generic T
---@param selector fun(item: `T`): any|nil Optional selector.
---@return any max_value
function Query:Max(selector)
    local fn = selector or function(x) return x end
    local list = self:ToList()
    if #list == 0 then return nil end
    local max_val = fn(list[1])
    for i = 2, #list do
        local val = fn(list[i])
        if val > max_val then
            max_val = val
        end
    end
    return max_val
end

---Checks if a specific value is contained within the sequence.
---@param target any Value to look for.
---@return boolean found
function Query:Contains(target)
    local list = self:ToList()
    for i = 1, #list do
        if list[i] == target then
            return true
        end
    end
    return false
end

---Executes an action for each element in the sequence.
---@generic T
---@param action fun(item: `T`, index: integer) Action to execute.
---@return dbc.Query<T> self For fluent chaining.
function Query:ForEach(action)
    local list = self:ToList()
    for i = 1, #list do
        action(list[i], i)
    end
    return self
end

---Projects the sequence into a dictionary table.
---@generic T
---@generic K
---@generic V
---@param key_selector fun(item: `T`): `K` Function returning the key.
---@param value_selector fun(item: `T`): `V`|nil Optional function returning the value.
---@return table<`K`, `V`> dictionary
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

---Groups elements into bucket tables based on a key selector.
---@generic T
---@generic K
---@param key_selector fun(item: `T`): `K` Function returning the grouping key.
---@return { key: `K`, items: `T`[] }[] groups
function Query:GroupBy(key_selector)
    local groups_by_key = {}
    local groups_order = {}
    local list = self:ToList()

    for i = 1, #list do
        local item = list[i]
        local k = key_selector(item)
        if not groups_by_key[k] then
            local g = { key = k, items = {} }
            groups_by_key[k] = g
            table_insert(groups_order, g)
        end
        table_insert(groups_by_key[k].items, item)
    end

    return groups_order
end

-- Allow callable syntax: Query(source)
setmetatable(Query, {
    __call = function(_, source)
        return Query.new(source)
    end
})

return {
    Query = Query,
    query = function(source) return Query.new(source) end,
}
