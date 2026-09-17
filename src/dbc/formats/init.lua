--[[
    formats/init.lua
    Format registry, sniffer, and factory for DBC and DB2 database drivers.
]]

local load = require("dbc._loader")

local sniffer  = load("formats.sniffer")
local base_mod = load("formats.base")
local wdbc     = load("formats.wdbc")
local wdb2     = load("formats.wdb2")
local wdb3     = load("formats.wdb3")
local wdb5     = load("formats.wdb5")
local wdc      = load("formats.wdc")

local formats = {
    Sniffer    = sniffer,
    DetectData = sniffer.DetectData,
    DetectFile = sniffer.DetectFile,
    Detect     = sniffer.Detect,
    Base       = base_mod,
    WDBC       = wdbc,
    WDB2       = wdb2,
    WDB3       = wdb3,
    WDB5       = wdb5,
    WDC        = wdc,
}

-- ---------------------------------------------------------------------------
-- Driver Registry Pattern
-- ---------------------------------------------------------------------------

local drivers = {
    WDBC = { driver = wdbc, can_create = true },
    WDB2 = { driver = wdb2, can_create = true },
    WDB3 = { driver = wdb3, can_create = false },
    WDB4 = { driver = wdb3, can_create = false },
    WDB5 = { driver = wdb5, can_create = false },
    WDB6 = { driver = wdb5, can_create = false },
    WDC1 = { driver = wdc,  can_create = false },
    WDC2 = { driver = wdc,  can_create = false },
    WDC3 = { driver = wdc,  can_create = false },
    WDC4 = { driver = wdc,  can_create = false },
    WDC5 = { driver = wdc,  can_create = false },
}

--- Registers or overrides a format driver in the registry.
--- @param name string Format identifier (e.g. "WDBC", "WDB2").
--- @param driver table Driver table implementing new() and optionally create_empty().
--- @param can_create boolean|nil Whether driver supports creating blank files.
function formats.Register(name, driver, can_create)
    drivers[name] = { driver = driver, can_create = can_create == true }
end

--- Returns the driver entry for a format name.
--- @param name string
--- @return table|nil
function formats.GetDriver(name)
    return drivers[name]
end

--- Detects format and opens raw binary data using the appropriate format driver.
--- @param data string Raw binary content.
--- @param schema table|nil Optional schema.
--- @param origin string|nil Label or file path.
--- @return BaseFormatDriver driver
function formats.OpenData(data, schema, origin)
    origin = origin or "<memory>"
    local magic, format_name = sniffer.DetectData(data)
    if not magic then
        error(origin .. ": unable to detect file format (unknown magic)")
    end

    local entry = drivers[format_name]
    if not entry then
        error(string.format("%s: unsupported format %s (%s)", origin, tostring(format_name), tostring(magic)))
    end

    return entry.driver.new(data, schema, origin)
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
    local entry = drivers[format_name]
    if not entry or not entry.can_create then
        error(string.format("creating empty %s is not supported (WDBC and WDB2 supported for creation)", format_name))
    end
    return entry.driver.create_empty(schema, origin)
end

return formats
