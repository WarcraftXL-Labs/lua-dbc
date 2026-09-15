---@meta
-- Generated LuaLS annotations for AssistedCombatRule (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AssistedCombatRule in build 12.1.5.69594.
---@class dbc.row.v1215.AssistedCombatRule : RowProxy
---@field ID integer
---@field OrderIndex integer
---@field Field_11_1_7_60520_002 integer
---@field ConditionType integer
---@field ConditionValue1 integer
---@field ConditionValue2 integer
---@field ConditionValue3 integer
---@field AssistedCombatStepID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AssistedCombatRule self
function row:SetID(value) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.AssistedCombatRule self
function row:SetOrderIndex(value) end

---Gets the value of field 'Field_11_1_7_60520_002'.
---@return integer value
function row:GetField_11_1_7_60520_002() end

---Sets the value of field 'Field_11_1_7_60520_002'.
---@param value integer
---@return dbc.row.v1215.AssistedCombatRule self
function row:SetField_11_1_7_60520_002(value) end

---Gets the value of field 'ConditionType'.
---@return integer value
function row:GetConditionType() end

---Sets the value of field 'ConditionType'.
---@param value integer
---@return dbc.row.v1215.AssistedCombatRule self
function row:SetConditionType(value) end

---Gets the value of field 'ConditionValue1'.
---@return integer value
function row:GetConditionValue1() end

---Sets the value of field 'ConditionValue1'.
---@param value integer
---@return dbc.row.v1215.AssistedCombatRule self
function row:SetConditionValue1(value) end

---Gets the value of field 'ConditionValue2'.
---@return integer value
function row:GetConditionValue2() end

---Sets the value of field 'ConditionValue2'.
---@param value integer
---@return dbc.row.v1215.AssistedCombatRule self
function row:SetConditionValue2(value) end

---Gets the value of field 'ConditionValue3'.
---@return integer value
function row:GetConditionValue3() end

---Sets the value of field 'ConditionValue3'.
---@param value integer
---@return dbc.row.v1215.AssistedCombatRule self
function row:SetConditionValue3(value) end

---Gets the value of field 'AssistedCombatStepID'.
---@return integer value
function row:GetAssistedCombatStepID() end

---Sets the value of field 'AssistedCombatStepID'.
---@param value integer
---@return dbc.row.v1215.AssistedCombatRule self
function row:SetAssistedCombatStepID(value) end

---Navigates foreign relationship to 'AssistedCombatStep' via 'AssistedCombatStepID'.
---@return dbc.row.v1215.AssistedCombatStep|nil
function row:GetAssistedCombatStep() end

---Creates a related 'AssistedCombatStep' row and automatically links 'AssistedCombatStepID'.
---@param data? table
---@return dbc.row.v1215.AssistedCombatStep
function row:CreateRelated(data) end

---Table container for AssistedCombatRule (Build 12.1.5.69594).
---@class dbc.Table.v1215.AssistedCombatRule : DbcTable
---@field [integer] dbc.row.v1215.AssistedCombatRule
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AssistedCombatRule
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AssistedCombatRule|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AssistedCombatRule
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AssistedCombatRule>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AssistedCombatRule[]
function tbl:GetByRelation(foreign_id) end

return {}
