---@meta
-- Generated LuaLS annotations for VehicleUIIndicator.dbc. Do not edit.

---Row representation of VehicleUIIndicator.dbc.
---@class dbc.row.VehicleUIIndicator : RowProxy
---@field ID integer
---@field BackgroundTexture string

-- Fluent PascalCase Methods for VehicleUIIndicator
---@field GetID fun(self: dbc.row.VehicleUIIndicator): integer
---@field SetID fun(self: dbc.row.VehicleUIIndicator, value: integer): dbc.row.VehicleUIIndicator
---@field GetBackgroundTexture fun(self: dbc.row.VehicleUIIndicator): string
---@field SetBackgroundTexture fun(self: dbc.row.VehicleUIIndicator, value: string): dbc.row.VehicleUIIndicator

-- Inferred Cross-Table Relations for VehicleUIIndicator

-- Cascading Creation & Relations Engine for VehicleUIIndicator
---@field CreateRelated fun(self: dbc.row.VehicleUIIndicator, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.VehicleUIIndicator, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.VehicleUIIndicator, child_table: string, child_field?: string): any[]

---Typed table handle for VehicleUIIndicator.dbc.
---@class dbc.Table.VehicleUIIndicator : DbcTable
---@field FindById fun(self: dbc.Table.VehicleUIIndicator, id: integer): dbc.row.VehicleUIIndicator|nil
---@field GetById fun(self: dbc.Table.VehicleUIIndicator, id: integer): dbc.row.VehicleUIIndicator|nil
---@field GetRow fun(self: dbc.Table.VehicleUIIndicator, row: integer): dbc.row.VehicleUIIndicator
---@field NewRow fun(self: dbc.Table.VehicleUIIndicator, id?: integer): dbc.row.VehicleUIIndicator
---@field Create fun(self: dbc.Table.VehicleUIIndicator, id?: integer): dbc.row.VehicleUIIndicator
---@field CreateNext fun(self: dbc.Table.VehicleUIIndicator, data?: table): dbc.row.VehicleUIIndicator
---@field CloneRow fun(self: dbc.Table.VehicleUIIndicator, source: integer|dbc.row.VehicleUIIndicator, new_id?: integer): dbc.row.VehicleUIIndicator
---@field GetAllRows fun(self: dbc.Table.VehicleUIIndicator): dbc.row.VehicleUIIndicator[]
---@field Query fun(self: dbc.Table.VehicleUIIndicator): dbc.Query<dbc.row.VehicleUIIndicator>
---@field Rows fun(self: dbc.Table.VehicleUIIndicator): fun(): integer, dbc.row.VehicleUIIndicator
