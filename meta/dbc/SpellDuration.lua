---@meta
-- Generated LuaLS annotations for SpellDuration.dbc. Do not edit.

---Row representation of SpellDuration.dbc.
---@class dbc.row.SpellDuration : RowProxy
---@field ID integer
---@field Duration integer
---@field DurationPerLevel integer
---@field MaxDuration integer

-- Fluent PascalCase Methods for SpellDuration
---@field GetID fun(self: dbc.row.SpellDuration): integer
---@field SetID fun(self: dbc.row.SpellDuration, value: integer): dbc.row.SpellDuration
---@field GetDuration fun(self: dbc.row.SpellDuration): integer
---@field SetDuration fun(self: dbc.row.SpellDuration, value: integer): dbc.row.SpellDuration
---@field GetDurationPerLevel fun(self: dbc.row.SpellDuration): integer
---@field SetDurationPerLevel fun(self: dbc.row.SpellDuration, value: integer): dbc.row.SpellDuration
---@field GetMaxDuration fun(self: dbc.row.SpellDuration): integer
---@field SetMaxDuration fun(self: dbc.row.SpellDuration, value: integer): dbc.row.SpellDuration

-- Inferred Cross-Table Relations for SpellDuration

-- Cascading Creation & Relations Engine for SpellDuration
---@field CreateRelated fun(self: dbc.row.SpellDuration, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.SpellDuration, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.SpellDuration, child_table: string, child_field?: string): any[]

---Typed table handle for SpellDuration.dbc.
---@class dbc.Table.SpellDuration : DbcTable
---@field FindById fun(self: dbc.Table.SpellDuration, id: integer): dbc.row.SpellDuration|nil
---@field GetById fun(self: dbc.Table.SpellDuration, id: integer): dbc.row.SpellDuration|nil
---@field GetRow fun(self: dbc.Table.SpellDuration, row: integer): dbc.row.SpellDuration
---@field NewRow fun(self: dbc.Table.SpellDuration, id?: integer): dbc.row.SpellDuration
---@field Create fun(self: dbc.Table.SpellDuration, id?: integer): dbc.row.SpellDuration
---@field CreateNext fun(self: dbc.Table.SpellDuration, data?: table): dbc.row.SpellDuration
---@field CloneRow fun(self: dbc.Table.SpellDuration, source: integer|dbc.row.SpellDuration, new_id?: integer): dbc.row.SpellDuration
---@field GetAllRows fun(self: dbc.Table.SpellDuration): dbc.row.SpellDuration[]
---@field Query fun(self: dbc.Table.SpellDuration): dbc.Query<dbc.row.SpellDuration>
---@field Rows fun(self: dbc.Table.SpellDuration): fun(): integer, dbc.row.SpellDuration
