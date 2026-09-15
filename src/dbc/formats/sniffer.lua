--[[
    sniffer.lua
    Format sniffer for World of Warcraft client database files.
    Identifies the format of a binary stream or file by reading its 4-byte magic signature.
]]

local sniffer = {}

local FORMAT_NAMES = {
    ["WDBC"] = "WDBC", -- Classic 1.12 to WotLK 3.3.5a
    ["WDB2"] = "WDB2", -- Cataclysm 4.x to Mists of Pandaria 5.4.8
    ["WDB3"] = "WDB3", -- Early Warlords of Draenor 6.0
    ["WDB4"] = "WDB4", -- Warlords of Draenor 6.x
    ["WDB5"] = "WDB5", -- Legion 7.0 - 7.2
    ["WDB6"] = "WDB6", -- Legion 7.3
    ["WDC1"] = "WDC1", -- Battle for Azeroth 8.0 alpha/beta
    ["WDC2"] = "WDC2", -- Battle for Azeroth 8.0 - 8.3
    ["WDC3"] = "WDC3", -- Shadowlands 9.0 - 9.2
    ["WDC4"] = "WDC4", -- Dragonflight 10.0 - 10.2
    ["WDC5"] = "WDC5", -- The War Within 11.0+ & Midnight 12.x
}

--- Reads the 4-byte magic from a binary string or file path.
--- @param path_or_data string File path or binary data string.
--- @return string|nil magic 4-character magic code or nil.
--- @return string|nil format_name Canonical format name or nil if unknown.
function sniffer.Detect(path_or_data)
    local magic = nil
    if #path_or_data <= 512 and not string.find(path_or_data, "[\0-\8\11\12\14-\31]") then
        -- Likely a file path
        local f = io.open(path_or_data, "rb")
        if f then
            magic = f:read(4)
            f:close()
        end
    end

    if not magic and #path_or_data >= 4 then
        -- Raw binary data passed directly
        magic = string.sub(path_or_data, 1, 4)
    end

    if not magic or #magic < 4 then
        return nil, nil
    end

    local format_name = FORMAT_NAMES[magic]
    return magic, format_name
end

--- Checks if the given magic string corresponds to any known DBC or DB2 format.
--- @param magic string 4-character magic string.
--- @return boolean is_known
function sniffer.IsSupported(magic)
    return FORMAT_NAMES[magic] ~= nil
end

return sniffer
