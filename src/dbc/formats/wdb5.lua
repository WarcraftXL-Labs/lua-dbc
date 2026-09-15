--[[
    wdb5.lua
    Format driver for WDB5 & WDB6 (Legion 7.0 to 7.3).
    Supports field structure definitions (bit sizes and offsets), non-inline IDs,
    copy tables, relationship data, and WDB6 common tables.
]]

local ffi = require("ffi")

local function load_base()
    local ok, mod = pcall(require, "dbc.formats.base")
    if ok then return mod end
    ok, mod = pcall(require, "src.dbc.formats.base")
    if ok then return mod end
    return require("formats.base")
end

local base_mod = load_base()
local BaseFormatDriver = base_mod.BaseFormatDriver
local READ = base_mod.READ
local WRITE = base_mod.WRITE

local cast = ffi.cast
local copy = ffi.copy
local math_max = math.max
local string_sub = string.sub
local bit = require("bit")
local band = bit.band
local rshift = bit.rshift
local lshift = bit.lshift

---@class FieldStructure
---@field size integer Bit width (or 32 - size)
---@field position integer Byte offset in record

---@class Wdb5Driver : BaseFormatDriver
---@field layout_hash integer
---@field flags integer
---@field id_index integer
---@field field_structures FieldStructure[]
---@field common_data table<integer, table<integer, any>>|nil
local Wdb5Driver = setmetatable({}, { __index = BaseFormatDriver })
Wdb5Driver.__index = Wdb5Driver

--- Parses raw binary WDB5 / WDB6 data.
--- @param data string Raw binary string.
--- @param schema table|nil Optional schema.
--- @param origin string|nil Label or file path.
--- @return Wdb5Driver driver
function Wdb5Driver.new(data, schema, origin)
    origin = origin or "<memory>"
    local magic = string_sub(data, 1, 4)
    if magic ~= "WDB5" and magic ~= "WDB6" then
        error(origin .. ": not a valid WDB5 or WDB6 file")
    end

    local self = setmetatable({}, Wdb5Driver)
    self:Init(magic, origin)

    local head_u32 = cast("const uint32_t*", data)
    self.record_count = tonumber(head_u32[1])
    self.field_count = tonumber(head_u32[2])
    self.record_size = tonumber(head_u32[3])
    local string_size = tonumber(head_u32[4])
    self.table_hash = tonumber(head_u32[5])
    self.layout_hash = tonumber(head_u32[6])
    self.min_id = tonumber(head_u32[7])
    self.max_id = tonumber(head_u32[8])
    self.locale = tonumber(head_u32[9])
    self.copy_table_size = tonumber(head_u32[10])

    local head_u16 = cast("const uint16_t*", cast("const char*", data) + 44)
    self.flags = tonumber(head_u16[0])
    self.id_index = tonumber(head_u16[1])

    local cursor = 48
    local common_table_size = 0
    if magic == "WDB6" then
        local wdb6_head = cast("const uint32_t*", cast("const char*", data) + 48)
        self.total_field_count = tonumber(wdb6_head[0])
        common_table_size = tonumber(wdb6_head[1])
        cursor = 56
    end

    -- Read field structures: array of { int16 size, uint16 position }
    self.field_structures = {}
    local struct_ptr = cast("const int16_t*", cast("const char*", data) + cursor)
    for i = 0, self.field_count - 1 do
        local raw_size = tonumber(struct_ptr[i * 2])
        local pos = tonumber(cast("const uint16_t*", struct_ptr + i * 2)[1])
        local bit_width = raw_size < 0 and (32 - raw_size) or raw_size
        table.insert(self.field_structures, {
            size = bit_width,
            position = pos,
        })
    end
    cursor = cursor + self.field_count * 4

    local has_noninline_ids = band(self.flags, 0x01) ~= 0
    local is_sparse = band(self.flags, 0x02) ~= 0
    local has_relations = band(self.flags, 0x04) ~= 0

    -- Records data
    if not is_sparse then
        self.capacity = math_max(self.record_count, 1)
        self.records = ffi.new("uint8_t[?]", self.capacity * self.record_size)
        local records_start = cast("const char*", data) + cursor
        copy(self.records, records_start, self.record_count * self.record_size)
        cursor = cursor + self.record_count * self.record_size
    end

    -- String table
    if string_size > 0 and cursor + string_size <= #data then
        self.str_orig = string_sub(data, cursor + 1, cursor + string_size)
        cursor = cursor + string_size
    else
        self.str_orig = "\0"
    end

    -- ID list (non-inline IDs)
    if has_noninline_ids and cursor + self.record_count * 4 <= #data then
        self.id_list = {}
        local id_ptr = cast("const uint32_t*", cast("const char*", data) + cursor)
        for i = 0, self.record_count - 1 do
            self.id_list[i + 1] = tonumber(id_ptr[i])
        end
        cursor = cursor + self.record_count * 4
    end

    -- Copy table
    self.copy_table = {}
    if self.copy_table_size > 0 and cursor + self.copy_table_size <= #data then
        local copy_ptr = cast("const uint32_t*", cast("const char*", data) + cursor)
        local num_entries = math.floor(self.copy_table_size / 8)
        for i = 0, num_entries - 1 do
            local new_id = tonumber(copy_ptr[i * 2])
            local source_id = tonumber(copy_ptr[i * 2 + 1])
            self.copy_table[new_id] = source_id
        end
        cursor = cursor + self.copy_table_size
    end

    -- Relationship data
    if has_relations and cursor + 8 <= #data then
        self.relationship_map = {}
        local rel_head = cast("const uint32_t*", cast("const char*", data) + cursor)
        local rel_count = tonumber(rel_head[0])
        cursor = cursor + 12 -- count, min_id, max_id
        if cursor + rel_count * 8 <= #data then
            local rel_ptr = cast("const uint32_t*", cast("const char*", data) + cursor)
            for i = 0, rel_count - 1 do
                local foreign_id = tonumber(rel_ptr[i * 2])
                local record_idx = tonumber(rel_ptr[i * 2 + 1]) + 1 -- 1-based index
                self.relationship_map[foreign_id] = self.relationship_map[foreign_id] or {}
                table.insert(self.relationship_map[foreign_id], record_idx)
            end
            cursor = cursor + rel_count * 8
        end
    end

    self.str_extra = {}
    self.str_extra_len = 0
    self.dirty = false

    if schema then
        self:AttachSchema(schema)
    end

    return self
end

--- Retrieves the memory pointer address for a given row and byte offset.
--- @param row integer 1-based row index.
--- @param offset integer Byte offset within the record.
--- @return any pointer FFI memory pointer.
function Wdb5Driver:GetAddress(row, offset)
    if row < 1 or row > self.record_count then
        error(string.format("%s: row %d out of range (1..%d)", self.origin, row, self.record_count))
    end
    return self.records + (row - 1) * self.record_size + offset
end

--- Reads a field value for a given row.
--- @param row integer 1-based row index.
--- @param field_def table Schema or DBD field definition.
--- @return any value
function Wdb5Driver:ReadField(row, field_def)
    if field_def.kind == "key" and self.id_list then
        return self.id_list[row]
    end

    local addr = self:GetAddress(row, field_def.offset)
    local kind = field_def.kind or "u32"

    if kind == "str" then
        local str_offset = READ.u32(addr)
        return self:GetString(str_offset)
    end

    return READ[kind] and READ[kind](addr) or READ.u32(addr)
end

return Wdb5Driver
