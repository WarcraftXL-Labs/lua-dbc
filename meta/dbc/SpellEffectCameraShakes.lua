---@meta
-- Generated LuaLS annotations for SpellEffectCameraShakes.dbc. Do not edit.

---Row representation of SpellEffectCameraShakes.dbc.
---@class dbc.row.SpellEffectCameraShakes : RowProxy
---@field ID integer
---@field CameraShake integer[]

-- Fluent PascalCase Methods for SpellEffectCameraShakes
---@field GetID fun(self: dbc.row.SpellEffectCameraShakes): integer
---@field SetID fun(self: dbc.row.SpellEffectCameraShakes, value: integer): dbc.row.SpellEffectCameraShakes
---@field GetCameraShake fun(self: dbc.row.SpellEffectCameraShakes, index?: integer): integer|integer[]
---@field SetCameraShake fun(self: dbc.row.SpellEffectCameraShakes, value: integer|integer[], index?: integer): dbc.row.SpellEffectCameraShakes

-- Inferred Cross-Table Relations for SpellEffectCameraShakes

-- Cascading Creation & Relations Engine for SpellEffectCameraShakes
---@field CreateRelated fun(self: dbc.row.SpellEffectCameraShakes, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.SpellEffectCameraShakes, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.SpellEffectCameraShakes, child_table: string, child_field?: string): any[]

---Typed table handle for SpellEffectCameraShakes.dbc.
---@class dbc.Table.SpellEffectCameraShakes : DbcTable
---@field FindById fun(self: dbc.Table.SpellEffectCameraShakes, id: integer): dbc.row.SpellEffectCameraShakes|nil
---@field GetById fun(self: dbc.Table.SpellEffectCameraShakes, id: integer): dbc.row.SpellEffectCameraShakes|nil
---@field GetRow fun(self: dbc.Table.SpellEffectCameraShakes, row: integer): dbc.row.SpellEffectCameraShakes
---@field NewRow fun(self: dbc.Table.SpellEffectCameraShakes, id?: integer): dbc.row.SpellEffectCameraShakes
---@field Create fun(self: dbc.Table.SpellEffectCameraShakes, id?: integer): dbc.row.SpellEffectCameraShakes
---@field CreateNext fun(self: dbc.Table.SpellEffectCameraShakes, data?: table): dbc.row.SpellEffectCameraShakes
---@field CloneRow fun(self: dbc.Table.SpellEffectCameraShakes, source: integer|dbc.row.SpellEffectCameraShakes, new_id?: integer): dbc.row.SpellEffectCameraShakes
---@field GetAllRows fun(self: dbc.Table.SpellEffectCameraShakes): dbc.row.SpellEffectCameraShakes[]
---@field Query fun(self: dbc.Table.SpellEffectCameraShakes): dbc.Query<dbc.row.SpellEffectCameraShakes>
---@field Rows fun(self: dbc.Table.SpellEffectCameraShakes): fun(): integer, dbc.row.SpellEffectCameraShakes
