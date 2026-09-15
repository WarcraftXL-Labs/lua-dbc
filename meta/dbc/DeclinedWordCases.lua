---@meta
-- Generated LuaLS annotations for DeclinedWordCases.dbc. Do not edit.

---Row representation of DeclinedWordCases.dbc.
---@class dbc.row.DeclinedWordCases : RowProxy
---@field ID integer
---@field DeclinedWordID integer
---@field CaseIndex integer
---@field DeclinedWord string

-- Fluent PascalCase Methods for DeclinedWordCases
---@field GetID fun(self: dbc.row.DeclinedWordCases): integer
---@field SetID fun(self: dbc.row.DeclinedWordCases, value: integer): dbc.row.DeclinedWordCases
---@field GetDeclinedWordID fun(self: dbc.row.DeclinedWordCases): integer
---@field SetDeclinedWordID fun(self: dbc.row.DeclinedWordCases, value: integer): dbc.row.DeclinedWordCases
---@field GetCaseIndex fun(self: dbc.row.DeclinedWordCases): integer
---@field SetCaseIndex fun(self: dbc.row.DeclinedWordCases, value: integer): dbc.row.DeclinedWordCases
---@field GetDeclinedWord fun(self: dbc.row.DeclinedWordCases): string
---@field SetDeclinedWord fun(self: dbc.row.DeclinedWordCases, value: string): dbc.row.DeclinedWordCases

-- Inferred Cross-Table Relations for DeclinedWordCases
---@field GetDeclinedWord fun(self: dbc.row.DeclinedWordCases): dbc.row.DeclinedWord|nil
---@field SetDeclinedWord fun(self: dbc.row.DeclinedWordCases, target: dbc.row.DeclinedWord|integer): dbc.row.DeclinedWordCases

-- Cascading Creation & Relations Engine for DeclinedWordCases
---@field CreateRelated fun(self: dbc.row.DeclinedWordCases, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.DeclinedWordCases, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.DeclinedWordCases, child_table: string, child_field?: string): any[]

---Typed table handle for DeclinedWordCases.dbc.
---@class dbc.Table.DeclinedWordCases : DbcTable
---@field FindById fun(self: dbc.Table.DeclinedWordCases, id: integer): dbc.row.DeclinedWordCases|nil
---@field GetById fun(self: dbc.Table.DeclinedWordCases, id: integer): dbc.row.DeclinedWordCases|nil
---@field GetRow fun(self: dbc.Table.DeclinedWordCases, row: integer): dbc.row.DeclinedWordCases
---@field NewRow fun(self: dbc.Table.DeclinedWordCases, id?: integer): dbc.row.DeclinedWordCases
---@field Create fun(self: dbc.Table.DeclinedWordCases, id?: integer): dbc.row.DeclinedWordCases
---@field CreateNext fun(self: dbc.Table.DeclinedWordCases, data?: table): dbc.row.DeclinedWordCases
---@field CloneRow fun(self: dbc.Table.DeclinedWordCases, source: integer|dbc.row.DeclinedWordCases, new_id?: integer): dbc.row.DeclinedWordCases
---@field GetAllRows fun(self: dbc.Table.DeclinedWordCases): dbc.row.DeclinedWordCases[]
---@field Query fun(self: dbc.Table.DeclinedWordCases): dbc.Query<dbc.row.DeclinedWordCases>
---@field Rows fun(self: dbc.Table.DeclinedWordCases): fun(): integer, dbc.row.DeclinedWordCases
