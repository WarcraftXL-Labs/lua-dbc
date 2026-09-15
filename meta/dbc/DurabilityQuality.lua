---@meta
-- Generated LuaLS annotations for DurabilityQuality.dbc. Do not edit.

---Row representation of DurabilityQuality.dbc.
---@class dbc.row.DurabilityQuality : RowProxy
---@field ID integer
---@field Data number

-- Fluent PascalCase Methods for DurabilityQuality
---@field GetID fun(self: dbc.row.DurabilityQuality): integer
---@field SetID fun(self: dbc.row.DurabilityQuality, value: integer): dbc.row.DurabilityQuality
---@field GetData fun(self: dbc.row.DurabilityQuality): number
---@field SetData fun(self: dbc.row.DurabilityQuality, value: number): dbc.row.DurabilityQuality

-- Inferred Cross-Table Relations for DurabilityQuality

-- Cascading Creation & Relations Engine for DurabilityQuality
---@field CreateRelated fun(self: dbc.row.DurabilityQuality, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.DurabilityQuality, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.DurabilityQuality, child_table: string, child_field?: string): any[]

---Typed table handle for DurabilityQuality.dbc.
---@class dbc.Table.DurabilityQuality : DbcTable
---@field FindById fun(self: dbc.Table.DurabilityQuality, id: integer): dbc.row.DurabilityQuality|nil
---@field GetById fun(self: dbc.Table.DurabilityQuality, id: integer): dbc.row.DurabilityQuality|nil
---@field GetRow fun(self: dbc.Table.DurabilityQuality, row: integer): dbc.row.DurabilityQuality
---@field NewRow fun(self: dbc.Table.DurabilityQuality, id?: integer): dbc.row.DurabilityQuality
---@field Create fun(self: dbc.Table.DurabilityQuality, id?: integer): dbc.row.DurabilityQuality
---@field CreateNext fun(self: dbc.Table.DurabilityQuality, data?: table): dbc.row.DurabilityQuality
---@field CloneRow fun(self: dbc.Table.DurabilityQuality, source: integer|dbc.row.DurabilityQuality, new_id?: integer): dbc.row.DurabilityQuality
---@field GetAllRows fun(self: dbc.Table.DurabilityQuality): dbc.row.DurabilityQuality[]
---@field Query fun(self: dbc.Table.DurabilityQuality): dbc.Query<dbc.row.DurabilityQuality>
---@field Rows fun(self: dbc.Table.DurabilityQuality): fun(): integer, dbc.row.DurabilityQuality
