---@meta
-- Generated LuaLS annotations for Movie.dbc. Do not edit.

---Row representation of Movie.dbc.
---@class dbc.row.Movie : RowProxy
---@field ID integer
---@field Filename string
---@field Volume integer

-- Fluent PascalCase Methods for Movie
---@field GetID fun(self: dbc.row.Movie): integer
---@field SetID fun(self: dbc.row.Movie, value: integer): dbc.row.Movie
---@field GetFilename fun(self: dbc.row.Movie): string
---@field SetFilename fun(self: dbc.row.Movie, value: string): dbc.row.Movie
---@field GetVolume fun(self: dbc.row.Movie): integer
---@field SetVolume fun(self: dbc.row.Movie, value: integer): dbc.row.Movie

-- Inferred Cross-Table Relations for Movie

-- Cascading Creation & Relations Engine for Movie
---@field CreateRelated fun(self: dbc.row.Movie, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.Movie, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.Movie, child_table: string, child_field?: string): any[]

---Typed table handle for Movie.dbc.
---@class dbc.Table.Movie : DbcTable
---@field FindById fun(self: dbc.Table.Movie, id: integer): dbc.row.Movie|nil
---@field GetById fun(self: dbc.Table.Movie, id: integer): dbc.row.Movie|nil
---@field GetRow fun(self: dbc.Table.Movie, row: integer): dbc.row.Movie
---@field NewRow fun(self: dbc.Table.Movie, id?: integer): dbc.row.Movie
---@field Create fun(self: dbc.Table.Movie, id?: integer): dbc.row.Movie
---@field CreateNext fun(self: dbc.Table.Movie, data?: table): dbc.row.Movie
---@field CloneRow fun(self: dbc.Table.Movie, source: integer|dbc.row.Movie, new_id?: integer): dbc.row.Movie
---@field GetAllRows fun(self: dbc.Table.Movie): dbc.row.Movie[]
---@field Query fun(self: dbc.Table.Movie): dbc.Query<dbc.row.Movie>
---@field Rows fun(self: dbc.Table.Movie): fun(): integer, dbc.row.Movie
