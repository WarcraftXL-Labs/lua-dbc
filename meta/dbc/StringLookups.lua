---@meta
-- Generated LuaLS annotations for StringLookups.dbc. Do not edit.

---Row representation of StringLookups.dbc.
---@class dbc.row.StringLookups : RowProxy
---@field ID integer
---@field String string

-- Fluent PascalCase Methods for StringLookups
---@field GetID fun(self: dbc.row.StringLookups): integer
---@field SetID fun(self: dbc.row.StringLookups, value: integer): dbc.row.StringLookups
---@field GetString fun(self: dbc.row.StringLookups): string
---@field SetString fun(self: dbc.row.StringLookups, value: string): dbc.row.StringLookups

-- Inferred Cross-Table Relations for StringLookups

-- Cascading Creation & Relations Engine for StringLookups
---@field CreateRelated fun(self: dbc.row.StringLookups, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.StringLookups, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.StringLookups, child_table: string, child_field?: string): any[]

---Typed table handle for StringLookups.dbc.
---@class dbc.Table.StringLookups : DbcTable
---@field FindById fun(self: dbc.Table.StringLookups, id: integer): dbc.row.StringLookups|nil
---@field GetById fun(self: dbc.Table.StringLookups, id: integer): dbc.row.StringLookups|nil
---@field GetRow fun(self: dbc.Table.StringLookups, row: integer): dbc.row.StringLookups
---@field NewRow fun(self: dbc.Table.StringLookups, id?: integer): dbc.row.StringLookups
---@field Create fun(self: dbc.Table.StringLookups, id?: integer): dbc.row.StringLookups
---@field CreateNext fun(self: dbc.Table.StringLookups, data?: table): dbc.row.StringLookups
---@field CloneRow fun(self: dbc.Table.StringLookups, source: integer|dbc.row.StringLookups, new_id?: integer): dbc.row.StringLookups
---@field GetAllRows fun(self: dbc.Table.StringLookups): dbc.row.StringLookups[]
---@field Query fun(self: dbc.Table.StringLookups): dbc.Query<dbc.row.StringLookups>
---@field Rows fun(self: dbc.Table.StringLookups): fun(): integer, dbc.row.StringLookups
