---@meta
-- Generated LuaLS annotations for SpellRuneCost.dbc. Do not edit.

---Row representation of SpellRuneCost.dbc.
---@class dbc.row.SpellRuneCost : RowProxy
---@field ID integer
---@field Blood integer
---@field Unholy integer
---@field Frost integer
---@field RunicPower integer

-- Fluent PascalCase Methods for SpellRuneCost
---@field GetID fun(self: dbc.row.SpellRuneCost): integer
---@field SetID fun(self: dbc.row.SpellRuneCost, value: integer): dbc.row.SpellRuneCost
---@field GetBlood fun(self: dbc.row.SpellRuneCost): integer
---@field SetBlood fun(self: dbc.row.SpellRuneCost, value: integer): dbc.row.SpellRuneCost
---@field GetUnholy fun(self: dbc.row.SpellRuneCost): integer
---@field SetUnholy fun(self: dbc.row.SpellRuneCost, value: integer): dbc.row.SpellRuneCost
---@field GetFrost fun(self: dbc.row.SpellRuneCost): integer
---@field SetFrost fun(self: dbc.row.SpellRuneCost, value: integer): dbc.row.SpellRuneCost
---@field GetRunicPower fun(self: dbc.row.SpellRuneCost): integer
---@field SetRunicPower fun(self: dbc.row.SpellRuneCost, value: integer): dbc.row.SpellRuneCost

-- Inferred Cross-Table Relations for SpellRuneCost

-- Cascading Creation & Relations Engine for SpellRuneCost
---@field CreateRelated fun(self: dbc.row.SpellRuneCost, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.SpellRuneCost, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.SpellRuneCost, child_table: string, child_field?: string): any[]

---Typed table handle for SpellRuneCost.dbc.
---@class dbc.Table.SpellRuneCost : DbcTable
---@field FindById fun(self: dbc.Table.SpellRuneCost, id: integer): dbc.row.SpellRuneCost|nil
---@field GetById fun(self: dbc.Table.SpellRuneCost, id: integer): dbc.row.SpellRuneCost|nil
---@field GetRow fun(self: dbc.Table.SpellRuneCost, row: integer): dbc.row.SpellRuneCost
---@field NewRow fun(self: dbc.Table.SpellRuneCost, id?: integer): dbc.row.SpellRuneCost
---@field Create fun(self: dbc.Table.SpellRuneCost, id?: integer): dbc.row.SpellRuneCost
---@field CreateNext fun(self: dbc.Table.SpellRuneCost, data?: table): dbc.row.SpellRuneCost
---@field CloneRow fun(self: dbc.Table.SpellRuneCost, source: integer|dbc.row.SpellRuneCost, new_id?: integer): dbc.row.SpellRuneCost
---@field GetAllRows fun(self: dbc.Table.SpellRuneCost): dbc.row.SpellRuneCost[]
---@field Query fun(self: dbc.Table.SpellRuneCost): dbc.Query<dbc.row.SpellRuneCost>
---@field Rows fun(self: dbc.Table.SpellRuneCost): fun(): integer, dbc.row.SpellRuneCost
