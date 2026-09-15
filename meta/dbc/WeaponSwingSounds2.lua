---@meta
-- Generated LuaLS annotations for WeaponSwingSounds2.dbc. Do not edit.

---Row representation of WeaponSwingSounds2.dbc.
---@class dbc.row.WeaponSwingSounds2 : RowProxy
---@field ID integer
---@field SwingType integer
---@field Crit integer
---@field SoundID integer

-- Fluent PascalCase Methods for WeaponSwingSounds2
---@field GetID fun(self: dbc.row.WeaponSwingSounds2): integer
---@field SetID fun(self: dbc.row.WeaponSwingSounds2, value: integer): dbc.row.WeaponSwingSounds2
---@field GetSwingType fun(self: dbc.row.WeaponSwingSounds2): integer
---@field SetSwingType fun(self: dbc.row.WeaponSwingSounds2, value: integer): dbc.row.WeaponSwingSounds2
---@field GetCrit fun(self: dbc.row.WeaponSwingSounds2): integer
---@field SetCrit fun(self: dbc.row.WeaponSwingSounds2, value: integer): dbc.row.WeaponSwingSounds2
---@field GetSoundID fun(self: dbc.row.WeaponSwingSounds2): integer
---@field SetSoundID fun(self: dbc.row.WeaponSwingSounds2, value: integer): dbc.row.WeaponSwingSounds2

-- Inferred Cross-Table Relations for WeaponSwingSounds2
---@field GetSoundEntries fun(self: dbc.row.WeaponSwingSounds2): dbc.row.SoundEntries|nil
---@field SetSoundEntries fun(self: dbc.row.WeaponSwingSounds2, target: dbc.row.SoundEntries|integer): dbc.row.WeaponSwingSounds2

-- Cascading Creation & Relations Engine for WeaponSwingSounds2
---@field CreateRelated fun(self: dbc.row.WeaponSwingSounds2, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.WeaponSwingSounds2, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.WeaponSwingSounds2, child_table: string, child_field?: string): any[]

---Typed table handle for WeaponSwingSounds2.dbc.
---@class dbc.Table.WeaponSwingSounds2 : DbcTable
---@field FindById fun(self: dbc.Table.WeaponSwingSounds2, id: integer): dbc.row.WeaponSwingSounds2|nil
---@field GetById fun(self: dbc.Table.WeaponSwingSounds2, id: integer): dbc.row.WeaponSwingSounds2|nil
---@field GetRow fun(self: dbc.Table.WeaponSwingSounds2, row: integer): dbc.row.WeaponSwingSounds2
---@field NewRow fun(self: dbc.Table.WeaponSwingSounds2, id?: integer): dbc.row.WeaponSwingSounds2
---@field Create fun(self: dbc.Table.WeaponSwingSounds2, id?: integer): dbc.row.WeaponSwingSounds2
---@field CreateNext fun(self: dbc.Table.WeaponSwingSounds2, data?: table): dbc.row.WeaponSwingSounds2
---@field CloneRow fun(self: dbc.Table.WeaponSwingSounds2, source: integer|dbc.row.WeaponSwingSounds2, new_id?: integer): dbc.row.WeaponSwingSounds2
---@field GetAllRows fun(self: dbc.Table.WeaponSwingSounds2): dbc.row.WeaponSwingSounds2[]
---@field Query fun(self: dbc.Table.WeaponSwingSounds2): dbc.Query<dbc.row.WeaponSwingSounds2>
---@field Rows fun(self: dbc.Table.WeaponSwingSounds2): fun(): integer, dbc.row.WeaponSwingSounds2
