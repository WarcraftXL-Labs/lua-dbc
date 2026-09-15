---@meta
-- Generated LuaLS annotations for MovieFileData (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of MovieFileData in build 3.3.5.12340.
---@class dbc.row.v335.MovieFileData : RowProxy
---@field FileDataID integer
---@field Resolution integer

local row = {}

---Gets the value of field 'FileDataID'.
---@return integer value
function row:GetFileDataID() end

---Sets the value of field 'FileDataID'.
---@param value integer
---@return dbc.row.v335.MovieFileData self
function row:SetFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'FileDataID'.
---@return dbc.row.v335.FileData|nil
function row:GetFileData() end

---Creates a related 'FileData' row and automatically links 'FileDataID'.
---@param data? table
---@return dbc.row.v335.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Resolution'.
---@return integer value
function row:GetResolution() end

---Sets the value of field 'Resolution'.
---@param value integer
---@return dbc.row.v335.MovieFileData self
function row:SetResolution(value) end

---Table container for MovieFileData (Build 3.3.5.12340).
---@class dbc.Table.v335.MovieFileData : DbcTable
---@field [integer] dbc.row.v335.MovieFileData
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.MovieFileData
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.MovieFileData|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.MovieFileData
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.MovieFileData>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.MovieFileData[]
function tbl:GetByRelation(foreign_id) end

return {}
