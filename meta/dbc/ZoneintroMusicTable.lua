---@meta
-- Generated LuaLS annotations for ZoneintroMusicTable.dbc. Do not edit.

---Row representation of ZoneintroMusicTable.dbc.
---@class dbc.row.ZoneintroMusicTable : RowProxy
---@field ID integer
---@field Name string
---@field SoundID integer
---@field Priority integer
---@field MinDelayMinutes integer

-- Fluent PascalCase Methods for ZoneintroMusicTable
---@field GetID fun(self: dbc.row.ZoneintroMusicTable): integer
---@field SetID fun(self: dbc.row.ZoneintroMusicTable, value: integer): dbc.row.ZoneintroMusicTable
---@field GetName fun(self: dbc.row.ZoneintroMusicTable): string
---@field SetName fun(self: dbc.row.ZoneintroMusicTable, value: string): dbc.row.ZoneintroMusicTable
---@field GetSoundID fun(self: dbc.row.ZoneintroMusicTable): integer
---@field SetSoundID fun(self: dbc.row.ZoneintroMusicTable, value: integer): dbc.row.ZoneintroMusicTable
---@field GetPriority fun(self: dbc.row.ZoneintroMusicTable): integer
---@field SetPriority fun(self: dbc.row.ZoneintroMusicTable, value: integer): dbc.row.ZoneintroMusicTable
---@field GetMinDelayMinutes fun(self: dbc.row.ZoneintroMusicTable): integer
---@field SetMinDelayMinutes fun(self: dbc.row.ZoneintroMusicTable, value: integer): dbc.row.ZoneintroMusicTable

-- Inferred Cross-Table Relations for ZoneintroMusicTable
---@field GetSoundEntries fun(self: dbc.row.ZoneintroMusicTable): dbc.row.SoundEntries|nil
---@field SetSoundEntries fun(self: dbc.row.ZoneintroMusicTable, target: dbc.row.SoundEntries|integer): dbc.row.ZoneintroMusicTable

-- Cascading Creation & Relations Engine for ZoneintroMusicTable
---@field CreateRelated fun(self: dbc.row.ZoneintroMusicTable, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.ZoneintroMusicTable, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.ZoneintroMusicTable, child_table: string, child_field?: string): any[]

---Typed table handle for ZoneintroMusicTable.dbc.
---@class dbc.Table.ZoneintroMusicTable : DbcTable
---@field FindById fun(self: dbc.Table.ZoneintroMusicTable, id: integer): dbc.row.ZoneintroMusicTable|nil
---@field GetById fun(self: dbc.Table.ZoneintroMusicTable, id: integer): dbc.row.ZoneintroMusicTable|nil
---@field GetRow fun(self: dbc.Table.ZoneintroMusicTable, row: integer): dbc.row.ZoneintroMusicTable
---@field NewRow fun(self: dbc.Table.ZoneintroMusicTable, id?: integer): dbc.row.ZoneintroMusicTable
---@field Create fun(self: dbc.Table.ZoneintroMusicTable, id?: integer): dbc.row.ZoneintroMusicTable
---@field CreateNext fun(self: dbc.Table.ZoneintroMusicTable, data?: table): dbc.row.ZoneintroMusicTable
---@field CloneRow fun(self: dbc.Table.ZoneintroMusicTable, source: integer|dbc.row.ZoneintroMusicTable, new_id?: integer): dbc.row.ZoneintroMusicTable
---@field GetAllRows fun(self: dbc.Table.ZoneintroMusicTable): dbc.row.ZoneintroMusicTable[]
---@field Query fun(self: dbc.Table.ZoneintroMusicTable): dbc.Query<dbc.row.ZoneintroMusicTable>
---@field Rows fun(self: dbc.Table.ZoneintroMusicTable): fun(): integer, dbc.row.ZoneintroMusicTable
