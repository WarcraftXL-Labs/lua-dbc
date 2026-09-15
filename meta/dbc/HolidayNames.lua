---@meta
-- Generated LuaLS annotations for HolidayNames.dbc. Do not edit.

---Row representation of HolidayNames.dbc.
---@class dbc.row.HolidayNames : RowProxy
---@field ID integer
---@field Name string

-- Fluent PascalCase Methods for HolidayNames
---@field GetID fun(self: dbc.row.HolidayNames): integer
---@field SetID fun(self: dbc.row.HolidayNames, value: integer): dbc.row.HolidayNames
---@field GetName fun(self: dbc.row.HolidayNames, locale?: string|integer): string
---@field SetName fun(self: dbc.row.HolidayNames, value: string, locale?: string|integer): dbc.row.HolidayNames

-- Inferred Cross-Table Relations for HolidayNames

-- Cascading Creation & Relations Engine for HolidayNames
---@field CreateRelated fun(self: dbc.row.HolidayNames, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.HolidayNames, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.HolidayNames, child_table: string, child_field?: string): any[]

---Typed table handle for HolidayNames.dbc.
---@class dbc.Table.HolidayNames : DbcTable
---@field FindById fun(self: dbc.Table.HolidayNames, id: integer): dbc.row.HolidayNames|nil
---@field GetById fun(self: dbc.Table.HolidayNames, id: integer): dbc.row.HolidayNames|nil
---@field GetRow fun(self: dbc.Table.HolidayNames, row: integer): dbc.row.HolidayNames
---@field NewRow fun(self: dbc.Table.HolidayNames, id?: integer): dbc.row.HolidayNames
---@field Create fun(self: dbc.Table.HolidayNames, id?: integer): dbc.row.HolidayNames
---@field CreateNext fun(self: dbc.Table.HolidayNames, data?: table): dbc.row.HolidayNames
---@field CloneRow fun(self: dbc.Table.HolidayNames, source: integer|dbc.row.HolidayNames, new_id?: integer): dbc.row.HolidayNames
---@field GetAllRows fun(self: dbc.Table.HolidayNames): dbc.row.HolidayNames[]
---@field Query fun(self: dbc.Table.HolidayNames): dbc.Query<dbc.row.HolidayNames>
---@field Rows fun(self: dbc.Table.HolidayNames): fun(): integer, dbc.row.HolidayNames
