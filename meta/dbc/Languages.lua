---@meta
-- Generated LuaLS annotations for Languages.dbc. Do not edit.

---Row representation of Languages.dbc.
---@class dbc.row.Languages : RowProxy
---@field ID integer
---@field Name string

-- Fluent PascalCase Methods for Languages
---@field GetID fun(self: dbc.row.Languages): integer
---@field SetID fun(self: dbc.row.Languages, value: integer): dbc.row.Languages
---@field GetName fun(self: dbc.row.Languages, locale?: string|integer): string
---@field SetName fun(self: dbc.row.Languages, value: string, locale?: string|integer): dbc.row.Languages

-- Inferred Cross-Table Relations for Languages

-- Cascading Creation & Relations Engine for Languages
---@field CreateRelated fun(self: dbc.row.Languages, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.Languages, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.Languages, child_table: string, child_field?: string): any[]

---Typed table handle for Languages.dbc.
---@class dbc.Table.Languages : DbcTable
---@field FindById fun(self: dbc.Table.Languages, id: integer): dbc.row.Languages|nil
---@field GetById fun(self: dbc.Table.Languages, id: integer): dbc.row.Languages|nil
---@field GetRow fun(self: dbc.Table.Languages, row: integer): dbc.row.Languages
---@field NewRow fun(self: dbc.Table.Languages, id?: integer): dbc.row.Languages
---@field Create fun(self: dbc.Table.Languages, id?: integer): dbc.row.Languages
---@field CreateNext fun(self: dbc.Table.Languages, data?: table): dbc.row.Languages
---@field CloneRow fun(self: dbc.Table.Languages, source: integer|dbc.row.Languages, new_id?: integer): dbc.row.Languages
---@field GetAllRows fun(self: dbc.Table.Languages): dbc.row.Languages[]
---@field Query fun(self: dbc.Table.Languages): dbc.Query<dbc.row.Languages>
---@field Rows fun(self: dbc.Table.Languages): fun(): integer, dbc.row.Languages
