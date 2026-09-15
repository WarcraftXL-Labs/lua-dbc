---@meta
-- Generated LuaLS annotations for CurrencyTypes.dbc. Do not edit.

---Row representation of CurrencyTypes.dbc.
---@class dbc.row.CurrencyTypes : RowProxy
---@field ID integer
---@field ItemID integer
---@field CategoryID integer
---@field BitIndex integer

-- Fluent PascalCase Methods for CurrencyTypes
---@field GetID fun(self: dbc.row.CurrencyTypes): integer
---@field SetID fun(self: dbc.row.CurrencyTypes, value: integer): dbc.row.CurrencyTypes
---@field GetItemID fun(self: dbc.row.CurrencyTypes): integer
---@field SetItemID fun(self: dbc.row.CurrencyTypes, value: integer): dbc.row.CurrencyTypes
---@field GetCategoryID fun(self: dbc.row.CurrencyTypes): integer
---@field SetCategoryID fun(self: dbc.row.CurrencyTypes, value: integer): dbc.row.CurrencyTypes
---@field GetBitIndex fun(self: dbc.row.CurrencyTypes): integer
---@field SetBitIndex fun(self: dbc.row.CurrencyTypes, value: integer): dbc.row.CurrencyTypes

-- Inferred Cross-Table Relations for CurrencyTypes
---@field GetItem fun(self: dbc.row.CurrencyTypes): dbc.row.Item|nil
---@field SetItem fun(self: dbc.row.CurrencyTypes, target: dbc.row.Item|integer): dbc.row.CurrencyTypes

-- Cascading Creation & Relations Engine for CurrencyTypes
---@field CreateRelated fun(self: dbc.row.CurrencyTypes, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.CurrencyTypes, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.CurrencyTypes, child_table: string, child_field?: string): any[]

---Typed table handle for CurrencyTypes.dbc.
---@class dbc.Table.CurrencyTypes : DbcTable
---@field FindById fun(self: dbc.Table.CurrencyTypes, id: integer): dbc.row.CurrencyTypes|nil
---@field GetById fun(self: dbc.Table.CurrencyTypes, id: integer): dbc.row.CurrencyTypes|nil
---@field GetRow fun(self: dbc.Table.CurrencyTypes, row: integer): dbc.row.CurrencyTypes
---@field NewRow fun(self: dbc.Table.CurrencyTypes, id?: integer): dbc.row.CurrencyTypes
---@field Create fun(self: dbc.Table.CurrencyTypes, id?: integer): dbc.row.CurrencyTypes
---@field CreateNext fun(self: dbc.Table.CurrencyTypes, data?: table): dbc.row.CurrencyTypes
---@field CloneRow fun(self: dbc.Table.CurrencyTypes, source: integer|dbc.row.CurrencyTypes, new_id?: integer): dbc.row.CurrencyTypes
---@field GetAllRows fun(self: dbc.Table.CurrencyTypes): dbc.row.CurrencyTypes[]
---@field Query fun(self: dbc.Table.CurrencyTypes): dbc.Query<dbc.row.CurrencyTypes>
---@field Rows fun(self: dbc.Table.CurrencyTypes): fun(): integer, dbc.row.CurrencyTypes
