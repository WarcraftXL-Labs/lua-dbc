---@meta
-- Generated LuaLS annotations for MapDifficulty.dbc. Do not edit.

---Row representation of MapDifficulty.dbc.
---@class dbc.row.MapDifficulty : RowProxy
---@field ID integer
---@field MapID integer
---@field Difficulty integer
---@field Message string
---@field RaidDuration integer
---@field MaxPlayers integer
---@field Difficultystring string

-- Fluent PascalCase Methods for MapDifficulty
---@field GetID fun(self: dbc.row.MapDifficulty): integer
---@field SetID fun(self: dbc.row.MapDifficulty, value: integer): dbc.row.MapDifficulty
---@field GetMapID fun(self: dbc.row.MapDifficulty): integer
---@field SetMapID fun(self: dbc.row.MapDifficulty, value: integer): dbc.row.MapDifficulty
---@field GetDifficulty fun(self: dbc.row.MapDifficulty): integer
---@field SetDifficulty fun(self: dbc.row.MapDifficulty, value: integer): dbc.row.MapDifficulty
---@field GetMessage fun(self: dbc.row.MapDifficulty, locale?: string|integer): string
---@field SetMessage fun(self: dbc.row.MapDifficulty, value: string, locale?: string|integer): dbc.row.MapDifficulty
---@field GetRaidDuration fun(self: dbc.row.MapDifficulty): integer
---@field SetRaidDuration fun(self: dbc.row.MapDifficulty, value: integer): dbc.row.MapDifficulty
---@field GetMaxPlayers fun(self: dbc.row.MapDifficulty): integer
---@field SetMaxPlayers fun(self: dbc.row.MapDifficulty, value: integer): dbc.row.MapDifficulty
---@field GetDifficultystring fun(self: dbc.row.MapDifficulty): string
---@field SetDifficultystring fun(self: dbc.row.MapDifficulty, value: string): dbc.row.MapDifficulty

-- Inferred Cross-Table Relations for MapDifficulty
---@field GetMap fun(self: dbc.row.MapDifficulty): dbc.row.Map|nil
---@field SetMap fun(self: dbc.row.MapDifficulty, target: dbc.row.Map|integer): dbc.row.MapDifficulty

-- Cascading Creation & Relations Engine for MapDifficulty
---@field CreateRelated fun(self: dbc.row.MapDifficulty, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.MapDifficulty, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.MapDifficulty, child_table: string, child_field?: string): any[]

---Typed table handle for MapDifficulty.dbc.
---@class dbc.Table.MapDifficulty : DbcTable
---@field FindById fun(self: dbc.Table.MapDifficulty, id: integer): dbc.row.MapDifficulty|nil
---@field GetById fun(self: dbc.Table.MapDifficulty, id: integer): dbc.row.MapDifficulty|nil
---@field GetRow fun(self: dbc.Table.MapDifficulty, row: integer): dbc.row.MapDifficulty
---@field NewRow fun(self: dbc.Table.MapDifficulty, id?: integer): dbc.row.MapDifficulty
---@field Create fun(self: dbc.Table.MapDifficulty, id?: integer): dbc.row.MapDifficulty
---@field CreateNext fun(self: dbc.Table.MapDifficulty, data?: table): dbc.row.MapDifficulty
---@field CloneRow fun(self: dbc.Table.MapDifficulty, source: integer|dbc.row.MapDifficulty, new_id?: integer): dbc.row.MapDifficulty
---@field GetAllRows fun(self: dbc.Table.MapDifficulty): dbc.row.MapDifficulty[]
---@field Query fun(self: dbc.Table.MapDifficulty): dbc.Query<dbc.row.MapDifficulty>
---@field Rows fun(self: dbc.Table.MapDifficulty): fun(): integer, dbc.row.MapDifficulty
