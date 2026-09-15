---@meta
-- Generated LuaLS annotations for Weather.dbc. Do not edit.

---Row representation of Weather.dbc.
---@class dbc.row.Weather : RowProxy
---@field ID integer
---@field AmbienceID integer
---@field EffectType integer
---@field TransitionSkyBox number
---@field EffectColor number[]
---@field EffectTexture string

-- Fluent PascalCase Methods for Weather
---@field GetID fun(self: dbc.row.Weather): integer
---@field SetID fun(self: dbc.row.Weather, value: integer): dbc.row.Weather
---@field GetAmbienceID fun(self: dbc.row.Weather): integer
---@field SetAmbienceID fun(self: dbc.row.Weather, value: integer): dbc.row.Weather
---@field GetEffectType fun(self: dbc.row.Weather): integer
---@field SetEffectType fun(self: dbc.row.Weather, value: integer): dbc.row.Weather
---@field GetTransitionSkyBox fun(self: dbc.row.Weather): number
---@field SetTransitionSkyBox fun(self: dbc.row.Weather, value: number): dbc.row.Weather
---@field GetEffectColor fun(self: dbc.row.Weather, index?: integer): number|number[]
---@field SetEffectColor fun(self: dbc.row.Weather, value: number|number[], index?: integer): dbc.row.Weather
---@field GetEffectTexture fun(self: dbc.row.Weather): string
---@field SetEffectTexture fun(self: dbc.row.Weather, value: string): dbc.row.Weather

-- Inferred Cross-Table Relations for Weather

-- Cascading Creation & Relations Engine for Weather
---@field CreateRelated fun(self: dbc.row.Weather, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.Weather, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.Weather, child_table: string, child_field?: string): any[]

---Typed table handle for Weather.dbc.
---@class dbc.Table.Weather : DbcTable
---@field FindById fun(self: dbc.Table.Weather, id: integer): dbc.row.Weather|nil
---@field GetById fun(self: dbc.Table.Weather, id: integer): dbc.row.Weather|nil
---@field GetRow fun(self: dbc.Table.Weather, row: integer): dbc.row.Weather
---@field NewRow fun(self: dbc.Table.Weather, id?: integer): dbc.row.Weather
---@field Create fun(self: dbc.Table.Weather, id?: integer): dbc.row.Weather
---@field CreateNext fun(self: dbc.Table.Weather, data?: table): dbc.row.Weather
---@field CloneRow fun(self: dbc.Table.Weather, source: integer|dbc.row.Weather, new_id?: integer): dbc.row.Weather
---@field GetAllRows fun(self: dbc.Table.Weather): dbc.row.Weather[]
---@field Query fun(self: dbc.Table.Weather): dbc.Query<dbc.row.Weather>
---@field Rows fun(self: dbc.Table.Weather): fun(): integer, dbc.row.Weather
