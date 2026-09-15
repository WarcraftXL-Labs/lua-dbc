---@meta
-- Generated LuaLS annotations for LightintBand.dbc. Do not edit.

---Row representation of LightintBand.dbc.
---@class dbc.row.LightintBand : RowProxy
---@field ID integer
---@field Num integer
---@field Time integer[]
---@field Data integer[]

-- Fluent PascalCase Methods for LightintBand
---@field GetID fun(self: dbc.row.LightintBand): integer
---@field SetID fun(self: dbc.row.LightintBand, value: integer): dbc.row.LightintBand
---@field GetNum fun(self: dbc.row.LightintBand): integer
---@field SetNum fun(self: dbc.row.LightintBand, value: integer): dbc.row.LightintBand
---@field GetTime fun(self: dbc.row.LightintBand, index?: integer): integer|integer[]
---@field SetTime fun(self: dbc.row.LightintBand, value: integer|integer[], index?: integer): dbc.row.LightintBand
---@field GetData fun(self: dbc.row.LightintBand, index?: integer): integer|integer[]
---@field SetData fun(self: dbc.row.LightintBand, value: integer|integer[], index?: integer): dbc.row.LightintBand

-- Inferred Cross-Table Relations for LightintBand

-- Cascading Creation & Relations Engine for LightintBand
---@field CreateRelated fun(self: dbc.row.LightintBand, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.LightintBand, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.LightintBand, child_table: string, child_field?: string): any[]

---Typed table handle for LightintBand.dbc.
---@class dbc.Table.LightintBand : DbcTable
---@field FindById fun(self: dbc.Table.LightintBand, id: integer): dbc.row.LightintBand|nil
---@field GetById fun(self: dbc.Table.LightintBand, id: integer): dbc.row.LightintBand|nil
---@field GetRow fun(self: dbc.Table.LightintBand, row: integer): dbc.row.LightintBand
---@field NewRow fun(self: dbc.Table.LightintBand, id?: integer): dbc.row.LightintBand
---@field Create fun(self: dbc.Table.LightintBand, id?: integer): dbc.row.LightintBand
---@field CreateNext fun(self: dbc.Table.LightintBand, data?: table): dbc.row.LightintBand
---@field CloneRow fun(self: dbc.Table.LightintBand, source: integer|dbc.row.LightintBand, new_id?: integer): dbc.row.LightintBand
---@field GetAllRows fun(self: dbc.Table.LightintBand): dbc.row.LightintBand[]
---@field Query fun(self: dbc.Table.LightintBand): dbc.Query<dbc.row.LightintBand>
---@field Rows fun(self: dbc.Table.LightintBand): fun(): integer, dbc.row.LightintBand
