---@meta
-- Generated LuaLS annotations for PageTextMaterial.dbc. Do not edit.

---Row representation of PageTextMaterial.dbc.
---@class dbc.row.PageTextMaterial : RowProxy
---@field ID integer
---@field Name string

-- Fluent PascalCase Methods for PageTextMaterial
---@field GetID fun(self: dbc.row.PageTextMaterial): integer
---@field SetID fun(self: dbc.row.PageTextMaterial, value: integer): dbc.row.PageTextMaterial
---@field GetName fun(self: dbc.row.PageTextMaterial): string
---@field SetName fun(self: dbc.row.PageTextMaterial, value: string): dbc.row.PageTextMaterial

-- Inferred Cross-Table Relations for PageTextMaterial

-- Cascading Creation & Relations Engine for PageTextMaterial
---@field CreateRelated fun(self: dbc.row.PageTextMaterial, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.PageTextMaterial, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.PageTextMaterial, child_table: string, child_field?: string): any[]

---Typed table handle for PageTextMaterial.dbc.
---@class dbc.Table.PageTextMaterial : DbcTable
---@field FindById fun(self: dbc.Table.PageTextMaterial, id: integer): dbc.row.PageTextMaterial|nil
---@field GetById fun(self: dbc.Table.PageTextMaterial, id: integer): dbc.row.PageTextMaterial|nil
---@field GetRow fun(self: dbc.Table.PageTextMaterial, row: integer): dbc.row.PageTextMaterial
---@field NewRow fun(self: dbc.Table.PageTextMaterial, id?: integer): dbc.row.PageTextMaterial
---@field Create fun(self: dbc.Table.PageTextMaterial, id?: integer): dbc.row.PageTextMaterial
---@field CreateNext fun(self: dbc.Table.PageTextMaterial, data?: table): dbc.row.PageTextMaterial
---@field CloneRow fun(self: dbc.Table.PageTextMaterial, source: integer|dbc.row.PageTextMaterial, new_id?: integer): dbc.row.PageTextMaterial
---@field GetAllRows fun(self: dbc.Table.PageTextMaterial): dbc.row.PageTextMaterial[]
---@field Query fun(self: dbc.Table.PageTextMaterial): dbc.Query<dbc.row.PageTextMaterial>
---@field Rows fun(self: dbc.Table.PageTextMaterial): fun(): integer, dbc.row.PageTextMaterial
