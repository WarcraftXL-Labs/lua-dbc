---@meta
-- Generated LuaLS annotations for UISoundLookups.dbc. Do not edit.

---Row representation of UISoundLookups.dbc.
---@class dbc.row.UISoundLookups : RowProxy
---@field ID integer
---@field SoundID integer
---@field Name string

-- Fluent PascalCase Methods for UISoundLookups
---@field GetID fun(self: dbc.row.UISoundLookups): integer
---@field SetID fun(self: dbc.row.UISoundLookups, value: integer): dbc.row.UISoundLookups
---@field GetSoundID fun(self: dbc.row.UISoundLookups): integer
---@field SetSoundID fun(self: dbc.row.UISoundLookups, value: integer): dbc.row.UISoundLookups
---@field GetName fun(self: dbc.row.UISoundLookups): string
---@field SetName fun(self: dbc.row.UISoundLookups, value: string): dbc.row.UISoundLookups

-- Inferred Cross-Table Relations for UISoundLookups
---@field GetSoundEntries fun(self: dbc.row.UISoundLookups): dbc.row.SoundEntries|nil
---@field SetSoundEntries fun(self: dbc.row.UISoundLookups, target: dbc.row.SoundEntries|integer): dbc.row.UISoundLookups

-- Cascading Creation & Relations Engine for UISoundLookups
---@field CreateRelated fun(self: dbc.row.UISoundLookups, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.UISoundLookups, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.UISoundLookups, child_table: string, child_field?: string): any[]

---Typed table handle for UISoundLookups.dbc.
---@class dbc.Table.UISoundLookups : DbcTable
---@field FindById fun(self: dbc.Table.UISoundLookups, id: integer): dbc.row.UISoundLookups|nil
---@field GetById fun(self: dbc.Table.UISoundLookups, id: integer): dbc.row.UISoundLookups|nil
---@field GetRow fun(self: dbc.Table.UISoundLookups, row: integer): dbc.row.UISoundLookups
---@field NewRow fun(self: dbc.Table.UISoundLookups, id?: integer): dbc.row.UISoundLookups
---@field Create fun(self: dbc.Table.UISoundLookups, id?: integer): dbc.row.UISoundLookups
---@field CreateNext fun(self: dbc.Table.UISoundLookups, data?: table): dbc.row.UISoundLookups
---@field CloneRow fun(self: dbc.Table.UISoundLookups, source: integer|dbc.row.UISoundLookups, new_id?: integer): dbc.row.UISoundLookups
---@field GetAllRows fun(self: dbc.Table.UISoundLookups): dbc.row.UISoundLookups[]
---@field Query fun(self: dbc.Table.UISoundLookups): dbc.Query<dbc.row.UISoundLookups>
---@field Rows fun(self: dbc.Table.UISoundLookups): fun(): integer, dbc.row.UISoundLookups
