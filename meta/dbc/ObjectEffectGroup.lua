---@meta
-- Generated LuaLS annotations for ObjectEffectGroup.dbc. Do not edit.

---Row representation of ObjectEffectGroup.dbc.
---@class dbc.row.ObjectEffectGroup : RowProxy
---@field ID integer
---@field Name string

-- Fluent PascalCase Methods for ObjectEffectGroup
---@field GetID fun(self: dbc.row.ObjectEffectGroup): integer
---@field SetID fun(self: dbc.row.ObjectEffectGroup, value: integer): dbc.row.ObjectEffectGroup
---@field GetName fun(self: dbc.row.ObjectEffectGroup): string
---@field SetName fun(self: dbc.row.ObjectEffectGroup, value: string): dbc.row.ObjectEffectGroup

-- Inferred Cross-Table Relations for ObjectEffectGroup

-- Cascading Creation & Relations Engine for ObjectEffectGroup
---@field CreateRelated fun(self: dbc.row.ObjectEffectGroup, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.ObjectEffectGroup, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.ObjectEffectGroup, child_table: string, child_field?: string): any[]

---Typed table handle for ObjectEffectGroup.dbc.
---@class dbc.Table.ObjectEffectGroup : DbcTable
---@field FindById fun(self: dbc.Table.ObjectEffectGroup, id: integer): dbc.row.ObjectEffectGroup|nil
---@field GetById fun(self: dbc.Table.ObjectEffectGroup, id: integer): dbc.row.ObjectEffectGroup|nil
---@field GetRow fun(self: dbc.Table.ObjectEffectGroup, row: integer): dbc.row.ObjectEffectGroup
---@field NewRow fun(self: dbc.Table.ObjectEffectGroup, id?: integer): dbc.row.ObjectEffectGroup
---@field Create fun(self: dbc.Table.ObjectEffectGroup, id?: integer): dbc.row.ObjectEffectGroup
---@field CreateNext fun(self: dbc.Table.ObjectEffectGroup, data?: table): dbc.row.ObjectEffectGroup
---@field CloneRow fun(self: dbc.Table.ObjectEffectGroup, source: integer|dbc.row.ObjectEffectGroup, new_id?: integer): dbc.row.ObjectEffectGroup
---@field GetAllRows fun(self: dbc.Table.ObjectEffectGroup): dbc.row.ObjectEffectGroup[]
---@field Query fun(self: dbc.Table.ObjectEffectGroup): dbc.Query<dbc.row.ObjectEffectGroup>
---@field Rows fun(self: dbc.Table.ObjectEffectGroup): fun(): integer, dbc.row.ObjectEffectGroup
