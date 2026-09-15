---@meta
-- Generated LuaLS annotations for CreatureXUiWidgetSet (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CreatureXUiWidgetSet in build 12.1.5.69594.
---@class dbc.row.v1215.CreatureXUiWidgetSet : RowProxy
---@field ID integer
---@field CreatureID integer
---@field UiWidgetSetID integer
---@field UnitConditionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CreatureXUiWidgetSet self
function row:SetID(value) end

---Gets the value of field 'CreatureID'.
---@return integer value
function row:GetCreatureID() end

---Sets the value of field 'CreatureID'.
---@param value integer
---@return dbc.row.v1215.CreatureXUiWidgetSet self
function row:SetCreatureID(value) end

---Navigates foreign relationship to 'Creature' via 'CreatureID'.
---@return dbc.row.v1215.Creature|nil
function row:GetCreature() end

---Creates a related 'Creature' row and automatically links 'CreatureID'.
---@param data? table
---@return dbc.row.v1215.Creature
function row:CreateRelated(data) end

---Gets the value of field 'UiWidgetSetID'.
---@return integer value
function row:GetUiWidgetSetID() end

---Sets the value of field 'UiWidgetSetID'.
---@param value integer
---@return dbc.row.v1215.CreatureXUiWidgetSet self
function row:SetUiWidgetSetID(value) end

---Navigates foreign relationship to 'UiWidgetSet' via 'UiWidgetSetID'.
---@return dbc.row.v1215.UiWidgetSet|nil
function row:GetUiWidgetSet() end

---Creates a related 'UiWidgetSet' row and automatically links 'UiWidgetSetID'.
---@param data? table
---@return dbc.row.v1215.UiWidgetSet
function row:CreateRelated(data) end

---Gets the value of field 'UnitConditionID'.
---@return integer value
function row:GetUnitConditionID() end

---Sets the value of field 'UnitConditionID'.
---@param value integer
---@return dbc.row.v1215.CreatureXUiWidgetSet self
function row:SetUnitConditionID(value) end

---Navigates foreign relationship to 'UnitCondition' via 'UnitConditionID'.
---@return dbc.row.v1215.UnitCondition|nil
function row:GetUnitCondition() end

---Creates a related 'UnitCondition' row and automatically links 'UnitConditionID'.
---@param data? table
---@return dbc.row.v1215.UnitCondition
function row:CreateRelated(data) end

---Table container for CreatureXUiWidgetSet (Build 12.1.5.69594).
---@class dbc.Table.v1215.CreatureXUiWidgetSet : DbcTable
---@field [integer] dbc.row.v1215.CreatureXUiWidgetSet
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CreatureXUiWidgetSet
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CreatureXUiWidgetSet|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CreatureXUiWidgetSet
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CreatureXUiWidgetSet>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CreatureXUiWidgetSet[]
function tbl:GetByRelation(foreign_id) end

return {}
