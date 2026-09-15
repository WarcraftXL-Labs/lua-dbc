---@meta
-- Generated LuaLS annotations for LiquidMaterial.dbc. Do not edit.

---Row representation of LiquidMaterial.dbc.
---@class dbc.row.LiquidMaterial : RowProxy
---@field ID integer
---@field LVF integer
---@field Flags integer

-- Fluent PascalCase Methods for LiquidMaterial
---@field GetID fun(self: dbc.row.LiquidMaterial): integer
---@field SetID fun(self: dbc.row.LiquidMaterial, value: integer): dbc.row.LiquidMaterial
---@field GetLVF fun(self: dbc.row.LiquidMaterial): integer
---@field SetLVF fun(self: dbc.row.LiquidMaterial, value: integer): dbc.row.LiquidMaterial
---@field GetFlags fun(self: dbc.row.LiquidMaterial): integer
---@field SetFlags fun(self: dbc.row.LiquidMaterial, value: integer): dbc.row.LiquidMaterial
---@field HasFlags fun(self: dbc.row.LiquidMaterial, flag: integer): boolean
---@field AddFlags fun(self: dbc.row.LiquidMaterial, flag: integer): dbc.row.LiquidMaterial
---@field RemoveFlags fun(self: dbc.row.LiquidMaterial, flag: integer): dbc.row.LiquidMaterial

-- Inferred Cross-Table Relations for LiquidMaterial

-- Cascading Creation & Relations Engine for LiquidMaterial
---@field CreateRelated fun(self: dbc.row.LiquidMaterial, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.LiquidMaterial, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.LiquidMaterial, child_table: string, child_field?: string): any[]

---Typed table handle for LiquidMaterial.dbc.
---@class dbc.Table.LiquidMaterial : DbcTable
---@field FindById fun(self: dbc.Table.LiquidMaterial, id: integer): dbc.row.LiquidMaterial|nil
---@field GetById fun(self: dbc.Table.LiquidMaterial, id: integer): dbc.row.LiquidMaterial|nil
---@field GetRow fun(self: dbc.Table.LiquidMaterial, row: integer): dbc.row.LiquidMaterial
---@field NewRow fun(self: dbc.Table.LiquidMaterial, id?: integer): dbc.row.LiquidMaterial
---@field Create fun(self: dbc.Table.LiquidMaterial, id?: integer): dbc.row.LiquidMaterial
---@field CreateNext fun(self: dbc.Table.LiquidMaterial, data?: table): dbc.row.LiquidMaterial
---@field CloneRow fun(self: dbc.Table.LiquidMaterial, source: integer|dbc.row.LiquidMaterial, new_id?: integer): dbc.row.LiquidMaterial
---@field GetAllRows fun(self: dbc.Table.LiquidMaterial): dbc.row.LiquidMaterial[]
---@field Query fun(self: dbc.Table.LiquidMaterial): dbc.Query<dbc.row.LiquidMaterial>
---@field Rows fun(self: dbc.Table.LiquidMaterial): fun(): integer, dbc.row.LiquidMaterial
