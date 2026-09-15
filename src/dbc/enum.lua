--[[
    enum.lua
    Provides the enum registry and lazy loader for World of Warcraft WotLK enumerations and bitmasks.
]]

local bit = require("bit")

local _cache = {}

local Enums = {}

--- Retrieves and caches an enumeration table by name.
--- Enhances mask enums by precomputing bit flags (1 << bit) for direct use.
--- @param name string Name of the enum (e.g. "ItemQuality", "SpellAttributes").
--- @return table enum The loaded enum table.
function Enums.Get(name)
    if _cache[name] then
        return _cache[name]
    end

    local ok, enum_def = pcall(require, "dbc.enums." .. name)
    if not ok then
        ok, enum_def = pcall(require, "enums." .. name)
    end
    if not ok then
        ok, enum_def = pcall(require, "src.enums." .. name)
    end
    if not ok then
        error(string.format("Enum %q could not be loaded: %s", name, tostring(enum_def)))
    end

    -- Create an accessor table allowing direct enum.CONSTANT access
    local proxy = {}
    for k, v in pairs(enum_def) do
        proxy[k] = v
    end

    -- If values map exists, expose them directly on the proxy
    if enum_def.values then
        for val_name, val_num in pairs(enum_def.values) do
            proxy[val_name] = val_num
        end
    end

    -- If bits map exists, expose both bit index and computed bitmask flag
    if enum_def.bits then
        proxy.flags = {}
        for bit_name, bit_index in pairs(enum_def.bits) do
            proxy[bit_name] = bit_index
            if bit_index < 32 then
                local flag_val = bit.lshift(1, bit_index)
                proxy.flags[bit_name] = flag_val
            end
        end
    end

    _cache[name] = proxy
    return proxy
end

--- Checks if an enumeration with the given name is available.
--- @param name string Name of the enum.
--- @return boolean exists
function Enums.Has(name)
    local ok, _ = pcall(Enums.Get, name)
    return ok
end

-- Allow dot-syntax access: Enums.ItemQuality.PURPLE, Enums.SpellAttributes.IS_PASSIVE
setmetatable(Enums, {
    __index = function(_, key)
        return Enums.Get(key)
    end
})

return Enums
