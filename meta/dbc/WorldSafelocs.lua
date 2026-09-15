---@meta
-- Generated LuaLS annotations for WorldSafelocs.dbc. Do not edit.

---Row representation of WorldSafelocs.dbc.
---@class dbc.row.WorldSafelocs : RowProxy
---@field ID integer
---@field Continent integer
---@field LocX number
---@field LocY number
---@field LocZ number
---@field AreaName string

-- Fluent PascalCase Methods for WorldSafelocs
---@field GetID fun(self: dbc.row.WorldSafelocs): integer
---@field SetID fun(self: dbc.row.WorldSafelocs, value: integer): dbc.row.WorldSafelocs
---@field GetContinent fun(self: dbc.row.WorldSafelocs): integer
---@field SetContinent fun(self: dbc.row.WorldSafelocs, value: integer): dbc.row.WorldSafelocs
---@field GetLocX fun(self: dbc.row.WorldSafelocs): number
---@field SetLocX fun(self: dbc.row.WorldSafelocs, value: number): dbc.row.WorldSafelocs
---@field GetLocY fun(self: dbc.row.WorldSafelocs): number
---@field SetLocY fun(self: dbc.row.WorldSafelocs, value: number): dbc.row.WorldSafelocs
---@field GetLocZ fun(self: dbc.row.WorldSafelocs): number
---@field SetLocZ fun(self: dbc.row.WorldSafelocs, value: number): dbc.row.WorldSafelocs
---@field GetAreaName fun(self: dbc.row.WorldSafelocs, locale?: string|integer): string
---@field SetAreaName fun(self: dbc.row.WorldSafelocs, value: string, locale?: string|integer): dbc.row.WorldSafelocs

-- Inferred Cross-Table Relations for WorldSafelocs

-- Cascading Creation & Relations Engine for WorldSafelocs
---@field CreateRelated fun(self: dbc.row.WorldSafelocs, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.WorldSafelocs, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.WorldSafelocs, child_table: string, child_field?: string): any[]

---Typed table handle for WorldSafelocs.dbc.
---@class dbc.Table.WorldSafelocs : DbcTable
---@field FindById fun(self: dbc.Table.WorldSafelocs, id: integer): dbc.row.WorldSafelocs|nil
---@field GetById fun(self: dbc.Table.WorldSafelocs, id: integer): dbc.row.WorldSafelocs|nil
---@field GetRow fun(self: dbc.Table.WorldSafelocs, row: integer): dbc.row.WorldSafelocs
---@field NewRow fun(self: dbc.Table.WorldSafelocs, id?: integer): dbc.row.WorldSafelocs
---@field Create fun(self: dbc.Table.WorldSafelocs, id?: integer): dbc.row.WorldSafelocs
---@field CreateNext fun(self: dbc.Table.WorldSafelocs, data?: table): dbc.row.WorldSafelocs
---@field CloneRow fun(self: dbc.Table.WorldSafelocs, source: integer|dbc.row.WorldSafelocs, new_id?: integer): dbc.row.WorldSafelocs
---@field GetAllRows fun(self: dbc.Table.WorldSafelocs): dbc.row.WorldSafelocs[]
---@field Query fun(self: dbc.Table.WorldSafelocs): dbc.Query<dbc.row.WorldSafelocs>
---@field Rows fun(self: dbc.Table.WorldSafelocs): fun(): integer, dbc.row.WorldSafelocs
