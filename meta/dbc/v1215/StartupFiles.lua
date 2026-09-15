---@meta
-- Generated LuaLS annotations for StartupFiles (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of StartupFiles in build 12.1.5.69594.
---@class dbc.row.v1215.StartupFiles : RowProxy
---@field ID integer
---@field FileDataID integer
---@field Locale integer
---@field BytesRequired integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.StartupFiles self
function row:SetID(value) end

---Gets the value of field 'FileDataID'.
---@return integer value
function row:GetFileDataID() end

---Sets the value of field 'FileDataID'.
---@param value integer
---@return dbc.row.v1215.StartupFiles self
function row:SetFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'FileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFileData() end

---Creates a related 'FileData' row and automatically links 'FileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Locale'.
---@return integer value
function row:GetLocale() end

---Sets the value of field 'Locale'.
---@param value integer
---@return dbc.row.v1215.StartupFiles self
function row:SetLocale(value) end

---Gets the value of field 'BytesRequired'.
---@return integer value
function row:GetBytesRequired() end

---Sets the value of field 'BytesRequired'.
---@param value integer
---@return dbc.row.v1215.StartupFiles self
function row:SetBytesRequired(value) end

---Table container for StartupFiles (Build 12.1.5.69594).
---@class dbc.Table.v1215.StartupFiles : DbcTable
---@field [integer] dbc.row.v1215.StartupFiles
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.StartupFiles
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.StartupFiles|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.StartupFiles
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.StartupFiles>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.StartupFiles[]
function tbl:GetByRelation(foreign_id) end

return {}
