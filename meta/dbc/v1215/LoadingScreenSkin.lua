---@meta
-- Generated LuaLS annotations for LoadingScreenSkin (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of LoadingScreenSkin in build 12.1.5.69594.
---@class dbc.row.v1215.LoadingScreenSkin : RowProxy
---@field ID integer
---@field FileDataID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.LoadingScreenSkin self
function row:SetID(value) end

---Gets the value of field 'FileDataID'.
---@return integer[] value
function row:GetFileDataID() end

---Sets the value of field 'FileDataID'.
---@param value integer[]
---@return dbc.row.v1215.LoadingScreenSkin self
function row:SetFileDataID(value) end

---Gets element at 1-based index in 'FileDataID'.
---@param index integer
---@return integer value
function row:GetFileDataIDItem(index) end

---Navigates foreign relationship to 'FileData' via 'FileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFileData() end

---Creates a related 'FileData' row and automatically links 'FileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Table container for LoadingScreenSkin (Build 12.1.5.69594).
---@class dbc.Table.v1215.LoadingScreenSkin : DbcTable
---@field [integer] dbc.row.v1215.LoadingScreenSkin
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.LoadingScreenSkin
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.LoadingScreenSkin|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.LoadingScreenSkin
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.LoadingScreenSkin>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.LoadingScreenSkin[]
function tbl:GetByRelation(foreign_id) end

return {}
