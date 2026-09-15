---@meta
-- Generated LuaLS annotations for TotemCategory.dbc. Do not edit.

---Row representation of TotemCategory.dbc.
---@class dbc.row.TotemCategory : RowProxy
---@field ID integer
---@field Name string
---@field TotemCategoryType integer
---@field TotemCategoryMask integer

-- Fluent PascalCase Methods for TotemCategory
---@field GetID fun(self: dbc.row.TotemCategory): integer
---@field SetID fun(self: dbc.row.TotemCategory, value: integer): dbc.row.TotemCategory
---@field GetName fun(self: dbc.row.TotemCategory, locale?: string|integer): string
---@field SetName fun(self: dbc.row.TotemCategory, value: string, locale?: string|integer): dbc.row.TotemCategory
---@field GetTotemCategoryType fun(self: dbc.row.TotemCategory): integer
---@field SetTotemCategoryType fun(self: dbc.row.TotemCategory, value: integer): dbc.row.TotemCategory
---@field GetTotemCategoryMask fun(self: dbc.row.TotemCategory): integer
---@field SetTotemCategoryMask fun(self: dbc.row.TotemCategory, value: integer): dbc.row.TotemCategory
---@field HasTotemCategoryMask fun(self: dbc.row.TotemCategory, flag: integer): boolean
---@field AddTotemCategoryMask fun(self: dbc.row.TotemCategory, flag: integer): dbc.row.TotemCategory
---@field RemoveTotemCategoryMask fun(self: dbc.row.TotemCategory, flag: integer): dbc.row.TotemCategory

-- Inferred Cross-Table Relations for TotemCategory

-- Cascading Creation & Relations Engine for TotemCategory
---@field CreateRelated fun(self: dbc.row.TotemCategory, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.TotemCategory, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.TotemCategory, child_table: string, child_field?: string): any[]

---Typed table handle for TotemCategory.dbc.
---@class dbc.Table.TotemCategory : DbcTable
---@field FindById fun(self: dbc.Table.TotemCategory, id: integer): dbc.row.TotemCategory|nil
---@field GetById fun(self: dbc.Table.TotemCategory, id: integer): dbc.row.TotemCategory|nil
---@field GetRow fun(self: dbc.Table.TotemCategory, row: integer): dbc.row.TotemCategory
---@field NewRow fun(self: dbc.Table.TotemCategory, id?: integer): dbc.row.TotemCategory
---@field Create fun(self: dbc.Table.TotemCategory, id?: integer): dbc.row.TotemCategory
---@field CreateNext fun(self: dbc.Table.TotemCategory, data?: table): dbc.row.TotemCategory
---@field CloneRow fun(self: dbc.Table.TotemCategory, source: integer|dbc.row.TotemCategory, new_id?: integer): dbc.row.TotemCategory
---@field GetAllRows fun(self: dbc.Table.TotemCategory): dbc.row.TotemCategory[]
---@field Query fun(self: dbc.Table.TotemCategory): dbc.Query<dbc.row.TotemCategory>
---@field Rows fun(self: dbc.Table.TotemCategory): fun(): integer, dbc.row.TotemCategory
