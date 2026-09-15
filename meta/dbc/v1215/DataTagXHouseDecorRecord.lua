---@meta
-- Generated LuaLS annotations for DataTagXHouseDecorRecord (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of DataTagXHouseDecorRecord in build 12.1.5.69594.
---@class dbc.row.v1215.DataTagXHouseDecorRecord : RowProxy
---@field ID integer
---@field DataTagID integer
---@field HouseDecorID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.DataTagXHouseDecorRecord self
function row:SetID(value) end

---Gets the value of field 'DataTagID'.
---@return integer value
function row:GetDataTagID() end

---Sets the value of field 'DataTagID'.
---@param value integer
---@return dbc.row.v1215.DataTagXHouseDecorRecord self
function row:SetDataTagID(value) end

---Navigates foreign relationship to 'DataTagInfo' via 'DataTagID'.
---@return dbc.row.v1215.DataTagInfo|nil
function row:GetDataTag() end

---Creates a related 'DataTagInfo' row and automatically links 'DataTagID'.
---@param data? table
---@return dbc.row.v1215.DataTagInfo
function row:CreateRelated(data) end

---Gets the value of field 'HouseDecorID'.
---@return integer value
function row:GetHouseDecorID() end

---Sets the value of field 'HouseDecorID'.
---@param value integer
---@return dbc.row.v1215.DataTagXHouseDecorRecord self
function row:SetHouseDecorID(value) end

---Navigates foreign relationship to 'HouseDecor' via 'HouseDecorID'.
---@return dbc.row.v1215.HouseDecor|nil
function row:GetHouseDecor() end

---Creates a related 'HouseDecor' row and automatically links 'HouseDecorID'.
---@param data? table
---@return dbc.row.v1215.HouseDecor
function row:CreateRelated(data) end

---Table container for DataTagXHouseDecorRecord (Build 12.1.5.69594).
---@class dbc.Table.v1215.DataTagXHouseDecorRecord : DbcTable
---@field [integer] dbc.row.v1215.DataTagXHouseDecorRecord
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.DataTagXHouseDecorRecord
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.DataTagXHouseDecorRecord|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.DataTagXHouseDecorRecord
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.DataTagXHouseDecorRecord>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.DataTagXHouseDecorRecord[]
function tbl:GetByRelation(foreign_id) end

return {}
