---@meta
-- Generated LuaLS annotations for BankBagSlotPrices.dbc. Do not edit.

---Row representation of BankBagSlotPrices.dbc.
---@class dbc.row.BankBagSlotPrices : RowProxy
---@field ID integer
---@field Cost integer

-- Fluent PascalCase Methods for BankBagSlotPrices
---@field GetID fun(self: dbc.row.BankBagSlotPrices): integer
---@field SetID fun(self: dbc.row.BankBagSlotPrices, value: integer): dbc.row.BankBagSlotPrices
---@field GetCost fun(self: dbc.row.BankBagSlotPrices): integer
---@field SetCost fun(self: dbc.row.BankBagSlotPrices, value: integer): dbc.row.BankBagSlotPrices

-- Inferred Cross-Table Relations for BankBagSlotPrices

-- Cascading Creation & Relations Engine for BankBagSlotPrices
---@field CreateRelated fun(self: dbc.row.BankBagSlotPrices, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.BankBagSlotPrices, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.BankBagSlotPrices, child_table: string, child_field?: string): any[]

---Typed table handle for BankBagSlotPrices.dbc.
---@class dbc.Table.BankBagSlotPrices : DbcTable
---@field FindById fun(self: dbc.Table.BankBagSlotPrices, id: integer): dbc.row.BankBagSlotPrices|nil
---@field GetById fun(self: dbc.Table.BankBagSlotPrices, id: integer): dbc.row.BankBagSlotPrices|nil
---@field GetRow fun(self: dbc.Table.BankBagSlotPrices, row: integer): dbc.row.BankBagSlotPrices
---@field NewRow fun(self: dbc.Table.BankBagSlotPrices, id?: integer): dbc.row.BankBagSlotPrices
---@field Create fun(self: dbc.Table.BankBagSlotPrices, id?: integer): dbc.row.BankBagSlotPrices
---@field CreateNext fun(self: dbc.Table.BankBagSlotPrices, data?: table): dbc.row.BankBagSlotPrices
---@field CloneRow fun(self: dbc.Table.BankBagSlotPrices, source: integer|dbc.row.BankBagSlotPrices, new_id?: integer): dbc.row.BankBagSlotPrices
---@field GetAllRows fun(self: dbc.Table.BankBagSlotPrices): dbc.row.BankBagSlotPrices[]
---@field Query fun(self: dbc.Table.BankBagSlotPrices): dbc.Query<dbc.row.BankBagSlotPrices>
---@field Rows fun(self: dbc.Table.BankBagSlotPrices): fun(): integer, dbc.row.BankBagSlotPrices
