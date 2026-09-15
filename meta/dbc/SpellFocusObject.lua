---@meta
-- Generated LuaLS annotations for SpellFocusObject.dbc. Do not edit.

---Row representation of SpellFocusObject.dbc.
---@class dbc.row.SpellFocusObject : RowProxy
---@field ID integer
---@field Name string

-- Fluent PascalCase Methods for SpellFocusObject
---@field GetID fun(self: dbc.row.SpellFocusObject): integer
---@field SetID fun(self: dbc.row.SpellFocusObject, value: integer): dbc.row.SpellFocusObject
---@field GetName fun(self: dbc.row.SpellFocusObject, locale?: string|integer): string
---@field SetName fun(self: dbc.row.SpellFocusObject, value: string, locale?: string|integer): dbc.row.SpellFocusObject

-- Inferred Cross-Table Relations for SpellFocusObject

-- Cascading Creation & Relations Engine for SpellFocusObject
---@field CreateRelated fun(self: dbc.row.SpellFocusObject, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.SpellFocusObject, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.SpellFocusObject, child_table: string, child_field?: string): any[]

---Typed table handle for SpellFocusObject.dbc.
---@class dbc.Table.SpellFocusObject : DbcTable
---@field FindById fun(self: dbc.Table.SpellFocusObject, id: integer): dbc.row.SpellFocusObject|nil
---@field GetById fun(self: dbc.Table.SpellFocusObject, id: integer): dbc.row.SpellFocusObject|nil
---@field GetRow fun(self: dbc.Table.SpellFocusObject, row: integer): dbc.row.SpellFocusObject
---@field NewRow fun(self: dbc.Table.SpellFocusObject, id?: integer): dbc.row.SpellFocusObject
---@field Create fun(self: dbc.Table.SpellFocusObject, id?: integer): dbc.row.SpellFocusObject
---@field CreateNext fun(self: dbc.Table.SpellFocusObject, data?: table): dbc.row.SpellFocusObject
---@field CloneRow fun(self: dbc.Table.SpellFocusObject, source: integer|dbc.row.SpellFocusObject, new_id?: integer): dbc.row.SpellFocusObject
---@field GetAllRows fun(self: dbc.Table.SpellFocusObject): dbc.row.SpellFocusObject[]
---@field Query fun(self: dbc.Table.SpellFocusObject): dbc.Query<dbc.row.SpellFocusObject>
---@field Rows fun(self: dbc.Table.SpellFocusObject): fun(): integer, dbc.row.SpellFocusObject
