---@meta
-- Generated LuaLS annotations for ItemLimitCategory.dbc. Do not edit.

---Row representation of ItemLimitCategory.dbc.
---@class dbc.row.ItemLimitCategory : RowProxy
---@field ID integer
---@field Name string
---@field Quantity integer
---@field Flags integer

-- Fluent PascalCase Methods for ItemLimitCategory
---@field GetID fun(self: dbc.row.ItemLimitCategory): integer
---@field SetID fun(self: dbc.row.ItemLimitCategory, value: integer): dbc.row.ItemLimitCategory
---@field GetName fun(self: dbc.row.ItemLimitCategory, locale?: string|integer): string
---@field SetName fun(self: dbc.row.ItemLimitCategory, value: string, locale?: string|integer): dbc.row.ItemLimitCategory
---@field GetQuantity fun(self: dbc.row.ItemLimitCategory): integer
---@field SetQuantity fun(self: dbc.row.ItemLimitCategory, value: integer): dbc.row.ItemLimitCategory
---@field GetFlags fun(self: dbc.row.ItemLimitCategory): integer
---@field SetFlags fun(self: dbc.row.ItemLimitCategory, value: integer): dbc.row.ItemLimitCategory
---@field HasFlags fun(self: dbc.row.ItemLimitCategory, flag: integer): boolean
---@field AddFlags fun(self: dbc.row.ItemLimitCategory, flag: integer): dbc.row.ItemLimitCategory
---@field RemoveFlags fun(self: dbc.row.ItemLimitCategory, flag: integer): dbc.row.ItemLimitCategory

-- Inferred Cross-Table Relations for ItemLimitCategory

-- Cascading Creation & Relations Engine for ItemLimitCategory
---@field CreateRelated fun(self: dbc.row.ItemLimitCategory, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.ItemLimitCategory, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.ItemLimitCategory, child_table: string, child_field?: string): any[]

---Typed table handle for ItemLimitCategory.dbc.
---@class dbc.Table.ItemLimitCategory : DbcTable
---@field FindById fun(self: dbc.Table.ItemLimitCategory, id: integer): dbc.row.ItemLimitCategory|nil
---@field GetById fun(self: dbc.Table.ItemLimitCategory, id: integer): dbc.row.ItemLimitCategory|nil
---@field GetRow fun(self: dbc.Table.ItemLimitCategory, row: integer): dbc.row.ItemLimitCategory
---@field NewRow fun(self: dbc.Table.ItemLimitCategory, id?: integer): dbc.row.ItemLimitCategory
---@field Create fun(self: dbc.Table.ItemLimitCategory, id?: integer): dbc.row.ItemLimitCategory
---@field CreateNext fun(self: dbc.Table.ItemLimitCategory, data?: table): dbc.row.ItemLimitCategory
---@field CloneRow fun(self: dbc.Table.ItemLimitCategory, source: integer|dbc.row.ItemLimitCategory, new_id?: integer): dbc.row.ItemLimitCategory
---@field GetAllRows fun(self: dbc.Table.ItemLimitCategory): dbc.row.ItemLimitCategory[]
---@field Query fun(self: dbc.Table.ItemLimitCategory): dbc.Query<dbc.row.ItemLimitCategory>
---@field Rows fun(self: dbc.Table.ItemLimitCategory): fun(): integer, dbc.row.ItemLimitCategory
