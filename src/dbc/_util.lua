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

local is_windows = package.config:sub(1, 1) == "\\"
local ok_tnew, tablenew = pcall(require, "table.new")

--- Ensures the parent directory of a file path exists.
--- @param file_path string
function util.ensure_dir(file_path)
    local dir = string.match(file_path, "^(.*)[/\\][^/\\]+$")
    if not dir or dir == "" then return end

    if is_windows then
        local win_dir = dir:gsub("/", "\\")
        os.execute('if not exist "' .. win_dir .. '" mkdir "' .. win_dir .. '" >nul 2>nul')
    else
        os.execute('mkdir -p "' .. dir .. '" 2>/dev/null')
    end
end

--- Preallocates a Lua array by sizing it to `n` elements.
--- Uses LuaJIT's native table.new when available, otherwise pre-sizes via false/nil.
--- @param n integer
--- @return table
function util.prealloc(n)
    if ok_tnew and tablenew then
        return tablenew(n, 0)
    end
    local t = {}
    for i = 1, n do t[i] = false end
    for i = 1, n do t[i] = nil end
    return t
end

return util