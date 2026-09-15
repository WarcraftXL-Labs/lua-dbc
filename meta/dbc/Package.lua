---@meta
-- Generated LuaLS annotations for Package.dbc. Do not edit.

---Row representation of Package.dbc.
---@class dbc.row.Package : RowProxy
---@field ID integer
---@field Icon string
---@field Cost integer
---@field Name string

-- Fluent PascalCase Methods for Package
---@field GetID fun(self: dbc.row.Package): integer
---@field SetID fun(self: dbc.row.Package, value: integer): dbc.row.Package
---@field GetIcon fun(self: dbc.row.Package): string
---@field SetIcon fun(self: dbc.row.Package, value: string): dbc.row.Package
---@field GetCost fun(self: dbc.row.Package): integer
---@field SetCost fun(self: dbc.row.Package, value: integer): dbc.row.Package
---@field GetName fun(self: dbc.row.Package, locale?: string|integer): string
---@field SetName fun(self: dbc.row.Package, value: string, locale?: string|integer): dbc.row.Package

-- Inferred Cross-Table Relations for Package

-- Cascading Creation & Relations Engine for Package
---@field CreateRelated fun(self: dbc.row.Package, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.Package, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.Package, child_table: string, child_field?: string): any[]

---Typed table handle for Package.dbc.
---@class dbc.Table.Package : DbcTable
---@field FindById fun(self: dbc.Table.Package, id: integer): dbc.row.Package|nil
---@field GetById fun(self: dbc.Table.Package, id: integer): dbc.row.Package|nil
---@field GetRow fun(self: dbc.Table.Package, row: integer): dbc.row.Package
---@field NewRow fun(self: dbc.Table.Package, id?: integer): dbc.row.Package
---@field Create fun(self: dbc.Table.Package, id?: integer): dbc.row.Package
---@field CreateNext fun(self: dbc.Table.Package, data?: table): dbc.row.Package
---@field CloneRow fun(self: dbc.Table.Package, source: integer|dbc.row.Package, new_id?: integer): dbc.row.Package
---@field GetAllRows fun(self: dbc.Table.Package): dbc.row.Package[]
---@field Query fun(self: dbc.Table.Package): dbc.Query<dbc.row.Package>
---@field Rows fun(self: dbc.Table.Package): fun(): integer, dbc.row.Package
