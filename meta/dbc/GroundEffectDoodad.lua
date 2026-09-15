---@meta
-- Generated LuaLS annotations for GroundEffectDoodad.dbc. Do not edit.

---Row representation of GroundEffectDoodad.dbc.
---@class dbc.row.GroundEffectDoodad : RowProxy
---@field ID integer
---@field Doodadpath string
---@field Flags integer

-- Fluent PascalCase Methods for GroundEffectDoodad
---@field GetID fun(self: dbc.row.GroundEffectDoodad): integer
---@field SetID fun(self: dbc.row.GroundEffectDoodad, value: integer): dbc.row.GroundEffectDoodad
---@field GetDoodadpath fun(self: dbc.row.GroundEffectDoodad): string
---@field SetDoodadpath fun(self: dbc.row.GroundEffectDoodad, value: string): dbc.row.GroundEffectDoodad
---@field GetFlags fun(self: dbc.row.GroundEffectDoodad): integer
---@field SetFlags fun(self: dbc.row.GroundEffectDoodad, value: integer): dbc.row.GroundEffectDoodad
---@field HasFlags fun(self: dbc.row.GroundEffectDoodad, flag: integer): boolean
---@field AddFlags fun(self: dbc.row.GroundEffectDoodad, flag: integer): dbc.row.GroundEffectDoodad
---@field RemoveFlags fun(self: dbc.row.GroundEffectDoodad, flag: integer): dbc.row.GroundEffectDoodad

-- Inferred Cross-Table Relations for GroundEffectDoodad

-- Cascading Creation & Relations Engine for GroundEffectDoodad
---@field CreateRelated fun(self: dbc.row.GroundEffectDoodad, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.GroundEffectDoodad, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.GroundEffectDoodad, child_table: string, child_field?: string): any[]

---Typed table handle for GroundEffectDoodad.dbc.
---@class dbc.Table.GroundEffectDoodad : DbcTable
---@field FindById fun(self: dbc.Table.GroundEffectDoodad, id: integer): dbc.row.GroundEffectDoodad|nil
---@field GetById fun(self: dbc.Table.GroundEffectDoodad, id: integer): dbc.row.GroundEffectDoodad|nil
---@field GetRow fun(self: dbc.Table.GroundEffectDoodad, row: integer): dbc.row.GroundEffectDoodad
---@field NewRow fun(self: dbc.Table.GroundEffectDoodad, id?: integer): dbc.row.GroundEffectDoodad
---@field Create fun(self: dbc.Table.GroundEffectDoodad, id?: integer): dbc.row.GroundEffectDoodad
---@field CreateNext fun(self: dbc.Table.GroundEffectDoodad, data?: table): dbc.row.GroundEffectDoodad
---@field CloneRow fun(self: dbc.Table.GroundEffectDoodad, source: integer|dbc.row.GroundEffectDoodad, new_id?: integer): dbc.row.GroundEffectDoodad
---@field GetAllRows fun(self: dbc.Table.GroundEffectDoodad): dbc.row.GroundEffectDoodad[]
---@field Query fun(self: dbc.Table.GroundEffectDoodad): dbc.Query<dbc.row.GroundEffectDoodad>
---@field Rows fun(self: dbc.Table.GroundEffectDoodad): fun(): integer, dbc.row.GroundEffectDoodad
