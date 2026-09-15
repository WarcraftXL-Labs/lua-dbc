---@meta
-- Generated LuaLS annotations for ObjectEffectPackage.dbc. Do not edit.

---Row representation of ObjectEffectPackage.dbc.
---@class dbc.row.ObjectEffectPackage : RowProxy
---@field ID integer
---@field Name string

-- Fluent PascalCase Methods for ObjectEffectPackage
---@field GetID fun(self: dbc.row.ObjectEffectPackage): integer
---@field SetID fun(self: dbc.row.ObjectEffectPackage, value: integer): dbc.row.ObjectEffectPackage
---@field GetName fun(self: dbc.row.ObjectEffectPackage): string
---@field SetName fun(self: dbc.row.ObjectEffectPackage, value: string): dbc.row.ObjectEffectPackage

-- Inferred Cross-Table Relations for ObjectEffectPackage

-- Cascading Creation & Relations Engine for ObjectEffectPackage
---@field CreateRelated fun(self: dbc.row.ObjectEffectPackage, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.ObjectEffectPackage, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.ObjectEffectPackage, child_table: string, child_field?: string): any[]

---Typed table handle for ObjectEffectPackage.dbc.
---@class dbc.Table.ObjectEffectPackage : DbcTable
---@field FindById fun(self: dbc.Table.ObjectEffectPackage, id: integer): dbc.row.ObjectEffectPackage|nil
---@field GetById fun(self: dbc.Table.ObjectEffectPackage, id: integer): dbc.row.ObjectEffectPackage|nil
---@field GetRow fun(self: dbc.Table.ObjectEffectPackage, row: integer): dbc.row.ObjectEffectPackage
---@field NewRow fun(self: dbc.Table.ObjectEffectPackage, id?: integer): dbc.row.ObjectEffectPackage
---@field Create fun(self: dbc.Table.ObjectEffectPackage, id?: integer): dbc.row.ObjectEffectPackage
---@field CreateNext fun(self: dbc.Table.ObjectEffectPackage, data?: table): dbc.row.ObjectEffectPackage
---@field CloneRow fun(self: dbc.Table.ObjectEffectPackage, source: integer|dbc.row.ObjectEffectPackage, new_id?: integer): dbc.row.ObjectEffectPackage
---@field GetAllRows fun(self: dbc.Table.ObjectEffectPackage): dbc.row.ObjectEffectPackage[]
---@field Query fun(self: dbc.Table.ObjectEffectPackage): dbc.Query<dbc.row.ObjectEffectPackage>
---@field Rows fun(self: dbc.Table.ObjectEffectPackage): fun(): integer, dbc.row.ObjectEffectPackage
