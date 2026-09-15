---@meta
-- Generated LuaLS annotations for SpellCastTimes.dbc. Do not edit.

---Row representation of SpellCastTimes.dbc.
---@class dbc.row.SpellCastTimes : RowProxy
---@field ID integer
---@field Base integer
---@field PerLevel integer
---@field Minimum integer

-- Fluent PascalCase Methods for SpellCastTimes
---@field GetID fun(self: dbc.row.SpellCastTimes): integer
---@field SetID fun(self: dbc.row.SpellCastTimes, value: integer): dbc.row.SpellCastTimes
---@field GetBase fun(self: dbc.row.SpellCastTimes): integer
---@field SetBase fun(self: dbc.row.SpellCastTimes, value: integer): dbc.row.SpellCastTimes
---@field GetPerLevel fun(self: dbc.row.SpellCastTimes): integer
---@field SetPerLevel fun(self: dbc.row.SpellCastTimes, value: integer): dbc.row.SpellCastTimes
---@field GetMinimum fun(self: dbc.row.SpellCastTimes): integer
---@field SetMinimum fun(self: dbc.row.SpellCastTimes, value: integer): dbc.row.SpellCastTimes

-- Inferred Cross-Table Relations for SpellCastTimes

-- Cascading Creation & Relations Engine for SpellCastTimes
---@field CreateRelated fun(self: dbc.row.SpellCastTimes, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.SpellCastTimes, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.SpellCastTimes, child_table: string, child_field?: string): any[]

---Typed table handle for SpellCastTimes.dbc.
---@class dbc.Table.SpellCastTimes : DbcTable
---@field FindById fun(self: dbc.Table.SpellCastTimes, id: integer): dbc.row.SpellCastTimes|nil
---@field GetById fun(self: dbc.Table.SpellCastTimes, id: integer): dbc.row.SpellCastTimes|nil
---@field GetRow fun(self: dbc.Table.SpellCastTimes, row: integer): dbc.row.SpellCastTimes
---@field NewRow fun(self: dbc.Table.SpellCastTimes, id?: integer): dbc.row.SpellCastTimes
---@field Create fun(self: dbc.Table.SpellCastTimes, id?: integer): dbc.row.SpellCastTimes
---@field CreateNext fun(self: dbc.Table.SpellCastTimes, data?: table): dbc.row.SpellCastTimes
---@field CloneRow fun(self: dbc.Table.SpellCastTimes, source: integer|dbc.row.SpellCastTimes, new_id?: integer): dbc.row.SpellCastTimes
---@field GetAllRows fun(self: dbc.Table.SpellCastTimes): dbc.row.SpellCastTimes[]
---@field Query fun(self: dbc.Table.SpellCastTimes): dbc.Query<dbc.row.SpellCastTimes>
---@field Rows fun(self: dbc.Table.SpellCastTimes): fun(): integer, dbc.row.SpellCastTimes
