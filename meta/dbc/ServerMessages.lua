---@meta
-- Generated LuaLS annotations for ServerMessages.dbc. Do not edit.

---Row representation of ServerMessages.dbc.
---@class dbc.row.ServerMessages : RowProxy
---@field ID integer
---@field Text string

-- Fluent PascalCase Methods for ServerMessages
---@field GetID fun(self: dbc.row.ServerMessages): integer
---@field SetID fun(self: dbc.row.ServerMessages, value: integer): dbc.row.ServerMessages
---@field GetText fun(self: dbc.row.ServerMessages, locale?: string|integer): string
---@field SetText fun(self: dbc.row.ServerMessages, value: string, locale?: string|integer): dbc.row.ServerMessages

-- Inferred Cross-Table Relations for ServerMessages

-- Cascading Creation & Relations Engine for ServerMessages
---@field CreateRelated fun(self: dbc.row.ServerMessages, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.ServerMessages, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.ServerMessages, child_table: string, child_field?: string): any[]

---Typed table handle for ServerMessages.dbc.
---@class dbc.Table.ServerMessages : DbcTable
---@field FindById fun(self: dbc.Table.ServerMessages, id: integer): dbc.row.ServerMessages|nil
---@field GetById fun(self: dbc.Table.ServerMessages, id: integer): dbc.row.ServerMessages|nil
---@field GetRow fun(self: dbc.Table.ServerMessages, row: integer): dbc.row.ServerMessages
---@field NewRow fun(self: dbc.Table.ServerMessages, id?: integer): dbc.row.ServerMessages
---@field Create fun(self: dbc.Table.ServerMessages, id?: integer): dbc.row.ServerMessages
---@field CreateNext fun(self: dbc.Table.ServerMessages, data?: table): dbc.row.ServerMessages
---@field CloneRow fun(self: dbc.Table.ServerMessages, source: integer|dbc.row.ServerMessages, new_id?: integer): dbc.row.ServerMessages
---@field GetAllRows fun(self: dbc.Table.ServerMessages): dbc.row.ServerMessages[]
---@field Query fun(self: dbc.Table.ServerMessages): dbc.Query<dbc.row.ServerMessages>
---@field Rows fun(self: dbc.Table.ServerMessages): fun(): integer, dbc.row.ServerMessages
