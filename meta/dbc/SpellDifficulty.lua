---@meta
-- Generated LuaLS annotations for SpellDifficulty.dbc. Do not edit.

---Row representation of SpellDifficulty.dbc.
---@class dbc.row.SpellDifficulty : RowProxy
---@field ID integer
---@field DifficultySpellID integer[]

-- Fluent PascalCase Methods for SpellDifficulty
---@field GetID fun(self: dbc.row.SpellDifficulty): integer
---@field SetID fun(self: dbc.row.SpellDifficulty, value: integer): dbc.row.SpellDifficulty
---@field GetDifficultySpellID fun(self: dbc.row.SpellDifficulty, index?: integer): integer|integer[]
---@field SetDifficultySpellID fun(self: dbc.row.SpellDifficulty, value: integer|integer[], index?: integer): dbc.row.SpellDifficulty

-- Inferred Cross-Table Relations for SpellDifficulty

-- Cascading Creation & Relations Engine for SpellDifficulty
---@field CreateRelated fun(self: dbc.row.SpellDifficulty, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.SpellDifficulty, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.SpellDifficulty, child_table: string, child_field?: string): any[]

---Typed table handle for SpellDifficulty.dbc.
---@class dbc.Table.SpellDifficulty : DbcTable
---@field FindById fun(self: dbc.Table.SpellDifficulty, id: integer): dbc.row.SpellDifficulty|nil
---@field GetById fun(self: dbc.Table.SpellDifficulty, id: integer): dbc.row.SpellDifficulty|nil
---@field GetRow fun(self: dbc.Table.SpellDifficulty, row: integer): dbc.row.SpellDifficulty
---@field NewRow fun(self: dbc.Table.SpellDifficulty, id?: integer): dbc.row.SpellDifficulty
---@field Create fun(self: dbc.Table.SpellDifficulty, id?: integer): dbc.row.SpellDifficulty
---@field CreateNext fun(self: dbc.Table.SpellDifficulty, data?: table): dbc.row.SpellDifficulty
---@field CloneRow fun(self: dbc.Table.SpellDifficulty, source: integer|dbc.row.SpellDifficulty, new_id?: integer): dbc.row.SpellDifficulty
---@field GetAllRows fun(self: dbc.Table.SpellDifficulty): dbc.row.SpellDifficulty[]
---@field Query fun(self: dbc.Table.SpellDifficulty): dbc.Query<dbc.row.SpellDifficulty>
---@field Rows fun(self: dbc.Table.SpellDifficulty): fun(): integer, dbc.row.SpellDifficulty
