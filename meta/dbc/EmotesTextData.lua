---@meta
-- Generated LuaLS annotations for EmotesTextData.dbc. Do not edit.

---Row representation of EmotesTextData.dbc.
---@class dbc.row.EmotesTextData : RowProxy
---@field ID integer
---@field Text string

-- Fluent PascalCase Methods for EmotesTextData
---@field GetID fun(self: dbc.row.EmotesTextData): integer
---@field SetID fun(self: dbc.row.EmotesTextData, value: integer): dbc.row.EmotesTextData
---@field GetText fun(self: dbc.row.EmotesTextData, locale?: string|integer): string
---@field SetText fun(self: dbc.row.EmotesTextData, value: string, locale?: string|integer): dbc.row.EmotesTextData

-- Inferred Cross-Table Relations for EmotesTextData

-- Cascading Creation & Relations Engine for EmotesTextData
---@field CreateRelated fun(self: dbc.row.EmotesTextData, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.EmotesTextData, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.EmotesTextData, child_table: string, child_field?: string): any[]

---Typed table handle for EmotesTextData.dbc.
---@class dbc.Table.EmotesTextData : DbcTable
---@field FindById fun(self: dbc.Table.EmotesTextData, id: integer): dbc.row.EmotesTextData|nil
---@field GetById fun(self: dbc.Table.EmotesTextData, id: integer): dbc.row.EmotesTextData|nil
---@field GetRow fun(self: dbc.Table.EmotesTextData, row: integer): dbc.row.EmotesTextData
---@field NewRow fun(self: dbc.Table.EmotesTextData, id?: integer): dbc.row.EmotesTextData
---@field Create fun(self: dbc.Table.EmotesTextData, id?: integer): dbc.row.EmotesTextData
---@field CreateNext fun(self: dbc.Table.EmotesTextData, data?: table): dbc.row.EmotesTextData
---@field CloneRow fun(self: dbc.Table.EmotesTextData, source: integer|dbc.row.EmotesTextData, new_id?: integer): dbc.row.EmotesTextData
---@field GetAllRows fun(self: dbc.Table.EmotesTextData): dbc.row.EmotesTextData[]
---@field Query fun(self: dbc.Table.EmotesTextData): dbc.Query<dbc.row.EmotesTextData>
---@field Rows fun(self: dbc.Table.EmotesTextData): fun(): integer, dbc.row.EmotesTextData
