--[[
    file.lua
    Provides the core low-level WDBC parser and encoder using LuaJIT FFI.
    This module handles memory allocation, fast reading, and writing of primitive types
    directly to/from the memory buffer to ensure optimal performance.
]]

local ffi = require("ffi")

-- Shortcuts to avoid table lookups in hot paths
local cast = ffi.cast
local typeof = ffi.typeof
local copy = ffi.copy
local string_sub = string.sub
local string_find = string.find
local math_max = math.max

-- Constants for the WDBC format
local HEADER_SIZE = 16
local LOCALE_SLOTS = 16

--- Index of each locale inside a localized cell based on the standard 3.3.5a client layout.
---@type table<string, integer>
local LOCALE = {
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
}

--- Width in bytes for each primitive kind.
---@type table<string, integer>
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
    loc = 4 * (LOCALE_SLOTS + 1), -- 16 locales + 1 flag integer (68 bytes)
}

-- FFI memory pointers for fast reading
local READ = {
    byte = function(addr) return cast("uint8_t*", addr)[0] end,
    i32  = function(addr) return cast("int32_t*", addr)[0] end,
    f32  = function(addr) return cast("float*", addr)[0] end,
    u64  = function(addr) return cast("uint64_t*", addr)[0] end,
    u32  = function(addr) return cast("uint32_t*", addr)[0] end,
}

-- FFI memory pointers for fast writing
local WRITE = {
    byte = function(addr, v) cast("uint8_t*", addr)[0] = v end,
    i32  = function(addr, v) cast("int32_t*", addr)[0] = v end,
    f32  = function(addr, v) cast("float*", addr)[0] = v end,
    u64  = function(addr, v) cast("uint64_t*", addr)[0] = v end,
    u32  = function(addr, v) cast("uint32_t*", addr)[0] = v end,
}

-- Alias 32-bit types to the u32 reader/writer for performance
for _, kind in ipairs({"key", "str", "ptr", "mask", "flag", "enum", "bool"}) do
    READ[kind] = READ.u32
    WRITE[kind] = WRITE.u32
end

---@class DbcFile
---@field origin string Path or origin of the loaded data.
---@field record_count integer The number of records in the DBC.
---@field field_count integer The number of fields per record.
---@field record_size integer The size in bytes of a single record.
---@field records any Contiguous FFI memory block holding the rows.
---@field str_orig string The original string block loaded from the file.
---@field str_extra string[] List of dynamically appended strings.
---@field str_extra_len integer Total length of the dynamically appended strings.
---@field dirty boolean Indicates if the file has been modified.
---@field schema table The schema definition attached to this DBC.
---@field capacity integer The current max number of records allocated in memory.
---@field by_name table<string, table> Schema fields indexed by name.
---@field _session any Optional attached session manager.
local DbcFile = {}
DbcFile.__index = DbcFile

--- Parses a raw binary WDBC data string into memory.
---@param data string The binary content of the DBC file.
---@param schema table|nil The schema definition for this DBC.
---@param origin string|nil A label (usually the file path) used for errors.
---@return DbcFile file The initialized and loaded DBC file instance.
function DbcFile.new(data, schema, origin)
    origin = origin or "<memory>"
    if string_sub(data, 1, 4) ~= "WDBC" then
        error(origin .. ": not a valid WDBC file")
    end

    local self = setmetatable({}, DbcFile)
    self.origin = origin

    -- Read header (16 bytes)
    local head = cast("const uint32_t*", data)
    self.record_count = tonumber(head[1])
    self.field_count = tonumber(head[2])
    self.record_size = tonumber(head[3])
    local string_size = tonumber(head[4])

    local expected = 4 + HEADER_SIZE + self.record_count * self.record_size + string_size
    if expected ~= #data then
        error(string.format("%s: header implies %d bytes, file is %d bytes", self.origin, expected, #data))
    end

    -- Allocate an FFI buffer for the records and copy the data over.
    -- Ensures we have at least capacity for 1 record to avoid 0-byte allocs.
    self.capacity = math_max(self.record_count, 1)
    self.records = ffi.new("uint8_t[?]", self.capacity * self.record_size)
    
    local records_start = cast("const char*", data) + 4 + HEADER_SIZE
    copy(self.records, records_start, self.record_count * self.record_size)

    -- The original string block remains unmodified. New strings are appended to str_extra.
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

--- Creates an empty DBC file purely from a schema.
--- Useful when building a file from scratch without a base file.
---@param schema table The schema definition.
---@param origin string|nil A label used for errors.
---@return DbcFile file The initialized empty DBC file.
function DbcFile.create_empty(schema, origin)
    local self = setmetatable({}, DbcFile)
    self.origin = origin or "<memory>"
    
    self.record_count = 0
    self.field_count = schema.field_count
    self.record_size = schema.record_size
    
    self.capacity = 8 -- Initial capacity
    self.records = ffi.new("uint8_t[?]", self.capacity * self.record_size)
    
    self.str_orig = "\0" -- Always start string block with a null byte
    self.str_extra = {}
    self.str_extra_len = 0
    self.dirty = true
    
    self:AttachSchema(schema)
    return self
end

--- Validates and binds a schema to the current DBC data.
---@param schema table The schema to attach.
function DbcFile:AttachSchema(schema)
    if schema.record_size ~= self.record_size then
        error(string.format("%s: schema %s describes %d-byte records, file has %d bytes", 
            self.origin, schema.name or "?", schema.record_size, self.record_size))
    end
    if schema.field_count ~= self.field_count then
        error(string.format("%s: schema %s declares %d fields, file has %d fields", 
            self.origin, schema.name or "?", schema.field_count, self.field_count))
    end

    self.schema = schema
    self.by_name = {}
    for _, f in ipairs(schema.fields) do
        self.by_name[f.name] = f
    end
end

--------------------------------------------------------------------------------
-- String Block Management
--------------------------------------------------------------------------------

--- Reads a string from the string block at a specific byte offset.
---@param offset integer The offset from the start of the string block.
---@return string text The null-terminated string found at the offset.
function DbcFile:GetString(offset)
    if offset == 0 then return "" end

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

--- Inserts a string into the string block or reuses an existing matching string.
---@param text string The string to intern.
---@return integer offset The byte offset where the string starts in the string block.
function DbcFile:InternString(text)
    if not text or text == "" then return 0 end

    -- Look for the exact null-terminated string to prevent suffix matching
    local needle = "\0" .. text .. "\0"
    
    local at = string_find(self.str_orig, needle, 1, true)
    if at then
        return at -- The match starts with '\0', so index in lua is 1-based, offset is at
    end

    local base = #self.str_orig
    for _, chunk in ipairs(self.str_extra) do
        local hit = string_find(chunk, needle, 1, true)
        if hit then
            return base + hit
        end
        base = base + #chunk
    end

    -- String not found, append it to the extra chunks.
    local offset = #self.str_orig + self.str_extra_len
    local chunk = text .. "\0"
    table.insert(self.str_extra, chunk)
    self.str_extra_len = self.str_extra_len + #chunk
    
    return offset
end

--------------------------------------------------------------------------------
-- Field Access Methods
--------------------------------------------------------------------------------

--- Retrieves the memory address for a specific row and byte offset.
---@param row integer 1-based index of the row.
---@param offset integer Byte offset within the row.
---@return any pointer Pointer to the specific memory location.
function DbcFile:GetAddress(row, offset)
    if row < 1 or row > self.record_count then
        error(string.format("%s: row %d out of range (1..%d)", self.origin, row, self.record_count))
    end
    return self.records + (row - 1) * self.record_size + offset
end

--- Returns the schema field definition for a given name.
---@param name string The name of the field.
---@return table field The field definition.
function DbcFile:GetField(name)
    if not self.by_name then
        error(self.origin .. ": no schema attached")
    end
    local f = self.by_name[name]
    if not f then
        error(string.format("%s: no field named %q", self.origin, name))
    end
    return f
end

--- Determines the byte offset where the primary key (ID) is stored.
--- Defaults to offset 0 if no schema 'key' field is explicitly specified.
---@return integer offset The byte offset of the ID field.
function DbcFile:GetIdOffset()
    if self.schema then
        for _, f in ipairs(self.schema.fields) do
            if f.kind == "key" then
                return f.offset
            end
        end
    end
    return 0
end

--- Re-allocates the internal buffer if more capacity is needed.
---@param want integer The number of rows required.
function DbcFile:Reserve(want)
    if want <= self.capacity then return end
    
    local new_capacity = math_max(self.capacity * 2, want, 8)
    local grown = ffi.new("uint8_t[?]", new_capacity * self.record_size)
    copy(grown, self.records, self.record_count * self.record_size)
    
    self.records = grown
    self.capacity = new_capacity
end

--- Appends a new, zero-filled row to the end of the records.
---@return integer row The 1-based index of the newly added row.
function DbcFile:AppendRow()
    self:Reserve(self.record_count + 1)
    self.record_count = self.record_count + 1
    ffi.fill(self:GetAddress(self.record_count, 0), self.record_size, 0)
    self.dirty = true
    return self.record_count
end

--------------------------------------------------------------------------------
-- File Operations
--------------------------------------------------------------------------------

--- Serializes the in-memory data back into the raw WDBC binary format.
---@return string binary The raw serialized bytes.
function DbcFile:Serialize()
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
        strings
    })
end

--- Writes the current state of the DBC to a file on disk.
---@param path string The destination path.
---@return integer bytes_written The amount of bytes successfully saved.
function DbcFile:Save(path)
    local data = self:Serialize()
    local f, err = io.open(path, "wb")
    if not f then
        error("cannot write to " .. path .. ": " .. tostring(err))
    end
    f:write(data)
    f:close()
    return #data
end

return {
    DbcFile = DbcFile,
    LOCALE = LOCALE,
    KIND_WIDTH = KIND_WIDTH,
    LOCALE_SLOTS = LOCALE_SLOTS,
    READ = READ,
    WRITE = WRITE,

    --- Opens a DBC file from the disk.
    ---@param path string The path to the file.
    ---@param schema table|nil Optional schema to attach.
    ---@return DbcFile file
    open = function(path, schema)
        local f, err = io.open(path, "rb")
        if not f then
            error("cannot open " .. path .. ": " .. tostring(err))
        end
        local data = f:read("*a")
        f:close()
        return DbcFile.new(data, schema, path)
    end
}
