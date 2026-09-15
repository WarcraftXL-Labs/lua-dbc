--[[
    formats/init.lua
    Format registry, sniffer, and factory for DBC and DB2 database drivers.
]]

local function load_module(name)
    local ok, mod = pcall(require, "dbc.formats." .. name)
    if ok then return mod end
    ok, mod = pcall(require, "src.dbc.formats." .. name)
    if ok then return mod end
    return require("formats." .. name)
end

local sniffer = load_module("sniffer")
local base_mod = load_module("base")
local wdbc = load_module("wdbc")
local wdb2 = load_module("wdb2")
local wdb3 = load_module("wdb3")
local wdb5 = load_module("wdb5")
local wdc = load_module("wdc")

local formats = {
    Sniffer = sniffer,
    Base = base_mod,
    WDBC = wdbc,
    WDB2 = wdb2,
    WDB3 = wdb3,
    WDB5 = wdb5,
    WDC = wdc,
}

--- Detects format and opens raw binary data using the appropriate format driver.
--- @param data string Raw binary content.
--- @param schema table|nil Optional schema.
--- @param origin string|nil Label or file path.
--- @return BaseFormatDriver driver
function formats.OpenData(data, schema, origin)
    origin = origin or "<memory>"
    local magic, format_name = sniffer.Detect(data)
    if not magic then
        error(origin .. ": unable to detect file format (unknown magic)")
    end

    if format_name == "WDBC" then
        return wdbc.new(data, schema, origin)
    elseif format_name == "WDB2" then
        return wdb2.new(data, schema, origin)
    elseif format_name == "WDB3" or format_name == "WDB4" then
        return wdb3.new(data, schema, origin)
    elseif format_name == "WDB5" or format_name == "WDB6" then
        return wdb5.new(data, schema, origin)
    elseif string.match(format_name, "^WDC[1-5]$") then
        return wdc.new(data, schema, origin)
    else
        error(string.format("%s: unsupported format %s (%s)", origin, tostring(format_name), tostring(magic)))
    end
end

--- Opens a DBC or DB2 file from disk by sniffing its binary header.
--- @param path string Path to the file.
--- @param schema table|nil Optional schema.
--- @return BaseFormatDriver driver
function formats.OpenFile(path, schema)
    local f, err = io.open(path, "rb")
    if not f then
        error(string.format("cannot open %s: %s", path, tostring(err)))
    end
    local data = f:read("*a")
    f:close()

    return formats.OpenData(data, schema, path)
end

--- Creates a new, empty database using the specified format. Defaults to WDBC.
--- @param format_name string|nil Format name ("WDBC", "WDB2", etc.). Default is "WDBC".
--- @param schema table Schema definition.
--- @param origin string|nil Optional label.
--- @return BaseFormatDriver driver
function formats.CreateEmpty(format_name, schema, origin)
    format_name = format_name or "WDBC"
    if format_name == "WDBC" then
        return wdbc.create_empty(schema, origin)
    elseif format_name == "WDB2" then
        return wdb2.create_empty(schema, origin)
    else
        error(string.format("creating empty %s is not supported (WDBC and WDB2 supported for creation)", format_name))
    end
end

return formats
