---@meta
-- Generated LuaLS annotations for FootstepTerrainLookup.dbc. Do not edit.

---Row representation of FootstepTerrainLookup.dbc.
---@class dbc.row.FootstepTerrainLookup : RowProxy
---@field ID integer
---@field CreatureFootstepID integer
---@field TerrainSoundID integer
---@field SoundID integer
---@field SoundIDSplash integer

-- Fluent PascalCase Methods for FootstepTerrainLookup
---@field GetID fun(self: dbc.row.FootstepTerrainLookup): integer
---@field SetID fun(self: dbc.row.FootstepTerrainLookup, value: integer): dbc.row.FootstepTerrainLookup
---@field GetCreatureFootstepID fun(self: dbc.row.FootstepTerrainLookup): integer
---@field SetCreatureFootstepID fun(self: dbc.row.FootstepTerrainLookup, value: integer): dbc.row.FootstepTerrainLookup
---@field GetTerrainSoundID fun(self: dbc.row.FootstepTerrainLookup): integer
---@field SetTerrainSoundID fun(self: dbc.row.FootstepTerrainLookup, value: integer): dbc.row.FootstepTerrainLookup
---@field GetSoundID fun(self: dbc.row.FootstepTerrainLookup): integer
---@field SetSoundID fun(self: dbc.row.FootstepTerrainLookup, value: integer): dbc.row.FootstepTerrainLookup
---@field GetSoundIDSplash fun(self: dbc.row.FootstepTerrainLookup): integer
---@field SetSoundIDSplash fun(self: dbc.row.FootstepTerrainLookup, value: integer): dbc.row.FootstepTerrainLookup

-- Inferred Cross-Table Relations for FootstepTerrainLookup
---@field GetSoundEntries fun(self: dbc.row.FootstepTerrainLookup): dbc.row.SoundEntries|nil
---@field SetSoundEntries fun(self: dbc.row.FootstepTerrainLookup, target: dbc.row.SoundEntries|integer): dbc.row.FootstepTerrainLookup

-- Cascading Creation & Relations Engine for FootstepTerrainLookup
---@field CreateRelated fun(self: dbc.row.FootstepTerrainLookup, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.FootstepTerrainLookup, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.FootstepTerrainLookup, child_table: string, child_field?: string): any[]

---Typed table handle for FootstepTerrainLookup.dbc.
---@class dbc.Table.FootstepTerrainLookup : DbcTable
---@field FindById fun(self: dbc.Table.FootstepTerrainLookup, id: integer): dbc.row.FootstepTerrainLookup|nil
---@field GetById fun(self: dbc.Table.FootstepTerrainLookup, id: integer): dbc.row.FootstepTerrainLookup|nil
---@field GetRow fun(self: dbc.Table.FootstepTerrainLookup, row: integer): dbc.row.FootstepTerrainLookup
---@field NewRow fun(self: dbc.Table.FootstepTerrainLookup, id?: integer): dbc.row.FootstepTerrainLookup
---@field Create fun(self: dbc.Table.FootstepTerrainLookup, id?: integer): dbc.row.FootstepTerrainLookup
---@field CreateNext fun(self: dbc.Table.FootstepTerrainLookup, data?: table): dbc.row.FootstepTerrainLookup
---@field CloneRow fun(self: dbc.Table.FootstepTerrainLookup, source: integer|dbc.row.FootstepTerrainLookup, new_id?: integer): dbc.row.FootstepTerrainLookup
---@field GetAllRows fun(self: dbc.Table.FootstepTerrainLookup): dbc.row.FootstepTerrainLookup[]
---@field Query fun(self: dbc.Table.FootstepTerrainLookup): dbc.Query<dbc.row.FootstepTerrainLookup>
---@field Rows fun(self: dbc.Table.FootstepTerrainLookup): fun(): integer, dbc.row.FootstepTerrainLookup
