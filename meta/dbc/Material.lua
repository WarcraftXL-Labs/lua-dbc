---@meta
-- Generated LuaLS annotations for Material.dbc. Do not edit.

---Row representation of Material.dbc.
---@class dbc.row.Material : RowProxy
---@field ID integer
---@field Flags integer
---@field FoleySoundID integer
---@field SheatheSoundID integer
---@field UnsheatheSoundID integer

-- Fluent PascalCase Methods for Material
---@field GetID fun(self: dbc.row.Material): integer
---@field SetID fun(self: dbc.row.Material, value: integer): dbc.row.Material
---@field GetFlags fun(self: dbc.row.Material): integer
---@field SetFlags fun(self: dbc.row.Material, value: integer): dbc.row.Material
---@field HasFlags fun(self: dbc.row.Material, flag: integer): boolean
---@field AddFlags fun(self: dbc.row.Material, flag: integer): dbc.row.Material
---@field RemoveFlags fun(self: dbc.row.Material, flag: integer): dbc.row.Material
---@field GetFoleySoundID fun(self: dbc.row.Material): integer
---@field SetFoleySoundID fun(self: dbc.row.Material, value: integer): dbc.row.Material
---@field GetSheatheSoundID fun(self: dbc.row.Material): integer
---@field SetSheatheSoundID fun(self: dbc.row.Material, value: integer): dbc.row.Material
---@field GetUnsheatheSoundID fun(self: dbc.row.Material): integer
---@field SetUnsheatheSoundID fun(self: dbc.row.Material, value: integer): dbc.row.Material

-- Inferred Cross-Table Relations for Material

-- Cascading Creation & Relations Engine for Material
---@field CreateRelated fun(self: dbc.row.Material, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.Material, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.Material, child_table: string, child_field?: string): any[]

---Typed table handle for Material.dbc.
---@class dbc.Table.Material : DbcTable
---@field FindById fun(self: dbc.Table.Material, id: integer): dbc.row.Material|nil
---@field GetById fun(self: dbc.Table.Material, id: integer): dbc.row.Material|nil
---@field GetRow fun(self: dbc.Table.Material, row: integer): dbc.row.Material
---@field NewRow fun(self: dbc.Table.Material, id?: integer): dbc.row.Material
---@field Create fun(self: dbc.Table.Material, id?: integer): dbc.row.Material
---@field CreateNext fun(self: dbc.Table.Material, data?: table): dbc.row.Material
---@field CloneRow fun(self: dbc.Table.Material, source: integer|dbc.row.Material, new_id?: integer): dbc.row.Material
---@field GetAllRows fun(self: dbc.Table.Material): dbc.row.Material[]
---@field Query fun(self: dbc.Table.Material): dbc.Query<dbc.row.Material>
---@field Rows fun(self: dbc.Table.Material): fun(): integer, dbc.row.Material
