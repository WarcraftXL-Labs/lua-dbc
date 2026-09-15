---@meta
-- Generated LuaLS annotations for VocalUISounds.dbc. Do not edit.

---Row representation of VocalUISounds.dbc.
---@class dbc.row.VocalUISounds : RowProxy
---@field ID integer
---@field VocalUIEnum integer
---@field RaceID integer
---@field NormalSoundID integer[]
---@field PissedSoundID integer[]

-- Fluent PascalCase Methods for VocalUISounds
---@field GetID fun(self: dbc.row.VocalUISounds): integer
---@field SetID fun(self: dbc.row.VocalUISounds, value: integer): dbc.row.VocalUISounds
---@field GetVocalUIEnum fun(self: dbc.row.VocalUISounds): integer
---@field SetVocalUIEnum fun(self: dbc.row.VocalUISounds, value: integer): dbc.row.VocalUISounds
---@field GetRaceID fun(self: dbc.row.VocalUISounds): integer
---@field SetRaceID fun(self: dbc.row.VocalUISounds, value: integer): dbc.row.VocalUISounds
---@field GetNormalSoundID fun(self: dbc.row.VocalUISounds, index?: integer): integer|integer[]
---@field SetNormalSoundID fun(self: dbc.row.VocalUISounds, value: integer|integer[], index?: integer): dbc.row.VocalUISounds
---@field GetPissedSoundID fun(self: dbc.row.VocalUISounds, index?: integer): integer|integer[]
---@field SetPissedSoundID fun(self: dbc.row.VocalUISounds, value: integer|integer[], index?: integer): dbc.row.VocalUISounds

-- Inferred Cross-Table Relations for VocalUISounds

-- Cascading Creation & Relations Engine for VocalUISounds
---@field CreateRelated fun(self: dbc.row.VocalUISounds, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.VocalUISounds, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.VocalUISounds, child_table: string, child_field?: string): any[]

---Typed table handle for VocalUISounds.dbc.
---@class dbc.Table.VocalUISounds : DbcTable
---@field FindById fun(self: dbc.Table.VocalUISounds, id: integer): dbc.row.VocalUISounds|nil
---@field GetById fun(self: dbc.Table.VocalUISounds, id: integer): dbc.row.VocalUISounds|nil
---@field GetRow fun(self: dbc.Table.VocalUISounds, row: integer): dbc.row.VocalUISounds
---@field NewRow fun(self: dbc.Table.VocalUISounds, id?: integer): dbc.row.VocalUISounds
---@field Create fun(self: dbc.Table.VocalUISounds, id?: integer): dbc.row.VocalUISounds
---@field CreateNext fun(self: dbc.Table.VocalUISounds, data?: table): dbc.row.VocalUISounds
---@field CloneRow fun(self: dbc.Table.VocalUISounds, source: integer|dbc.row.VocalUISounds, new_id?: integer): dbc.row.VocalUISounds
---@field GetAllRows fun(self: dbc.Table.VocalUISounds): dbc.row.VocalUISounds[]
---@field Query fun(self: dbc.Table.VocalUISounds): dbc.Query<dbc.row.VocalUISounds>
---@field Rows fun(self: dbc.Table.VocalUISounds): fun(): integer, dbc.row.VocalUISounds
