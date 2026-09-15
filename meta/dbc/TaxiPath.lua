---@meta
-- Generated LuaLS annotations for TaxiPath.dbc. Do not edit.

---Row representation of TaxiPath.dbc.
---@class dbc.row.TaxiPath : RowProxy
---@field ID integer
---@field FromTaxiNode integer
---@field ToTaxiNode integer
---@field Cost integer

-- Fluent PascalCase Methods for TaxiPath
---@field GetID fun(self: dbc.row.TaxiPath): integer
---@field SetID fun(self: dbc.row.TaxiPath, value: integer): dbc.row.TaxiPath
---@field GetFromTaxiNode fun(self: dbc.row.TaxiPath): integer
---@field SetFromTaxiNode fun(self: dbc.row.TaxiPath, value: integer): dbc.row.TaxiPath
---@field GetToTaxiNode fun(self: dbc.row.TaxiPath): integer
---@field SetToTaxiNode fun(self: dbc.row.TaxiPath, value: integer): dbc.row.TaxiPath
---@field GetCost fun(self: dbc.row.TaxiPath): integer
---@field SetCost fun(self: dbc.row.TaxiPath, value: integer): dbc.row.TaxiPath

-- Inferred Cross-Table Relations for TaxiPath

-- Cascading Creation & Relations Engine for TaxiPath
---@field CreateRelated fun(self: dbc.row.TaxiPath, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.TaxiPath, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.TaxiPath, child_table: string, child_field?: string): any[]

---Typed table handle for TaxiPath.dbc.
---@class dbc.Table.TaxiPath : DbcTable
---@field FindById fun(self: dbc.Table.TaxiPath, id: integer): dbc.row.TaxiPath|nil
---@field GetById fun(self: dbc.Table.TaxiPath, id: integer): dbc.row.TaxiPath|nil
---@field GetRow fun(self: dbc.Table.TaxiPath, row: integer): dbc.row.TaxiPath
---@field NewRow fun(self: dbc.Table.TaxiPath, id?: integer): dbc.row.TaxiPath
---@field Create fun(self: dbc.Table.TaxiPath, id?: integer): dbc.row.TaxiPath
---@field CreateNext fun(self: dbc.Table.TaxiPath, data?: table): dbc.row.TaxiPath
---@field CloneRow fun(self: dbc.Table.TaxiPath, source: integer|dbc.row.TaxiPath, new_id?: integer): dbc.row.TaxiPath
---@field GetAllRows fun(self: dbc.Table.TaxiPath): dbc.row.TaxiPath[]
---@field Query fun(self: dbc.Table.TaxiPath): dbc.Query<dbc.row.TaxiPath>
---@field Rows fun(self: dbc.Table.TaxiPath): fun(): integer, dbc.row.TaxiPath
