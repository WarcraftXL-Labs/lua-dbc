---@meta
-- Generated LuaLS annotations for ScalingStatDistribution.dbc. Do not edit.

---Row representation of ScalingStatDistribution.dbc.
---@class dbc.row.ScalingStatDistribution : RowProxy
---@field ID integer
---@field StatID integer[]
---@field Bonus integer[]
---@field Maxlevel integer

-- Fluent PascalCase Methods for ScalingStatDistribution
---@field GetID fun(self: dbc.row.ScalingStatDistribution): integer
---@field SetID fun(self: dbc.row.ScalingStatDistribution, value: integer): dbc.row.ScalingStatDistribution
---@field GetStatID fun(self: dbc.row.ScalingStatDistribution, index?: integer): integer|integer[]
---@field SetStatID fun(self: dbc.row.ScalingStatDistribution, value: integer|integer[], index?: integer): dbc.row.ScalingStatDistribution
---@field GetBonus fun(self: dbc.row.ScalingStatDistribution, index?: integer): integer|integer[]
---@field SetBonus fun(self: dbc.row.ScalingStatDistribution, value: integer|integer[], index?: integer): dbc.row.ScalingStatDistribution
---@field GetMaxlevel fun(self: dbc.row.ScalingStatDistribution): integer
---@field SetMaxlevel fun(self: dbc.row.ScalingStatDistribution, value: integer): dbc.row.ScalingStatDistribution

-- Inferred Cross-Table Relations for ScalingStatDistribution

-- Cascading Creation & Relations Engine for ScalingStatDistribution
---@field CreateRelated fun(self: dbc.row.ScalingStatDistribution, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.ScalingStatDistribution, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.ScalingStatDistribution, child_table: string, child_field?: string): any[]

---Typed table handle for ScalingStatDistribution.dbc.
---@class dbc.Table.ScalingStatDistribution : DbcTable
---@field FindById fun(self: dbc.Table.ScalingStatDistribution, id: integer): dbc.row.ScalingStatDistribution|nil
---@field GetById fun(self: dbc.Table.ScalingStatDistribution, id: integer): dbc.row.ScalingStatDistribution|nil
---@field GetRow fun(self: dbc.Table.ScalingStatDistribution, row: integer): dbc.row.ScalingStatDistribution
---@field NewRow fun(self: dbc.Table.ScalingStatDistribution, id?: integer): dbc.row.ScalingStatDistribution
---@field Create fun(self: dbc.Table.ScalingStatDistribution, id?: integer): dbc.row.ScalingStatDistribution
---@field CreateNext fun(self: dbc.Table.ScalingStatDistribution, data?: table): dbc.row.ScalingStatDistribution
---@field CloneRow fun(self: dbc.Table.ScalingStatDistribution, source: integer|dbc.row.ScalingStatDistribution, new_id?: integer): dbc.row.ScalingStatDistribution
---@field GetAllRows fun(self: dbc.Table.ScalingStatDistribution): dbc.row.ScalingStatDistribution[]
---@field Query fun(self: dbc.Table.ScalingStatDistribution): dbc.Query<dbc.row.ScalingStatDistribution>
---@field Rows fun(self: dbc.Table.ScalingStatDistribution): fun(): integer, dbc.row.ScalingStatDistribution
