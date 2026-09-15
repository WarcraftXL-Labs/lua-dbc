--[[
    _util.lua
    Small shared helpers used across lua-dbc modules.

    Kept deliberately tiny. Anything that grows beyond one function per
    concern should live in its own module instead of being added here.
]]

local util = {}

--- Returns the single ASCII uppercase of a character, or "" for empty input.
--- @param name string|nil
--- @return string
function util.pascal_case(name)
    if not name or name == "" then return "" end
    return name:sub(1, 1):upper() .. name:sub(2)
end

--- Splits a string on a single-character delimiter.
--- @param s string
--- @param sep string
--- @return string[]
function util.split(s, sep)
    local out = {}
    for part in s:gmatch("([^" .. sep .. "]+)") do
        out[#out + 1] = part
    end
    return out
end

--- Trims leading and trailing ASCII whitespace.
--- @param s string
--- @return string
function util.trim(s)
    return (s:gsub("^%s+", ""):gsub("%s+$", ""))
end

--- Preallocates a Lua array by filling it with nil up to `n`.
--- This forces Lua to allocate the underlying array part once, which avoids
--- repeated rehashes when the table is filled with `table.insert` or `[i]=v`.
--- @param n integer
--- @return table
function util.prealloc(n)
    local t = {}
    for i = 1, n do t[i] = false end
    for i = 1, n do t[i] = nil end
    return t
end

return util