---@meta
-- Generated LuaLS annotations for CharacterFacialHairStyles.dbc. Do not edit.

---Row representation of CharacterFacialHairStyles.dbc.
---@class dbc.row.CharacterFacialHairStyles : RowProxy
---@field RaceID integer
---@field SexID integer
---@field VariationID integer
---@field Geoset integer[]

-- Fluent PascalCase Methods for CharacterFacialHairStyles
---@field GetRaceID fun(self: dbc.row.CharacterFacialHairStyles): integer
---@field SetRaceID fun(self: dbc.row.CharacterFacialHairStyles, value: integer): dbc.row.CharacterFacialHairStyles
---@field GetSexID fun(self: dbc.row.CharacterFacialHairStyles): integer
---@field SetSexID fun(self: dbc.row.CharacterFacialHairStyles, value: integer): dbc.row.CharacterFacialHairStyles
---@field GetVariationID fun(self: dbc.row.CharacterFacialHairStyles): integer
---@field SetVariationID fun(self: dbc.row.CharacterFacialHairStyles, value: integer): dbc.row.CharacterFacialHairStyles
---@field GetGeoset fun(self: dbc.row.CharacterFacialHairStyles, index?: integer): integer|integer[]
---@field SetGeoset fun(self: dbc.row.CharacterFacialHairStyles, value: integer|integer[], index?: integer): dbc.row.CharacterFacialHairStyles

-- Inferred Cross-Table Relations for CharacterFacialHairStyles

-- Cascading Creation & Relations Engine for CharacterFacialHairStyles
---@field CreateRelated fun(self: dbc.row.CharacterFacialHairStyles, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.CharacterFacialHairStyles, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.CharacterFacialHairStyles, child_table: string, child_field?: string): any[]

---Typed table handle for CharacterFacialHairStyles.dbc.
---@class dbc.Table.CharacterFacialHairStyles : DbcTable
---@field FindById fun(self: dbc.Table.CharacterFacialHairStyles, id: integer): dbc.row.CharacterFacialHairStyles|nil
---@field GetById fun(self: dbc.Table.CharacterFacialHairStyles, id: integer): dbc.row.CharacterFacialHairStyles|nil
---@field GetRow fun(self: dbc.Table.CharacterFacialHairStyles, row: integer): dbc.row.CharacterFacialHairStyles
---@field NewRow fun(self: dbc.Table.CharacterFacialHairStyles, id?: integer): dbc.row.CharacterFacialHairStyles
---@field Create fun(self: dbc.Table.CharacterFacialHairStyles, id?: integer): dbc.row.CharacterFacialHairStyles
---@field CreateNext fun(self: dbc.Table.CharacterFacialHairStyles, data?: table): dbc.row.CharacterFacialHairStyles
---@field CloneRow fun(self: dbc.Table.CharacterFacialHairStyles, source: integer|dbc.row.CharacterFacialHairStyles, new_id?: integer): dbc.row.CharacterFacialHairStyles
---@field GetAllRows fun(self: dbc.Table.CharacterFacialHairStyles): dbc.row.CharacterFacialHairStyles[]
---@field Query fun(self: dbc.Table.CharacterFacialHairStyles): dbc.Query<dbc.row.CharacterFacialHairStyles>
---@field Rows fun(self: dbc.Table.CharacterFacialHairStyles): fun(): integer, dbc.row.CharacterFacialHairStyles
