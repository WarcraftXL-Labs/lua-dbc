---@meta
-- Generated LuaLS annotations for TerraintypeSounds.dbc. Do not edit.

---Row representation of TerraintypeSounds.dbc.
---@class dbc.row.TerraintypeSounds : RowProxy
---@field ID integer

-- Fluent PascalCase Methods for TerraintypeSounds
---@field GetID fun(self: dbc.row.TerraintypeSounds): integer
---@field SetID fun(self: dbc.row.TerraintypeSounds, value: integer): dbc.row.TerraintypeSounds

-- Inferred Cross-Table Relations for TerraintypeSounds

-- Cascading Creation & Relations Engine for TerraintypeSounds
---@field CreateRelated fun(self: dbc.row.TerraintypeSounds, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.TerraintypeSounds, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.TerraintypeSounds, child_table: string, child_field?: string): any[]

---Typed table handle for TerraintypeSounds.dbc.
---@class dbc.Table.TerraintypeSounds : DbcTable
---@field FindById fun(self: dbc.Table.TerraintypeSounds, id: integer): dbc.row.TerraintypeSounds|nil
---@field GetById fun(self: dbc.Table.TerraintypeSounds, id: integer): dbc.row.TerraintypeSounds|nil
---@field GetRow fun(self: dbc.Table.TerraintypeSounds, row: integer): dbc.row.TerraintypeSounds
---@field NewRow fun(self: dbc.Table.TerraintypeSounds, id?: integer): dbc.row.TerraintypeSounds
---@field Create fun(self: dbc.Table.TerraintypeSounds, id?: integer): dbc.row.TerraintypeSounds
---@field CreateNext fun(self: dbc.Table.TerraintypeSounds, data?: table): dbc.row.TerraintypeSounds
---@field CloneRow fun(self: dbc.Table.TerraintypeSounds, source: integer|dbc.row.TerraintypeSounds, new_id?: integer): dbc.row.TerraintypeSounds
---@field GetAllRows fun(self: dbc.Table.TerraintypeSounds): dbc.row.TerraintypeSounds[]
---@field Query fun(self: dbc.Table.TerraintypeSounds): dbc.Query<dbc.row.TerraintypeSounds>
---@field Rows fun(self: dbc.Table.TerraintypeSounds): fun(): integer, dbc.row.TerraintypeSounds
