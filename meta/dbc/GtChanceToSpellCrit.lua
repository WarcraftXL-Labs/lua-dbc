---@meta
-- Generated LuaLS annotations for GtChanceToSpellCrit.dbc. Do not edit.

---Row representation of GtChanceToSpellCrit.dbc.
---@class dbc.row.GtChanceToSpellCrit : RowProxy
---@field Data number

-- Fluent PascalCase Methods for GtChanceToSpellCrit
---@field GetData fun(self: dbc.row.GtChanceToSpellCrit): number
---@field SetData fun(self: dbc.row.GtChanceToSpellCrit, value: number): dbc.row.GtChanceToSpellCrit

-- Inferred Cross-Table Relations for GtChanceToSpellCrit

-- Cascading Creation & Relations Engine for GtChanceToSpellCrit
---@field CreateRelated fun(self: dbc.row.GtChanceToSpellCrit, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.GtChanceToSpellCrit, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.GtChanceToSpellCrit, child_table: string, child_field?: string): any[]

---Typed table handle for GtChanceToSpellCrit.dbc.
---@class dbc.Table.GtChanceToSpellCrit : DbcTable
---@field FindById fun(self: dbc.Table.GtChanceToSpellCrit, id: integer): dbc.row.GtChanceToSpellCrit|nil
---@field GetById fun(self: dbc.Table.GtChanceToSpellCrit, id: integer): dbc.row.GtChanceToSpellCrit|nil
---@field GetRow fun(self: dbc.Table.GtChanceToSpellCrit, row: integer): dbc.row.GtChanceToSpellCrit
---@field NewRow fun(self: dbc.Table.GtChanceToSpellCrit, id?: integer): dbc.row.GtChanceToSpellCrit
---@field Create fun(self: dbc.Table.GtChanceToSpellCrit, id?: integer): dbc.row.GtChanceToSpellCrit
---@field CreateNext fun(self: dbc.Table.GtChanceToSpellCrit, data?: table): dbc.row.GtChanceToSpellCrit
---@field CloneRow fun(self: dbc.Table.GtChanceToSpellCrit, source: integer|dbc.row.GtChanceToSpellCrit, new_id?: integer): dbc.row.GtChanceToSpellCrit
---@field GetAllRows fun(self: dbc.Table.GtChanceToSpellCrit): dbc.row.GtChanceToSpellCrit[]
---@field Query fun(self: dbc.Table.GtChanceToSpellCrit): dbc.Query<dbc.row.GtChanceToSpellCrit>
---@field Rows fun(self: dbc.Table.GtChanceToSpellCrit): fun(): integer, dbc.row.GtChanceToSpellCrit
