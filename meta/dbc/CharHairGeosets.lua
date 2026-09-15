---@meta
-- Generated LuaLS annotations for CharHairGeosets.dbc. Do not edit.

---Row representation of CharHairGeosets.dbc.
---@class dbc.row.CharHairGeosets : RowProxy
---@field ID integer
---@field RaceID integer
---@field SexID integer
---@field VariationID integer
---@field GeosetID integer
---@field Showscalp integer

-- Fluent PascalCase Methods for CharHairGeosets
---@field GetID fun(self: dbc.row.CharHairGeosets): integer
---@field SetID fun(self: dbc.row.CharHairGeosets, value: integer): dbc.row.CharHairGeosets
---@field GetRaceID fun(self: dbc.row.CharHairGeosets): integer
---@field SetRaceID fun(self: dbc.row.CharHairGeosets, value: integer): dbc.row.CharHairGeosets
---@field GetSexID fun(self: dbc.row.CharHairGeosets): integer
---@field SetSexID fun(self: dbc.row.CharHairGeosets, value: integer): dbc.row.CharHairGeosets
---@field GetVariationID fun(self: dbc.row.CharHairGeosets): integer
---@field SetVariationID fun(self: dbc.row.CharHairGeosets, value: integer): dbc.row.CharHairGeosets
---@field GetGeosetID fun(self: dbc.row.CharHairGeosets): integer
---@field SetGeosetID fun(self: dbc.row.CharHairGeosets, value: integer): dbc.row.CharHairGeosets
---@field GetShowscalp fun(self: dbc.row.CharHairGeosets): integer
---@field SetShowscalp fun(self: dbc.row.CharHairGeosets, value: integer): dbc.row.CharHairGeosets

-- Inferred Cross-Table Relations for CharHairGeosets

-- Cascading Creation & Relations Engine for CharHairGeosets
---@field CreateRelated fun(self: dbc.row.CharHairGeosets, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.CharHairGeosets, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.CharHairGeosets, child_table: string, child_field?: string): any[]

---Typed table handle for CharHairGeosets.dbc.
---@class dbc.Table.CharHairGeosets : DbcTable
---@field FindById fun(self: dbc.Table.CharHairGeosets, id: integer): dbc.row.CharHairGeosets|nil
---@field GetById fun(self: dbc.Table.CharHairGeosets, id: integer): dbc.row.CharHairGeosets|nil
---@field GetRow fun(self: dbc.Table.CharHairGeosets, row: integer): dbc.row.CharHairGeosets
---@field NewRow fun(self: dbc.Table.CharHairGeosets, id?: integer): dbc.row.CharHairGeosets
---@field Create fun(self: dbc.Table.CharHairGeosets, id?: integer): dbc.row.CharHairGeosets
---@field CreateNext fun(self: dbc.Table.CharHairGeosets, data?: table): dbc.row.CharHairGeosets
---@field CloneRow fun(self: dbc.Table.CharHairGeosets, source: integer|dbc.row.CharHairGeosets, new_id?: integer): dbc.row.CharHairGeosets
---@field GetAllRows fun(self: dbc.Table.CharHairGeosets): dbc.row.CharHairGeosets[]
---@field Query fun(self: dbc.Table.CharHairGeosets): dbc.Query<dbc.row.CharHairGeosets>
---@field Rows fun(self: dbc.Table.CharHairGeosets): fun(): integer, dbc.row.CharHairGeosets
