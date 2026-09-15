--[[
    wdbc.lua
    Format driver for WDBC (Classic 1.12 to Wrath of the Lich King 3.3.5a).
    Provides high-performance FFI memory mapping, raw pointer access, row appending,
    and fast binary serialization.
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

local HEADER_SIZE = 16

---@class WdbcDriver : BaseFormatDriver
---@field records any Contiguous FFI memory buffer
---@field capacity integer Allocated rows capacity
local WdbcDriver = setmetatable({}, { __index = BaseFormatDriver })
WdbcDriver.__index = WdbcDriver

--- Parses raw binary WDBC data.
--- @param data string Raw binary string.
--- @param schema table|nil Optional schema.
--- @param origin string|nil Label or file path.
--- @return WdbcDriver driver
function WdbcDriver.new(data, schema, origin)
    origin = origin or "<memory>"
    if string_sub(data, 1, 4) ~= "WDBC" then
        error(origin .. ": not a valid WDBC file")
    end

    local self = setmetatable({}, WdbcDriver)
    self:Init("WDBC", origin)

    local head = cast("const uint32_t*", data)
    self.record_count = tonumber(head[1])
    self.field_count = tonumber(head[2])
    self.record_size = tonumber(head[3])
    local string_size = tonumber(head[4])

    local expected = 4 + HEADER_SIZE + self.record_count * self.record_size + string_size
    if expected ~= #data then
        error(string.format("%s: header implies %d bytes, file is %d bytes", self.origin, expected, #data))
    end

    self.capacity = math_max(self.record_count, 1)
    self.records = ffi.new("uint8_t[?]", self.capacity * self.record_size)

    local records_start = cast("const char*", data) + 4 + HEADER_SIZE
    copy(self.records, records_start, self.record_count * self.record_size)

    local str_block_start = 4 + HEADER_SIZE + self.record_count * self.record_size + 1
    self.str_orig = string_sub(data, str_block_start)
    if #self.str_orig ~= string_size then
        error(self.origin .. ": string block length mismatch")
    end

    self.str_extra = {}
    self.str_extra_len = 0
    self.dirty = false

    if schema then
        self:AttachSchema(schema)
    end

    return self
end

--- Creates a blank WDBC file directly from a schema definition.
--- @param schema table Schema definition.
--- @param origin string|nil Optional label.
--- @return WdbcDriver driver
function WdbcDriver.create_empty(schema, origin)
    local self = setmetatable({}, WdbcDriver)
    self:Init("WDBC", origin or "<memory>")

    self.record_count = 0
    self.field_count = schema.field_count
    self.record_size = schema.record_size

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
function WdbcDriver:GetAddress(row, offset)
    if row < 1 or row > self.record_count then
        error(string.format("%s: row %d out of range (1..%d)", self.origin, row, self.record_count))
    end
    return self.records + (row - 1) * self.record_size + offset
end

--- Ensures buffer capacity for at least `want` records.
--- @param want integer Desired row capacity.
function WdbcDriver:Reserve(want)
    if want <= self.capacity then return end

    local new_capacity = math_max(self.capacity * 2, want, 8)
    local grown = ffi.new("uint8_t[?]", new_capacity * self.record_size)
    copy(grown, self.records, self.record_count * self.record_size)

    self.records = grown
    self.capacity = new_capacity
end

--- Appends a new blank row and returns its 1-based index.
--- @return integer row
function WdbcDriver:AppendRow()
    self:Reserve(self.record_count + 1)
    self.record_count = self.record_count + 1
    ffi.fill(self:GetAddress(self.record_count, 0), self.record_size, 0)
    self.dirty = true
    return self.record_count
end

--- Serializes the in-memory WDBC data back to a raw binary string.
--- @return string bytes
function WdbcDriver:Serialize()
    local strings = self.str_orig
    if #self.str_extra > 0 then
        strings = strings .. table.concat(self.str_extra)
    end

    local head = ffi.new("uint32_t[4]")
    head[0] = self.record_count
    head[1] = self.field_count
    head[2] = self.record_size
    head[3] = #strings

    return table.concat({
        "WDBC",
        ffi.string(head, HEADER_SIZE),
        ffi.string(self.records, self.record_count * self.record_size),
        strings,
    })
end

return WdbcDriver
