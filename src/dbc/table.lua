--[[
    table.lua
    Provides the DbcTable class, wrapping DbcFile with high-level row management,
    fast O(1) primary key indexing, LINQ querying, row creation from scratch, and cloning.
]]

local ffi = require("ffi")
local copy = ffi.copy

-- Localized loaders for modules
local function load_module(name)
    local ok, mod = pcall(require, "dbc." .. name)
    if ok then return mod end
    ok, mod = pcall(require, "src.dbc." .. name)
    if ok then return mod end
    return require(name)
end

local file_mod = load_module("file")
local proxy_mod = load_module("proxy")
local query_mod = load_module("query")
local relations_mod = load_module("relations")

local READ = file_mod.READ
local RowProxy = proxy_mod.RowProxy
local Query = query_mod.Query
local Relations = relations_mod

--- Ensures the directory for a file path exists before writing.
--- @param file_path string Target path to create directories for.
local is_windows = package.config:sub(1, 1) == "\\"

local function ensure_dir(file_path)
    local dir = string.match(file_path, "^(.*)[/\\][^/\\]+$")
    if dir and dir ~= "" then
        if is_windows then
            local win_dir = dir:gsub("/", "\\")
            os.execute('if not exist "' .. win_dir .. '" mkdir "' .. win_dir .. '" >nul 2>nul')
        else
            os.execute('mkdir -p "' .. dir .. '" 2>/dev/null')
        end
    end
end

---@class DbcTable
---High-level table wrapper providing indexing, querying, and row creation.
---@field _file DbcFile Low-level DBC file instance.
---@field _workspace any Optional associated DbcWorkspace manager.
---@field _session any Backwards compatibility alias for _workspace.
---@field _proxies table<integer, RowProxy> Cache of row proxies indexed by 1-based row index.
---@field _id_map table<integer, integer> Map of primary key ID to 1-based row index.
local DbcTable = {}
DbcTable.__index = DbcTable

---Creates a new DbcTable wrapping an initialized DbcFile.
---@param file DbcFile The underlying DBC file.
---@param workspace any Optional parent DbcWorkspace.
---@return DbcTable table The initialized table instance.
function DbcTable.new(file, workspace)
    local self = setmetatable({}, DbcTable)
    self._file = file
    self._workspace = workspace
    self._session = workspace
    self._proxies = {}
    self._id_map = {}

    -- Link file back to workspace for reflection relation lookups
    if workspace then
        self._file._workspace = workspace
        self._file._session = workspace
    end

    self:RebuildIndex()
    return self
end

---Re-indexes all primary keys in the DBC file into the internal lookup map.
function DbcTable:RebuildIndex()
    self._id_map = {}
    local count = self._file.record_count
    if count == 0 then return end

    local id_offset = self._file:GetIdOffset()
    for row = 1, count do
        local addr = self._file:GetAddress(row, id_offset)
        local id = READ.u32(addr)
        if id ~= 0 or not self._id_map[0] then
            self._id_map[id] = row
        end
    end
end

---Returns the underlying DbcFile instance.
---@return DbcFile file
function DbcTable:GetFile()
    return self._file
end

---Returns the schema attached to the DBC table.
---@return table schema
function DbcTable:GetSchema()
    return self._file.schema
end

---Returns the associated DbcWorkspace, if any.
---@return any workspace
function DbcTable:GetWorkspace()
    return self._workspace
end

---Returns the number of records in this table.
---@return integer count
function DbcTable:Count()
    return self._file.record_count
end

---Retrieves the maximum primary key (ID) present in the table.
---@return integer max_id
function DbcTable:GetMaxId()
    local max_id = 0
    for id, _ in pairs(self._id_map) do
        if id > max_id then
            max_id = id
        end
    end
    return max_id
end

---Computes the next available sequential primary key ID (max_id + 1).
---@return integer next_id
function DbcTable:GetNextId()
    return self:GetMaxId() + 1
end

---Retrieves a RowProxy for a specific 1-based row index.
---@param row_index integer 1-based row index.
---@return RowProxy proxy
function DbcTable:GetRow(row_index)
    if row_index < 1 or row_index > self._file.record_count then
        error(string.format("%s: row index %d out of bounds (1..%d)", 
            self._file.origin, row_index, self._file.record_count))
    end

    local proxy = self._proxies[row_index]
    if not proxy then
        proxy = RowProxy.new(self._file, row_index, self)
        self._proxies[row_index] = proxy
    end
    return proxy
end

---Finds a row by its primary key ID in O(1) time.
---@param id integer Primary key ID.
---@return RowProxy|nil proxy The row proxy if found, otherwise nil.
function DbcTable:FindById(id)
    local row_index = self._id_map[id]
    if not row_index then
        return nil
    end
    return self:GetRow(row_index)
end

---Alias for FindById.
---@param id integer Primary key ID.
---@return RowProxy|nil proxy
function DbcTable:GetById(id)
    return self:FindById(id)
end

---Creates a brand-new row from scratch with an optional primary key ID.
---@param id integer|nil Optional primary key to assign to the new row.
---@return RowProxy proxy The newly created row proxy.
function DbcTable:NewRow(id)
    local row_index = self._file:AppendRow()
    local proxy = RowProxy.new(self._file, row_index, self)
    self._proxies[row_index] = proxy

    if id ~= nil then
        proxy:SetID(id)
        self._id_map[id] = row_index
    end

    return proxy
end

---Alias for NewRow.
---@param id integer|nil Optional primary key to assign.
---@return RowProxy proxy
function DbcTable:Create(id)
    return self:NewRow(id)
end

---Creates a brand-new row using the next available primary key ID (max + 1).
---Optionally initializes the fields from a data table.
---@param data table|nil Optional key-value table of field initializers.
---@return RowProxy proxy The newly created row proxy.
function DbcTable:CreateNext(data)
    local next_id = self:GetNextId()
    local proxy = self:NewRow(next_id)
    if type(data) == "table" then
        proxy:FromTable(data)
    end
    return proxy
end

---Clones an existing row and optionally assigns it a new primary key ID.
---@param row_or_id integer|RowProxy The source row index, ID, or RowProxy instance.
---@param new_id integer|nil Optional new ID for the cloned row.
---@return RowProxy cloned_proxy The newly cloned row proxy.
function DbcTable:CloneRow(row_or_id, new_id)
    local src_row_index
    if type(row_or_id) == "table" and row_or_id.GetIndex then
        src_row_index = row_or_id:GetIndex()
    elseif self._id_map[row_or_id] then
        src_row_index = self._id_map[row_or_id]
    elseif type(row_or_id) == "number" and row_or_id >= 1 and row_or_id <= self._file.record_count then
        src_row_index = row_or_id
    else
        error(string.format("CloneRow: source row %s not found", tostring(row_or_id)))
    end

    local new_row_index = self._file:AppendRow()
    local src_addr = self._file:GetAddress(src_row_index, 0)
    local dst_addr = self._file:GetAddress(new_row_index, 0)
    copy(dst_addr, src_addr, self._file.record_size)

    local clone = RowProxy.new(self._file, new_row_index, self)
    self._proxies[new_row_index] = clone

    if new_id ~= nil then
        clone:SetID(new_id)
        self._id_map[new_id] = new_row_index
    end

    return clone
end

---Returns a sequential array of all RowProxy instances in the table.
---@return RowProxy[] rows Array of RowProxy objects.
function DbcTable:GetAllRows()
    local rows = {}
    local count = self._file.record_count
    for i = 1, count do
        rows[i] = self:GetRow(i)
    end
    return rows
end

---Initializes a LINQ Query builder over all rows in the table.
---@return dbc.Query<RowProxy> query
function DbcTable:Query()
    return Query.new(self)
end

---Returns an iterator yielding (id, row_proxy) for every row in the table.
---@return fun(): integer, RowProxy
function DbcTable:Rows()
    local index = 0
    local count = self._file.record_count
    return function()
        index = index + 1
        if index <= count then
            local proxy = self:GetRow(index)
            return proxy:GetID(), proxy
        end
        return nil
    end
end

---Serializes and saves the DBC table to disk.
---If path is not given, uses the workspace output directory or the file origin.
---@param path string|nil Optional destination path. Defaults to workspace output directory or origin.
---@return integer bytes_written
function DbcTable:Save(path)
    local target = path
    if not target then
        if self._workspace and self._workspace.output_dir then
            local name = (self._file.schema and self._file.schema.name)
            if not name then
                name = string.match(self._file.origin or "", "([^/\\]+)%.dbc$") or "output"
            end
            target = self._workspace.output_dir .. "/" .. name .. ".dbc"
        else
            target = self._file.origin
        end
    end

    if not target or target == "<memory>" then
        error("Cannot save: no output path specified and table is not bound to a workspace with an output directory")
    end

    ensure_dir(target)
    return self._file:Save(target)
end

---Returns a list of foreign key relationships defined or inferred for this table.
---@return table[] relations
function DbcTable:GetRelations()
    local name = self._file.schema and self._file.schema.name
    if name then
        return Relations.Get(name)
    end
    return {}
end

---Returns a list of inbound relationships pointing to this table (children / has_many).
---@return table[] inbounds
function DbcTable:GetInboundRelations()
    local name = self._file.schema and self._file.schema.name
    if name then
        return Relations.GetInbound(name)
    end
    return {}
end

---Metatable metamethods for idiomatic Lua usage.
DbcTable.__len = function(self)
    return self:Count()
end

return {
    DbcTable = DbcTable,
}
