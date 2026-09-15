---@meta
-- Generated LuaLS annotations for UnitCondition (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UnitCondition in build 12.1.5.69594.
---@class dbc.row.v1215.UnitCondition : RowProxy
---@field ID integer
---@field Flags integer
---@field Variable integer[]
---@field Op integer[]
---@field Value integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UnitCondition self
function row:SetID(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.UnitCondition self
function row:SetFlags(value) end

---Gets the value of field 'Variable'.
---@return integer[] value
function row:GetVariable() end

---Sets the value of field 'Variable'.
---@param value integer[]
---@return dbc.row.v1215.UnitCondition self
function row:SetVariable(value) end

---Gets element at 1-based index in 'Variable'.
---@param index integer
---@return integer value
function row:GetVariableItem(index) end

---Gets the value of field 'Op'.
---@return integer[] value
function row:GetOp() end

---Sets the value of field 'Op'.
---@param value integer[]
---@return dbc.row.v1215.UnitCondition self
function row:SetOp(value) end

---Gets element at 1-based index in 'Op'.
---@param index integer
---@return integer value
function row:GetOpItem(index) end

---Gets the value of field 'Value'.
---@return integer[] value
function row:GetValue() end

---Sets the value of field 'Value'.
---@param value integer[]
---@return dbc.row.v1215.UnitCondition self
function row:SetValue(value) end

---Gets element at 1-based index in 'Value'.
---@param index integer
---@return integer value
function row:GetValueItem(index) end

---Table container for UnitCondition (Build 12.1.5.69594).
---@class dbc.Table.v1215.UnitCondition : DbcTable
---@field [integer] dbc.row.v1215.UnitCondition
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UnitCondition
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UnitCondition|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UnitCondition
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UnitCondition>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UnitCondition[]
function tbl:GetByRelation(foreign_id) end

return {}
