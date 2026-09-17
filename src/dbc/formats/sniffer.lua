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

--- Reads the 4-byte magic from a raw binary string.
--- @param data string Binary data string.
--- @return string|nil magic 4-character magic code or nil.
--- @return string|nil format_name Canonical format name or nil if unknown.
function sniffer.DetectData(data)
    if type(data) ~= "string" or #data < 4 then
        return nil, nil
    end
    local magic = string.sub(data, 1, 4)
    return magic, FORMAT_NAMES[magic]
end

--- Reads the 4-byte magic from a file path.
--- @param path string File path on disk.
--- @return string|nil magic 4-character magic code or nil.
--- @return string|nil format_name Canonical format name or nil if unknown.
function sniffer.DetectFile(path)
    if type(path) ~= "string" or #path == 0 then
        return nil, nil
    end
    local f = io.open(path, "rb")
    if not f then return nil, nil end
    local magic = f:read(4)
    f:close()
    if not magic or #magic < 4 then
        return nil, nil
    end
    return magic, FORMAT_NAMES[magic]
end

--- Reads the 4-byte magic from a binary string or file path.
--- @param path_or_data string File path or binary data string.
--- @return string|nil magic 4-character magic code or nil.
--- @return string|nil format_name Canonical format name or nil if unknown.
function sniffer.Detect(path_or_data)
    if type(path_or_data) ~= "string" or #path_or_data == 0 then
        return nil, nil
    end

    -- Only probe disk if input looks like a valid filesystem path:
    -- Reasonable path length (< 260 chars) and no null bytes.
    if #path_or_data < 260 and not string.find(path_or_data, "\0", 1, true) then
        local magic, format_name = sniffer.DetectFile(path_or_data)
        if magic then
            return magic, format_name
        end
    end

    return sniffer.DetectData(path_or_data)
end

--- Checks if the given magic string corresponds to any known DBC or DB2 format.
--- @param magic string 4-character magic string.
--- @return boolean is_known
function sniffer.IsSupported(magic)
    return FORMAT_NAMES[magic] ~= nil
end

return sniffer
