---@meta
-- Generated LuaLS annotations for MovieVariation.dbc. Do not edit.

---Row representation of MovieVariation.dbc.
---@class dbc.row.MovieVariation : RowProxy
---@field ID integer
---@field MovieID integer
---@field FileDataID integer

-- Fluent PascalCase Methods for MovieVariation
---@field GetID fun(self: dbc.row.MovieVariation): integer
---@field SetID fun(self: dbc.row.MovieVariation, value: integer): dbc.row.MovieVariation
---@field GetMovieID fun(self: dbc.row.MovieVariation): integer
---@field SetMovieID fun(self: dbc.row.MovieVariation, value: integer): dbc.row.MovieVariation
---@field GetFileDataID fun(self: dbc.row.MovieVariation): integer
---@field SetFileDataID fun(self: dbc.row.MovieVariation, value: integer): dbc.row.MovieVariation

-- Inferred Cross-Table Relations for MovieVariation
---@field GetMovie fun(self: dbc.row.MovieVariation): dbc.row.Movie|nil
---@field SetMovie fun(self: dbc.row.MovieVariation, target: dbc.row.Movie|integer): dbc.row.MovieVariation
---@field GetFileData fun(self: dbc.row.MovieVariation): dbc.row.FileData|nil
---@field SetFileData fun(self: dbc.row.MovieVariation, target: dbc.row.FileData|integer): dbc.row.MovieVariation

-- Cascading Creation & Relations Engine for MovieVariation
---@field CreateRelated fun(self: dbc.row.MovieVariation, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.MovieVariation, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.MovieVariation, child_table: string, child_field?: string): any[]

---Typed table handle for MovieVariation.dbc.
---@class dbc.Table.MovieVariation : DbcTable
---@field FindById fun(self: dbc.Table.MovieVariation, id: integer): dbc.row.MovieVariation|nil
---@field GetById fun(self: dbc.Table.MovieVariation, id: integer): dbc.row.MovieVariation|nil
---@field GetRow fun(self: dbc.Table.MovieVariation, row: integer): dbc.row.MovieVariation
---@field NewRow fun(self: dbc.Table.MovieVariation, id?: integer): dbc.row.MovieVariation
---@field Create fun(self: dbc.Table.MovieVariation, id?: integer): dbc.row.MovieVariation
---@field CreateNext fun(self: dbc.Table.MovieVariation, data?: table): dbc.row.MovieVariation
---@field CloneRow fun(self: dbc.Table.MovieVariation, source: integer|dbc.row.MovieVariation, new_id?: integer): dbc.row.MovieVariation
---@field GetAllRows fun(self: dbc.Table.MovieVariation): dbc.row.MovieVariation[]
---@field Query fun(self: dbc.Table.MovieVariation): dbc.Query<dbc.row.MovieVariation>
---@field Rows fun(self: dbc.Table.MovieVariation): fun(): integer, dbc.row.MovieVariation
