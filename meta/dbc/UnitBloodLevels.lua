---@meta
-- Generated LuaLS annotations for UnitBloodLevels.dbc. Do not edit.

---Row representation of UnitBloodLevels.dbc.
---@class dbc.row.UnitBloodLevels : RowProxy
---@field ID integer
---@field Violencelevel integer[]

-- Fluent PascalCase Methods for UnitBloodLevels
---@field GetID fun(self: dbc.row.UnitBloodLevels): integer
---@field SetID fun(self: dbc.row.UnitBloodLevels, value: integer): dbc.row.UnitBloodLevels
---@field GetViolencelevel fun(self: dbc.row.UnitBloodLevels, index?: integer): integer|integer[]
---@field SetViolencelevel fun(self: dbc.row.UnitBloodLevels, value: integer|integer[], index?: integer): dbc.row.UnitBloodLevels

-- Inferred Cross-Table Relations for UnitBloodLevels

-- Cascading Creation & Relations Engine for UnitBloodLevels
---@field CreateRelated fun(self: dbc.row.UnitBloodLevels, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.UnitBloodLevels, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.UnitBloodLevels, child_table: string, child_field?: string): any[]

---Typed table handle for UnitBloodLevels.dbc.
---@class dbc.Table.UnitBloodLevels : DbcTable
---@field FindById fun(self: dbc.Table.UnitBloodLevels, id: integer): dbc.row.UnitBloodLevels|nil
---@field GetById fun(self: dbc.Table.UnitBloodLevels, id: integer): dbc.row.UnitBloodLevels|nil
---@field GetRow fun(self: dbc.Table.UnitBloodLevels, row: integer): dbc.row.UnitBloodLevels
---@field NewRow fun(self: dbc.Table.UnitBloodLevels, id?: integer): dbc.row.UnitBloodLevels
---@field Create fun(self: dbc.Table.UnitBloodLevels, id?: integer): dbc.row.UnitBloodLevels
---@field CreateNext fun(self: dbc.Table.UnitBloodLevels, data?: table): dbc.row.UnitBloodLevels
---@field CloneRow fun(self: dbc.Table.UnitBloodLevels, source: integer|dbc.row.UnitBloodLevels, new_id?: integer): dbc.row.UnitBloodLevels
---@field GetAllRows fun(self: dbc.Table.UnitBloodLevels): dbc.row.UnitBloodLevels[]
---@field Query fun(self: dbc.Table.UnitBloodLevels): dbc.Query<dbc.row.UnitBloodLevels>
---@field Rows fun(self: dbc.Table.UnitBloodLevels): fun(): integer, dbc.row.UnitBloodLevels
