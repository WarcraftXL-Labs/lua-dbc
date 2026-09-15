---@meta
-- Generated LuaLS annotations for ChatProfanity.dbc. Do not edit.

---Row representation of ChatProfanity.dbc.
---@class dbc.row.ChatProfanity : RowProxy
---@field ID integer
---@field Text string
---@field Language integer

-- Fluent PascalCase Methods for ChatProfanity
---@field GetID fun(self: dbc.row.ChatProfanity): integer
---@field SetID fun(self: dbc.row.ChatProfanity, value: integer): dbc.row.ChatProfanity
---@field GetText fun(self: dbc.row.ChatProfanity): string
---@field SetText fun(self: dbc.row.ChatProfanity, value: string): dbc.row.ChatProfanity
---@field GetLanguage fun(self: dbc.row.ChatProfanity): integer
---@field SetLanguage fun(self: dbc.row.ChatProfanity, value: integer): dbc.row.ChatProfanity

-- Inferred Cross-Table Relations for ChatProfanity

-- Cascading Creation & Relations Engine for ChatProfanity
---@field CreateRelated fun(self: dbc.row.ChatProfanity, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.ChatProfanity, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.ChatProfanity, child_table: string, child_field?: string): any[]

---Typed table handle for ChatProfanity.dbc.
---@class dbc.Table.ChatProfanity : DbcTable
---@field FindById fun(self: dbc.Table.ChatProfanity, id: integer): dbc.row.ChatProfanity|nil
---@field GetById fun(self: dbc.Table.ChatProfanity, id: integer): dbc.row.ChatProfanity|nil
---@field GetRow fun(self: dbc.Table.ChatProfanity, row: integer): dbc.row.ChatProfanity
---@field NewRow fun(self: dbc.Table.ChatProfanity, id?: integer): dbc.row.ChatProfanity
---@field Create fun(self: dbc.Table.ChatProfanity, id?: integer): dbc.row.ChatProfanity
---@field CreateNext fun(self: dbc.Table.ChatProfanity, data?: table): dbc.row.ChatProfanity
---@field CloneRow fun(self: dbc.Table.ChatProfanity, source: integer|dbc.row.ChatProfanity, new_id?: integer): dbc.row.ChatProfanity
---@field GetAllRows fun(self: dbc.Table.ChatProfanity): dbc.row.ChatProfanity[]
---@field Query fun(self: dbc.Table.ChatProfanity): dbc.Query<dbc.row.ChatProfanity>
---@field Rows fun(self: dbc.Table.ChatProfanity): fun(): integer, dbc.row.ChatProfanity
