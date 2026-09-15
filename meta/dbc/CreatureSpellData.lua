---@meta
-- Generated LuaLS annotations for CreatureSpellData.dbc. Do not edit.

---Row representation of CreatureSpellData.dbc.
---@class dbc.row.CreatureSpellData : RowProxy
---@field ID integer
---@field Spells integer[]
---@field Availability integer[]

-- Fluent PascalCase Methods for CreatureSpellData
---@field GetID fun(self: dbc.row.CreatureSpellData): integer
---@field SetID fun(self: dbc.row.CreatureSpellData, value: integer): dbc.row.CreatureSpellData
---@field GetSpells fun(self: dbc.row.CreatureSpellData, index?: integer): integer|integer[]
---@field SetSpells fun(self: dbc.row.CreatureSpellData, value: integer|integer[], index?: integer): dbc.row.CreatureSpellData
---@field GetAvailability fun(self: dbc.row.CreatureSpellData, index?: integer): integer|integer[]
---@field SetAvailability fun(self: dbc.row.CreatureSpellData, value: integer|integer[], index?: integer): dbc.row.CreatureSpellData

-- Inferred Cross-Table Relations for CreatureSpellData

-- Cascading Creation & Relations Engine for CreatureSpellData
---@field CreateRelated fun(self: dbc.row.CreatureSpellData, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.CreatureSpellData, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.CreatureSpellData, child_table: string, child_field?: string): any[]

---Typed table handle for CreatureSpellData.dbc.
---@class dbc.Table.CreatureSpellData : DbcTable
---@field FindById fun(self: dbc.Table.CreatureSpellData, id: integer): dbc.row.CreatureSpellData|nil
---@field GetById fun(self: dbc.Table.CreatureSpellData, id: integer): dbc.row.CreatureSpellData|nil
---@field GetRow fun(self: dbc.Table.CreatureSpellData, row: integer): dbc.row.CreatureSpellData
---@field NewRow fun(self: dbc.Table.CreatureSpellData, id?: integer): dbc.row.CreatureSpellData
---@field Create fun(self: dbc.Table.CreatureSpellData, id?: integer): dbc.row.CreatureSpellData
---@field CreateNext fun(self: dbc.Table.CreatureSpellData, data?: table): dbc.row.CreatureSpellData
---@field CloneRow fun(self: dbc.Table.CreatureSpellData, source: integer|dbc.row.CreatureSpellData, new_id?: integer): dbc.row.CreatureSpellData
---@field GetAllRows fun(self: dbc.Table.CreatureSpellData): dbc.row.CreatureSpellData[]
---@field Query fun(self: dbc.Table.CreatureSpellData): dbc.Query<dbc.row.CreatureSpellData>
---@field Rows fun(self: dbc.Table.CreatureSpellData): fun(): integer, dbc.row.CreatureSpellData
