---@meta
-- Generated LuaLS annotations for OverrideSpellData.dbc. Do not edit.

---Row representation of OverrideSpellData.dbc.
---@class dbc.row.OverrideSpellData : RowProxy
---@field ID integer
---@field Spells integer[]
---@field Flags integer

-- Fluent PascalCase Methods for OverrideSpellData
---@field GetID fun(self: dbc.row.OverrideSpellData): integer
---@field SetID fun(self: dbc.row.OverrideSpellData, value: integer): dbc.row.OverrideSpellData
---@field GetSpells fun(self: dbc.row.OverrideSpellData, index?: integer): integer|integer[]
---@field SetSpells fun(self: dbc.row.OverrideSpellData, value: integer|integer[], index?: integer): dbc.row.OverrideSpellData
---@field GetFlags fun(self: dbc.row.OverrideSpellData): integer
---@field SetFlags fun(self: dbc.row.OverrideSpellData, value: integer): dbc.row.OverrideSpellData
---@field HasFlags fun(self: dbc.row.OverrideSpellData, flag: integer): boolean
---@field AddFlags fun(self: dbc.row.OverrideSpellData, flag: integer): dbc.row.OverrideSpellData
---@field RemoveFlags fun(self: dbc.row.OverrideSpellData, flag: integer): dbc.row.OverrideSpellData

-- Inferred Cross-Table Relations for OverrideSpellData

-- Cascading Creation & Relations Engine for OverrideSpellData
---@field CreateRelated fun(self: dbc.row.OverrideSpellData, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.OverrideSpellData, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.OverrideSpellData, child_table: string, child_field?: string): any[]

---Typed table handle for OverrideSpellData.dbc.
---@class dbc.Table.OverrideSpellData : DbcTable
---@field FindById fun(self: dbc.Table.OverrideSpellData, id: integer): dbc.row.OverrideSpellData|nil
---@field GetById fun(self: dbc.Table.OverrideSpellData, id: integer): dbc.row.OverrideSpellData|nil
---@field GetRow fun(self: dbc.Table.OverrideSpellData, row: integer): dbc.row.OverrideSpellData
---@field NewRow fun(self: dbc.Table.OverrideSpellData, id?: integer): dbc.row.OverrideSpellData
---@field Create fun(self: dbc.Table.OverrideSpellData, id?: integer): dbc.row.OverrideSpellData
---@field CreateNext fun(self: dbc.Table.OverrideSpellData, data?: table): dbc.row.OverrideSpellData
---@field CloneRow fun(self: dbc.Table.OverrideSpellData, source: integer|dbc.row.OverrideSpellData, new_id?: integer): dbc.row.OverrideSpellData
---@field GetAllRows fun(self: dbc.Table.OverrideSpellData): dbc.row.OverrideSpellData[]
---@field Query fun(self: dbc.Table.OverrideSpellData): dbc.Query<dbc.row.OverrideSpellData>
---@field Rows fun(self: dbc.Table.OverrideSpellData): fun(): integer, dbc.row.OverrideSpellData
