---@meta
-- Generated LuaLS annotations for DurabilityCosts.dbc. Do not edit.

---Row representation of DurabilityCosts.dbc.
---@class dbc.row.DurabilityCosts : RowProxy
---@field ID integer
---@field WeaponSubClassCost integer[]
---@field ArmorSubClassCost integer[]

-- Fluent PascalCase Methods for DurabilityCosts
---@field GetID fun(self: dbc.row.DurabilityCosts): integer
---@field SetID fun(self: dbc.row.DurabilityCosts, value: integer): dbc.row.DurabilityCosts
---@field GetWeaponSubClassCost fun(self: dbc.row.DurabilityCosts, index?: integer): integer|integer[]
---@field SetWeaponSubClassCost fun(self: dbc.row.DurabilityCosts, value: integer|integer[], index?: integer): dbc.row.DurabilityCosts
---@field GetArmorSubClassCost fun(self: dbc.row.DurabilityCosts, index?: integer): integer|integer[]
---@field SetArmorSubClassCost fun(self: dbc.row.DurabilityCosts, value: integer|integer[], index?: integer): dbc.row.DurabilityCosts

-- Inferred Cross-Table Relations for DurabilityCosts

-- Cascading Creation & Relations Engine for DurabilityCosts
---@field CreateRelated fun(self: dbc.row.DurabilityCosts, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.DurabilityCosts, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.DurabilityCosts, child_table: string, child_field?: string): any[]

---Typed table handle for DurabilityCosts.dbc.
---@class dbc.Table.DurabilityCosts : DbcTable
---@field FindById fun(self: dbc.Table.DurabilityCosts, id: integer): dbc.row.DurabilityCosts|nil
---@field GetById fun(self: dbc.Table.DurabilityCosts, id: integer): dbc.row.DurabilityCosts|nil
---@field GetRow fun(self: dbc.Table.DurabilityCosts, row: integer): dbc.row.DurabilityCosts
---@field NewRow fun(self: dbc.Table.DurabilityCosts, id?: integer): dbc.row.DurabilityCosts
---@field Create fun(self: dbc.Table.DurabilityCosts, id?: integer): dbc.row.DurabilityCosts
---@field CreateNext fun(self: dbc.Table.DurabilityCosts, data?: table): dbc.row.DurabilityCosts
---@field CloneRow fun(self: dbc.Table.DurabilityCosts, source: integer|dbc.row.DurabilityCosts, new_id?: integer): dbc.row.DurabilityCosts
---@field GetAllRows fun(self: dbc.Table.DurabilityCosts): dbc.row.DurabilityCosts[]
---@field Query fun(self: dbc.Table.DurabilityCosts): dbc.Query<dbc.row.DurabilityCosts>
---@field Rows fun(self: dbc.Table.DurabilityCosts): fun(): integer, dbc.row.DurabilityCosts
