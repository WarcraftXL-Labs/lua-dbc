---@meta
-- Generated LuaLS annotations for UnitBlood.dbc. Do not edit.

---Row representation of UnitBlood.dbc.
---@class dbc.row.UnitBlood : RowProxy
---@field ID integer
---@field CombatBloodSpurtFront integer[]
---@field CombatBloodSpurtBack integer[]
---@field GroundBlood string[]

-- Fluent PascalCase Methods for UnitBlood
---@field GetID fun(self: dbc.row.UnitBlood): integer
---@field SetID fun(self: dbc.row.UnitBlood, value: integer): dbc.row.UnitBlood
---@field GetCombatBloodSpurtFront fun(self: dbc.row.UnitBlood, index?: integer): integer|integer[]
---@field SetCombatBloodSpurtFront fun(self: dbc.row.UnitBlood, value: integer|integer[], index?: integer): dbc.row.UnitBlood
---@field GetCombatBloodSpurtBack fun(self: dbc.row.UnitBlood, index?: integer): integer|integer[]
---@field SetCombatBloodSpurtBack fun(self: dbc.row.UnitBlood, value: integer|integer[], index?: integer): dbc.row.UnitBlood
---@field GetGroundBlood fun(self: dbc.row.UnitBlood, index?: integer): string|string[]
---@field SetGroundBlood fun(self: dbc.row.UnitBlood, value: string|string[], index?: integer): dbc.row.UnitBlood

-- Inferred Cross-Table Relations for UnitBlood

-- Cascading Creation & Relations Engine for UnitBlood
---@field CreateRelated fun(self: dbc.row.UnitBlood, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.UnitBlood, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.UnitBlood, child_table: string, child_field?: string): any[]

---Typed table handle for UnitBlood.dbc.
---@class dbc.Table.UnitBlood : DbcTable
---@field FindById fun(self: dbc.Table.UnitBlood, id: integer): dbc.row.UnitBlood|nil
---@field GetById fun(self: dbc.Table.UnitBlood, id: integer): dbc.row.UnitBlood|nil
---@field GetRow fun(self: dbc.Table.UnitBlood, row: integer): dbc.row.UnitBlood
---@field NewRow fun(self: dbc.Table.UnitBlood, id?: integer): dbc.row.UnitBlood
---@field Create fun(self: dbc.Table.UnitBlood, id?: integer): dbc.row.UnitBlood
---@field CreateNext fun(self: dbc.Table.UnitBlood, data?: table): dbc.row.UnitBlood
---@field CloneRow fun(self: dbc.Table.UnitBlood, source: integer|dbc.row.UnitBlood, new_id?: integer): dbc.row.UnitBlood
---@field GetAllRows fun(self: dbc.Table.UnitBlood): dbc.row.UnitBlood[]
---@field Query fun(self: dbc.Table.UnitBlood): dbc.Query<dbc.row.UnitBlood>
---@field Rows fun(self: dbc.Table.UnitBlood): fun(): integer, dbc.row.UnitBlood
