---@meta
-- Generated LuaLS annotations for Startup_strings.dbc. Do not edit.

---Row representation of Startup_strings.dbc.
---@class dbc.row.Startup_strings : RowProxy
---@field ID integer
---@field Name string
---@field Message string

-- Fluent PascalCase Methods for Startup_strings
---@field GetID fun(self: dbc.row.Startup_strings): integer
---@field SetID fun(self: dbc.row.Startup_strings, value: integer): dbc.row.Startup_strings
---@field GetName fun(self: dbc.row.Startup_strings): string
---@field SetName fun(self: dbc.row.Startup_strings, value: string): dbc.row.Startup_strings
---@field GetMessage fun(self: dbc.row.Startup_strings, locale?: string|integer): string
---@field SetMessage fun(self: dbc.row.Startup_strings, value: string, locale?: string|integer): dbc.row.Startup_strings

-- Inferred Cross-Table Relations for Startup_strings

-- Cascading Creation & Relations Engine for Startup_strings
---@field CreateRelated fun(self: dbc.row.Startup_strings, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.Startup_strings, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.Startup_strings, child_table: string, child_field?: string): any[]

---Typed table handle for Startup_strings.dbc.
---@class dbc.Table.Startup_strings : DbcTable
---@field FindById fun(self: dbc.Table.Startup_strings, id: integer): dbc.row.Startup_strings|nil
---@field GetById fun(self: dbc.Table.Startup_strings, id: integer): dbc.row.Startup_strings|nil
---@field GetRow fun(self: dbc.Table.Startup_strings, row: integer): dbc.row.Startup_strings
---@field NewRow fun(self: dbc.Table.Startup_strings, id?: integer): dbc.row.Startup_strings
---@field Create fun(self: dbc.Table.Startup_strings, id?: integer): dbc.row.Startup_strings
---@field CreateNext fun(self: dbc.Table.Startup_strings, data?: table): dbc.row.Startup_strings
---@field CloneRow fun(self: dbc.Table.Startup_strings, source: integer|dbc.row.Startup_strings, new_id?: integer): dbc.row.Startup_strings
---@field GetAllRows fun(self: dbc.Table.Startup_strings): dbc.row.Startup_strings[]
---@field Query fun(self: dbc.Table.Startup_strings): dbc.Query<dbc.row.Startup_strings>
---@field Rows fun(self: dbc.Table.Startup_strings): fun(): integer, dbc.row.Startup_strings
