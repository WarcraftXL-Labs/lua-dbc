---@meta
-- Generated LuaLS annotations for ScreenLocation (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ScreenLocation in build 12.1.5.69594.
---@class dbc.row.v1215.ScreenLocation : RowProxy
---@field ID integer
---@field Name string
---@field Field_11_0_5_56646_001 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ScreenLocation self
function row:SetID(value) end

---Gets the value of field 'Name'.
---@return string value
function row:GetName() end

---Sets the value of field 'Name'.
---@param value string
---@return dbc.row.v1215.ScreenLocation self
function row:SetName(value) end

---Gets the value of field 'Field_11_0_5_56646_001'.
---@return integer value
function row:GetField_11_0_5_56646_001() end

---Sets the value of field 'Field_11_0_5_56646_001'.
---@param value integer
---@return dbc.row.v1215.ScreenLocation self
function row:SetField_11_0_5_56646_001(value) end

---Table container for ScreenLocation (Build 12.1.5.69594).
---@class dbc.Table.v1215.ScreenLocation : DbcTable
---@field [integer] dbc.row.v1215.ScreenLocation
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ScreenLocation
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ScreenLocation|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ScreenLocation
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ScreenLocation>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ScreenLocation[]
function tbl:GetByRelation(foreign_id) end

return {}
