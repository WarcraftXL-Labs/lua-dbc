---@meta
-- Generated LuaLS annotations for DeclinedWord.dbc. Do not edit.

---Row representation of DeclinedWord.dbc.
---@class dbc.row.DeclinedWord : RowProxy
---@field ID integer
---@field Word string

-- Fluent PascalCase Methods for DeclinedWord
---@field GetID fun(self: dbc.row.DeclinedWord): integer
---@field SetID fun(self: dbc.row.DeclinedWord, value: integer): dbc.row.DeclinedWord
---@field GetWord fun(self: dbc.row.DeclinedWord): string
---@field SetWord fun(self: dbc.row.DeclinedWord, value: string): dbc.row.DeclinedWord

-- Inferred Cross-Table Relations for DeclinedWord

-- Cascading Creation & Relations Engine for DeclinedWord
---@field CreateRelated fun(self: dbc.row.DeclinedWord, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.DeclinedWord, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.DeclinedWord, child_table: string, child_field?: string): any[]

---Typed table handle for DeclinedWord.dbc.
---@class dbc.Table.DeclinedWord : DbcTable
---@field FindById fun(self: dbc.Table.DeclinedWord, id: integer): dbc.row.DeclinedWord|nil
---@field GetById fun(self: dbc.Table.DeclinedWord, id: integer): dbc.row.DeclinedWord|nil
---@field GetRow fun(self: dbc.Table.DeclinedWord, row: integer): dbc.row.DeclinedWord
---@field NewRow fun(self: dbc.Table.DeclinedWord, id?: integer): dbc.row.DeclinedWord
---@field Create fun(self: dbc.Table.DeclinedWord, id?: integer): dbc.row.DeclinedWord
---@field CreateNext fun(self: dbc.Table.DeclinedWord, data?: table): dbc.row.DeclinedWord
---@field CloneRow fun(self: dbc.Table.DeclinedWord, source: integer|dbc.row.DeclinedWord, new_id?: integer): dbc.row.DeclinedWord
---@field GetAllRows fun(self: dbc.Table.DeclinedWord): dbc.row.DeclinedWord[]
---@field Query fun(self: dbc.Table.DeclinedWord): dbc.Query<dbc.row.DeclinedWord>
---@field Rows fun(self: dbc.Table.DeclinedWord): fun(): integer, dbc.row.DeclinedWord
