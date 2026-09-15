---@meta
-- Generated LuaLS annotations for WowError_Strings.dbc. Do not edit.

---Row representation of WowError_Strings.dbc.
---@class dbc.row.WowError_Strings : RowProxy
---@field ID integer
---@field ErrorName string
---@field ErrorString string

-- Fluent PascalCase Methods for WowError_Strings
---@field GetID fun(self: dbc.row.WowError_Strings): integer
---@field SetID fun(self: dbc.row.WowError_Strings, value: integer): dbc.row.WowError_Strings
---@field GetErrorName fun(self: dbc.row.WowError_Strings): string
---@field SetErrorName fun(self: dbc.row.WowError_Strings, value: string): dbc.row.WowError_Strings
---@field GetErrorString fun(self: dbc.row.WowError_Strings, locale?: string|integer): string
---@field SetErrorString fun(self: dbc.row.WowError_Strings, value: string, locale?: string|integer): dbc.row.WowError_Strings

-- Inferred Cross-Table Relations for WowError_Strings

-- Cascading Creation & Relations Engine for WowError_Strings
---@field CreateRelated fun(self: dbc.row.WowError_Strings, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.WowError_Strings, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.WowError_Strings, child_table: string, child_field?: string): any[]

---Typed table handle for WowError_Strings.dbc.
---@class dbc.Table.WowError_Strings : DbcTable
---@field FindById fun(self: dbc.Table.WowError_Strings, id: integer): dbc.row.WowError_Strings|nil
---@field GetById fun(self: dbc.Table.WowError_Strings, id: integer): dbc.row.WowError_Strings|nil
---@field GetRow fun(self: dbc.Table.WowError_Strings, row: integer): dbc.row.WowError_Strings
---@field NewRow fun(self: dbc.Table.WowError_Strings, id?: integer): dbc.row.WowError_Strings
---@field Create fun(self: dbc.Table.WowError_Strings, id?: integer): dbc.row.WowError_Strings
---@field CreateNext fun(self: dbc.Table.WowError_Strings, data?: table): dbc.row.WowError_Strings
---@field CloneRow fun(self: dbc.Table.WowError_Strings, source: integer|dbc.row.WowError_Strings, new_id?: integer): dbc.row.WowError_Strings
---@field GetAllRows fun(self: dbc.Table.WowError_Strings): dbc.row.WowError_Strings[]
---@field Query fun(self: dbc.Table.WowError_Strings): dbc.Query<dbc.row.WowError_Strings>
---@field Rows fun(self: dbc.Table.WowError_Strings): fun(): integer, dbc.row.WowError_Strings
