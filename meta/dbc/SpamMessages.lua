---@meta
-- Generated LuaLS annotations for SpamMessages.dbc. Do not edit.

---Row representation of SpamMessages.dbc.
---@class dbc.row.SpamMessages : RowProxy
---@field ID integer
---@field Text string

-- Fluent PascalCase Methods for SpamMessages
---@field GetID fun(self: dbc.row.SpamMessages): integer
---@field SetID fun(self: dbc.row.SpamMessages, value: integer): dbc.row.SpamMessages
---@field GetText fun(self: dbc.row.SpamMessages): string
---@field SetText fun(self: dbc.row.SpamMessages, value: string): dbc.row.SpamMessages

-- Inferred Cross-Table Relations for SpamMessages

-- Cascading Creation & Relations Engine for SpamMessages
---@field CreateRelated fun(self: dbc.row.SpamMessages, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.SpamMessages, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.SpamMessages, child_table: string, child_field?: string): any[]

---Typed table handle for SpamMessages.dbc.
---@class dbc.Table.SpamMessages : DbcTable
---@field FindById fun(self: dbc.Table.SpamMessages, id: integer): dbc.row.SpamMessages|nil
---@field GetById fun(self: dbc.Table.SpamMessages, id: integer): dbc.row.SpamMessages|nil
---@field GetRow fun(self: dbc.Table.SpamMessages, row: integer): dbc.row.SpamMessages
---@field NewRow fun(self: dbc.Table.SpamMessages, id?: integer): dbc.row.SpamMessages
---@field Create fun(self: dbc.Table.SpamMessages, id?: integer): dbc.row.SpamMessages
---@field CreateNext fun(self: dbc.Table.SpamMessages, data?: table): dbc.row.SpamMessages
---@field CloneRow fun(self: dbc.Table.SpamMessages, source: integer|dbc.row.SpamMessages, new_id?: integer): dbc.row.SpamMessages
---@field GetAllRows fun(self: dbc.Table.SpamMessages): dbc.row.SpamMessages[]
---@field Query fun(self: dbc.Table.SpamMessages): dbc.Query<dbc.row.SpamMessages>
---@field Rows fun(self: dbc.Table.SpamMessages): fun(): integer, dbc.row.SpamMessages
