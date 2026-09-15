--[[
    file.lua
    Public entry point for the format-agnostic DBC/DB2 loader.

    This module re-exports the base tables (READ, WRITE, KIND_WIDTH, LOCALE,
    LOCALE_SLOTS) and the format dispatcher, and exposes a small DbcFile
    wrapper with `new`, `create_empty`, and `create_empty_format`.
]]

local load = require("dbc._loader")

local formats  = load("formats")
local base_mod = formats.Base

local DbcFile = {}
DbcFile.__index = DbcFile

---Opens a raw binary buffer, sniffing the format automatically.
---@param data string
---@param schema table|nil
---@param origin string|nil
---@return table driver
function DbcFile.new(data, schema, origin)
    return formats.OpenData(data, schema, origin)
end

---Creates a blank file using the WDBC format (WotLK).
---@param schema table
---@param origin string|nil
---@return table driver
function DbcFile.create_empty(schema, origin)
    return formats.CreateEmpty("WDBC", schema, origin)
end

---Creates a blank file using a specific format name.
---@param format_name string
---@param schema table
---@param origin string|nil
---@return table driver
function DbcFile.create_empty_format(format_name, schema, origin)
    return formats.CreateEmpty(format_name, schema, origin)
end

---Reads an entire file from disk, sniffs the format, and loads it.
---@param path string
---@param schema table|nil
---@return table driver
local function open(path, schema)
    return formats.OpenFile(path, schema)
end

return {
    DbcFile          = DbcFile,
    open             = open,
    HEADER_SIZE      = 16,
    LOCALE_SLOTS     = base_mod.LOCALE_SLOTS,
    LOCALE           = base_mod.LOCALE,
    KIND_WIDTH       = base_mod.KIND_WIDTH,
    READ             = base_mod.READ,
    WRITE            = base_mod.WRITE,
    Formats          = formats,
}