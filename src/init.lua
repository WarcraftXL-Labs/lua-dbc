--[[
    src/init.lua
    Entry point forwarding to src/dbc/init.lua.
]]
local ok, dbc = pcall(require, "dbc")
if ok then return dbc end
return require("src.dbc")
