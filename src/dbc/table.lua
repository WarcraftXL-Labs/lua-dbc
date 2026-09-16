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
local util = load("_util")

local file_mod      = load("file")
local proxy_mod     = load("proxy")
local query_mod     = load("query")

local READ       = file_mod.READ
local WRITE      = file_mod.WRITE
local RowProxy   = proxy_mod.RowProxy
local Query      = query_mod.Query

local is_windows = package.config:sub(1, 1) == "\\"

---Ensures the parent directory of a file path exists.
---@param file_path string
local function ensure_dir(file_path)
    local dir = string.match(file_path, "^(.*)[/\\][^/\\]+$")
    if not dir or dir == "" then return end

    if is_windows then
        local win_dir = dir:gsub("/", "\\")
        os.execute('if not exist "' .. win_dir .. '" mkdir "' .. win_dir .. '" >nul 2>nul')
    else
        os.execute('mkdir -p "' .. dir .. '" 2>/dev/null')
    end
end

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
        local id_offset = self._file:GetIdOffset()
        for row = 1, count do
            local addr = self._file:GetAddress(row, id_offset)
            local id = READ.u32(addr)
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
        local proxy = RowProxy.new(self._file, row, self)
        proxy._id_override = id
        return proxy
    end
    return self:GetRowByIndex(row)
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

    local row_idx = self._file:AppendRow()

    local id_offset = self._file:GetIdOffset()
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

    local new_row_idx = self._file:AppendRow()

    copy(
        self._file:GetAddress(new_row_idx, 0),
        self._file:GetAddress(src_proxy:GetIndex(), 0),
        self._file.record_size
    )

    local id_offset = self._file:GetIdOffset()
    WRITE.u32(self._file:GetAddress(new_row_idx, id_offset), new_id)

    local clone = RowProxy.new(self._file, new_row_idx, self)
    self._id_map[new_id] = new_row_idx
    self._proxies[new_row_idx] = clone

    if data_override and type(data_override) == "table" then
        clone:Populate(data_override)
    end

    return clone
end

---@return dbc.Query<RowProxy>
function DbcTable:Query()
    local row = 0
    local count = self._file.record_count
    local function iterator()
        row = row + 1
        if row <= count then
            return self:GetRowByIndex(row)
        end
        return nil
    end
    return Query.new(iterator)
end

---@return fun(): integer, RowProxy
function DbcTable:Rows()
    local row = 0
    local count = self._file.record_count
    return function()
        row = row + 1
        if row <= count then
            return row, self:GetRowByIndex(row)
        end
        return nil
    end
end

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

    ensure_dir(target)
    return self._file:Save(target)
end

---Enables `tbl[id]` -> FindById(id).
function DbcTable:__index(key)
    if DbcTable[key] ~= nil then
        return DbcTable[key]
    end
    if type(key) == "number" then
        return self:FindById(key)
    end
    return nil
end

return {
    DbcTable = DbcTable,
}