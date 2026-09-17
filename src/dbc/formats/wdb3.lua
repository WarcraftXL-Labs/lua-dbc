--[[
    wdb3.lua
    Format driver for WDB3 & WDB4 (Warlords of Draenor 6.x).
    Supports 52-byte headers, flags (sparse records, non-inline ID lists),
    copy tables, and offset maps.
]]

local ffi = require("ffi")

local load = require("dbc._loader")
local base_mod = load("formats.base")
local BaseFormatDriver = base_mod.BaseFormatDriver
local READ = base_mod.READ
local WRITE = base_mod.WRITE

local cast = ffi.cast
local copy = ffi.copy
local math_max = math.max
local string_sub = string.sub
local bit = require("bit")
local band = bit.band

---@class Wdb3Driver : BaseFormatDriver
---@field flags integer
---@field offset_map table<integer, { offset: integer, size: integer }>|nil
local Wdb3Driver = setmetatable({}, { __index = BaseFormatDriver })
Wdb3Driver.__index = Wdb3Driver

--- Parses raw binary WDB3 / WDB4 data.
--- @param data string Raw binary string.
--- @param schema table|nil Optional schema.
--- @param origin string|nil Label or file path.
--- @return Wdb3Driver driver
function Wdb3Driver.new(data, schema, origin)
    origin = origin or "<memory>"
    local magic = string_sub(data, 1, 4)
    if magic ~= "WDB3" and magic ~= "WDB4" then
        error(origin .. ": not a valid WDB3 or WDB4 file")
    end

    local self = setmetatable({}, Wdb3Driver)
    self:Init(magic, origin)

    local head = cast("const uint32_t*", data)
    self.record_count = tonumber(head[1])
    self.field_count = tonumber(head[2])
    self.record_size = tonumber(head[3])
    local string_size = tonumber(head[4])
    self.table_hash = tonumber(head[5])
    self.build = tonumber(head[6])
    self.timestamp_last_written = tonumber(head[7])
    self.min_id = tonumber(head[8])
    self.max_id = tonumber(head[9])
    self.locale = tonumber(head[10])
    self.copy_table_size = tonumber(head[11])
    self.flags = (#data >= 52 and magic == "WDB4") and tonumber(head[12]) or 0

    local header_size = (magic == "WDB4") and 52 or 48
    local cursor = header_size

    local is_sparse = band(self.flags, 0x01) ~= 0
    local has_noninline_ids = band(self.flags, 0x04) ~= 0

    if not is_sparse then
        -- Contiguous records
        self.capacity = math_max(self.record_count, 1)
        self.records = ffi.new("uint8_t[?]", self.capacity * self.record_size)
        local records_start = cast("const char*", data) + cursor
        copy(self.records, records_start, self.record_count * self.record_size)
        cursor = cursor + self.record_count * self.record_size
    else
        -- Offset map sparse records
        self.offset_map = {}
        local id_range = self.max_id - self.min_id + 1
        local offset_ptr = cast("const uint32_t*", cast("const char*", data) + cursor)
        for i = 0, id_range - 1 do
            local off = tonumber(offset_ptr[i])
            if off > 0 then
                self.offset_map[self.min_id + i] = off
            end
        end
        cursor = cursor + id_range * 4
    end

    -- String table
    if string_size > 0 and cursor + string_size <= #data then
        self.str_orig = string_sub(data, cursor + 1, cursor + string_size)
        cursor = cursor + string_size
    else
        self.str_orig = "\0"
    end

    -- Non-inline ID table
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
function Wdb3Driver:GetAddress(row, offset)
    if row < 1 or row > self.record_count then
        error(string.format("%s: row %d out of range (1..%d)", self.origin, row, self.record_count))
    end
    return self.records + (row - 1) * self.record_size + offset
end

return Wdb3Driver
