---@meta
-- Generated LuaLS annotations for GtCombatRatings.dbc. Do not edit.

---Row representation of GtCombatRatings.dbc.
---@class dbc.row.GtCombatRatings : RowProxy
---@field Data number

-- Fluent PascalCase Methods for GtCombatRatings
---@field GetData fun(self: dbc.row.GtCombatRatings): number
---@field SetData fun(self: dbc.row.GtCombatRatings, value: number): dbc.row.GtCombatRatings

-- Inferred Cross-Table Relations for GtCombatRatings

-- Cascading Creation & Relations Engine for GtCombatRatings
---@field CreateRelated fun(self: dbc.row.GtCombatRatings, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.GtCombatRatings, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.GtCombatRatings, child_table: string, child_field?: string): any[]

---Typed table handle for GtCombatRatings.dbc.
---@class dbc.Table.GtCombatRatings : DbcTable
---@field FindById fun(self: dbc.Table.GtCombatRatings, id: integer): dbc.row.GtCombatRatings|nil
---@field GetById fun(self: dbc.Table.GtCombatRatings, id: integer): dbc.row.GtCombatRatings|nil
---@field GetRow fun(self: dbc.Table.GtCombatRatings, row: integer): dbc.row.GtCombatRatings
---@field NewRow fun(self: dbc.Table.GtCombatRatings, id?: integer): dbc.row.GtCombatRatings
---@field Create fun(self: dbc.Table.GtCombatRatings, id?: integer): dbc.row.GtCombatRatings
---@field CreateNext fun(self: dbc.Table.GtCombatRatings, data?: table): dbc.row.GtCombatRatings
---@field CloneRow fun(self: dbc.Table.GtCombatRatings, source: integer|dbc.row.GtCombatRatings, new_id?: integer): dbc.row.GtCombatRatings
---@field GetAllRows fun(self: dbc.Table.GtCombatRatings): dbc.row.GtCombatRatings[]
---@field Query fun(self: dbc.Table.GtCombatRatings): dbc.Query<dbc.row.GtCombatRatings>
---@field Rows fun(self: dbc.Table.GtCombatRatings): fun(): integer, dbc.row.GtCombatRatings
