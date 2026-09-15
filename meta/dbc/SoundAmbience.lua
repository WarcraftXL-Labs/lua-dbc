---@meta
-- Generated LuaLS annotations for SoundAmbience.dbc. Do not edit.

---Row representation of SoundAmbience.dbc.
---@class dbc.row.SoundAmbience : RowProxy
---@field ID integer
---@field AmbienceID integer[]

-- Fluent PascalCase Methods for SoundAmbience
---@field GetID fun(self: dbc.row.SoundAmbience): integer
---@field SetID fun(self: dbc.row.SoundAmbience, value: integer): dbc.row.SoundAmbience
---@field GetAmbienceID fun(self: dbc.row.SoundAmbience, index?: integer): integer|integer[]
---@field SetAmbienceID fun(self: dbc.row.SoundAmbience, value: integer|integer[], index?: integer): dbc.row.SoundAmbience

-- Inferred Cross-Table Relations for SoundAmbience

-- Cascading Creation & Relations Engine for SoundAmbience
---@field CreateRelated fun(self: dbc.row.SoundAmbience, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.SoundAmbience, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.SoundAmbience, child_table: string, child_field?: string): any[]

---Typed table handle for SoundAmbience.dbc.
---@class dbc.Table.SoundAmbience : DbcTable
---@field FindById fun(self: dbc.Table.SoundAmbience, id: integer): dbc.row.SoundAmbience|nil
---@field GetById fun(self: dbc.Table.SoundAmbience, id: integer): dbc.row.SoundAmbience|nil
---@field GetRow fun(self: dbc.Table.SoundAmbience, row: integer): dbc.row.SoundAmbience
---@field NewRow fun(self: dbc.Table.SoundAmbience, id?: integer): dbc.row.SoundAmbience
---@field Create fun(self: dbc.Table.SoundAmbience, id?: integer): dbc.row.SoundAmbience
---@field CreateNext fun(self: dbc.Table.SoundAmbience, data?: table): dbc.row.SoundAmbience
---@field CloneRow fun(self: dbc.Table.SoundAmbience, source: integer|dbc.row.SoundAmbience, new_id?: integer): dbc.row.SoundAmbience
---@field GetAllRows fun(self: dbc.Table.SoundAmbience): dbc.row.SoundAmbience[]
---@field Query fun(self: dbc.Table.SoundAmbience): dbc.Query<dbc.row.SoundAmbience>
---@field Rows fun(self: dbc.Table.SoundAmbience): fun(): integer, dbc.row.SoundAmbience
