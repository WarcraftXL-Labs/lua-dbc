--[[
    _loader.lua
    Centralized module loader for lua-dbc internal modules.

    Resolves modules across the three common layout conventions:
      1. Packaged:   require("dbc.name")      (from a LuaRocks install)
      2. Dev layout: require("src.dbc.name")  (running from the repo root)
      3. Bare:       require("name")          (custom package.path setups)

    The three attempts are cheap because require() caches successful loads
    by module name; only the first attempt per module actually runs.

    Usage:
        local load = require("dbc._loader")
        local schema = load("schema")
]]

local function load_module(name)
    -- Attempt 1: packaged layout
    local ok, mod = pcall(require, "dbc." .. name)
    if ok and mod ~= nil then return mod end

    -- Attempt 2: development layout (repo root on package.path)
    ok, mod = pcall(require, "src.dbc." .. name)
    if ok and mod ~= nil then return mod end

    -- Attempt 3: bare name (caller set up package.path themselves)
    return require(name)
end

return load_module