---@meta
-- Generated LuaLS annotations for MovieFileData (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MovieFileData in build 12.1.5.69594.
---@class dbc.row.v1215.MovieFileData : RowProxy
---@field ID integer
---@field Resolution integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MovieFileData self
function row:SetID(value) end

---Navigates foreign relationship to 'FileData' via 'ID'.
---@return dbc.row.v1215.FileData|nil
function row:GetID() end

---Creates a related 'FileData' row and automatically links 'ID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Resolution'.
---@return integer value
function row:GetResolution() end

---Sets the value of field 'Resolution'.
---@param value integer
---@return dbc.row.v1215.MovieFileData self
function row:SetResolution(value) end

---Table container for MovieFileData (Build 12.1.5.69594).
---@class dbc.Table.v1215.MovieFileData : DbcTable
---@field [integer] dbc.row.v1215.MovieFileData
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MovieFileData
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MovieFileData|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MovieFileData
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MovieFileData>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MovieFileData[]
function tbl:GetByRelation(foreign_id) end

return {}
