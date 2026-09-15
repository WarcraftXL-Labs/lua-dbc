---@meta
-- Generated LuaLS annotations for Achievement_Category.dbc. Do not edit.

---Row representation of Achievement_Category.dbc.
---@class dbc.row.Achievement_Category : RowProxy
---@field ID integer
---@field Parent integer
---@field Name string
---@field Ui_Order integer

-- Fluent PascalCase Methods for Achievement_Category
---@field GetID fun(self: dbc.row.Achievement_Category): integer
---@field SetID fun(self: dbc.row.Achievement_Category, value: integer): dbc.row.Achievement_Category
---@field GetParent fun(self: dbc.row.Achievement_Category): integer
---@field SetParent fun(self: dbc.row.Achievement_Category, value: integer): dbc.row.Achievement_Category
---@field GetName fun(self: dbc.row.Achievement_Category, locale?: string|integer): string
---@field SetName fun(self: dbc.row.Achievement_Category, value: string, locale?: string|integer): dbc.row.Achievement_Category
---@field GetUi_Order fun(self: dbc.row.Achievement_Category): integer
---@field SetUi_Order fun(self: dbc.row.Achievement_Category, value: integer): dbc.row.Achievement_Category

-- Inferred Cross-Table Relations for Achievement_Category

-- Cascading Creation & Relations Engine for Achievement_Category
---@field CreateRelated fun(self: dbc.row.Achievement_Category, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.Achievement_Category, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.Achievement_Category, child_table: string, child_field?: string): any[]

---Typed table handle for Achievement_Category.dbc.
---@class dbc.Table.Achievement_Category : DbcTable
---@field FindById fun(self: dbc.Table.Achievement_Category, id: integer): dbc.row.Achievement_Category|nil
---@field GetById fun(self: dbc.Table.Achievement_Category, id: integer): dbc.row.Achievement_Category|nil
---@field GetRow fun(self: dbc.Table.Achievement_Category, row: integer): dbc.row.Achievement_Category
---@field NewRow fun(self: dbc.Table.Achievement_Category, id?: integer): dbc.row.Achievement_Category
---@field Create fun(self: dbc.Table.Achievement_Category, id?: integer): dbc.row.Achievement_Category
---@field CreateNext fun(self: dbc.Table.Achievement_Category, data?: table): dbc.row.Achievement_Category
---@field CloneRow fun(self: dbc.Table.Achievement_Category, source: integer|dbc.row.Achievement_Category, new_id?: integer): dbc.row.Achievement_Category
---@field GetAllRows fun(self: dbc.Table.Achievement_Category): dbc.row.Achievement_Category[]
---@field Query fun(self: dbc.Table.Achievement_Category): dbc.Query<dbc.row.Achievement_Category>
---@field Rows fun(self: dbc.Table.Achievement_Category): fun(): integer, dbc.row.Achievement_Category
