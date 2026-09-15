---@meta
-- Generated LuaLS annotations for MovieFileData.dbc. Do not edit.

---Row representation of MovieFileData.dbc.
---@class dbc.row.MovieFileData : RowProxy
---@field ID integer
---@field Resolution integer

-- Fluent PascalCase Methods for MovieFileData
---@field GetID fun(self: dbc.row.MovieFileData): integer
---@field SetID fun(self: dbc.row.MovieFileData, value: integer): dbc.row.MovieFileData
---@field GetResolution fun(self: dbc.row.MovieFileData): integer
---@field SetResolution fun(self: dbc.row.MovieFileData, value: integer): dbc.row.MovieFileData

-- Inferred Cross-Table Relations for MovieFileData

-- Cascading Creation & Relations Engine for MovieFileData
---@field CreateRelated fun(self: dbc.row.MovieFileData, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.MovieFileData, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.MovieFileData, child_table: string, child_field?: string): any[]

---Typed table handle for MovieFileData.dbc.
---@class dbc.Table.MovieFileData : DbcTable
---@field FindById fun(self: dbc.Table.MovieFileData, id: integer): dbc.row.MovieFileData|nil
---@field GetById fun(self: dbc.Table.MovieFileData, id: integer): dbc.row.MovieFileData|nil
---@field GetRow fun(self: dbc.Table.MovieFileData, row: integer): dbc.row.MovieFileData
---@field NewRow fun(self: dbc.Table.MovieFileData, id?: integer): dbc.row.MovieFileData
---@field Create fun(self: dbc.Table.MovieFileData, id?: integer): dbc.row.MovieFileData
---@field CreateNext fun(self: dbc.Table.MovieFileData, data?: table): dbc.row.MovieFileData
---@field CloneRow fun(self: dbc.Table.MovieFileData, source: integer|dbc.row.MovieFileData, new_id?: integer): dbc.row.MovieFileData
---@field GetAllRows fun(self: dbc.Table.MovieFileData): dbc.row.MovieFileData[]
---@field Query fun(self: dbc.Table.MovieFileData): dbc.Query<dbc.row.MovieFileData>
---@field Rows fun(self: dbc.Table.MovieFileData): fun(): integer, dbc.row.MovieFileData
