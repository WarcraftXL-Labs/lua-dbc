---@meta
-- Generated LuaLS annotations for SheatheSoundLookups.dbc. Do not edit.

---Row representation of SheatheSoundLookups.dbc.
---@class dbc.row.SheatheSoundLookups : RowProxy
---@field ID integer
---@field ItemClass integer
---@field ItemSubclass integer
---@field ItemEnvTypes integer
---@field IsShield integer
---@field SheathSoundID integer
---@field UnsheathSoundID integer

-- Fluent PascalCase Methods for SheatheSoundLookups
---@field GetID fun(self: dbc.row.SheatheSoundLookups): integer
---@field SetID fun(self: dbc.row.SheatheSoundLookups, value: integer): dbc.row.SheatheSoundLookups
---@field GetItemClass fun(self: dbc.row.SheatheSoundLookups): integer
---@field SetItemClass fun(self: dbc.row.SheatheSoundLookups, value: integer): dbc.row.SheatheSoundLookups
---@field GetItemSubclass fun(self: dbc.row.SheatheSoundLookups): integer
---@field SetItemSubclass fun(self: dbc.row.SheatheSoundLookups, value: integer): dbc.row.SheatheSoundLookups
---@field GetItemEnvTypes fun(self: dbc.row.SheatheSoundLookups): integer
---@field SetItemEnvTypes fun(self: dbc.row.SheatheSoundLookups, value: integer): dbc.row.SheatheSoundLookups
---@field GetIsShield fun(self: dbc.row.SheatheSoundLookups): integer
---@field SetIsShield fun(self: dbc.row.SheatheSoundLookups, value: integer): dbc.row.SheatheSoundLookups
---@field GetSheathSoundID fun(self: dbc.row.SheatheSoundLookups): integer
---@field SetSheathSoundID fun(self: dbc.row.SheatheSoundLookups, value: integer): dbc.row.SheatheSoundLookups
---@field GetUnsheathSoundID fun(self: dbc.row.SheatheSoundLookups): integer
---@field SetUnsheathSoundID fun(self: dbc.row.SheatheSoundLookups, value: integer): dbc.row.SheatheSoundLookups

-- Inferred Cross-Table Relations for SheatheSoundLookups
---@field GetItemClass fun(self: dbc.row.SheatheSoundLookups): dbc.row.ItemClass|nil
---@field SetItemClass fun(self: dbc.row.SheatheSoundLookups, target: dbc.row.ItemClass|integer): dbc.row.SheatheSoundLookups

-- Cascading Creation & Relations Engine for SheatheSoundLookups
---@field CreateRelated fun(self: dbc.row.SheatheSoundLookups, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.SheatheSoundLookups, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.SheatheSoundLookups, child_table: string, child_field?: string): any[]

---Typed table handle for SheatheSoundLookups.dbc.
---@class dbc.Table.SheatheSoundLookups : DbcTable
---@field FindById fun(self: dbc.Table.SheatheSoundLookups, id: integer): dbc.row.SheatheSoundLookups|nil
---@field GetById fun(self: dbc.Table.SheatheSoundLookups, id: integer): dbc.row.SheatheSoundLookups|nil
---@field GetRow fun(self: dbc.Table.SheatheSoundLookups, row: integer): dbc.row.SheatheSoundLookups
---@field NewRow fun(self: dbc.Table.SheatheSoundLookups, id?: integer): dbc.row.SheatheSoundLookups
---@field Create fun(self: dbc.Table.SheatheSoundLookups, id?: integer): dbc.row.SheatheSoundLookups
---@field CreateNext fun(self: dbc.Table.SheatheSoundLookups, data?: table): dbc.row.SheatheSoundLookups
---@field CloneRow fun(self: dbc.Table.SheatheSoundLookups, source: integer|dbc.row.SheatheSoundLookups, new_id?: integer): dbc.row.SheatheSoundLookups
---@field GetAllRows fun(self: dbc.Table.SheatheSoundLookups): dbc.row.SheatheSoundLookups[]
---@field Query fun(self: dbc.Table.SheatheSoundLookups): dbc.Query<dbc.row.SheatheSoundLookups>
---@field Rows fun(self: dbc.Table.SheatheSoundLookups): fun(): integer, dbc.row.SheatheSoundLookups
