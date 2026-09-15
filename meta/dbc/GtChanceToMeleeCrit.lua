---@meta
-- Generated LuaLS annotations for GtChanceToMeleeCrit.dbc. Do not edit.

---Row representation of GtChanceToMeleeCrit.dbc.
---@class dbc.row.GtChanceToMeleeCrit : RowProxy
---@field Data number

-- Fluent PascalCase Methods for GtChanceToMeleeCrit
---@field GetData fun(self: dbc.row.GtChanceToMeleeCrit): number
---@field SetData fun(self: dbc.row.GtChanceToMeleeCrit, value: number): dbc.row.GtChanceToMeleeCrit

-- Inferred Cross-Table Relations for GtChanceToMeleeCrit

-- Cascading Creation & Relations Engine for GtChanceToMeleeCrit
---@field CreateRelated fun(self: dbc.row.GtChanceToMeleeCrit, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.GtChanceToMeleeCrit, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.GtChanceToMeleeCrit, child_table: string, child_field?: string): any[]

---Typed table handle for GtChanceToMeleeCrit.dbc.
---@class dbc.Table.GtChanceToMeleeCrit : DbcTable
---@field FindById fun(self: dbc.Table.GtChanceToMeleeCrit, id: integer): dbc.row.GtChanceToMeleeCrit|nil
---@field GetById fun(self: dbc.Table.GtChanceToMeleeCrit, id: integer): dbc.row.GtChanceToMeleeCrit|nil
---@field GetRow fun(self: dbc.Table.GtChanceToMeleeCrit, row: integer): dbc.row.GtChanceToMeleeCrit
---@field NewRow fun(self: dbc.Table.GtChanceToMeleeCrit, id?: integer): dbc.row.GtChanceToMeleeCrit
---@field Create fun(self: dbc.Table.GtChanceToMeleeCrit, id?: integer): dbc.row.GtChanceToMeleeCrit
---@field CreateNext fun(self: dbc.Table.GtChanceToMeleeCrit, data?: table): dbc.row.GtChanceToMeleeCrit
---@field CloneRow fun(self: dbc.Table.GtChanceToMeleeCrit, source: integer|dbc.row.GtChanceToMeleeCrit, new_id?: integer): dbc.row.GtChanceToMeleeCrit
---@field GetAllRows fun(self: dbc.Table.GtChanceToMeleeCrit): dbc.row.GtChanceToMeleeCrit[]
---@field Query fun(self: dbc.Table.GtChanceToMeleeCrit): dbc.Query<dbc.row.GtChanceToMeleeCrit>
---@field Rows fun(self: dbc.Table.GtChanceToMeleeCrit): fun(): integer, dbc.row.GtChanceToMeleeCrit
