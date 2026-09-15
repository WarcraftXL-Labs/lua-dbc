---@meta
-- Generated LuaLS annotations for ItemBagFamily.dbc. Do not edit.

---Row representation of ItemBagFamily.dbc.
---@class dbc.row.ItemBagFamily : RowProxy
---@field ID integer
---@field Name string

-- Fluent PascalCase Methods for ItemBagFamily
---@field GetID fun(self: dbc.row.ItemBagFamily): integer
---@field SetID fun(self: dbc.row.ItemBagFamily, value: integer): dbc.row.ItemBagFamily
---@field GetName fun(self: dbc.row.ItemBagFamily, locale?: string|integer): string
---@field SetName fun(self: dbc.row.ItemBagFamily, value: string, locale?: string|integer): dbc.row.ItemBagFamily

-- Inferred Cross-Table Relations for ItemBagFamily

-- Cascading Creation & Relations Engine for ItemBagFamily
---@field CreateRelated fun(self: dbc.row.ItemBagFamily, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.ItemBagFamily, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.ItemBagFamily, child_table: string, child_field?: string): any[]

---Typed table handle for ItemBagFamily.dbc.
---@class dbc.Table.ItemBagFamily : DbcTable
---@field FindById fun(self: dbc.Table.ItemBagFamily, id: integer): dbc.row.ItemBagFamily|nil
---@field GetById fun(self: dbc.Table.ItemBagFamily, id: integer): dbc.row.ItemBagFamily|nil
---@field GetRow fun(self: dbc.Table.ItemBagFamily, row: integer): dbc.row.ItemBagFamily
---@field NewRow fun(self: dbc.Table.ItemBagFamily, id?: integer): dbc.row.ItemBagFamily
---@field Create fun(self: dbc.Table.ItemBagFamily, id?: integer): dbc.row.ItemBagFamily
---@field CreateNext fun(self: dbc.Table.ItemBagFamily, data?: table): dbc.row.ItemBagFamily
---@field CloneRow fun(self: dbc.Table.ItemBagFamily, source: integer|dbc.row.ItemBagFamily, new_id?: integer): dbc.row.ItemBagFamily
---@field GetAllRows fun(self: dbc.Table.ItemBagFamily): dbc.row.ItemBagFamily[]
---@field Query fun(self: dbc.Table.ItemBagFamily): dbc.Query<dbc.row.ItemBagFamily>
---@field Rows fun(self: dbc.Table.ItemBagFamily): fun(): integer, dbc.row.ItemBagFamily
