--[[
    tools/json_pretty.lua
    Unified JSON interface on top of lua-cjson with pretty-printing support.

    lua-cjson does not expose native pretty-printing, so this module builds a
    minimal recursive pretty-printer on top of cjson.encode. Object keys are
    sorted alphabetically to guarantee stable, diff-friendly output.

    Public API:
        json_pretty.backend_name()       -> "lua-cjson"
        json_pretty.decode(str)          -> Lua value
        json_pretty.encode(value, pretty)-> string

    Both cjson.encode and the pretty wrapper handle:
        - Lua nil              -> JSON null
        - Lua boolean          -> JSON true/false
        - Lua number           -> JSON number (integer if lossless)
        - Lua string           -> JSON string (properly escaped by cjson)
        - Lua table (dense)    -> JSON array
        - Lua table (keyed)    -> JSON object (keys sorted alphabetically)
]]

local cjson = require("cjson")

local json_pretty = {}

-- ---------------------------------------------------------------------------
-- cjson global configuration
-- ---------------------------------------------------------------------------

-- Preserve empty Lua arrays as `[]` instead of `{}`.
-- Without this, cjson cannot distinguish an empty array from an empty object,
-- and always emits `{}`.
cjson.encode_sparse_array(true, 0, 0)

-- Do not keep cjson's internal encode buffer between calls.
-- This avoids growing memory and stale data across successive encodes.
cjson.encode_keep_buffer(false)

-- ---------------------------------------------------------------------------
-- Public API
-- ---------------------------------------------------------------------------

--- Returns the name of the JSON backend in use.
--- Useful for diagnostics/logging at tool startup.
--- @return string
function json_pretty.backend_name()
    return "lua-cjson"
end

--- Decodes a JSON string into a Lua value.
--- @param s string
--- @return any
function json_pretty.decode(s)
    return cjson.decode(s)
end

--- Encodes a Lua value into a JSON string.
--- @param value any
--- @param pretty boolean|nil When true, output is indented with 2 spaces.
--- @return string
function json_pretty.encode(value, pretty)
    if not pretty then
        return cjson.encode(value)
    end
    return json_pretty._encode_pretty(value, 0)
end

-- ---------------------------------------------------------------------------
-- Pretty-printer
-- ---------------------------------------------------------------------------

--- Recursively pretty-prints a Lua value.
---
--- Strategy:
---   - Scalars (string/number/boolean/nil) are delegated to cjson.encode so
---     that string escaping (quotes, backslashes, control chars, unicode) is
---     handled by the C extension exactly as it would be in compact mode.
---   - Tables are classified as array or object using a strict rule: an array
---     has only numeric keys, all of them integers >= 1, and they are dense
---     (no holes between 1 and #t).
---   - Objects have their keys sorted alphabetically. This makes the generated
---     files stable across runs and produces clean git diffs.
---
--- @param value any
--- @param depth integer Current recursion depth (used for indentation).
--- @return string
function json_pretty._encode_pretty(value, depth)
    local indent      = string.rep("  ", depth)
    local next_indent = string.rep("  ", depth + 1)
    local t           = type(value)

    -- Scalars: delegate to cjson for correct escaping.
    if t ~= "table" then
        return cjson.encode(value)
    end

    -- Classify the table as array or object.
    local is_array = true
    local n = 0
    for k in pairs(value) do
        n = n + 1
        if type(k) ~= "number" or k < 1 or k ~= math.floor(k) then
            is_array = false
            break
        end
    end
    -- Reject sparse arrays (holes between 1 and #value).
    if is_array and n ~= #value then
        is_array = false
    end

    if is_array then
        return json_pretty._encode_array(value, depth, indent, next_indent)
    else
        return json_pretty._encode_object(value, depth, indent, next_indent)
    end
end

--- Pretty-prints an array (dense numeric table).
--- Empty arrays are rendered on a single line: `[]`.
--- @param value table
--- @param depth integer
--- @param indent string
--- @param next_indent string
--- @return string
function json_pretty._encode_array(value, depth, indent, next_indent)
    if #value == 0 then
        return "[]"
    end

    local parts = {}
    for i = 1, #value do
        parts[i] = next_indent .. json_pretty._encode_pretty(value[i], depth + 1)
    end

    return "[\n" .. table.concat(parts, ",\n") .. "\n" .. indent .. "]"
end

--- Pretty-prints an object (keyed table).
--- Only string keys are considered (numeric keys other than 1..n are ignored,
--- matching cjson's behavior). Keys are sorted alphabetically for stable output.
--- Empty objects are rendered on a single line: `{}`.
--- @param value table
--- @param depth integer
--- @param indent string
--- @param next_indent string
--- @return string
function json_pretty._encode_object(value, depth, indent, next_indent)
    -- Collect string keys and sort them.
    local keys = {}
    for k in pairs(value) do
        if type(k) == "string" then
            keys[#keys + 1] = k
        end
    end
    table.sort(keys)

    if #keys == 0 then
        return "{}"
    end

    local parts = {}
    for i = 1, #keys do
        local k = keys[i]

        -- Escape the key through cjson (handles quotes, backslashes, etc.).
        local key_json = cjson.encode(k)

        -- Recursively pretty-print the value.
        local val_json = json_pretty._encode_pretty(value[k], depth + 1)

        parts[i] = next_indent .. key_json .. ": " .. val_json
    end

    return "{\n" .. table.concat(parts, ",\n") .. "\n" .. indent .. "}"
end

return json_pretty