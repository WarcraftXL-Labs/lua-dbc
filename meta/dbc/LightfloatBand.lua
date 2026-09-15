---@meta
-- Generated LuaLS annotations for LightfloatBand.dbc. Do not edit.

---Row representation of LightfloatBand.dbc.
---@class dbc.row.LightfloatBand : RowProxy
---@field ID integer
---@field Num integer
---@field Time integer[]
---@field Data number[]

-- Fluent PascalCase Methods for LightfloatBand
---@field GetID fun(self: dbc.row.LightfloatBand): integer
---@field SetID fun(self: dbc.row.LightfloatBand, value: integer): dbc.row.LightfloatBand
---@field GetNum fun(self: dbc.row.LightfloatBand): integer
---@field SetNum fun(self: dbc.row.LightfloatBand, value: integer): dbc.row.LightfloatBand
---@field GetTime fun(self: dbc.row.LightfloatBand, index?: integer): integer|integer[]
---@field SetTime fun(self: dbc.row.LightfloatBand, value: integer|integer[], index?: integer): dbc.row.LightfloatBand
---@field GetData fun(self: dbc.row.LightfloatBand, index?: integer): number|number[]
---@field SetData fun(self: dbc.row.LightfloatBand, value: number|number[], index?: integer): dbc.row.LightfloatBand

-- Inferred Cross-Table Relations for LightfloatBand

-- Cascading Creation & Relations Engine for LightfloatBand
---@field CreateRelated fun(self: dbc.row.LightfloatBand, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.LightfloatBand, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.LightfloatBand, child_table: string, child_field?: string): any[]

---Typed table handle for LightfloatBand.dbc.
---@class dbc.Table.LightfloatBand : DbcTable
---@field FindById fun(self: dbc.Table.LightfloatBand, id: integer): dbc.row.LightfloatBand|nil
---@field GetById fun(self: dbc.Table.LightfloatBand, id: integer): dbc.row.LightfloatBand|nil
---@field GetRow fun(self: dbc.Table.LightfloatBand, row: integer): dbc.row.LightfloatBand
---@field NewRow fun(self: dbc.Table.LightfloatBand, id?: integer): dbc.row.LightfloatBand
---@field Create fun(self: dbc.Table.LightfloatBand, id?: integer): dbc.row.LightfloatBand
---@field CreateNext fun(self: dbc.Table.LightfloatBand, data?: table): dbc.row.LightfloatBand
---@field CloneRow fun(self: dbc.Table.LightfloatBand, source: integer|dbc.row.LightfloatBand, new_id?: integer): dbc.row.LightfloatBand
---@field GetAllRows fun(self: dbc.Table.LightfloatBand): dbc.row.LightfloatBand[]
---@field Query fun(self: dbc.Table.LightfloatBand): dbc.Query<dbc.row.LightfloatBand>
---@field Rows fun(self: dbc.Table.LightfloatBand): fun(): integer, dbc.row.LightfloatBand
