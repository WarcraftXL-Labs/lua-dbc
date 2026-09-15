---@meta
-- Generated LuaLS annotations for ObjectEffectPackageElem.dbc. Do not edit.

---Row representation of ObjectEffectPackageElem.dbc.
---@class dbc.row.ObjectEffectPackageElem : RowProxy
---@field ID integer
---@field ObjectEffectPackageID integer
---@field ObjectEffectGroupID integer
---@field StateType integer

-- Fluent PascalCase Methods for ObjectEffectPackageElem
---@field GetID fun(self: dbc.row.ObjectEffectPackageElem): integer
---@field SetID fun(self: dbc.row.ObjectEffectPackageElem, value: integer): dbc.row.ObjectEffectPackageElem
---@field GetObjectEffectPackageID fun(self: dbc.row.ObjectEffectPackageElem): integer
---@field SetObjectEffectPackageID fun(self: dbc.row.ObjectEffectPackageElem, value: integer): dbc.row.ObjectEffectPackageElem
---@field GetObjectEffectGroupID fun(self: dbc.row.ObjectEffectPackageElem): integer
---@field SetObjectEffectGroupID fun(self: dbc.row.ObjectEffectPackageElem, value: integer): dbc.row.ObjectEffectPackageElem
---@field GetStateType fun(self: dbc.row.ObjectEffectPackageElem): integer
---@field SetStateType fun(self: dbc.row.ObjectEffectPackageElem, value: integer): dbc.row.ObjectEffectPackageElem

-- Inferred Cross-Table Relations for ObjectEffectPackageElem
---@field GetObjectEffectPackage fun(self: dbc.row.ObjectEffectPackageElem): dbc.row.ObjectEffectPackage|nil
---@field SetObjectEffectPackage fun(self: dbc.row.ObjectEffectPackageElem, target: dbc.row.ObjectEffectPackage|integer): dbc.row.ObjectEffectPackageElem
---@field GetObjectEffectGroup fun(self: dbc.row.ObjectEffectPackageElem): dbc.row.ObjectEffectGroup|nil
---@field SetObjectEffectGroup fun(self: dbc.row.ObjectEffectPackageElem, target: dbc.row.ObjectEffectGroup|integer): dbc.row.ObjectEffectPackageElem

-- Cascading Creation & Relations Engine for ObjectEffectPackageElem
---@field CreateRelated fun(self: dbc.row.ObjectEffectPackageElem, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.ObjectEffectPackageElem, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.ObjectEffectPackageElem, child_table: string, child_field?: string): any[]

---Typed table handle for ObjectEffectPackageElem.dbc.
---@class dbc.Table.ObjectEffectPackageElem : DbcTable
---@field FindById fun(self: dbc.Table.ObjectEffectPackageElem, id: integer): dbc.row.ObjectEffectPackageElem|nil
---@field GetById fun(self: dbc.Table.ObjectEffectPackageElem, id: integer): dbc.row.ObjectEffectPackageElem|nil
---@field GetRow fun(self: dbc.Table.ObjectEffectPackageElem, row: integer): dbc.row.ObjectEffectPackageElem
---@field NewRow fun(self: dbc.Table.ObjectEffectPackageElem, id?: integer): dbc.row.ObjectEffectPackageElem
---@field Create fun(self: dbc.Table.ObjectEffectPackageElem, id?: integer): dbc.row.ObjectEffectPackageElem
---@field CreateNext fun(self: dbc.Table.ObjectEffectPackageElem, data?: table): dbc.row.ObjectEffectPackageElem
---@field CloneRow fun(self: dbc.Table.ObjectEffectPackageElem, source: integer|dbc.row.ObjectEffectPackageElem, new_id?: integer): dbc.row.ObjectEffectPackageElem
---@field GetAllRows fun(self: dbc.Table.ObjectEffectPackageElem): dbc.row.ObjectEffectPackageElem[]
---@field Query fun(self: dbc.Table.ObjectEffectPackageElem): dbc.Query<dbc.row.ObjectEffectPackageElem>
---@field Rows fun(self: dbc.Table.ObjectEffectPackageElem): fun(): integer, dbc.row.ObjectEffectPackageElem
