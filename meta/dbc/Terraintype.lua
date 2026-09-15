---@meta
-- Generated LuaLS annotations for Terraintype.dbc. Do not edit.

---Row representation of Terraintype.dbc.
---@class dbc.row.Terraintype : RowProxy
---@field TerrainID integer
---@field TerrainDesc string
---@field FootstepSprayRun integer
---@field FootstepSprayWalk integer
---@field SoundID integer
---@field Flags integer

-- Fluent PascalCase Methods for Terraintype
---@field GetTerrainID fun(self: dbc.row.Terraintype): integer
---@field SetTerrainID fun(self: dbc.row.Terraintype, value: integer): dbc.row.Terraintype
---@field GetTerrainDesc fun(self: dbc.row.Terraintype): string
---@field SetTerrainDesc fun(self: dbc.row.Terraintype, value: string): dbc.row.Terraintype
---@field GetFootstepSprayRun fun(self: dbc.row.Terraintype): integer
---@field SetFootstepSprayRun fun(self: dbc.row.Terraintype, value: integer): dbc.row.Terraintype
---@field GetFootstepSprayWalk fun(self: dbc.row.Terraintype): integer
---@field SetFootstepSprayWalk fun(self: dbc.row.Terraintype, value: integer): dbc.row.Terraintype
---@field GetSoundID fun(self: dbc.row.Terraintype): integer
---@field SetSoundID fun(self: dbc.row.Terraintype, value: integer): dbc.row.Terraintype
---@field GetFlags fun(self: dbc.row.Terraintype): integer
---@field SetFlags fun(self: dbc.row.Terraintype, value: integer): dbc.row.Terraintype
---@field HasFlags fun(self: dbc.row.Terraintype, flag: integer): boolean
---@field AddFlags fun(self: dbc.row.Terraintype, flag: integer): dbc.row.Terraintype
---@field RemoveFlags fun(self: dbc.row.Terraintype, flag: integer): dbc.row.Terraintype

-- Inferred Cross-Table Relations for Terraintype
---@field GetSoundEntries fun(self: dbc.row.Terraintype): dbc.row.SoundEntries|nil
---@field SetSoundEntries fun(self: dbc.row.Terraintype, target: dbc.row.SoundEntries|integer): dbc.row.Terraintype

-- Cascading Creation & Relations Engine for Terraintype
---@field CreateRelated fun(self: dbc.row.Terraintype, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.Terraintype, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.Terraintype, child_table: string, child_field?: string): any[]

---Typed table handle for Terraintype.dbc.
---@class dbc.Table.Terraintype : DbcTable
---@field FindById fun(self: dbc.Table.Terraintype, id: integer): dbc.row.Terraintype|nil
---@field GetById fun(self: dbc.Table.Terraintype, id: integer): dbc.row.Terraintype|nil
---@field GetRow fun(self: dbc.Table.Terraintype, row: integer): dbc.row.Terraintype
---@field NewRow fun(self: dbc.Table.Terraintype, id?: integer): dbc.row.Terraintype
---@field Create fun(self: dbc.Table.Terraintype, id?: integer): dbc.row.Terraintype
---@field CreateNext fun(self: dbc.Table.Terraintype, data?: table): dbc.row.Terraintype
---@field CloneRow fun(self: dbc.Table.Terraintype, source: integer|dbc.row.Terraintype, new_id?: integer): dbc.row.Terraintype
---@field GetAllRows fun(self: dbc.Table.Terraintype): dbc.row.Terraintype[]
---@field Query fun(self: dbc.Table.Terraintype): dbc.Query<dbc.row.Terraintype>
---@field Rows fun(self: dbc.Table.Terraintype): fun(): integer, dbc.row.Terraintype
