---@meta
-- Generated LuaLS annotations for ItemRandomProperties.dbc. Do not edit.

---Row representation of ItemRandomProperties.dbc.
---@class dbc.row.ItemRandomProperties : RowProxy
---@field ID integer
---@field Name string
---@field Enchantment integer[]
---@field Name2 string

-- Fluent PascalCase Methods for ItemRandomProperties
---@field GetID fun(self: dbc.row.ItemRandomProperties): integer
---@field SetID fun(self: dbc.row.ItemRandomProperties, value: integer): dbc.row.ItemRandomProperties
---@field GetName fun(self: dbc.row.ItemRandomProperties): string
---@field SetName fun(self: dbc.row.ItemRandomProperties, value: string): dbc.row.ItemRandomProperties
---@field GetEnchantment fun(self: dbc.row.ItemRandomProperties, index?: integer): integer|integer[]
---@field SetEnchantment fun(self: dbc.row.ItemRandomProperties, value: integer|integer[], index?: integer): dbc.row.ItemRandomProperties
---@field GetName2 fun(self: dbc.row.ItemRandomProperties, locale?: string|integer): string
---@field SetName2 fun(self: dbc.row.ItemRandomProperties, value: string, locale?: string|integer): dbc.row.ItemRandomProperties

-- Inferred Cross-Table Relations for ItemRandomProperties

-- Cascading Creation & Relations Engine for ItemRandomProperties
---@field CreateRelated fun(self: dbc.row.ItemRandomProperties, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.ItemRandomProperties, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.ItemRandomProperties, child_table: string, child_field?: string): any[]

---Typed table handle for ItemRandomProperties.dbc.
---@class dbc.Table.ItemRandomProperties : DbcTable
---@field FindById fun(self: dbc.Table.ItemRandomProperties, id: integer): dbc.row.ItemRandomProperties|nil
---@field GetById fun(self: dbc.Table.ItemRandomProperties, id: integer): dbc.row.ItemRandomProperties|nil
---@field GetRow fun(self: dbc.Table.ItemRandomProperties, row: integer): dbc.row.ItemRandomProperties
---@field NewRow fun(self: dbc.Table.ItemRandomProperties, id?: integer): dbc.row.ItemRandomProperties
---@field Create fun(self: dbc.Table.ItemRandomProperties, id?: integer): dbc.row.ItemRandomProperties
---@field CreateNext fun(self: dbc.Table.ItemRandomProperties, data?: table): dbc.row.ItemRandomProperties
---@field CloneRow fun(self: dbc.Table.ItemRandomProperties, source: integer|dbc.row.ItemRandomProperties, new_id?: integer): dbc.row.ItemRandomProperties
---@field GetAllRows fun(self: dbc.Table.ItemRandomProperties): dbc.row.ItemRandomProperties[]
---@field Query fun(self: dbc.Table.ItemRandomProperties): dbc.Query<dbc.row.ItemRandomProperties>
---@field Rows fun(self: dbc.Table.ItemRandomProperties): fun(): integer, dbc.row.ItemRandomProperties
