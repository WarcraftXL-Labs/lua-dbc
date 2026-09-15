---@meta
-- Generated LuaLS annotations for EmotesText.dbc. Do not edit.

---Row representation of EmotesText.dbc.
---@class dbc.row.EmotesText : RowProxy
---@field ID integer
---@field Name string
---@field EmoteID integer
---@field EmoteText integer[]

-- Fluent PascalCase Methods for EmotesText
---@field GetID fun(self: dbc.row.EmotesText): integer
---@field SetID fun(self: dbc.row.EmotesText, value: integer): dbc.row.EmotesText
---@field GetName fun(self: dbc.row.EmotesText): string
---@field SetName fun(self: dbc.row.EmotesText, value: string): dbc.row.EmotesText
---@field GetEmoteID fun(self: dbc.row.EmotesText): integer
---@field SetEmoteID fun(self: dbc.row.EmotesText, value: integer): dbc.row.EmotesText
---@field GetEmoteText fun(self: dbc.row.EmotesText, index?: integer): integer|integer[]
---@field SetEmoteText fun(self: dbc.row.EmotesText, value: integer|integer[], index?: integer): dbc.row.EmotesText

-- Inferred Cross-Table Relations for EmotesText
---@field GetEmotes fun(self: dbc.row.EmotesText): dbc.row.Emotes|nil
---@field SetEmotes fun(self: dbc.row.EmotesText, target: dbc.row.Emotes|integer): dbc.row.EmotesText

-- Cascading Creation & Relations Engine for EmotesText
---@field CreateRelated fun(self: dbc.row.EmotesText, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.EmotesText, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.EmotesText, child_table: string, child_field?: string): any[]

---Typed table handle for EmotesText.dbc.
---@class dbc.Table.EmotesText : DbcTable
---@field FindById fun(self: dbc.Table.EmotesText, id: integer): dbc.row.EmotesText|nil
---@field GetById fun(self: dbc.Table.EmotesText, id: integer): dbc.row.EmotesText|nil
---@field GetRow fun(self: dbc.Table.EmotesText, row: integer): dbc.row.EmotesText
---@field NewRow fun(self: dbc.Table.EmotesText, id?: integer): dbc.row.EmotesText
---@field Create fun(self: dbc.Table.EmotesText, id?: integer): dbc.row.EmotesText
---@field CreateNext fun(self: dbc.Table.EmotesText, data?: table): dbc.row.EmotesText
---@field CloneRow fun(self: dbc.Table.EmotesText, source: integer|dbc.row.EmotesText, new_id?: integer): dbc.row.EmotesText
---@field GetAllRows fun(self: dbc.Table.EmotesText): dbc.row.EmotesText[]
---@field Query fun(self: dbc.Table.EmotesText): dbc.Query<dbc.row.EmotesText>
---@field Rows fun(self: dbc.Table.EmotesText): fun(): integer, dbc.row.EmotesText
