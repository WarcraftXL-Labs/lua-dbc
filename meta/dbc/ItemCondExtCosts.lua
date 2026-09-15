---@meta
-- Generated LuaLS annotations for ItemCondExtCosts.dbc. Do not edit.

---Row representation of ItemCondExtCosts.dbc.
---@class dbc.row.ItemCondExtCosts : RowProxy
---@field ID integer
---@field Field01 integer
---@field ItemExtendedCost integer
---@field Field03 integer

-- Fluent PascalCase Methods for ItemCondExtCosts
---@field GetID fun(self: dbc.row.ItemCondExtCosts): integer
---@field SetID fun(self: dbc.row.ItemCondExtCosts, value: integer): dbc.row.ItemCondExtCosts
---@field GetField01 fun(self: dbc.row.ItemCondExtCosts): integer
---@field SetField01 fun(self: dbc.row.ItemCondExtCosts, value: integer): dbc.row.ItemCondExtCosts
---@field GetItemExtendedCost fun(self: dbc.row.ItemCondExtCosts): integer
---@field SetItemExtendedCost fun(self: dbc.row.ItemCondExtCosts, value: integer): dbc.row.ItemCondExtCosts
---@field GetField03 fun(self: dbc.row.ItemCondExtCosts): integer
---@field SetField03 fun(self: dbc.row.ItemCondExtCosts, value: integer): dbc.row.ItemCondExtCosts

-- Inferred Cross-Table Relations for ItemCondExtCosts

-- Cascading Creation & Relations Engine for ItemCondExtCosts
---@field CreateRelated fun(self: dbc.row.ItemCondExtCosts, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.ItemCondExtCosts, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.ItemCondExtCosts, child_table: string, child_field?: string): any[]

---Typed table handle for ItemCondExtCosts.dbc.
---@class dbc.Table.ItemCondExtCosts : DbcTable
---@field FindById fun(self: dbc.Table.ItemCondExtCosts, id: integer): dbc.row.ItemCondExtCosts|nil
---@field GetById fun(self: dbc.Table.ItemCondExtCosts, id: integer): dbc.row.ItemCondExtCosts|nil
---@field GetRow fun(self: dbc.Table.ItemCondExtCosts, row: integer): dbc.row.ItemCondExtCosts
---@field NewRow fun(self: dbc.Table.ItemCondExtCosts, id?: integer): dbc.row.ItemCondExtCosts
---@field Create fun(self: dbc.Table.ItemCondExtCosts, id?: integer): dbc.row.ItemCondExtCosts
---@field CreateNext fun(self: dbc.Table.ItemCondExtCosts, data?: table): dbc.row.ItemCondExtCosts
---@field CloneRow fun(self: dbc.Table.ItemCondExtCosts, source: integer|dbc.row.ItemCondExtCosts, new_id?: integer): dbc.row.ItemCondExtCosts
---@field GetAllRows fun(self: dbc.Table.ItemCondExtCosts): dbc.row.ItemCondExtCosts[]
---@field Query fun(self: dbc.Table.ItemCondExtCosts): dbc.Query<dbc.row.ItemCondExtCosts>
---@field Rows fun(self: dbc.Table.ItemCondExtCosts): fun(): integer, dbc.row.ItemCondExtCosts
