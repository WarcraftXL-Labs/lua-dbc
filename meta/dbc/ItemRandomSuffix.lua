---@meta
-- Generated LuaLS annotations for ItemRandomSuffix.dbc. Do not edit.

---Row representation of ItemRandomSuffix.dbc.
---@class dbc.row.ItemRandomSuffix : RowProxy
---@field ID integer
---@field Name string
---@field InternalName string
---@field Enchantment integer[]
---@field AllocationPct integer[]

-- Fluent PascalCase Methods for ItemRandomSuffix
---@field GetID fun(self: dbc.row.ItemRandomSuffix): integer
---@field SetID fun(self: dbc.row.ItemRandomSuffix, value: integer): dbc.row.ItemRandomSuffix
---@field GetName fun(self: dbc.row.ItemRandomSuffix, locale?: string|integer): string
---@field SetName fun(self: dbc.row.ItemRandomSuffix, value: string, locale?: string|integer): dbc.row.ItemRandomSuffix
---@field GetInternalName fun(self: dbc.row.ItemRandomSuffix): string
---@field SetInternalName fun(self: dbc.row.ItemRandomSuffix, value: string): dbc.row.ItemRandomSuffix
---@field GetEnchantment fun(self: dbc.row.ItemRandomSuffix, index?: integer): integer|integer[]
---@field SetEnchantment fun(self: dbc.row.ItemRandomSuffix, value: integer|integer[], index?: integer): dbc.row.ItemRandomSuffix
---@field GetAllocationPct fun(self: dbc.row.ItemRandomSuffix, index?: integer): integer|integer[]
---@field SetAllocationPct fun(self: dbc.row.ItemRandomSuffix, value: integer|integer[], index?: integer): dbc.row.ItemRandomSuffix

-- Inferred Cross-Table Relations for ItemRandomSuffix

-- Cascading Creation & Relations Engine for ItemRandomSuffix
---@field CreateRelated fun(self: dbc.row.ItemRandomSuffix, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.ItemRandomSuffix, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.ItemRandomSuffix, child_table: string, child_field?: string): any[]

---Typed table handle for ItemRandomSuffix.dbc.
---@class dbc.Table.ItemRandomSuffix : DbcTable
---@field FindById fun(self: dbc.Table.ItemRandomSuffix, id: integer): dbc.row.ItemRandomSuffix|nil
---@field GetById fun(self: dbc.Table.ItemRandomSuffix, id: integer): dbc.row.ItemRandomSuffix|nil
---@field GetRow fun(self: dbc.Table.ItemRandomSuffix, row: integer): dbc.row.ItemRandomSuffix
---@field NewRow fun(self: dbc.Table.ItemRandomSuffix, id?: integer): dbc.row.ItemRandomSuffix
---@field Create fun(self: dbc.Table.ItemRandomSuffix, id?: integer): dbc.row.ItemRandomSuffix
---@field CreateNext fun(self: dbc.Table.ItemRandomSuffix, data?: table): dbc.row.ItemRandomSuffix
---@field CloneRow fun(self: dbc.Table.ItemRandomSuffix, source: integer|dbc.row.ItemRandomSuffix, new_id?: integer): dbc.row.ItemRandomSuffix
---@field GetAllRows fun(self: dbc.Table.ItemRandomSuffix): dbc.row.ItemRandomSuffix[]
---@field Query fun(self: dbc.Table.ItemRandomSuffix): dbc.Query<dbc.row.ItemRandomSuffix>
---@field Rows fun(self: dbc.Table.ItemRandomSuffix): fun(): integer, dbc.row.ItemRandomSuffix
