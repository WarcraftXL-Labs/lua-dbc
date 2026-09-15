---@meta
-- Generated LuaLS annotations for CinematicSequences.dbc. Do not edit.

---Row representation of CinematicSequences.dbc.
---@class dbc.row.CinematicSequences : RowProxy
---@field ID integer
---@field SoundID integer
---@field Camera integer[]

-- Fluent PascalCase Methods for CinematicSequences
---@field GetID fun(self: dbc.row.CinematicSequences): integer
---@field SetID fun(self: dbc.row.CinematicSequences, value: integer): dbc.row.CinematicSequences
---@field GetSoundID fun(self: dbc.row.CinematicSequences): integer
---@field SetSoundID fun(self: dbc.row.CinematicSequences, value: integer): dbc.row.CinematicSequences
---@field GetCamera fun(self: dbc.row.CinematicSequences, index?: integer): integer|integer[]
---@field SetCamera fun(self: dbc.row.CinematicSequences, value: integer|integer[], index?: integer): dbc.row.CinematicSequences

-- Inferred Cross-Table Relations for CinematicSequences
---@field GetSoundEntries fun(self: dbc.row.CinematicSequences): dbc.row.SoundEntries|nil
---@field SetSoundEntries fun(self: dbc.row.CinematicSequences, target: dbc.row.SoundEntries|integer): dbc.row.CinematicSequences

-- Cascading Creation & Relations Engine for CinematicSequences
---@field CreateRelated fun(self: dbc.row.CinematicSequences, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.CinematicSequences, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.CinematicSequences, child_table: string, child_field?: string): any[]

---Typed table handle for CinematicSequences.dbc.
---@class dbc.Table.CinematicSequences : DbcTable
---@field FindById fun(self: dbc.Table.CinematicSequences, id: integer): dbc.row.CinematicSequences|nil
---@field GetById fun(self: dbc.Table.CinematicSequences, id: integer): dbc.row.CinematicSequences|nil
---@field GetRow fun(self: dbc.Table.CinematicSequences, row: integer): dbc.row.CinematicSequences
---@field NewRow fun(self: dbc.Table.CinematicSequences, id?: integer): dbc.row.CinematicSequences
---@field Create fun(self: dbc.Table.CinematicSequences, id?: integer): dbc.row.CinematicSequences
---@field CreateNext fun(self: dbc.Table.CinematicSequences, data?: table): dbc.row.CinematicSequences
---@field CloneRow fun(self: dbc.Table.CinematicSequences, source: integer|dbc.row.CinematicSequences, new_id?: integer): dbc.row.CinematicSequences
---@field GetAllRows fun(self: dbc.Table.CinematicSequences): dbc.row.CinematicSequences[]
---@field Query fun(self: dbc.Table.CinematicSequences): dbc.Query<dbc.row.CinematicSequences>
---@field Rows fun(self: dbc.Table.CinematicSequences): fun(): integer, dbc.row.CinematicSequences
