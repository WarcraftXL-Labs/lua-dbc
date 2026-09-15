---@meta
-- Generated LuaLS annotations for GtBarberShopCostBase.dbc. Do not edit.

---Row representation of GtBarberShopCostBase.dbc.
---@class dbc.row.GtBarberShopCostBase : RowProxy
---@field Data number

-- Fluent PascalCase Methods for GtBarberShopCostBase
---@field GetData fun(self: dbc.row.GtBarberShopCostBase): number
---@field SetData fun(self: dbc.row.GtBarberShopCostBase, value: number): dbc.row.GtBarberShopCostBase

-- Inferred Cross-Table Relations for GtBarberShopCostBase

-- Cascading Creation & Relations Engine for GtBarberShopCostBase
---@field CreateRelated fun(self: dbc.row.GtBarberShopCostBase, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.GtBarberShopCostBase, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.GtBarberShopCostBase, child_table: string, child_field?: string): any[]

---Typed table handle for GtBarberShopCostBase.dbc.
---@class dbc.Table.GtBarberShopCostBase : DbcTable
---@field FindById fun(self: dbc.Table.GtBarberShopCostBase, id: integer): dbc.row.GtBarberShopCostBase|nil
---@field GetById fun(self: dbc.Table.GtBarberShopCostBase, id: integer): dbc.row.GtBarberShopCostBase|nil
---@field GetRow fun(self: dbc.Table.GtBarberShopCostBase, row: integer): dbc.row.GtBarberShopCostBase
---@field NewRow fun(self: dbc.Table.GtBarberShopCostBase, id?: integer): dbc.row.GtBarberShopCostBase
---@field Create fun(self: dbc.Table.GtBarberShopCostBase, id?: integer): dbc.row.GtBarberShopCostBase
---@field CreateNext fun(self: dbc.Table.GtBarberShopCostBase, data?: table): dbc.row.GtBarberShopCostBase
---@field CloneRow fun(self: dbc.Table.GtBarberShopCostBase, source: integer|dbc.row.GtBarberShopCostBase, new_id?: integer): dbc.row.GtBarberShopCostBase
---@field GetAllRows fun(self: dbc.Table.GtBarberShopCostBase): dbc.row.GtBarberShopCostBase[]
---@field Query fun(self: dbc.Table.GtBarberShopCostBase): dbc.Query<dbc.row.GtBarberShopCostBase>
---@field Rows fun(self: dbc.Table.GtBarberShopCostBase): fun(): integer, dbc.row.GtBarberShopCostBase
