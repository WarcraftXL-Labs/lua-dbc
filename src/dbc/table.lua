--[[
    table.lua
    High-level DbcTable wrapper around DbcFile.

    Adds:
      - O(1) primary-key indexing (with copy-table synthesis)
      - Cached RowProxy instances
      - LINQ query entry point
      - Row creation and cloning
]]

local ffi = require("ffi")
local copy = ffi.copy

local load = require("dbc._loader")

local file_mod      = load("file")
local proxy_mod     = load("proxy")
local query_mod     = load("query")

local READ       = file_mod.READ
local WRITE      = file_mod.WRITE
local RowProxy   = proxy_mod.RowProxy
local Query      = query_mod.Query

---@class DbcTable
---@field _file table Low-level DbcFile driver.
---@field _workspace table|nil Owning DbcWorkspace, if any.
---@field _proxies table<integer, RowProxy> Row-indexed proxy cache.
---@field _id_map table<integer, integer> PK -> 1-based row index.
local DbcTable = {}
DbcTable.__index = DbcTable

---Creates a new DbcTable wrapping an initialized DbcFile.
---@param file table
---@param workspace table|nil
---@return DbcTable
function DbcTable.new(file, workspace)
    local self = setmetatable({}, DbcTable)
    self._file = file
    self._workspace = workspace
    self._proxies = {}
    self._copy_proxies = {}
    self._id_map = {}

    -- Back-reference used by proxy.lua for relation lookups.
    if workspace then
        file._workspace = workspace
    end

    self:RebuildIndex()
    return self
end

---(Re)builds the primary-key -> row index map.
---Uses the fast path when the file exposes a GetRowId method, otherwise
---reads the ID column at the schema's id_offset for each row.
function DbcTable:RebuildIndex()
    local id_map = {}
    local count = self._file.record_count
    if count == 0 then
        self._id_map = id_map
        return
    end

    if self._file.GetRowId then
        for row = 1, count do
            local id = self._file:GetRowId(row)
            if id ~= 0 or not id_map[0] then
                id_map[id] = row
            end
        end
    else
        -- A nil offset means the table has no ID column; the record ordinal
        -- is then its own key (see BaseFormatDriver:GetRowId).
        local id_offset = self._file:GetIdOffset()
        for row = 1, count do
            local id = row
            if id_offset then
                id = READ.u32(self._file:GetAddress(row, id_offset))
            end
            if id ~= 0 or not id_map[0] then
                id_map[id] = row
            end
        end
    end

    -- Merge copy-table aliases (WDB2, WDB5, WDC*)
    local copy_table = self._file.copy_table
    if copy_table then
        for new_id, source_id in pairs(copy_table) do
            local source_row = id_map[source_id]
            if source_row then
                id_map[new_id] = source_row
            end
        end
    end

    self._id_map = id_map
end

---@return table Underlying DbcFile.
function DbcTable:GetFile() return self._file end

---@return string Format name (e.g. WDBC, WDB2).
function DbcTable:GetFormatName() return self._file and self._file.format or "WDBC" end

---@return table|nil Attached schema.
function DbcTable:GetSchema() return self._file.schema end

---@return table|nil Owning workspace.
function DbcTable:GetWorkspace() return self._workspace end

---@return integer
function DbcTable:Count() return self._file.record_count end

---Returns a cached RowProxy for a 1-based row index.
---@param row integer
---@return RowProxy
function DbcTable:GetRowByIndex(row)
    if row < 1 or row > self._file.record_count then
        error(string.format("%s: row index %d out of bounds (1..%d)",
            self._file.origin or "table", row, self._file.record_count))
    end

    local proxy = self._proxies[row]
    if not proxy then
        proxy = RowProxy.new(self._file, row, self)
        self._proxies[row] = proxy
    end
    return proxy
end

---Fetches a row by primary key, raising if not found.
---@param id integer
---@return RowProxy
function DbcTable:GetRowById(id)
    local row = self._id_map[id]
    if not row then
        error(string.format("%s: row with ID %s does not exist",
            self._file.origin
                or (self._file.schema and self._file.schema.name)
                or "table",
            tostring(id)))
    end
    return self:_wrapCopy(id, row)
end

---Fetches a row by primary key, returning nil if not found.
---@param id integer
---@return RowProxy|nil
function DbcTable:FindById(id)
    local row = self._id_map[id]
    if not row then return nil end
    return self:_wrapCopy(id, row)
end

---Wraps a row index in a RowProxy, honoring copy-table ID overrides.
---@param id integer
---@param row integer
---@return RowProxy
function DbcTable:_wrapCopy(id, row)
    local copy_table = self._file.copy_table
    if copy_table and copy_table[id] then
        local cached = self._copy_proxies[id]
        if cached then return cached end
        local proxy = RowProxy.new(self._file, row, self)
        proxy._id_override = id
        self._copy_proxies[id] = proxy
        return proxy
    end
    return self:GetRowByIndex(row)
end

---Returns the record offset an explicit primary key must be written to.
---Raises for tables with no inline ID column: offset 0 is their first real
---column, so writing there would silently corrupt the record.
---@return integer offset
function DbcTable:_RequireIdOffset()
    local id_offset = self._file:GetIdOffset()
    if not id_offset then
        error(string.format(
            "%s: table has no ID column in its records; rows cannot be created with an explicit ID",
            (self._file.schema and self._file.schema.name) or self._file.origin or "table"))
    end
    return id_offset
end

---Returns rows linked to a foreign parent ID through the binary relation map.
---@param foreign_id integer
---@return RowProxy[]
function DbcTable:GetByRelation(foreign_id)
    local rows = {}
    if self._file.GetRelationRows then
        local row_indices = self._file:GetRelationRows(foreign_id)
        for i = 1, #row_indices do
            rows[i] = self:GetRowByIndex(row_indices[i])
        end
    end
    return rows
end

---@param id integer
---@return boolean
function DbcTable:Has(id)
    return self._id_map[id] ~= nil
end

---@return integer Highest primary key currently in the table (0 if empty).
function DbcTable:GetMaxID()
    local max_id = 0
    for id in pairs(self._id_map) do
        if id > max_id then max_id = id end
    end
    return max_id
end

---Creates a new row with a given primary key.
---@param id integer
---@param data table|nil
---@return RowProxy
function DbcTable:Create(id, data)
    if not id or type(id) ~= "number" then
        error(string.format("%s: Create requires a valid numeric ID",
            self._file.origin or "table"))
    end
    if self._id_map[id] then
        error(string.format("%s: row with ID %d already exists",
            self._file.origin or "table", id))
    end

    local id_offset = self:_RequireIdOffset()

    local row_idx = self._file:AppendRow()
    WRITE.u32(self._file:GetAddress(row_idx, id_offset), id)

    local proxy = RowProxy.new(self._file, row_idx, self)
    self._id_map[id] = row_idx
    self._proxies[row_idx] = proxy

    if data and type(data) == "table" then
        proxy:Populate(data)
    end
    return proxy
end

---Creates a new row with an auto-incremented primary key.
---@param data table|nil
---@return RowProxy
function DbcTable:CreateNext(data)
    return self:Create(self:GetMaxID() + 1, data)
end

---Clones an existing row into a new row with a new ID.
---@param source_id_or_row integer|RowProxy
---@param new_id integer
---@param data_override table|nil
---@return RowProxy
function DbcTable:CloneRow(source_id_or_row, new_id, data_override)
    local src_proxy
    if type(source_id_or_row) == "number" then
        src_proxy = self:GetRowById(source_id_or_row)
    else
        src_proxy = source_id_or_row
    end

    if self._id_map[new_id] then
        error(string.format("%s: row with ID %d already exists",
            self._file.origin or "table", new_id))
    end

    local id_offset = self:_RequireIdOffset()

    local new_row_idx = self._file:AppendRow()

    copy(
        self._file:GetAddress(new_row_idx, 0),
        self._file:GetAddress(src_proxy:GetIndex(), 0),
        self._file.record_size
    )

    WRITE.u32(self._file:GetAddress(new_row_idx, id_offset), new_id)

    local clone = RowProxy.new(self._file, new_row_idx, self)
    self._id_map[new_id] = new_row_idx
    self._proxies[new_row_idx] = clone

    if data_override and type(data_override) == "table" then
        clone:Populate(data_override)
    end

    return clone
end

-- ---------------------------------------------------------------------------
-- Structural row editing
--
-- The driver moves the bytes and stamps the change (see formats/base.lua);
-- the table owns the two caches that hold row indices, _id_map and _proxies,
-- and has to bring them back in line afterwards.
-- ---------------------------------------------------------------------------

---Brings the table's index caches back in line after the driver has inserted
---or deleted a record at `floor`.
---@param floor integer Lowest 1-based row index the edit disturbed.
function DbcTable:_AfterStructuralChange(floor)
    -- Only proxies at or after the edit point moved. The ones before it still
    -- name the same record, so they keep their cache slot - and with it their
    -- identity, which callers comparing two lookups of the same row rely on.
    -- This walk costs one step per proxy handed out so far, not one per
    -- record. Dropping the moved ones matters beyond tidiness: a later append
    -- can land on an index a dead proxy is still cached at, and GetRowByIndex
    -- would hand back the dead one for a perfectly good row.
    for row in pairs(self._proxies) do
        if row >= floor then self._proxies[row] = nil end
    end

    -- Copy proxies are keyed by ID but hold a row index, and telling which of
    -- them moved costs as much as rebuilding them, so they all go.
    self._copy_proxies = {}

    -- RebuildIndex is O(record_count). That is the right price for one edit
    -- and the wrong one for a loop of them - N deletions cost O(N * count) -
    -- so a caller removing many rows should gather the indices first and
    -- delete them in one pass, highest index first, rather than calling this
    -- per row. No bulk entry point is offered here because none is tested.
    self:RebuildIndex()
end

---Returns a record's raw bytes, for an undo stack.
---The bytes survive any later edit, so this is what to capture before a
---DeleteRow you may want to undo: InsertRow puts them back exactly.
---@param index integer 1-based row index.
---@return string bytes
function DbcTable:CopyRecord(index)
    return self._file:CopyRecord(index)
end

---Deletes the record at a 1-based index, shifting the rows after it down.
---Invalidates every RowProxy at or after `index`; see proxy.lua.
---@param index integer 1-based row index.
---@return DbcTable self
function DbcTable:DeleteRow(index)
    self._file:DeleteRow(index)
    self:_AfterStructuralChange(index)
    return self
end

---Inserts a record at a 1-based index, shifting the rows after it up.
---`index == Count() + 1` appends. Invalidates every RowProxy at or after
---`index`; see proxy.lua.
---@param index integer 1-based row index; Count() + 1 appends.
---@param bytes string|nil Exactly record_size bytes, or nil for a blank row.
---@return RowProxy row The inserted row.
function DbcTable:InsertRow(index, bytes)
    self._file:InsertRow(index, bytes)
    self:_AfterStructuralChange(index)
    return self:GetRowByIndex(index)
end

---Duplicates the record at a 1-based index, appending the copy.
---
---Distinct from CloneRow, which takes a source *ID* and writes a new one, and
---so refuses on the tables that keep no ID in their records. This takes an
---index and copies bytes, which every table has, including those 22.
---
---On a table that does store an ID, the copy must not share its source's key,
---so `new_id` is written over it; it defaults to GetMaxID() + 1. Tables
---keyed on the record ordinal have nowhere to put one and must be passed nil.
---
---The copy lands at the end, as Create's and CloneRow's rows do. Duplicating
---into the middle is CopyRecord plus InsertRow, which renumbers every row
---after the insertion point - on an ordinal-keyed table that rewrites those
---rows' keys, so it has to be the caller's explicit choice, not a default.
---@param index integer 1-based index of the record to duplicate.
---@param new_id integer|nil Key for the copy; defaults to GetMaxID() + 1.
---@return RowProxy row The duplicate.
function DbcTable:DuplicateRowByIndex(index, new_id)
    -- CopyRecord validates the index, so nothing below has to.
    local bytes = self._file:CopyRecord(index)
    local id_offset = self._file:GetIdOffset()

    if id_offset then
        -- GetMaxID scans the whole id_map, so it is called here at most once
        -- per duplicate and never inside the append below.
        if new_id == nil then new_id = self:GetMaxID() + 1 end
        if self._id_map[new_id] then
            error(string.format("%s: row with ID %s already exists",
                self._file.origin or "table", tostring(new_id)))
        end
    elseif new_id ~= nil then
        error(string.format(
            "%s: table has no ID column in its records; the duplicate keys on "
            .. "its own ordinal and cannot be given ID %s",
            (self._file.schema and self._file.schema.name)
                or self._file.origin or "table",
            tostring(new_id)))
    end

    local at = self._file.record_count + 1
    self._file:InsertRow(at, bytes)
    if id_offset then
        WRITE.u32(self._file:GetAddress(at, id_offset), new_id)
    end

    self:_AfterStructuralChange(at)
    return self:GetRowByIndex(at)
end

---@return dbc.Query<RowProxy>
function DbcTable:Query()
    return Query.new(self)
end

---Iterates the table as (index, row) pairs.
---
---record_count is read on every step rather than snapshotted at creation: a
---table that shrinks mid-iteration would otherwise be walked one index past
---its end, and GetRowByIndex would raise on a loop that had done nothing
---wrong.
---
---That stops the walk from running off the end; it does not make deleting
---during iteration *mean* anything. The rows after a deletion shift down one,
---so the next step skips whichever row took the deleted one's place. Gather
---the indices in one pass and delete afterwards, highest first.
---@return fun(): integer, RowProxy
function DbcTable:Rows()
    local row = 0
    return function()
        row = row + 1
        if row <= self._file.record_count then
            return row, self:GetRowByIndex(row)
        end
        return nil
    end
end

---Calls `fn` for every row, in index order.
---The bound is evaluated once, so deleting rows from inside `fn` will raise
---once the walk passes the shortened end. Use Rows(), or collect and delete
---afterwards - see the note on Rows.
---@param fn fun(row: RowProxy, index: integer)
---@return DbcTable self
function DbcTable:ForEach(fn)
    for row = 1, self._file.record_count do
        fn(self:GetRowByIndex(row), row)
    end
    return self
end

---Saves the table to disk.
---@param path string|nil
---@return integer bytes_written
function DbcTable:Save(path)
    local target = path
    if not target then
        if self._workspace then
            local schema_name = (self._file.schema and self._file.schema.name) or "Unknown"
            local ext = (self._file.format == "WDBC" and "dbc") or "db2"
            target = self._workspace:GetOutputDir() .. "/" .. schema_name .. "." .. ext
        else
            target = self._file.origin
        end
    end

    if not target or string.match(target, "^<memory") then
        error("DbcTable:Save called on memory DBC with no target path specified")
    end

    -- The driver's Save creates the directory if the write fails, so there is
    -- nothing to check here.
    return self._file:Save(target)
end

---Enables `tbl[id]` -> FindById(id) and method lookup.
function DbcTable.__index(self, key)
    local method = DbcTable[key]
    if method ~= nil then
        return method
    end
    if type(key) == "number" then
        return self:FindById(key)
    end
    return nil
end

return {
    DbcTable = DbcTable,
}