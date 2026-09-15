---@meta
-- Generated LuaLS annotations for WeaponImpactSounds.dbc. Do not edit.

---Row representation of WeaponImpactSounds.dbc.
---@class dbc.row.WeaponImpactSounds : RowProxy
---@field ID integer
---@field WeaponSubClassID integer
---@field ParrySoundType integer
---@field ImpactSoundID integer[]
---@field CritImpactSoundID integer[]

-- Fluent PascalCase Methods for WeaponImpactSounds
---@field GetID fun(self: dbc.row.WeaponImpactSounds): integer
---@field SetID fun(self: dbc.row.WeaponImpactSounds, value: integer): dbc.row.WeaponImpactSounds
---@field GetWeaponSubClassID fun(self: dbc.row.WeaponImpactSounds): integer
---@field SetWeaponSubClassID fun(self: dbc.row.WeaponImpactSounds, value: integer): dbc.row.WeaponImpactSounds
---@field GetParrySoundType fun(self: dbc.row.WeaponImpactSounds): integer
---@field SetParrySoundType fun(self: dbc.row.WeaponImpactSounds, value: integer): dbc.row.WeaponImpactSounds
---@field GetImpactSoundID fun(self: dbc.row.WeaponImpactSounds, index?: integer): integer|integer[]
---@field SetImpactSoundID fun(self: dbc.row.WeaponImpactSounds, value: integer|integer[], index?: integer): dbc.row.WeaponImpactSounds
---@field GetCritImpactSoundID fun(self: dbc.row.WeaponImpactSounds, index?: integer): integer|integer[]
---@field SetCritImpactSoundID fun(self: dbc.row.WeaponImpactSounds, value: integer|integer[], index?: integer): dbc.row.WeaponImpactSounds

-- Inferred Cross-Table Relations for WeaponImpactSounds

-- Cascading Creation & Relations Engine for WeaponImpactSounds
---@field CreateRelated fun(self: dbc.row.WeaponImpactSounds, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.WeaponImpactSounds, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.WeaponImpactSounds, child_table: string, child_field?: string): any[]

---Typed table handle for WeaponImpactSounds.dbc.
---@class dbc.Table.WeaponImpactSounds : DbcTable
---@field FindById fun(self: dbc.Table.WeaponImpactSounds, id: integer): dbc.row.WeaponImpactSounds|nil
---@field GetById fun(self: dbc.Table.WeaponImpactSounds, id: integer): dbc.row.WeaponImpactSounds|nil
---@field GetRow fun(self: dbc.Table.WeaponImpactSounds, row: integer): dbc.row.WeaponImpactSounds
---@field NewRow fun(self: dbc.Table.WeaponImpactSounds, id?: integer): dbc.row.WeaponImpactSounds
---@field Create fun(self: dbc.Table.WeaponImpactSounds, id?: integer): dbc.row.WeaponImpactSounds
---@field CreateNext fun(self: dbc.Table.WeaponImpactSounds, data?: table): dbc.row.WeaponImpactSounds
---@field CloneRow fun(self: dbc.Table.WeaponImpactSounds, source: integer|dbc.row.WeaponImpactSounds, new_id?: integer): dbc.row.WeaponImpactSounds
---@field GetAllRows fun(self: dbc.Table.WeaponImpactSounds): dbc.row.WeaponImpactSounds[]
---@field Query fun(self: dbc.Table.WeaponImpactSounds): dbc.Query<dbc.row.WeaponImpactSounds>
---@field Rows fun(self: dbc.Table.WeaponImpactSounds): fun(): integer, dbc.row.WeaponImpactSounds
