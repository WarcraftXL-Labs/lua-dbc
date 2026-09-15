---@meta
-- Generated LuaLS annotations for HolidayDescriptions.dbc. Do not edit.

---Row representation of HolidayDescriptions.dbc.
---@class dbc.row.HolidayDescriptions : RowProxy
---@field ID integer
---@field Description string

-- Fluent PascalCase Methods for HolidayDescriptions
---@field GetID fun(self: dbc.row.HolidayDescriptions): integer
---@field SetID fun(self: dbc.row.HolidayDescriptions, value: integer): dbc.row.HolidayDescriptions
---@field GetDescription fun(self: dbc.row.HolidayDescriptions, locale?: string|integer): string
---@field SetDescription fun(self: dbc.row.HolidayDescriptions, value: string, locale?: string|integer): dbc.row.HolidayDescriptions

-- Inferred Cross-Table Relations for HolidayDescriptions

-- Cascading Creation & Relations Engine for HolidayDescriptions
---@field CreateRelated fun(self: dbc.row.HolidayDescriptions, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.HolidayDescriptions, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.HolidayDescriptions, child_table: string, child_field?: string): any[]

---Typed table handle for HolidayDescriptions.dbc.
---@class dbc.Table.HolidayDescriptions : DbcTable
---@field FindById fun(self: dbc.Table.HolidayDescriptions, id: integer): dbc.row.HolidayDescriptions|nil
---@field GetById fun(self: dbc.Table.HolidayDescriptions, id: integer): dbc.row.HolidayDescriptions|nil
---@field GetRow fun(self: dbc.Table.HolidayDescriptions, row: integer): dbc.row.HolidayDescriptions
---@field NewRow fun(self: dbc.Table.HolidayDescriptions, id?: integer): dbc.row.HolidayDescriptions
---@field Create fun(self: dbc.Table.HolidayDescriptions, id?: integer): dbc.row.HolidayDescriptions
---@field CreateNext fun(self: dbc.Table.HolidayDescriptions, data?: table): dbc.row.HolidayDescriptions
---@field CloneRow fun(self: dbc.Table.HolidayDescriptions, source: integer|dbc.row.HolidayDescriptions, new_id?: integer): dbc.row.HolidayDescriptions
---@field GetAllRows fun(self: dbc.Table.HolidayDescriptions): dbc.row.HolidayDescriptions[]
---@field Query fun(self: dbc.Table.HolidayDescriptions): dbc.Query<dbc.row.HolidayDescriptions>
---@field Rows fun(self: dbc.Table.HolidayDescriptions): fun(): integer, dbc.row.HolidayDescriptions
