---@meta
-- Generated LuaLS annotations for FileData (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of FileData in build 3.3.5.12340.
---@class dbc.row.v335.FileData : RowProxy
---@field ID integer
---@field Filename string
---@field Filepath string

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.FileData self
function row:SetID(value) end

---Gets the value of field 'Filename'.
---@return string value
function row:GetFilename() end

---Sets the value of field 'Filename'.
---@param value string
---@return dbc.row.v335.FileData self
function row:SetFilename(value) end

---Gets the value of field 'Filepath'.
---@return string value
function row:GetFilepath() end

---Sets the value of field 'Filepath'.
---@param value string
---@return dbc.row.v335.FileData self
function row:SetFilepath(value) end

---Table container for FileData (Build 3.3.5.12340).
---@class dbc.Table.v335.FileData : DbcTable
---@field [integer] dbc.row.v335.FileData
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.FileData
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.FileData|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.FileData
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.FileData>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.FileData[]
function tbl:GetByRelation(foreign_id) end

return {}
