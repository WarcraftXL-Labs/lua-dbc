---@meta
-- Generated LuaLS annotations for ZoneMusic.dbc. Do not edit.

---Row representation of ZoneMusic.dbc.
---@class dbc.row.ZoneMusic : RowProxy
---@field ID integer
---@field SetName string
---@field SilenceintervalMin integer[]
---@field SilenceintervalMax integer[]
---@field Sounds integer[]

-- Fluent PascalCase Methods for ZoneMusic
---@field GetID fun(self: dbc.row.ZoneMusic): integer
---@field SetID fun(self: dbc.row.ZoneMusic, value: integer): dbc.row.ZoneMusic
---@field GetSetName fun(self: dbc.row.ZoneMusic): string
---@field SetSetName fun(self: dbc.row.ZoneMusic, value: string): dbc.row.ZoneMusic
---@field GetSilenceintervalMin fun(self: dbc.row.ZoneMusic, index?: integer): integer|integer[]
---@field SetSilenceintervalMin fun(self: dbc.row.ZoneMusic, value: integer|integer[], index?: integer): dbc.row.ZoneMusic
---@field GetSilenceintervalMax fun(self: dbc.row.ZoneMusic, index?: integer): integer|integer[]
---@field SetSilenceintervalMax fun(self: dbc.row.ZoneMusic, value: integer|integer[], index?: integer): dbc.row.ZoneMusic
---@field GetSounds fun(self: dbc.row.ZoneMusic, index?: integer): integer|integer[]
---@field SetSounds fun(self: dbc.row.ZoneMusic, value: integer|integer[], index?: integer): dbc.row.ZoneMusic

-- Inferred Cross-Table Relations for ZoneMusic

-- Cascading Creation & Relations Engine for ZoneMusic
---@field CreateRelated fun(self: dbc.row.ZoneMusic, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.ZoneMusic, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.ZoneMusic, child_table: string, child_field?: string): any[]

---Typed table handle for ZoneMusic.dbc.
---@class dbc.Table.ZoneMusic : DbcTable
---@field FindById fun(self: dbc.Table.ZoneMusic, id: integer): dbc.row.ZoneMusic|nil
---@field GetById fun(self: dbc.Table.ZoneMusic, id: integer): dbc.row.ZoneMusic|nil
---@field GetRow fun(self: dbc.Table.ZoneMusic, row: integer): dbc.row.ZoneMusic
---@field NewRow fun(self: dbc.Table.ZoneMusic, id?: integer): dbc.row.ZoneMusic
---@field Create fun(self: dbc.Table.ZoneMusic, id?: integer): dbc.row.ZoneMusic
---@field CreateNext fun(self: dbc.Table.ZoneMusic, data?: table): dbc.row.ZoneMusic
---@field CloneRow fun(self: dbc.Table.ZoneMusic, source: integer|dbc.row.ZoneMusic, new_id?: integer): dbc.row.ZoneMusic
---@field GetAllRows fun(self: dbc.Table.ZoneMusic): dbc.row.ZoneMusic[]
---@field Query fun(self: dbc.Table.ZoneMusic): dbc.Query<dbc.row.ZoneMusic>
---@field Rows fun(self: dbc.Table.ZoneMusic): fun(): integer, dbc.row.ZoneMusic
