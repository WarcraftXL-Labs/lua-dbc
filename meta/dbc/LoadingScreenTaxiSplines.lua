---@meta
-- Generated LuaLS annotations for LoadingScreenTaxiSplines.dbc. Do not edit.

---Row representation of LoadingScreenTaxiSplines.dbc.
---@class dbc.row.LoadingScreenTaxiSplines : RowProxy
---@field ID integer
---@field PathID integer
---@field Locx number[]
---@field Locy number[]
---@field LegIndex integer

-- Fluent PascalCase Methods for LoadingScreenTaxiSplines
---@field GetID fun(self: dbc.row.LoadingScreenTaxiSplines): integer
---@field SetID fun(self: dbc.row.LoadingScreenTaxiSplines, value: integer): dbc.row.LoadingScreenTaxiSplines
---@field GetPathID fun(self: dbc.row.LoadingScreenTaxiSplines): integer
---@field SetPathID fun(self: dbc.row.LoadingScreenTaxiSplines, value: integer): dbc.row.LoadingScreenTaxiSplines
---@field GetLocx fun(self: dbc.row.LoadingScreenTaxiSplines, index?: integer): number|number[]
---@field SetLocx fun(self: dbc.row.LoadingScreenTaxiSplines, value: number|number[], index?: integer): dbc.row.LoadingScreenTaxiSplines
---@field GetLocy fun(self: dbc.row.LoadingScreenTaxiSplines, index?: integer): number|number[]
---@field SetLocy fun(self: dbc.row.LoadingScreenTaxiSplines, value: number|number[], index?: integer): dbc.row.LoadingScreenTaxiSplines
---@field GetLegIndex fun(self: dbc.row.LoadingScreenTaxiSplines): integer
---@field SetLegIndex fun(self: dbc.row.LoadingScreenTaxiSplines, value: integer): dbc.row.LoadingScreenTaxiSplines

-- Inferred Cross-Table Relations for LoadingScreenTaxiSplines

-- Cascading Creation & Relations Engine for LoadingScreenTaxiSplines
---@field CreateRelated fun(self: dbc.row.LoadingScreenTaxiSplines, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.LoadingScreenTaxiSplines, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.LoadingScreenTaxiSplines, child_table: string, child_field?: string): any[]

---Typed table handle for LoadingScreenTaxiSplines.dbc.
---@class dbc.Table.LoadingScreenTaxiSplines : DbcTable
---@field FindById fun(self: dbc.Table.LoadingScreenTaxiSplines, id: integer): dbc.row.LoadingScreenTaxiSplines|nil
---@field GetById fun(self: dbc.Table.LoadingScreenTaxiSplines, id: integer): dbc.row.LoadingScreenTaxiSplines|nil
---@field GetRow fun(self: dbc.Table.LoadingScreenTaxiSplines, row: integer): dbc.row.LoadingScreenTaxiSplines
---@field NewRow fun(self: dbc.Table.LoadingScreenTaxiSplines, id?: integer): dbc.row.LoadingScreenTaxiSplines
---@field Create fun(self: dbc.Table.LoadingScreenTaxiSplines, id?: integer): dbc.row.LoadingScreenTaxiSplines
---@field CreateNext fun(self: dbc.Table.LoadingScreenTaxiSplines, data?: table): dbc.row.LoadingScreenTaxiSplines
---@field CloneRow fun(self: dbc.Table.LoadingScreenTaxiSplines, source: integer|dbc.row.LoadingScreenTaxiSplines, new_id?: integer): dbc.row.LoadingScreenTaxiSplines
---@field GetAllRows fun(self: dbc.Table.LoadingScreenTaxiSplines): dbc.row.LoadingScreenTaxiSplines[]
---@field Query fun(self: dbc.Table.LoadingScreenTaxiSplines): dbc.Query<dbc.row.LoadingScreenTaxiSplines>
---@field Rows fun(self: dbc.Table.LoadingScreenTaxiSplines): fun(): integer, dbc.row.LoadingScreenTaxiSplines
