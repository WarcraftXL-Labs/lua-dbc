---@meta
-- Generated LuaLS annotations for PvpDifficulty.dbc. Do not edit.

---Row representation of PvpDifficulty.dbc.
---@class dbc.row.PvpDifficulty : RowProxy
---@field ID integer
---@field MapID integer
---@field RangeIndex integer
---@field MinLevel integer
---@field MaxLevel integer
---@field Difficulty integer

-- Fluent PascalCase Methods for PvpDifficulty
---@field GetID fun(self: dbc.row.PvpDifficulty): integer
---@field SetID fun(self: dbc.row.PvpDifficulty, value: integer): dbc.row.PvpDifficulty
---@field GetMapID fun(self: dbc.row.PvpDifficulty): integer
---@field SetMapID fun(self: dbc.row.PvpDifficulty, value: integer): dbc.row.PvpDifficulty
---@field GetRangeIndex fun(self: dbc.row.PvpDifficulty): integer
---@field SetRangeIndex fun(self: dbc.row.PvpDifficulty, value: integer): dbc.row.PvpDifficulty
---@field GetMinLevel fun(self: dbc.row.PvpDifficulty): integer
---@field SetMinLevel fun(self: dbc.row.PvpDifficulty, value: integer): dbc.row.PvpDifficulty
---@field GetMaxLevel fun(self: dbc.row.PvpDifficulty): integer
---@field SetMaxLevel fun(self: dbc.row.PvpDifficulty, value: integer): dbc.row.PvpDifficulty
---@field GetDifficulty fun(self: dbc.row.PvpDifficulty): integer
---@field SetDifficulty fun(self: dbc.row.PvpDifficulty, value: integer): dbc.row.PvpDifficulty

-- Inferred Cross-Table Relations for PvpDifficulty
---@field GetMap fun(self: dbc.row.PvpDifficulty): dbc.row.Map|nil
---@field SetMap fun(self: dbc.row.PvpDifficulty, target: dbc.row.Map|integer): dbc.row.PvpDifficulty
---@field GetSpellRange fun(self: dbc.row.PvpDifficulty): dbc.row.SpellRange|nil
---@field SetSpellRange fun(self: dbc.row.PvpDifficulty, target: dbc.row.SpellRange|integer): dbc.row.PvpDifficulty

-- Cascading Creation & Relations Engine for PvpDifficulty
---@field CreateRelated fun(self: dbc.row.PvpDifficulty, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.PvpDifficulty, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.PvpDifficulty, child_table: string, child_field?: string): any[]

---Typed table handle for PvpDifficulty.dbc.
---@class dbc.Table.PvpDifficulty : DbcTable
---@field FindById fun(self: dbc.Table.PvpDifficulty, id: integer): dbc.row.PvpDifficulty|nil
---@field GetById fun(self: dbc.Table.PvpDifficulty, id: integer): dbc.row.PvpDifficulty|nil
---@field GetRow fun(self: dbc.Table.PvpDifficulty, row: integer): dbc.row.PvpDifficulty
---@field NewRow fun(self: dbc.Table.PvpDifficulty, id?: integer): dbc.row.PvpDifficulty
---@field Create fun(self: dbc.Table.PvpDifficulty, id?: integer): dbc.row.PvpDifficulty
---@field CreateNext fun(self: dbc.Table.PvpDifficulty, data?: table): dbc.row.PvpDifficulty
---@field CloneRow fun(self: dbc.Table.PvpDifficulty, source: integer|dbc.row.PvpDifficulty, new_id?: integer): dbc.row.PvpDifficulty
---@field GetAllRows fun(self: dbc.Table.PvpDifficulty): dbc.row.PvpDifficulty[]
---@field Query fun(self: dbc.Table.PvpDifficulty): dbc.Query<dbc.row.PvpDifficulty>
---@field Rows fun(self: dbc.Table.PvpDifficulty): fun(): integer, dbc.row.PvpDifficulty
