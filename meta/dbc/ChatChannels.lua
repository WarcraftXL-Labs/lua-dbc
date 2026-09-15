---@meta
-- Generated LuaLS annotations for ChatChannels.dbc. Do not edit.

---Row representation of ChatChannels.dbc.
---@class dbc.row.ChatChannels : RowProxy
---@field ID integer
---@field Flags integer
---@field FactionGroup integer
---@field Name string
---@field Shortcut string

-- Fluent PascalCase Methods for ChatChannels
---@field GetID fun(self: dbc.row.ChatChannels): integer
---@field SetID fun(self: dbc.row.ChatChannels, value: integer): dbc.row.ChatChannels
---@field GetFlags fun(self: dbc.row.ChatChannels): integer
---@field SetFlags fun(self: dbc.row.ChatChannels, value: integer): dbc.row.ChatChannels
---@field HasFlags fun(self: dbc.row.ChatChannels, flag: integer): boolean
---@field AddFlags fun(self: dbc.row.ChatChannels, flag: integer): dbc.row.ChatChannels
---@field RemoveFlags fun(self: dbc.row.ChatChannels, flag: integer): dbc.row.ChatChannels
---@field GetFactionGroup fun(self: dbc.row.ChatChannels): integer
---@field SetFactionGroup fun(self: dbc.row.ChatChannels, value: integer): dbc.row.ChatChannels
---@field GetName fun(self: dbc.row.ChatChannels, locale?: string|integer): string
---@field SetName fun(self: dbc.row.ChatChannels, value: string, locale?: string|integer): dbc.row.ChatChannels
---@field GetShortcut fun(self: dbc.row.ChatChannels, locale?: string|integer): string
---@field SetShortcut fun(self: dbc.row.ChatChannels, value: string, locale?: string|integer): dbc.row.ChatChannels

-- Inferred Cross-Table Relations for ChatChannels

-- Cascading Creation & Relations Engine for ChatChannels
---@field CreateRelated fun(self: dbc.row.ChatChannels, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.ChatChannels, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.ChatChannels, child_table: string, child_field?: string): any[]

---Typed table handle for ChatChannels.dbc.
---@class dbc.Table.ChatChannels : DbcTable
---@field FindById fun(self: dbc.Table.ChatChannels, id: integer): dbc.row.ChatChannels|nil
---@field GetById fun(self: dbc.Table.ChatChannels, id: integer): dbc.row.ChatChannels|nil
---@field GetRow fun(self: dbc.Table.ChatChannels, row: integer): dbc.row.ChatChannels
---@field NewRow fun(self: dbc.Table.ChatChannels, id?: integer): dbc.row.ChatChannels
---@field Create fun(self: dbc.Table.ChatChannels, id?: integer): dbc.row.ChatChannels
---@field CreateNext fun(self: dbc.Table.ChatChannels, data?: table): dbc.row.ChatChannels
---@field CloneRow fun(self: dbc.Table.ChatChannels, source: integer|dbc.row.ChatChannels, new_id?: integer): dbc.row.ChatChannels
---@field GetAllRows fun(self: dbc.Table.ChatChannels): dbc.row.ChatChannels[]
---@field Query fun(self: dbc.Table.ChatChannels): dbc.Query<dbc.row.ChatChannels>
---@field Rows fun(self: dbc.Table.ChatChannels): fun(): integer, dbc.row.ChatChannels
