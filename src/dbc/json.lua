--[[
    json.lua
    Ultra-lightweight, zero-dependency pure Lua JSON parser for lua-dbc.
    Used for reading WoWDBDefs JSON definitions on demand.
]]

local json = {}

local string_sub = string.sub
local string_find = string.find
local string_match = string.match
local tonumber = tonumber
local error = error

local escapes = {
    ['"'] = '"',
    ['\\'] = '\\',
    ['/'] = '/',
    ['b'] = '\b',
    ['f'] = '\f',
    ['n'] = '\n',
    ['r'] = '\r',
    ['t'] = '\t',
}

--- Decodes a JSON string into a Lua table.
--- @param str string JSON string
--- @return any decoded
function json.decode(str)
    local pos = 1
    local len = #str

    local function skip_whitespace()
        while pos <= len do
            local b = string.byte(str, pos)
            if b == 32 or b == 9 or b == 10 or b == 13 then
                pos = pos + 1
            else
                break
            end
        end
    end

    local parse_value

    local function parse_string()
        pos = pos + 1 -- skip opening quote
        local start = pos
        local buf = {}

        while pos <= len do
            local c = string_sub(str, pos, pos)
            if c == '"' then
                local res = string_sub(str, start, pos - 1)
                pos = pos + 1
                if #buf == 0 then
                    return res
                else
                    table.insert(buf, res)
                    return table.concat(buf)
                end
            elseif c == '\\' then
                table.insert(buf, string_sub(str, start, pos - 1))
                pos = pos + 1
                local esc = string_sub(str, pos, pos)
                if esc == 'u' then
                    local hex = string_sub(str, pos + 1, pos + 4)
                    local cp = tonumber(hex, 16) or 0
                    if cp < 128 then
                        table.insert(buf, string.char(cp))
                    else
                        -- simple utf-8 fallback
                        table.insert(buf, "?")
                    end
                    pos = pos + 5
                else
                    table.insert(buf, escapes[esc] or esc)
                    pos = pos + 1
                end
                start = pos
            else
                pos = pos + 1
            end
        end
        error("Unterminated string in JSON")
    end

    local function parse_number()
        local s, e = string_find(str, "^%-?%d+%.?%d*[eE]?[%+%-]?%d*", pos)
        if not s then
            error(string.format("Invalid number near pos %d: %q", pos, string_sub(str, pos, pos + 10)))
        end
        local num_str = string_sub(str, s, e)
        pos = e + 1
        return tonumber(num_str)
    end

    local function parse_array()
        pos = pos + 1 -- skip '['
        local arr = {}
        skip_whitespace()
        if pos <= len and string_sub(str, pos, pos) == ']' then
            pos = pos + 1
            return arr
        end

        local idx = 1
        while pos <= len do
            arr[idx] = parse_value()
            idx = idx + 1
            skip_whitespace()
            local c = string_sub(str, pos, pos)
            if c == ']' then
                pos = pos + 1
                return arr
            elseif c == ',' then
                pos = pos + 1
                skip_whitespace()
            else
                error("Expected ',' or ']' in array at pos " .. pos)
            end
        end
        error("Unterminated array in JSON")
    end

    local function parse_object()
        pos = pos + 1 -- skip '{'
        local obj = {}
        skip_whitespace()
        if pos <= len and string_sub(str, pos, pos) == '}' then
            pos = pos + 1
            return obj
        end

        while pos <= len do
            skip_whitespace()
            if string_sub(str, pos, pos) ~= '"' then
                error("Expected string key in object at pos " .. pos)
            end
            local key = parse_string()
            skip_whitespace()
            if string_sub(str, pos, pos) ~= ':' then
                error("Expected ':' after key in object at pos " .. pos)
            end
            pos = pos + 1
            skip_whitespace()
            obj[key] = parse_value()
            skip_whitespace()
            local c = string_sub(str, pos, pos)
            if c == '}' then
                pos = pos + 1
                return obj
            elseif c == ',' then
                pos = pos + 1
                skip_whitespace()
            else
                error("Expected ',' or '}' in object at pos " .. pos)
            end
        end
        error("Unterminated object in JSON")
    end

    function parse_value()
        skip_whitespace()
        if pos > len then
            error("Unexpected end of JSON input")
        end
        local c = string_sub(str, pos, pos)
        if c == '"' then
            return parse_string()
        elseif c == '{' then
            return parse_object()
        elseif c == '[' then
            return parse_array()
        elseif c == 't' and string_sub(str, pos, pos + 3) == "true" then
            pos = pos + 4
            return true
        elseif c == 'f' and string_sub(str, pos, pos + 4) == "false" then
            pos = pos + 5
            return false
        elseif c == 'n' and string_sub(str, pos, pos + 3) == "null" then
            pos = pos + 4
            return nil
        else
            return parse_number()
        end
    end

    skip_whitespace()
    local result = parse_value()
    return result
end

function json.encode(value, pretty, indent)
    indent = indent or ""
    local next_indent = indent .. "  "

    local function encode_val(v)
        local t = type(v)
        if v == nil then return "null"
        elseif t == "boolean" then return v and "true" or "false"
        elseif t == "number" then
            if v ~= v then return "null" end  -- NaN
            if v == math.huge then return "1e999" end
            if v == -math.huge then return "-1e999" end
            if math.floor(v) == v and math.abs(v) < 1e15 then
                return string.format("%d", v)
            end
            return string.format("%.14g", v)
        elseif t == "string" then
            return '"' .. v:gsub('[%z\1-\31\\"]', function(c)
                if c == '"' then return '\\"'
                elseif c == "\\" then return "\\\\"
                elseif c == "\b" then return "\\b"
                elseif c == "\f" then return "\\f"
                elseif c == "\n" then return "\\n"
                elseif c == "\r" then return "\\r"
                elseif c == "\t" then return "\\t"
                else return string.format("\\u%04x", c:byte())
                end
            end) .. '"'
        elseif t == "table" then
            -- Detect array (dense 1..n) vs object
            local is_array = true
            local n = 0
            for k in pairs(v) do
                n = n + 1
                if type(k) ~= "number" or k < 1 or k ~= math.floor(k) then
                    is_array = false
                    break
                end
            end
            if is_array and n == #v then
                if n == 0 then return "[]" end
                if not pretty then
                    local parts = {}
                    for i = 1, n do parts[i] = encode_val(v[i]) end
                    return "[" .. table.concat(parts, ",") .. "]"
                else
                    local parts = {}
                    for i = 1, n do
                        parts[i] = next_indent .. encode_val(v[i])
                    end
                    return "[\n" .. table.concat(parts, ",\n") .. "\n" .. indent .. "]"
                end
            else
                -- Object: sort keys for determinism
                local keys = {}
                for k in pairs(v) do
                    if type(k) == "string" then
                        table.insert(keys, k)
                    end
                end
                table.sort(keys)

                if #keys == 0 then return "{}" end
                if not pretty then
                    local parts = {}
                    for _, k in ipairs(keys) do
                        parts[#parts+1] = '"' .. k .. '":' .. encode_val(v[k])
                    end
                    return "{" .. table.concat(parts, ",") .. "}"
                else
                    local parts = {}
                    for _, k in ipairs(keys) do
                        parts[#parts+1] = next_indent .. '"' .. k .. '": ' .. encode_val(v[k])
                    end
                    return "{\n" .. table.concat(parts, ",\n") .. "\n" .. indent .. "}"
                end
            end
        end
        return "null"
    end

    return encode_val(value)
end

return json
