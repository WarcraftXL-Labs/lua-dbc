---@meta
-- Generated LuaLS annotations for DeathThudLookups.dbc. Do not edit.

---Row representation of DeathThudLookups.dbc.
---@class dbc.row.DeathThudLookups : RowProxy
---@field ID integer
---@field SizeClass integer
---@field TerraintypeSoundID integer
---@field SoundEntryID integer
---@field SoundEntryIDWater integer

-- Fluent PascalCase Methods for DeathThudLookups
---@field GetID fun(self: dbc.row.DeathThudLookups): integer
---@field SetID fun(self: dbc.row.DeathThudLookups, value: integer): dbc.row.DeathThudLookups
---@field GetSizeClass fun(self: dbc.row.DeathThudLookups): integer
---@field SetSizeClass fun(self: dbc.row.DeathThudLookups, value: integer): dbc.row.DeathThudLookups
---@field GetTerraintypeSoundID fun(self: dbc.row.DeathThudLookups): integer
---@field SetTerraintypeSoundID fun(self: dbc.row.DeathThudLookups, value: integer): dbc.row.DeathThudLookups
---@field GetSoundEntryID fun(self: dbc.row.DeathThudLookups): integer
---@field SetSoundEntryID fun(self: dbc.row.DeathThudLookups, value: integer): dbc.row.DeathThudLookups
---@field GetSoundEntryIDWater fun(self: dbc.row.DeathThudLookups): integer
---@field SetSoundEntryIDWater fun(self: dbc.row.DeathThudLookups, value: integer): dbc.row.DeathThudLookups

-- Inferred Cross-Table Relations for DeathThudLookups

-- Cascading Creation & Relations Engine for DeathThudLookups
---@field CreateRelated fun(self: dbc.row.DeathThudLookups, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.DeathThudLookups, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.DeathThudLookups, child_table: string, child_field?: string): any[]

---Typed table handle for DeathThudLookups.dbc.
---@class dbc.Table.DeathThudLookups : DbcTable
---@field FindById fun(self: dbc.Table.DeathThudLookups, id: integer): dbc.row.DeathThudLookups|nil
---@field GetById fun(self: dbc.Table.DeathThudLookups, id: integer): dbc.row.DeathThudLookups|nil
---@field GetRow fun(self: dbc.Table.DeathThudLookups, row: integer): dbc.row.DeathThudLookups
---@field NewRow fun(self: dbc.Table.DeathThudLookups, id?: integer): dbc.row.DeathThudLookups
---@field Create fun(self: dbc.Table.DeathThudLookups, id?: integer): dbc.row.DeathThudLookups
---@field CreateNext fun(self: dbc.Table.DeathThudLookups, data?: table): dbc.row.DeathThudLookups
---@field CloneRow fun(self: dbc.Table.DeathThudLookups, source: integer|dbc.row.DeathThudLookups, new_id?: integer): dbc.row.DeathThudLookups
---@field GetAllRows fun(self: dbc.Table.DeathThudLookups): dbc.row.DeathThudLookups[]
---@field Query fun(self: dbc.Table.DeathThudLookups): dbc.Query<dbc.row.DeathThudLookups>
---@field Rows fun(self: dbc.Table.DeathThudLookups): fun(): integer, dbc.row.DeathThudLookups
