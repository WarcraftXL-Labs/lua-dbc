---@meta
-- Generated LuaLS annotations for ItemPurchaseGroup.dbc. Do not edit.

---Row representation of ItemPurchaseGroup.dbc.
---@class dbc.row.ItemPurchaseGroup : RowProxy
---@field ID integer
---@field ItemID integer[]
---@field Name string

-- Fluent PascalCase Methods for ItemPurchaseGroup
---@field GetID fun(self: dbc.row.ItemPurchaseGroup): integer
---@field SetID fun(self: dbc.row.ItemPurchaseGroup, value: integer): dbc.row.ItemPurchaseGroup
---@field GetItemID fun(self: dbc.row.ItemPurchaseGroup, index?: integer): integer|integer[]
---@field SetItemID fun(self: dbc.row.ItemPurchaseGroup, value: integer|integer[], index?: integer): dbc.row.ItemPurchaseGroup
---@field GetName fun(self: dbc.row.ItemPurchaseGroup, locale?: string|integer): string
---@field SetName fun(self: dbc.row.ItemPurchaseGroup, value: string, locale?: string|integer): dbc.row.ItemPurchaseGroup

-- Inferred Cross-Table Relations for ItemPurchaseGroup
---@field GetItem fun(self: dbc.row.ItemPurchaseGroup): dbc.row.Item|nil
---@field SetItem fun(self: dbc.row.ItemPurchaseGroup, target: dbc.row.Item|integer): dbc.row.ItemPurchaseGroup

-- Cascading Creation & Relations Engine for ItemPurchaseGroup
---@field CreateRelated fun(self: dbc.row.ItemPurchaseGroup, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.ItemPurchaseGroup, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.ItemPurchaseGroup, child_table: string, child_field?: string): any[]

---Typed table handle for ItemPurchaseGroup.dbc.
---@class dbc.Table.ItemPurchaseGroup : DbcTable
---@field FindById fun(self: dbc.Table.ItemPurchaseGroup, id: integer): dbc.row.ItemPurchaseGroup|nil
---@field GetById fun(self: dbc.Table.ItemPurchaseGroup, id: integer): dbc.row.ItemPurchaseGroup|nil
---@field GetRow fun(self: dbc.Table.ItemPurchaseGroup, row: integer): dbc.row.ItemPurchaseGroup
---@field NewRow fun(self: dbc.Table.ItemPurchaseGroup, id?: integer): dbc.row.ItemPurchaseGroup
---@field Create fun(self: dbc.Table.ItemPurchaseGroup, id?: integer): dbc.row.ItemPurchaseGroup
---@field CreateNext fun(self: dbc.Table.ItemPurchaseGroup, data?: table): dbc.row.ItemPurchaseGroup
---@field CloneRow fun(self: dbc.Table.ItemPurchaseGroup, source: integer|dbc.row.ItemPurchaseGroup, new_id?: integer): dbc.row.ItemPurchaseGroup
---@field GetAllRows fun(self: dbc.Table.ItemPurchaseGroup): dbc.row.ItemPurchaseGroup[]
---@field Query fun(self: dbc.Table.ItemPurchaseGroup): dbc.Query<dbc.row.ItemPurchaseGroup>
---@field Rows fun(self: dbc.Table.ItemPurchaseGroup): fun(): integer, dbc.row.ItemPurchaseGroup
