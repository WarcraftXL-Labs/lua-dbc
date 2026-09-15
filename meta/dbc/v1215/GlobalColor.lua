---@meta
-- Generated LuaLS annotations for GlobalColor (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GlobalColor in build 12.1.5.69594.
---@class dbc.row.v1215.GlobalColor : RowProxy
---@field ID integer
---@field LuaConstantName string
---@field Color integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GlobalColor self
function row:SetID(value) end

---Gets the value of field 'LuaConstantName'.
---@return string value
function row:GetLuaConstantName() end

---Sets the value of field 'LuaConstantName'.
---@param value string
---@return dbc.row.v1215.GlobalColor self
function row:SetLuaConstantName(value) end

---Gets the value of field 'Color'.
---@return integer value
function row:GetColor() end

---Sets the value of field 'Color'.
---@param value integer
---@return dbc.row.v1215.GlobalColor self
function row:SetColor(value) end

---Table container for GlobalColor (Build 12.1.5.69594).
---@class dbc.Table.v1215.GlobalColor : DbcTable
---@field [integer] dbc.row.v1215.GlobalColor
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GlobalColor
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GlobalColor|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GlobalColor
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GlobalColor>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GlobalColor[]
function tbl:GetByRelation(foreign_id) end

return {}
