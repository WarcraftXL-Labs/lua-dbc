--[[
    base.lua
    Abstract Base Class for DBC and DB2 binary file drivers in lua-dbc.
    Provides standard interfaces for record reading, writing, string tables,
    schema binding, copy tables, and relationship indexing.
]]

local ffi = require("ffi")

local load = require("dbc._loader")
local util = load("_util")

-- LuaJIT has no ffi.move, and ffi.copy is memcpy: undefined when source and
-- destination overlap, which is exactly what shifting a record buffer up or
-- down by one record does. memmove is the call that defines that case.
ffi.cdef[[void *memmove(void *dest, const void *src, size_t n);]]
local memmove = ffi.C.memmove

local cast = ffi.cast
local copy = ffi.copy
local fill = ffi.fill
local ffi_string = ffi.string
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
    i8 = 1,
    u8 = 1,
    i16 = 2,
    u16 = 2,
    u64 = 8,
    loc = 4 * (LOCALE_SLOTS + 1),
}

local READ = {
    byte = function(addr) return cast("uint8_t*", addr)[0] end,
    i8   = function(addr) return cast("int8_t*", addr)[0] end,
    u8   = function(addr) return cast("uint8_t*", addr)[0] end,
    i16  = function(addr) return cast("int16_t*", addr)[0] end,
    u16  = function(addr) return cast("uint16_t*", addr)[0] end,
    i32  = function(addr) return cast("int32_t*", addr)[0] end,
    f32  = function(addr) return cast("float*", addr)[0] end,
    u64  = function(addr) return cast("uint64_t*", addr)[0] end,
    u32  = function(addr) return cast("uint32_t*", addr)[0] end,
}

local WRITE = {
    byte = function(addr, v) cast("uint8_t*", addr)[0] = v end,
    i8   = function(addr, v) cast("int8_t*", addr)[0] = v end,
    u8   = function(addr, v) cast("uint8_t*", addr)[0] = v end,
    i16  = function(addr, v) cast("int16_t*", addr)[0] = v end,
    u16  = function(addr, v) cast("uint16_t*", addr)[0] = v end,
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

    -- Structural-edit stamp; see "Structural row editing" near the bottom.
    self._generation = 0
    self._change_floors = nil
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
    if not id_offset then
        -- No ID column in the record and no id_list to read it from: the
        -- record ordinal is the only identity such a table has.
        return row
    end
    local addr = self:GetAddress(row, id_offset)
    return READ.u32(addr)
end

--- Returns the byte offset of the ID field in a record, or nil when the table
--- has no inline ID column. Callers that write an ID must treat nil as "there
--- is nowhere to put it"; offset 0 is the first real column of those tables.
--- @return integer|nil offset
function BaseFormatDriver:GetIdOffset()
    local schema = self.schema
    if not schema then return 0 end

    -- Only the DBD loader knows about non-inline IDs. Hand-built schemas
    -- leave has_id_inline unset and keep the historical offset-0 default.
    if schema.has_id_inline == false then return nil end
    return schema.id_offset or 0
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

-- ---------------------------------------------------------------------------
-- Structural row editing
--
-- Inserting or deleting a record moves every record after it, so every row
-- index a caller is holding - RowProxy._row, DbcTable._id_map,
-- DbcTable._proxies - may now name a different record than it did a moment
-- ago. A driver cannot find those holders, so rather than repair them it
-- leaves a stamp they can check: `_generation` counts structural edits and
-- `_change_floors[g]` is the lowest row index edit `g` disturbed. A holder
-- that remembers the generation it was minted at can then ask whether
-- anything since then moved its row - which RowProxy does on every access,
-- for one integer comparison on the common path.
--
-- Appending is not a structural edit by this definition and does not bump the
-- generation: it moves no existing record, so nothing holding an index can be
-- wrong afterwards. That is why AppendRow stays as it was.
--
-- The string heap needs no work here, and that is a property worth stating
-- rather than a gap. It is append-only and never reclaimed, so deleting a
-- record leaves its strings in the heap at unchanged offsets, and re-inserting
-- that record's bytes restores str fields whose u32 offsets still resolve to
-- the same text. Delete and its undo are therefore exact for strings. The
-- price is heap bytes no record references any more, which costs file size and
-- nothing else: readers only ever reach the heap by following an offset out
-- of a record.
-- ---------------------------------------------------------------------------

--- Raises unless this driver stores records as a dense array of record_size
--- bytes addressed by ordinal, which is what shifting rows around assumes.
--- WDB3/WDB5/WDC keep IDs in a parallel id_list, row indices in a
--- relationship_map, and in WDC's case bit-packed fields and section offset
--- maps besides: a buffer shift would silently desynchronise all of it, so
--- those formats get a clear refusal instead of a half-working edit.
--- @param op string Operation name, for the message.
function BaseFormatDriver:AssertRowEditable(op)
    local why
    if not self.records or not self.Reserve then
        why = "records are not held in a resizable flat buffer"
    elseif not self.record_size or self.record_size <= 0 then
        why = "the record size is unknown"
    elseif self.id_list then
        why = "IDs live in a separate id_list that would have to be shifted too"
    elseif self.relationship_map then
        why = "the embedded relationship map stores row indices"
    elseif self.field_storage_info or self.is_compressed then
        why = "fields are bit-packed, so records are not addressable by ordinal"
    end

    if why then
        error(string.format("%s: %s is not supported on %s (%s)",
            self.origin, op, self.format, why))
    end
end

--- Raises unless `index` is a 1-based row index in 1..`limit`.
--- @param index any
--- @param limit integer Highest accepted index.
--- @param op string Operation name, for the message.
function BaseFormatDriver:AssertRowIndex(index, limit, op)
    if type(index) ~= "number" or index % 1 ~= 0 or index < 1 or index > limit then
        error(string.format("%s: %s index %s out of range (1..%d)",
            self.origin, op, tostring(index), limit))
    end
end

--- Records that a structural edit disturbed every row from `floor` upwards.
--- The floors table keeps one integer per edit for the life of the driver, so
--- that a holder minted at any past generation can still be judged exactly;
--- an editing session would have to make millions of edits for that to matter.
--- @param floor integer Lowest 1-based row index the edit moved or removed.
function BaseFormatDriver:MarkStructuralChange(floor)
    local generation = (self._generation or 0) + 1
    self._generation = generation

    local floors = self._change_floors
    if not floors then
        floors = {}
        self._change_floors = floors
    end
    floors[generation] = floor

    self.dirty = true
end

--- Returns the lowest row index disturbed by any structural edit made after
--- generation `since`, or nil when none were made.
--- Holders re-stamp themselves with the current generation once this clears
--- them, so each one walks each generation at most once.
--- @param since integer Generation the caller was last known good at.
--- @return integer|nil floor
function BaseFormatDriver:StructuralFloorSince(since)
    local generation = self._generation or 0
    if since >= generation then return nil end

    local floors = self._change_floors
    if not floors then return nil end

    local lowest
    for g = since + 1, generation do
        local floor = floors[g]
        if floor and (not lowest or floor < lowest) then
            lowest = floor
        end
    end
    return lowest
end

--- Returns a record's raw bytes, for an undo stack or a duplicate.
--- The bytes are a plain Lua string and owe nothing to the buffer, so a caller
--- can hold one across the delete it is meant to undo.
--- @param index integer 1-based row index.
--- @return string bytes Exactly record_size bytes.
function BaseFormatDriver:CopyRecord(index)
    self:AssertRowEditable("CopyRecord")
    self:AssertRowIndex(index, self.record_count, "CopyRecord")
    return ffi_string(self:GetAddress(index, 0), self.record_size)
end

--- Deletes a record, compacting the records after it down by one slot.
--- The string heap is deliberately left alone; see the note above.
--- @param index integer 1-based row index.
function BaseFormatDriver:DeleteRow(index)
    self:AssertRowEditable("DeleteRow")
    self:AssertRowIndex(index, self.record_count, "DeleteRow")

    -- A copy table aliases IDs, not rows, so shifting records underneath it is
    -- harmless - but deleting a record other IDs are declared copies of would
    -- quietly take those rows with it. Refuse rather than drop them.
    local copy_table = self.copy_table
    if copy_table and next(copy_table) then
        local id = self:GetRowId(index)
        for new_id, source_id in pairs(copy_table) do
            if source_id == id then
                error(string.format(
                    "%s: row %d (ID %d) is the source of copy-table ID %d; "
                    .. "drop the copy before deleting the record it copies",
                    self.origin, index, id, new_id))
            end
        end
    end

    local tail = self.record_count - index
    if tail > 0 then
        memmove(self:GetAddress(index, 0),
                self:GetAddress(index + 1, 0),
                tail * self.record_size)
    end

    self.record_count = self.record_count - 1
    self:MarkStructuralChange(index)
end

--- Inserts a record at a 1-based index, shifting the rest up one slot.
--- `index == record_count + 1` appends. Handing it the bytes CopyRecord
--- returned for the row DeleteRow removed puts the file back exactly as it
--- was, strings included.
--- @param index integer 1-based row index; record_count + 1 appends.
--- @param bytes string|nil Exactly record_size bytes, or nil for a blank row.
--- @return integer index The index the record was written at.
function BaseFormatDriver:InsertRow(index, bytes)
    self:AssertRowEditable("InsertRow")
    self:AssertRowIndex(index, self.record_count + 1, "InsertRow")

    if bytes ~= nil then
        if type(bytes) ~= "string" then
            error(string.format("%s: InsertRow expects record bytes or nil, got %s",
                self.origin, type(bytes)))
        end
        if #bytes ~= self.record_size then
            error(string.format("%s: InsertRow got %d bytes, records are %d bytes",
                self.origin, #bytes, self.record_size))
        end
    end

    self:Reserve(self.record_count + 1)

    -- Grow the count before addressing: GetAddress bounds-checks against it,
    -- and the shift's destination is the slot that does not exist yet.
    local tail = self.record_count - index + 1
    self.record_count = self.record_count + 1
    if tail > 0 then
        memmove(self:GetAddress(index + 1, 0),
                self:GetAddress(index, 0),
                tail * self.record_size)
    end

    local slot = self:GetAddress(index, 0)
    if bytes then
        copy(slot, bytes, self.record_size)
    else
        fill(slot, self.record_size, 0)
    end

    self:MarkStructuralChange(index)
    return index
end

--- Saves the database file to disk.
--- @param path string Destination path.
--- @return integer bytes_written
function BaseFormatDriver:Save(path)
    if not self.Serialize then
        error(string.format("%s: saving format %s is not supported", self.origin, self.format))
    end
    local data = self:Serialize()
    local f, err = util.open_write(path)
    if not f then
        error(string.format("cannot write to %s: %s", path, tostring(err)))
    end
    f:write(data)
    f:close()

    -- The on-disk copy now matches memory, so `only_dirty` saves may skip it.
    self.dirty = false
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
