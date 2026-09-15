---@meta
-- Generated LuaLS annotations for NamesProfanity.dbc. Do not edit.

---Row representation of NamesProfanity.dbc.
---@class dbc.row.NamesProfanity : RowProxy
---@field ID integer
---@field Name string
---@field Language integer

-- Fluent PascalCase Methods for NamesProfanity
---@field GetID fun(self: dbc.row.NamesProfanity): integer
---@field SetID fun(self: dbc.row.NamesProfanity, value: integer): dbc.row.NamesProfanity
---@field GetName fun(self: dbc.row.NamesProfanity): string
---@field SetName fun(self: dbc.row.NamesProfanity, value: string): dbc.row.NamesProfanity
---@field GetLanguage fun(self: dbc.row.NamesProfanity): integer
---@field SetLanguage fun(self: dbc.row.NamesProfanity, value: integer): dbc.row.NamesProfanity

-- Inferred Cross-Table Relations for NamesProfanity

-- Cascading Creation & Relations Engine for NamesProfanity
---@field CreateRelated fun(self: dbc.row.NamesProfanity, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.NamesProfanity, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.NamesProfanity, child_table: string, child_field?: string): any[]

---Typed table handle for NamesProfanity.dbc.
---@class dbc.Table.NamesProfanity : DbcTable
---@field FindById fun(self: dbc.Table.NamesProfanity, id: integer): dbc.row.NamesProfanity|nil
---@field GetById fun(self: dbc.Table.NamesProfanity, id: integer): dbc.row.NamesProfanity|nil
---@field GetRow fun(self: dbc.Table.NamesProfanity, row: integer): dbc.row.NamesProfanity
---@field NewRow fun(self: dbc.Table.NamesProfanity, id?: integer): dbc.row.NamesProfanity
---@field Create fun(self: dbc.Table.NamesProfanity, id?: integer): dbc.row.NamesProfanity
---@field CreateNext fun(self: dbc.Table.NamesProfanity, data?: table): dbc.row.NamesProfanity
---@field CloneRow fun(self: dbc.Table.NamesProfanity, source: integer|dbc.row.NamesProfanity, new_id?: integer): dbc.row.NamesProfanity
---@field GetAllRows fun(self: dbc.Table.NamesProfanity): dbc.row.NamesProfanity[]
---@field Query fun(self: dbc.Table.NamesProfanity): dbc.Query<dbc.row.NamesProfanity>
---@field Rows fun(self: dbc.Table.NamesProfanity): fun(): integer, dbc.row.NamesProfanity
