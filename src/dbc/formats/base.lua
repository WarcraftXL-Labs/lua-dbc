--[[
    base.lua
    Abstract Base Class for DBC and DB2 binary file drivers in lua-dbc.
    Provides standard interfaces for record reading, writing, string tables,
    schema binding, copy tables, and relationship indexing.
]]

local ffi = require("ffi")

local cast = ffi.cast
local copy = ffi.copy
local string_sub = string.sub
local string_find = string.find
local string_match = string.match
local math_max = math.max

local LOCALE_SLOTS = 16

local LOCALE = {
    enUS = 0,
    enGB = 0,
    koKR = 1,
    frFR = 2,
    deDE = 3,
    enCN = 4,
    zhCN = 5,
    zhTW = 6,
    enTW = 7,
    ruRU = 8,
    esES = 9,
    esMX = 10,
    ptPT = 11,
    ptBR = 12,
    itIT = 13,

    -- Uppercase aliases
    ENUS = 0,
    ENGB = 0,
    KOKR = 1,
    FRFR = 2,
    DEDE = 3,
    ENCN = 4,
    ZHCN = 5,
    ZHTW = 6,
    ENTW = 7,
    RURU = 8,
    ESES = 9,
    ESMX = 10,
    PTPT = 11,
    PTBR = 12,
    ITIT = 13,

    ALL = -1,
}

local KIND_WIDTH = {
    key = 4,
    u32 = 4,
    i32 = 4,
    f32 = 4,
    str = 4,
    ptr = 4,
    mask = 4,
    flag = 4,
    enum = 4,
    bool = 4,
    byte = 1,
    u64 = 8,
    loc = 4 * (LOCALE_SLOTS + 1),
}

local READ = {
    byte = function(addr) return cast("uint8_t*", addr)[0] end,
    i32  = function(addr) return cast("int32_t*", addr)[0] end,
    f32  = function(addr) return cast("float*", addr)[0] end,
    u64  = function(addr) return cast("uint64_t*", addr)[0] end,
    u32  = function(addr) return cast("uint32_t*", addr)[0] end,
}

local WRITE = {
    byte = function(addr, v) cast("uint8_t*", addr)[0] = v end,
    i32  = function(addr, v) cast("int32_t*", addr)[0] = v end,
    f32  = function(addr, v) cast("float*", addr)[0] = v end,
    u64  = function(addr, v) cast("uint64_t*", addr)[0] = v end,
    u32  = function(addr, v) cast("uint32_t*", addr)[0] = v end,
}

for _, kind in ipairs({"key", "str", "ptr", "mask", "flag", "enum", "bool"}) do
    READ[kind] = READ.u32
    WRITE[kind] = WRITE.u32
end

---@class BaseFormatDriver
---@field format string Format identifier (e.g. "WDBC", "WDB2", "WDC3")
---@field origin string Path or memory label
---@field record_count integer Total record count
---@field field_count integer Field count
---@field record_size integer Record size in bytes
---@field dirty boolean Modification flag
---@field schema table|nil Attached schema
---@field by_name table<string, table>|nil Schema fields mapped by name
---@field copy_table table<integer, integer>|nil Map of copied ID -> source ID
---@field id_list integer[]|nil Non-inline IDs array (1-based row index -> ID)
---@field relationship_map table<integer, integer[]>|nil Map of foreign_id -> list of row indices
local BaseFormatDriver = {}
BaseFormatDriver.__index = BaseFormatDriver

function BaseFormatDriver:Init(format_name, origin)
    self.format = format_name
    self.origin = origin or "<memory>"
    self.record_count = 0
    self.field_count = 0
    self.record_size = 0
    self.dirty = false
    self.schema = nil
    self.by_name = nil
    self.copy_table = nil
    self.id_list = nil
    self.relationship_map = nil
    self.str_orig = "\0"
    self.str_extra = {}
    self.str_extra_len = 0
    self._str_cache = {}
end

--- Validates and binds a schema definition to the driver.
--- @param schema table Schema definition.
function BaseFormatDriver:AttachSchema(schema)
    if not self.field_storage_info and not self.is_compressed then
        if self.record_size > 0 and schema.record_size and schema.record_size ~= self.record_size then
            error(string.format("%s: schema %s describes %d-byte records, file has %d bytes",
                self.origin, schema.name or "?", schema.record_size, self.record_size))
        end
    end

    self.schema = schema
    self.by_name = {}
    for _, f in ipairs(schema.fields) do
        self.by_name[f.name] = f
        local base_name = string_match(f.name, "^(.-)_lang$")
        if base_name and not self.by_name[base_name] then
            self.by_name[base_name] = f
        end
    end
end

--- Retrieves a schema field definition by name.
--- @param name string Field name.
--- @return table field
function BaseFormatDriver:GetField(name)
    if not self.by_name then
        error(self.origin .. ": no schema attached")
    end
    local f = self.by_name[name]
        or self.by_name[name .. "_lang"]
        or (string_match(name, "^(.-)_lang$") and self.by_name[string_match(name, "^(.-)_lang$")])
    if not f then
        error(string.format("%s: no field named %q", self.origin, name))
    end
    return f
end

--- Returns the primary key ID for a given 1-based row index.
--- @param row integer 1-based row index.
--- @return integer id
function BaseFormatDriver:GetRowId(row)
    if self.id_list and self.id_list[row] then
        return self.id_list[row]
    end
    local id_offset = self:GetIdOffset()
    local addr = self:GetAddress(row, id_offset)
    return READ.u32(addr)
end

--- Returns the byte offset of the ID field in a record.
--- @return integer offset
function BaseFormatDriver:GetIdOffset()
    if self.schema then
        for _, f in ipairs(self.schema.fields) do
            if f.kind == "key" then
                return f.offset
            end
        end
    end
    return 0
end

--- Retrieves a null-terminated string from the driver's string storage.
--- @param offset integer Byte offset into string table.
--- @return string text
function BaseFormatDriver:GetString(offset)
    if not offset or offset == 0 then return "" end

    if offset < #self.str_orig then
        local stop = string_find(self.str_orig, "\0", offset + 1, true)
        if not stop then return "" end
        return string_sub(self.str_orig, offset + 1, stop - 1)
    end

    local at = offset - #self.str_orig
    for _, chunk in ipairs(self.str_extra) do
        if at < #chunk then
            local stop = string_find(chunk, "\0", at + 1, true)
            if stop then
                return string_sub(chunk, at + 1, stop - 1)
            else
                return ""
            end
        end
        at = at - #chunk
    end

    return ""
end

--- Interns a string into string storage.
--- @param text string The string to intern.
--- @return integer offset The offset where string is stored.
function BaseFormatDriver:InternString(text)
    if not text or text == "" then return 0 end

    if not self._str_cache then
        self._str_cache = {}
    end
    local cached = self._str_cache[text]
    if cached then
        return cached
    end

    local needle = "\0" .. text .. "\0"
    local at = string_find(self.str_orig, needle, 1, true)
    if at then
        self._str_cache[text] = at
        return at
    end

    local base = #self.str_orig
    for _, chunk in ipairs(self.str_extra) do
        local hit = string_find(chunk, needle, 1, true)
        if hit then
            local offset = base + hit
            self._str_cache[text] = offset
            return offset
        end
        base = base + #chunk
    end

    local offset = #self.str_orig + self.str_extra_len
    local chunk = text .. "\0"
    table.insert(self.str_extra, chunk)
    self.str_extra_len = self.str_extra_len + #chunk
    self._str_cache[text] = offset
    return offset
end

--- Returns all row indices related to a foreign parent ID.
--- @param foreign_id integer
--- @return integer[] row_indices
function BaseFormatDriver:GetRelationRows(foreign_id)
    if self.relationship_map and self.relationship_map[foreign_id] then
        return self.relationship_map[foreign_id]
    end
    return {}
end

--- Saves the database file to disk.
--- @param path string Destination path.
--- @return integer bytes_written
function BaseFormatDriver:Save(path)
    if not self.Serialize then
        error(string.format("%s: saving format %s is not supported", self.origin, self.format))
    end
    local data = self:Serialize()
    local f, err = io.open(path, "wb")
    if not f then
        error(string.format("cannot write to %s: %s", path, tostring(err)))
    end
    f:write(data)
    f:close()
    return #data
end

return {
    BaseFormatDriver = BaseFormatDriver,
    LOCALE = LOCALE,
    LOCALE_SLOTS = LOCALE_SLOTS,
    KIND_WIDTH = KIND_WIDTH,
    READ = READ,
    WRITE = WRITE,
}
