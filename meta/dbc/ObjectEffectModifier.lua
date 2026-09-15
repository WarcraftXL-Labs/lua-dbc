---@meta
-- Generated LuaLS annotations for ObjectEffectModifier.dbc. Do not edit.

---Row representation of ObjectEffectModifier.dbc.
---@class dbc.row.ObjectEffectModifier : RowProxy
---@field ID integer
---@field InputType integer
---@field MapType integer
---@field OutputType integer
---@field Param number[]

-- Fluent PascalCase Methods for ObjectEffectModifier
---@field GetID fun(self: dbc.row.ObjectEffectModifier): integer
---@field SetID fun(self: dbc.row.ObjectEffectModifier, value: integer): dbc.row.ObjectEffectModifier
---@field GetInputType fun(self: dbc.row.ObjectEffectModifier): integer
---@field SetInputType fun(self: dbc.row.ObjectEffectModifier, value: integer): dbc.row.ObjectEffectModifier
---@field GetMapType fun(self: dbc.row.ObjectEffectModifier): integer
---@field SetMapType fun(self: dbc.row.ObjectEffectModifier, value: integer): dbc.row.ObjectEffectModifier
---@field GetOutputType fun(self: dbc.row.ObjectEffectModifier): integer
---@field SetOutputType fun(self: dbc.row.ObjectEffectModifier, value: integer): dbc.row.ObjectEffectModifier
---@field GetParam fun(self: dbc.row.ObjectEffectModifier, index?: integer): number|number[]
---@field SetParam fun(self: dbc.row.ObjectEffectModifier, value: number|number[], index?: integer): dbc.row.ObjectEffectModifier

-- Inferred Cross-Table Relations for ObjectEffectModifier

-- Cascading Creation & Relations Engine for ObjectEffectModifier
---@field CreateRelated fun(self: dbc.row.ObjectEffectModifier, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.ObjectEffectModifier, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.ObjectEffectModifier, child_table: string, child_field?: string): any[]

---Typed table handle for ObjectEffectModifier.dbc.
---@class dbc.Table.ObjectEffectModifier : DbcTable
---@field FindById fun(self: dbc.Table.ObjectEffectModifier, id: integer): dbc.row.ObjectEffectModifier|nil
---@field GetById fun(self: dbc.Table.ObjectEffectModifier, id: integer): dbc.row.ObjectEffectModifier|nil
---@field GetRow fun(self: dbc.Table.ObjectEffectModifier, row: integer): dbc.row.ObjectEffectModifier
---@field NewRow fun(self: dbc.Table.ObjectEffectModifier, id?: integer): dbc.row.ObjectEffectModifier
---@field Create fun(self: dbc.Table.ObjectEffectModifier, id?: integer): dbc.row.ObjectEffectModifier
---@field CreateNext fun(self: dbc.Table.ObjectEffectModifier, data?: table): dbc.row.ObjectEffectModifier
---@field CloneRow fun(self: dbc.Table.ObjectEffectModifier, source: integer|dbc.row.ObjectEffectModifier, new_id?: integer): dbc.row.ObjectEffectModifier
---@field GetAllRows fun(self: dbc.Table.ObjectEffectModifier): dbc.row.ObjectEffectModifier[]
---@field Query fun(self: dbc.Table.ObjectEffectModifier): dbc.Query<dbc.row.ObjectEffectModifier>
---@field Rows fun(self: dbc.Table.ObjectEffectModifier): fun(): integer, dbc.row.ObjectEffectModifier
