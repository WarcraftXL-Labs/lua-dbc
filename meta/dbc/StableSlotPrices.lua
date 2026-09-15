---@meta
-- Generated LuaLS annotations for StableSlotPrices.dbc. Do not edit.

---Row representation of StableSlotPrices.dbc.
---@class dbc.row.StableSlotPrices : RowProxy
---@field ID integer
---@field Cost integer

-- Fluent PascalCase Methods for StableSlotPrices
---@field GetID fun(self: dbc.row.StableSlotPrices): integer
---@field SetID fun(self: dbc.row.StableSlotPrices, value: integer): dbc.row.StableSlotPrices
---@field GetCost fun(self: dbc.row.StableSlotPrices): integer
---@field SetCost fun(self: dbc.row.StableSlotPrices, value: integer): dbc.row.StableSlotPrices

-- Inferred Cross-Table Relations for StableSlotPrices

-- Cascading Creation & Relations Engine for StableSlotPrices
---@field CreateRelated fun(self: dbc.row.StableSlotPrices, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.StableSlotPrices, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.StableSlotPrices, child_table: string, child_field?: string): any[]

---Typed table handle for StableSlotPrices.dbc.
---@class dbc.Table.StableSlotPrices : DbcTable
---@field FindById fun(self: dbc.Table.StableSlotPrices, id: integer): dbc.row.StableSlotPrices|nil
---@field GetById fun(self: dbc.Table.StableSlotPrices, id: integer): dbc.row.StableSlotPrices|nil
---@field GetRow fun(self: dbc.Table.StableSlotPrices, row: integer): dbc.row.StableSlotPrices
---@field NewRow fun(self: dbc.Table.StableSlotPrices, id?: integer): dbc.row.StableSlotPrices
---@field Create fun(self: dbc.Table.StableSlotPrices, id?: integer): dbc.row.StableSlotPrices
---@field CreateNext fun(self: dbc.Table.StableSlotPrices, data?: table): dbc.row.StableSlotPrices
---@field CloneRow fun(self: dbc.Table.StableSlotPrices, source: integer|dbc.row.StableSlotPrices, new_id?: integer): dbc.row.StableSlotPrices
---@field GetAllRows fun(self: dbc.Table.StableSlotPrices): dbc.row.StableSlotPrices[]
---@field Query fun(self: dbc.Table.StableSlotPrices): dbc.Query<dbc.row.StableSlotPrices>
---@field Rows fun(self: dbc.Table.StableSlotPrices): fun(): integer, dbc.row.StableSlotPrices
