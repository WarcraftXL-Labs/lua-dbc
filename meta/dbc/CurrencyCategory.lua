---@meta
-- Generated LuaLS annotations for CurrencyCategory.dbc. Do not edit.

---Row representation of CurrencyCategory.dbc.
---@class dbc.row.CurrencyCategory : RowProxy
---@field ID integer
---@field Flags integer
---@field Name string

-- Fluent PascalCase Methods for CurrencyCategory
---@field GetID fun(self: dbc.row.CurrencyCategory): integer
---@field SetID fun(self: dbc.row.CurrencyCategory, value: integer): dbc.row.CurrencyCategory
---@field GetFlags fun(self: dbc.row.CurrencyCategory): integer
---@field SetFlags fun(self: dbc.row.CurrencyCategory, value: integer): dbc.row.CurrencyCategory
---@field HasFlags fun(self: dbc.row.CurrencyCategory, flag: integer): boolean
---@field AddFlags fun(self: dbc.row.CurrencyCategory, flag: integer): dbc.row.CurrencyCategory
---@field RemoveFlags fun(self: dbc.row.CurrencyCategory, flag: integer): dbc.row.CurrencyCategory
---@field GetName fun(self: dbc.row.CurrencyCategory, locale?: string|integer): string
---@field SetName fun(self: dbc.row.CurrencyCategory, value: string, locale?: string|integer): dbc.row.CurrencyCategory

-- Inferred Cross-Table Relations for CurrencyCategory

-- Cascading Creation & Relations Engine for CurrencyCategory
---@field CreateRelated fun(self: dbc.row.CurrencyCategory, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.CurrencyCategory, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.CurrencyCategory, child_table: string, child_field?: string): any[]

---Typed table handle for CurrencyCategory.dbc.
---@class dbc.Table.CurrencyCategory : DbcTable
---@field FindById fun(self: dbc.Table.CurrencyCategory, id: integer): dbc.row.CurrencyCategory|nil
---@field GetById fun(self: dbc.Table.CurrencyCategory, id: integer): dbc.row.CurrencyCategory|nil
---@field GetRow fun(self: dbc.Table.CurrencyCategory, row: integer): dbc.row.CurrencyCategory
---@field NewRow fun(self: dbc.Table.CurrencyCategory, id?: integer): dbc.row.CurrencyCategory
---@field Create fun(self: dbc.Table.CurrencyCategory, id?: integer): dbc.row.CurrencyCategory
---@field CreateNext fun(self: dbc.Table.CurrencyCategory, data?: table): dbc.row.CurrencyCategory
---@field CloneRow fun(self: dbc.Table.CurrencyCategory, source: integer|dbc.row.CurrencyCategory, new_id?: integer): dbc.row.CurrencyCategory
---@field GetAllRows fun(self: dbc.Table.CurrencyCategory): dbc.row.CurrencyCategory[]
---@field Query fun(self: dbc.Table.CurrencyCategory): dbc.Query<dbc.row.CurrencyCategory>
---@field Rows fun(self: dbc.Table.CurrencyCategory): fun(): integer, dbc.row.CurrencyCategory
