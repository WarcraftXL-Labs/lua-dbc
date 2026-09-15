---@meta
-- Generated LuaLS annotations for NPCSounds.dbc. Do not edit.

---Row representation of NPCSounds.dbc.
---@class dbc.row.NPCSounds : RowProxy
---@field ID integer
---@field SoundID integer[]

-- Fluent PascalCase Methods for NPCSounds
---@field GetID fun(self: dbc.row.NPCSounds): integer
---@field SetID fun(self: dbc.row.NPCSounds, value: integer): dbc.row.NPCSounds
---@field GetSoundID fun(self: dbc.row.NPCSounds, index?: integer): integer|integer[]
---@field SetSoundID fun(self: dbc.row.NPCSounds, value: integer|integer[], index?: integer): dbc.row.NPCSounds

-- Inferred Cross-Table Relations for NPCSounds
---@field GetSoundEntries fun(self: dbc.row.NPCSounds): dbc.row.SoundEntries|nil
---@field SetSoundEntries fun(self: dbc.row.NPCSounds, target: dbc.row.SoundEntries|integer): dbc.row.NPCSounds

-- Cascading Creation & Relations Engine for NPCSounds
---@field CreateRelated fun(self: dbc.row.NPCSounds, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.NPCSounds, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.NPCSounds, child_table: string, child_field?: string): any[]

---Typed table handle for NPCSounds.dbc.
---@class dbc.Table.NPCSounds : DbcTable
---@field FindById fun(self: dbc.Table.NPCSounds, id: integer): dbc.row.NPCSounds|nil
---@field GetById fun(self: dbc.Table.NPCSounds, id: integer): dbc.row.NPCSounds|nil
---@field GetRow fun(self: dbc.Table.NPCSounds, row: integer): dbc.row.NPCSounds
---@field NewRow fun(self: dbc.Table.NPCSounds, id?: integer): dbc.row.NPCSounds
---@field Create fun(self: dbc.Table.NPCSounds, id?: integer): dbc.row.NPCSounds
---@field CreateNext fun(self: dbc.Table.NPCSounds, data?: table): dbc.row.NPCSounds
---@field CloneRow fun(self: dbc.Table.NPCSounds, source: integer|dbc.row.NPCSounds, new_id?: integer): dbc.row.NPCSounds
---@field GetAllRows fun(self: dbc.Table.NPCSounds): dbc.row.NPCSounds[]
---@field Query fun(self: dbc.Table.NPCSounds): dbc.Query<dbc.row.NPCSounds>
---@field Rows fun(self: dbc.Table.NPCSounds): fun(): integer, dbc.row.NPCSounds
