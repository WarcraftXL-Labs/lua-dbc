--[[
    wdb2.lua
    Format driver for WDB2 (Cataclysm 4.0.1 to Mists of Pandaria 5.4.8).
    Supports 48-byte headers (hashes, build number, min/max ID, locale),
    records buffer, string table, copy table resolution, and binary serialization.
]]

local ffi = require("ffi")

local load = require("dbc._loader")
local base_mod = load("formats.base")
local BaseFormatDriver = base_mod.BaseFormatDriver
local WRITE = base_mod.WRITE

local cast = ffi.cast
local copy = ffi.copy
local math_max = math.max
local string_sub = string.sub

local HEADER_SIZE = 48 -- 4-byte magic + 44 bytes header fields

---@class Wdb2Driver : BaseFormatDriver
---@field table_hash integer
---@field build integer
---@field timestamp_last_written integer
---@field min_id integer
---@field max_id integer
---@field locale integer
---@field copy_table_size integer
---@field records any
---@field capacity integer
local Wdb2Driver = setmetatable({}, { __index = BaseFormatDriver })
Wdb2Driver.__index = Wdb2Driver

--- Parses raw binary WDB2 data.
--- @param data string Raw binary string.
--- @param schema table|nil Optional schema.
--- @param origin string|nil Label or file path.
--- @return Wdb2Driver driver
function Wdb2Driver.new(data, schema, origin)
    origin = origin or "<memory>"
    if string_sub(data, 1, 4) ~= "WDB2" then
        error(origin .. ": not a valid WDB2 file")
    end

    local self = setmetatable({}, Wdb2Driver)
    self:Init("WDB2", origin)

    -- Header is 11 uint32 after the 4-byte magic
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

    local expected = HEADER_SIZE + self.record_count * self.record_size + string_size + self.copy_table_size
    if expected ~= #data then
        error(string.format("%s: header implies %d bytes, file is %d bytes", self.origin, expected, #data))
    end

    self.capacity = math_max(self.record_count, 1)
    self.records = ffi.new("uint8_t[?]", self.capacity * self.record_size)

    local records_start = cast("const char*", data) + HEADER_SIZE
    copy(self.records, records_start, self.record_count * self.record_size)

    local str_block_start = HEADER_SIZE + self.record_count * self.record_size + 1
    self.str_orig = string_sub(data, str_block_start, str_block_start + string_size - 1)
    if #self.str_orig ~= string_size then
        error(self.origin .. ": string block length mismatch")
    end

    self.str_extra = {}
    self.str_extra_len = 0
    self.dirty = false

    -- Parse copy table if present
    self.copy_table = {}
    if self.copy_table_size > 0 then
        local copy_start = HEADER_SIZE + self.record_count * self.record_size + string_size
        local copy_ptr = cast("const uint32_t*", cast("const char*", data) + copy_start)
        local num_entries = math.floor(self.copy_table_size / 8)
        for i = 0, num_entries - 1 do
            local new_id = tonumber(copy_ptr[i * 2])
            local source_id = tonumber(copy_ptr[i * 2 + 1])
            self.copy_table[new_id] = source_id
        end
    end

    if schema then
        self:AttachSchema(schema)
    end

    return self
end

--- Creates a blank WDB2 file directly from a schema definition.
--- @param schema table Schema definition.
--- @param origin string|nil Optional label.
--- @return Wdb2Driver driver
function Wdb2Driver.create_empty(schema, origin)
    local self = setmetatable({}, Wdb2Driver)
    self:Init("WDB2", origin or "<memory>")

    self.record_count = 0
    self.field_count = schema.field_count
    self.record_size = schema.record_size
    self.table_hash = 0
    self.build = 15595 -- Default Cata 4.3.4
    self.timestamp_last_written = os.time()
    self.min_id = 0
    self.max_id = 0
    self.locale = 0
    self.copy_table_size = 0
    self.copy_table = {}

    self.capacity = 8
    self.records = ffi.new("uint8_t[?]", self.capacity * self.record_size)

    self.str_orig = "\0"
    self.str_extra = {}
    self.str_extra_len = 0
    self.dirty = true

    self:AttachSchema(schema)
    return self
end

--- Retrieves the memory pointer address for a given row and byte offset.
--- @param row integer 1-based row index.
--- @param offset integer Byte offset within the record.
--- @return any pointer FFI memory pointer.
function Wdb2Driver:GetAddress(row, offset)
    if row < 1 or row > self.record_count then
        error(string.format("%s: row %d out of range (1..%d)", self.origin, row, self.record_count))
    end
    return self.records + (row - 1) * self.record_size + offset
end

--- Ensures buffer capacity for at least `want` records.
--- @param want integer Desired row capacity.
function Wdb2Driver:Reserve(want)
    if want <= self.capacity then return end

    local new_capacity = math_max(self.capacity * 2, want, 8)
    local grown = ffi.new("uint8_t[?]", new_capacity * self.record_size)
    copy(grown, self.records, self.record_count * self.record_size)

    self.records = grown
    self.capacity = new_capacity
end

--- Appends a new blank row and returns its 1-based index.
--- @return integer row
function Wdb2Driver:AppendRow()
    self:Reserve(self.record_count + 1)
    self.record_count = self.record_count + 1
    ffi.fill(self:GetAddress(self.record_count, 0), self.record_size, 0)
    self.dirty = true
    return self.record_count
end

--- Adds a copy table mapping for cloning a row with a new ID.
--- @param new_id integer The new row primary key.
--- @param source_id integer The original row ID being copied.
function Wdb2Driver:AddCopy(new_id, source_id)
    self.copy_table[new_id] = source_id
    self.dirty = true
end

--- Serializes the in-memory WDB2 data back to a raw binary string.
--- @return string bytes
function Wdb2Driver:Serialize()
    local strings = self.str_orig
    if #self.str_extra > 0 then
        strings = strings .. table.concat(self.str_extra)
    end

    -- Build copy table buffer
    local copy_entries = {}
    for new_id, source_id in pairs(self.copy_table) do
        table.insert(copy_entries, { new_id = new_id, source_id = source_id })
    end
    table.sort(copy_entries, function(a, b) return a.new_id < b.new_id end)

    local copy_buf = ""
    if #copy_entries > 0 then
        local c_ptr = ffi.new("uint32_t[?]", #copy_entries * 2)
        for i, entry in ipairs(copy_entries) do
            c_ptr[(i - 1) * 2] = entry.new_id
            c_ptr[(i - 1) * 2 + 1] = entry.source_id
        end
        copy_buf = ffi.string(c_ptr, #copy_entries * 8)
    end

    -- Update min/max ID. GetRowId, not a raw read at the ID offset: tables
    -- without an inline ID column have no offset to read from.
    local min_id = 0xFFFFFFFF
    local max_id = 0
    for r = 1, self.record_count do
        local id = self:GetRowId(r)
        if id < min_id then min_id = id end
        if id > max_id then max_id = id end
    end
    for _, entry in ipairs(copy_entries) do
        if entry.new_id < min_id then min_id = entry.new_id end
        if entry.new_id > max_id then max_id = entry.new_id end
    end
    if self.record_count == 0 and #copy_entries == 0 then
        min_id = 0
        max_id = 0
    end

    local head = ffi.new("uint32_t[11]")
    head[0] = self.record_count
    head[1] = self.field_count
    head[2] = self.record_size
    head[3] = #strings
    head[4] = self.table_hash or 0
    head[5] = self.build or 0
    head[6] = os.time()
    head[7] = min_id
    head[8] = max_id
    head[9] = self.locale or 0
    head[10] = #copy_buf

    return table.concat({
        "WDB2",
        ffi.string(head, 44),
        ffi.string(self.records, self.record_count * self.record_size),
        strings,
        copy_buf,
    })
end

return Wdb2Driver
