---@meta
-- Generated LuaLS annotations for LanguageWords.dbc. Do not edit.

---Row representation of LanguageWords.dbc.
---@class dbc.row.LanguageWords : RowProxy
---@field ID integer
---@field LanguageID integer
---@field Word string

-- Fluent PascalCase Methods for LanguageWords
---@field GetID fun(self: dbc.row.LanguageWords): integer
---@field SetID fun(self: dbc.row.LanguageWords, value: integer): dbc.row.LanguageWords
---@field GetLanguageID fun(self: dbc.row.LanguageWords): integer
---@field SetLanguageID fun(self: dbc.row.LanguageWords, value: integer): dbc.row.LanguageWords
---@field GetWord fun(self: dbc.row.LanguageWords): string
---@field SetWord fun(self: dbc.row.LanguageWords, value: string): dbc.row.LanguageWords

-- Inferred Cross-Table Relations for LanguageWords

-- Cascading Creation & Relations Engine for LanguageWords
---@field CreateRelated fun(self: dbc.row.LanguageWords, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.LanguageWords, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.LanguageWords, child_table: string, child_field?: string): any[]

---Typed table handle for LanguageWords.dbc.
---@class dbc.Table.LanguageWords : DbcTable
---@field FindById fun(self: dbc.Table.LanguageWords, id: integer): dbc.row.LanguageWords|nil
---@field GetById fun(self: dbc.Table.LanguageWords, id: integer): dbc.row.LanguageWords|nil
---@field GetRow fun(self: dbc.Table.LanguageWords, row: integer): dbc.row.LanguageWords
---@field NewRow fun(self: dbc.Table.LanguageWords, id?: integer): dbc.row.LanguageWords
---@field Create fun(self: dbc.Table.LanguageWords, id?: integer): dbc.row.LanguageWords
---@field CreateNext fun(self: dbc.Table.LanguageWords, data?: table): dbc.row.LanguageWords
---@field CloneRow fun(self: dbc.Table.LanguageWords, source: integer|dbc.row.LanguageWords, new_id?: integer): dbc.row.LanguageWords
---@field GetAllRows fun(self: dbc.Table.LanguageWords): dbc.row.LanguageWords[]
---@field Query fun(self: dbc.Table.LanguageWords): dbc.Query<dbc.row.LanguageWords>
---@field Rows fun(self: dbc.Table.LanguageWords): fun(): integer, dbc.row.LanguageWords
