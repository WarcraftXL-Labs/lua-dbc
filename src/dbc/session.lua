--[[
    session.lua
    Compatibility wrapper forwarding to workspace.lua.
]]

local function load_module(name)
    local ok, mod = pcall(require, "dbc." .. name)
    if ok then return mod end
    ok, mod = pcall(require, "src.dbc." .. name)
    if ok then return mod end
    return require(name)
end

local workspace_mod = load_module("workspace")
local DbcWorkspace = workspace_mod.DbcWorkspace

return {
    DbcSession = DbcWorkspace,
    DbcWorkspace = DbcWorkspace,
}
