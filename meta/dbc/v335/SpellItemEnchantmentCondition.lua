---@meta
-- Generated LuaLS annotations for SpellItemEnchantmentCondition (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SpellItemEnchantmentCondition in build 3.3.5.12340.
---@class dbc.row.v335.SpellItemEnchantmentCondition : RowProxy
---@field ID integer
---@field Lt_operandType integer[]
---@field Lt_operand integer[]
---@field Operator integer[]
---@field Rt_operandType integer[]
---@field Rt_operand integer[]
---@field Logic integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SpellItemEnchantmentCondition self
function row:SetID(value) end

---Gets the value of field 'Lt_operandType'.
---@return integer[] value
function row:GetLt_operandType() end

---Sets the value of field 'Lt_operandType'.
---@param value integer[]
---@return dbc.row.v335.SpellItemEnchantmentCondition self
function row:SetLt_operandType(value) end

---Gets element at 1-based index in 'Lt_operandType'.
---@param index integer
---@return integer value
function row:GetLt_operandTypeItem(index) end

---Gets the value of field 'Lt_operand'.
---@return integer[] value
function row:GetLt_operand() end

---Sets the value of field 'Lt_operand'.
---@param value integer[]
---@return dbc.row.v335.SpellItemEnchantmentCondition self
function row:SetLt_operand(value) end

---Gets element at 1-based index in 'Lt_operand'.
---@param index integer
---@return integer value
function row:GetLt_operandItem(index) end

---Gets the value of field 'Operator'.
---@return integer[] value
function row:GetOperator() end

---Sets the value of field 'Operator'.
---@param value integer[]
---@return dbc.row.v335.SpellItemEnchantmentCondition self
function row:SetOperator(value) end

---Gets element at 1-based index in 'Operator'.
---@param index integer
---@return integer value
function row:GetOperatorItem(index) end

---Gets the value of field 'Rt_operandType'.
---@return integer[] value
function row:GetRt_operandType() end

---Sets the value of field 'Rt_operandType'.
---@param value integer[]
---@return dbc.row.v335.SpellItemEnchantmentCondition self
function row:SetRt_operandType(value) end

---Gets element at 1-based index in 'Rt_operandType'.
---@param index integer
---@return integer value
function row:GetRt_operandTypeItem(index) end

---Gets the value of field 'Rt_operand'.
---@return integer[] value
function row:GetRt_operand() end

---Sets the value of field 'Rt_operand'.
---@param value integer[]
---@return dbc.row.v335.SpellItemEnchantmentCondition self
function row:SetRt_operand(value) end

---Gets element at 1-based index in 'Rt_operand'.
---@param index integer
---@return integer value
function row:GetRt_operandItem(index) end

---Gets the value of field 'Logic'.
---@return integer[] value
function row:GetLogic() end

---Sets the value of field 'Logic'.
---@param value integer[]
---@return dbc.row.v335.SpellItemEnchantmentCondition self
function row:SetLogic(value) end

---Gets element at 1-based index in 'Logic'.
---@param index integer
---@return integer value
function row:GetLogicItem(index) end

---Table container for SpellItemEnchantmentCondition (Build 3.3.5.12340).
---@class dbc.Table.v335.SpellItemEnchantmentCondition : DbcTable
---@field [integer] dbc.row.v335.SpellItemEnchantmentCondition
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SpellItemEnchantmentCondition
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SpellItemEnchantmentCondition|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SpellItemEnchantmentCondition
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SpellItemEnchantmentCondition>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SpellItemEnchantmentCondition[]
function tbl:GetByRelation(foreign_id) end

return {}
