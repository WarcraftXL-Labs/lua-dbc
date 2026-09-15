---@meta
-- Generated LuaLS annotations for EmotesTextSound.dbc. Do not edit.

---Row representation of EmotesTextSound.dbc.
---@class dbc.row.EmotesTextSound : RowProxy
---@field ID integer
---@field EmotesTextID integer
---@field RaceID integer
---@field SexID integer
---@field SoundID integer

-- Fluent PascalCase Methods for EmotesTextSound
---@field GetID fun(self: dbc.row.EmotesTextSound): integer
---@field SetID fun(self: dbc.row.EmotesTextSound, value: integer): dbc.row.EmotesTextSound
---@field GetEmotesTextID fun(self: dbc.row.EmotesTextSound): integer
---@field SetEmotesTextID fun(self: dbc.row.EmotesTextSound, value: integer): dbc.row.EmotesTextSound
---@field GetRaceID fun(self: dbc.row.EmotesTextSound): integer
---@field SetRaceID fun(self: dbc.row.EmotesTextSound, value: integer): dbc.row.EmotesTextSound
---@field GetSexID fun(self: dbc.row.EmotesTextSound): integer
---@field SetSexID fun(self: dbc.row.EmotesTextSound, value: integer): dbc.row.EmotesTextSound
---@field GetSoundID fun(self: dbc.row.EmotesTextSound): integer
---@field SetSoundID fun(self: dbc.row.EmotesTextSound, value: integer): dbc.row.EmotesTextSound

-- Inferred Cross-Table Relations for EmotesTextSound
---@field GetEmotesText fun(self: dbc.row.EmotesTextSound): dbc.row.EmotesText|nil
---@field SetEmotesText fun(self: dbc.row.EmotesTextSound, target: dbc.row.EmotesText|integer): dbc.row.EmotesTextSound
---@field GetSoundEntries fun(self: dbc.row.EmotesTextSound): dbc.row.SoundEntries|nil
---@field SetSoundEntries fun(self: dbc.row.EmotesTextSound, target: dbc.row.SoundEntries|integer): dbc.row.EmotesTextSound

-- Cascading Creation & Relations Engine for EmotesTextSound
---@field CreateRelated fun(self: dbc.row.EmotesTextSound, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.EmotesTextSound, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.EmotesTextSound, child_table: string, child_field?: string): any[]

---Typed table handle for EmotesTextSound.dbc.
---@class dbc.Table.EmotesTextSound : DbcTable
---@field FindById fun(self: dbc.Table.EmotesTextSound, id: integer): dbc.row.EmotesTextSound|nil
---@field GetById fun(self: dbc.Table.EmotesTextSound, id: integer): dbc.row.EmotesTextSound|nil
---@field GetRow fun(self: dbc.Table.EmotesTextSound, row: integer): dbc.row.EmotesTextSound
---@field NewRow fun(self: dbc.Table.EmotesTextSound, id?: integer): dbc.row.EmotesTextSound
---@field Create fun(self: dbc.Table.EmotesTextSound, id?: integer): dbc.row.EmotesTextSound
---@field CreateNext fun(self: dbc.Table.EmotesTextSound, data?: table): dbc.row.EmotesTextSound
---@field CloneRow fun(self: dbc.Table.EmotesTextSound, source: integer|dbc.row.EmotesTextSound, new_id?: integer): dbc.row.EmotesTextSound
---@field GetAllRows fun(self: dbc.Table.EmotesTextSound): dbc.row.EmotesTextSound[]
---@field Query fun(self: dbc.Table.EmotesTextSound): dbc.Query<dbc.row.EmotesTextSound>
---@field Rows fun(self: dbc.Table.EmotesTextSound): fun(): integer, dbc.row.EmotesTextSound
