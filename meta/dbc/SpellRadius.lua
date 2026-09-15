---@meta
-- Generated LuaLS annotations for SpellRadius.dbc. Do not edit.

---Row representation of SpellRadius.dbc.
---@class dbc.row.SpellRadius : RowProxy
---@field ID integer
---@field Radius number
---@field RadiusPerLevel number
---@field RadiusMax number

-- Fluent PascalCase Methods for SpellRadius
---@field GetID fun(self: dbc.row.SpellRadius): integer
---@field SetID fun(self: dbc.row.SpellRadius, value: integer): dbc.row.SpellRadius
---@field GetRadius fun(self: dbc.row.SpellRadius): number
---@field SetRadius fun(self: dbc.row.SpellRadius, value: number): dbc.row.SpellRadius
---@field GetRadiusPerLevel fun(self: dbc.row.SpellRadius): number
---@field SetRadiusPerLevel fun(self: dbc.row.SpellRadius, value: number): dbc.row.SpellRadius
---@field GetRadiusMax fun(self: dbc.row.SpellRadius): number
---@field SetRadiusMax fun(self: dbc.row.SpellRadius, value: number): dbc.row.SpellRadius

-- Inferred Cross-Table Relations for SpellRadius

-- Cascading Creation & Relations Engine for SpellRadius
---@field CreateRelated fun(self: dbc.row.SpellRadius, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.SpellRadius, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.SpellRadius, child_table: string, child_field?: string): any[]

---Typed table handle for SpellRadius.dbc.
---@class dbc.Table.SpellRadius : DbcTable
---@field FindById fun(self: dbc.Table.SpellRadius, id: integer): dbc.row.SpellRadius|nil
---@field GetById fun(self: dbc.Table.SpellRadius, id: integer): dbc.row.SpellRadius|nil
---@field GetRow fun(self: dbc.Table.SpellRadius, row: integer): dbc.row.SpellRadius
---@field NewRow fun(self: dbc.Table.SpellRadius, id?: integer): dbc.row.SpellRadius
---@field Create fun(self: dbc.Table.SpellRadius, id?: integer): dbc.row.SpellRadius
---@field CreateNext fun(self: dbc.Table.SpellRadius, data?: table): dbc.row.SpellRadius
---@field CloneRow fun(self: dbc.Table.SpellRadius, source: integer|dbc.row.SpellRadius, new_id?: integer): dbc.row.SpellRadius
---@field GetAllRows fun(self: dbc.Table.SpellRadius): dbc.row.SpellRadius[]
---@field Query fun(self: dbc.Table.SpellRadius): dbc.Query<dbc.row.SpellRadius>
---@field Rows fun(self: dbc.Table.SpellRadius): fun(): integer, dbc.row.SpellRadius
