---@meta
-- Generated LuaLS annotations for GroundEffectTexture.dbc. Do not edit.

---Row representation of GroundEffectTexture.dbc.
---@class dbc.row.GroundEffectTexture : RowProxy
---@field ID integer
---@field DoodadId integer[]
---@field DoodadWeight integer[]
---@field Density integer
---@field Sound integer

-- Fluent PascalCase Methods for GroundEffectTexture
---@field GetID fun(self: dbc.row.GroundEffectTexture): integer
---@field SetID fun(self: dbc.row.GroundEffectTexture, value: integer): dbc.row.GroundEffectTexture
---@field GetDoodadId fun(self: dbc.row.GroundEffectTexture, index?: integer): integer|integer[]
---@field SetDoodadId fun(self: dbc.row.GroundEffectTexture, value: integer|integer[], index?: integer): dbc.row.GroundEffectTexture
---@field GetDoodadWeight fun(self: dbc.row.GroundEffectTexture, index?: integer): integer|integer[]
---@field SetDoodadWeight fun(self: dbc.row.GroundEffectTexture, value: integer|integer[], index?: integer): dbc.row.GroundEffectTexture
---@field GetDensity fun(self: dbc.row.GroundEffectTexture): integer
---@field SetDensity fun(self: dbc.row.GroundEffectTexture, value: integer): dbc.row.GroundEffectTexture
---@field GetSound fun(self: dbc.row.GroundEffectTexture): integer
---@field SetSound fun(self: dbc.row.GroundEffectTexture, value: integer): dbc.row.GroundEffectTexture

-- Inferred Cross-Table Relations for GroundEffectTexture

-- Cascading Creation & Relations Engine for GroundEffectTexture
---@field CreateRelated fun(self: dbc.row.GroundEffectTexture, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.GroundEffectTexture, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.GroundEffectTexture, child_table: string, child_field?: string): any[]

---Typed table handle for GroundEffectTexture.dbc.
---@class dbc.Table.GroundEffectTexture : DbcTable
---@field FindById fun(self: dbc.Table.GroundEffectTexture, id: integer): dbc.row.GroundEffectTexture|nil
---@field GetById fun(self: dbc.Table.GroundEffectTexture, id: integer): dbc.row.GroundEffectTexture|nil
---@field GetRow fun(self: dbc.Table.GroundEffectTexture, row: integer): dbc.row.GroundEffectTexture
---@field NewRow fun(self: dbc.Table.GroundEffectTexture, id?: integer): dbc.row.GroundEffectTexture
---@field Create fun(self: dbc.Table.GroundEffectTexture, id?: integer): dbc.row.GroundEffectTexture
---@field CreateNext fun(self: dbc.Table.GroundEffectTexture, data?: table): dbc.row.GroundEffectTexture
---@field CloneRow fun(self: dbc.Table.GroundEffectTexture, source: integer|dbc.row.GroundEffectTexture, new_id?: integer): dbc.row.GroundEffectTexture
---@field GetAllRows fun(self: dbc.Table.GroundEffectTexture): dbc.row.GroundEffectTexture[]
---@field Query fun(self: dbc.Table.GroundEffectTexture): dbc.Query<dbc.row.GroundEffectTexture>
---@field Rows fun(self: dbc.Table.GroundEffectTexture): fun(): integer, dbc.row.GroundEffectTexture
