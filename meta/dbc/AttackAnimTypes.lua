---@meta
-- Generated LuaLS annotations for AttackAnimTypes.dbc. Do not edit.

---Row representation of AttackAnimTypes.dbc.
---@class dbc.row.AttackAnimTypes : RowProxy
---@field ID integer
---@field Name string

-- Fluent PascalCase Methods for AttackAnimTypes
---@field GetID fun(self: dbc.row.AttackAnimTypes): integer
---@field SetID fun(self: dbc.row.AttackAnimTypes, value: integer): dbc.row.AttackAnimTypes
---@field GetName fun(self: dbc.row.AttackAnimTypes): string
---@field SetName fun(self: dbc.row.AttackAnimTypes, value: string): dbc.row.AttackAnimTypes

-- Inferred Cross-Table Relations for AttackAnimTypes

-- Cascading Creation & Relations Engine for AttackAnimTypes
---@field CreateRelated fun(self: dbc.row.AttackAnimTypes, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.AttackAnimTypes, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.AttackAnimTypes, child_table: string, child_field?: string): any[]

---Typed table handle for AttackAnimTypes.dbc.
---@class dbc.Table.AttackAnimTypes : DbcTable
---@field FindById fun(self: dbc.Table.AttackAnimTypes, id: integer): dbc.row.AttackAnimTypes|nil
---@field GetById fun(self: dbc.Table.AttackAnimTypes, id: integer): dbc.row.AttackAnimTypes|nil
---@field GetRow fun(self: dbc.Table.AttackAnimTypes, row: integer): dbc.row.AttackAnimTypes
---@field NewRow fun(self: dbc.Table.AttackAnimTypes, id?: integer): dbc.row.AttackAnimTypes
---@field Create fun(self: dbc.Table.AttackAnimTypes, id?: integer): dbc.row.AttackAnimTypes
---@field CreateNext fun(self: dbc.Table.AttackAnimTypes, data?: table): dbc.row.AttackAnimTypes
---@field CloneRow fun(self: dbc.Table.AttackAnimTypes, source: integer|dbc.row.AttackAnimTypes, new_id?: integer): dbc.row.AttackAnimTypes
---@field GetAllRows fun(self: dbc.Table.AttackAnimTypes): dbc.row.AttackAnimTypes[]
---@field Query fun(self: dbc.Table.AttackAnimTypes): dbc.Query<dbc.row.AttackAnimTypes>
---@field Rows fun(self: dbc.Table.AttackAnimTypes): fun(): integer, dbc.row.AttackAnimTypes
