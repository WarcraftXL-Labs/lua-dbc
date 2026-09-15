---@meta
-- Generated LuaLS annotations for NamesReserved.dbc. Do not edit.

---Row representation of NamesReserved.dbc.
---@class dbc.row.NamesReserved : RowProxy
---@field ID integer
---@field Name string
---@field Language integer

-- Fluent PascalCase Methods for NamesReserved
---@field GetID fun(self: dbc.row.NamesReserved): integer
---@field SetID fun(self: dbc.row.NamesReserved, value: integer): dbc.row.NamesReserved
---@field GetName fun(self: dbc.row.NamesReserved): string
---@field SetName fun(self: dbc.row.NamesReserved, value: string): dbc.row.NamesReserved
---@field GetLanguage fun(self: dbc.row.NamesReserved): integer
---@field SetLanguage fun(self: dbc.row.NamesReserved, value: integer): dbc.row.NamesReserved

-- Inferred Cross-Table Relations for NamesReserved

-- Cascading Creation & Relations Engine for NamesReserved
---@field CreateRelated fun(self: dbc.row.NamesReserved, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.NamesReserved, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.NamesReserved, child_table: string, child_field?: string): any[]

---Typed table handle for NamesReserved.dbc.
---@class dbc.Table.NamesReserved : DbcTable
---@field FindById fun(self: dbc.Table.NamesReserved, id: integer): dbc.row.NamesReserved|nil
---@field GetById fun(self: dbc.Table.NamesReserved, id: integer): dbc.row.NamesReserved|nil
---@field GetRow fun(self: dbc.Table.NamesReserved, row: integer): dbc.row.NamesReserved
---@field NewRow fun(self: dbc.Table.NamesReserved, id?: integer): dbc.row.NamesReserved
---@field Create fun(self: dbc.Table.NamesReserved, id?: integer): dbc.row.NamesReserved
---@field CreateNext fun(self: dbc.Table.NamesReserved, data?: table): dbc.row.NamesReserved
---@field CloneRow fun(self: dbc.Table.NamesReserved, source: integer|dbc.row.NamesReserved, new_id?: integer): dbc.row.NamesReserved
---@field GetAllRows fun(self: dbc.Table.NamesReserved): dbc.row.NamesReserved[]
---@field Query fun(self: dbc.Table.NamesReserved): dbc.Query<dbc.row.NamesReserved>
---@field Rows fun(self: dbc.Table.NamesReserved): fun(): integer, dbc.row.NamesReserved
