---@meta
-- Generated LuaLS annotations for SpellItemEnchantmentCondition.dbc. Do not edit.

---Row representation of SpellItemEnchantmentCondition.dbc.
---@class dbc.row.SpellItemEnchantmentCondition : RowProxy
---@field ID integer
---@field Lt_OperandType integer[]
---@field Lt_Operand integer[]
---@field Operator integer[]
---@field Rt_OperandType integer[]
---@field Rt_Operand integer[]
---@field Logic integer[]

-- Fluent PascalCase Methods for SpellItemEnchantmentCondition
---@field GetID fun(self: dbc.row.SpellItemEnchantmentCondition): integer
---@field SetID fun(self: dbc.row.SpellItemEnchantmentCondition, value: integer): dbc.row.SpellItemEnchantmentCondition
---@field GetLt_OperandType fun(self: dbc.row.SpellItemEnchantmentCondition, index?: integer): integer|integer[]
---@field SetLt_OperandType fun(self: dbc.row.SpellItemEnchantmentCondition, value: integer|integer[], index?: integer): dbc.row.SpellItemEnchantmentCondition
---@field GetLt_Operand fun(self: dbc.row.SpellItemEnchantmentCondition, index?: integer): integer|integer[]
---@field SetLt_Operand fun(self: dbc.row.SpellItemEnchantmentCondition, value: integer|integer[], index?: integer): dbc.row.SpellItemEnchantmentCondition
---@field GetOperator fun(self: dbc.row.SpellItemEnchantmentCondition, index?: integer): integer|integer[]
---@field SetOperator fun(self: dbc.row.SpellItemEnchantmentCondition, value: integer|integer[], index?: integer): dbc.row.SpellItemEnchantmentCondition
---@field GetRt_OperandType fun(self: dbc.row.SpellItemEnchantmentCondition, index?: integer): integer|integer[]
---@field SetRt_OperandType fun(self: dbc.row.SpellItemEnchantmentCondition, value: integer|integer[], index?: integer): dbc.row.SpellItemEnchantmentCondition
---@field GetRt_Operand fun(self: dbc.row.SpellItemEnchantmentCondition, index?: integer): integer|integer[]
---@field SetRt_Operand fun(self: dbc.row.SpellItemEnchantmentCondition, value: integer|integer[], index?: integer): dbc.row.SpellItemEnchantmentCondition
---@field GetLogic fun(self: dbc.row.SpellItemEnchantmentCondition, index?: integer): integer|integer[]
---@field SetLogic fun(self: dbc.row.SpellItemEnchantmentCondition, value: integer|integer[], index?: integer): dbc.row.SpellItemEnchantmentCondition

-- Inferred Cross-Table Relations for SpellItemEnchantmentCondition

-- Cascading Creation & Relations Engine for SpellItemEnchantmentCondition
---@field CreateRelated fun(self: dbc.row.SpellItemEnchantmentCondition, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.SpellItemEnchantmentCondition, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.SpellItemEnchantmentCondition, child_table: string, child_field?: string): any[]

---Typed table handle for SpellItemEnchantmentCondition.dbc.
---@class dbc.Table.SpellItemEnchantmentCondition : DbcTable
---@field FindById fun(self: dbc.Table.SpellItemEnchantmentCondition, id: integer): dbc.row.SpellItemEnchantmentCondition|nil
---@field GetById fun(self: dbc.Table.SpellItemEnchantmentCondition, id: integer): dbc.row.SpellItemEnchantmentCondition|nil
---@field GetRow fun(self: dbc.Table.SpellItemEnchantmentCondition, row: integer): dbc.row.SpellItemEnchantmentCondition
---@field NewRow fun(self: dbc.Table.SpellItemEnchantmentCondition, id?: integer): dbc.row.SpellItemEnchantmentCondition
---@field Create fun(self: dbc.Table.SpellItemEnchantmentCondition, id?: integer): dbc.row.SpellItemEnchantmentCondition
---@field CreateNext fun(self: dbc.Table.SpellItemEnchantmentCondition, data?: table): dbc.row.SpellItemEnchantmentCondition
---@field CloneRow fun(self: dbc.Table.SpellItemEnchantmentCondition, source: integer|dbc.row.SpellItemEnchantmentCondition, new_id?: integer): dbc.row.SpellItemEnchantmentCondition
---@field GetAllRows fun(self: dbc.Table.SpellItemEnchantmentCondition): dbc.row.SpellItemEnchantmentCondition[]
---@field Query fun(self: dbc.Table.SpellItemEnchantmentCondition): dbc.Query<dbc.row.SpellItemEnchantmentCondition>
---@field Rows fun(self: dbc.Table.SpellItemEnchantmentCondition): fun(): integer, dbc.row.SpellItemEnchantmentCondition
