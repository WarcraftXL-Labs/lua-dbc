---@meta
-- Generated LuaLS annotations for GtNPCManaCostScaler.dbc. Do not edit.

---Row representation of GtNPCManaCostScaler.dbc.
---@class dbc.row.GtNPCManaCostScaler : RowProxy
---@field Data number

-- Fluent PascalCase Methods for GtNPCManaCostScaler
---@field GetData fun(self: dbc.row.GtNPCManaCostScaler): number
---@field SetData fun(self: dbc.row.GtNPCManaCostScaler, value: number): dbc.row.GtNPCManaCostScaler

-- Inferred Cross-Table Relations for GtNPCManaCostScaler

-- Cascading Creation & Relations Engine for GtNPCManaCostScaler
---@field CreateRelated fun(self: dbc.row.GtNPCManaCostScaler, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.GtNPCManaCostScaler, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.GtNPCManaCostScaler, child_table: string, child_field?: string): any[]

---Typed table handle for GtNPCManaCostScaler.dbc.
---@class dbc.Table.GtNPCManaCostScaler : DbcTable
---@field FindById fun(self: dbc.Table.GtNPCManaCostScaler, id: integer): dbc.row.GtNPCManaCostScaler|nil
---@field GetById fun(self: dbc.Table.GtNPCManaCostScaler, id: integer): dbc.row.GtNPCManaCostScaler|nil
---@field GetRow fun(self: dbc.Table.GtNPCManaCostScaler, row: integer): dbc.row.GtNPCManaCostScaler
---@field NewRow fun(self: dbc.Table.GtNPCManaCostScaler, id?: integer): dbc.row.GtNPCManaCostScaler
---@field Create fun(self: dbc.Table.GtNPCManaCostScaler, id?: integer): dbc.row.GtNPCManaCostScaler
---@field CreateNext fun(self: dbc.Table.GtNPCManaCostScaler, data?: table): dbc.row.GtNPCManaCostScaler
---@field CloneRow fun(self: dbc.Table.GtNPCManaCostScaler, source: integer|dbc.row.GtNPCManaCostScaler, new_id?: integer): dbc.row.GtNPCManaCostScaler
---@field GetAllRows fun(self: dbc.Table.GtNPCManaCostScaler): dbc.row.GtNPCManaCostScaler[]
---@field Query fun(self: dbc.Table.GtNPCManaCostScaler): dbc.Query<dbc.row.GtNPCManaCostScaler>
---@field Rows fun(self: dbc.Table.GtNPCManaCostScaler): fun(): integer, dbc.row.GtNPCManaCostScaler
