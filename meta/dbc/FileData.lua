---@meta
-- Generated LuaLS annotations for FileData.dbc. Do not edit.

---Row representation of FileData.dbc.
---@class dbc.row.FileData : RowProxy
---@field ID integer
---@field Filename string
---@field Filepath string

-- Fluent PascalCase Methods for FileData
---@field GetID fun(self: dbc.row.FileData): integer
---@field SetID fun(self: dbc.row.FileData, value: integer): dbc.row.FileData
---@field GetFilename fun(self: dbc.row.FileData): string
---@field SetFilename fun(self: dbc.row.FileData, value: string): dbc.row.FileData
---@field GetFilepath fun(self: dbc.row.FileData): string
---@field SetFilepath fun(self: dbc.row.FileData, value: string): dbc.row.FileData

-- Inferred Cross-Table Relations for FileData

-- Cascading Creation & Relations Engine for FileData
---@field CreateRelated fun(self: dbc.row.FileData, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.FileData, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.FileData, child_table: string, child_field?: string): any[]

---Typed table handle for FileData.dbc.
---@class dbc.Table.FileData : DbcTable
---@field FindById fun(self: dbc.Table.FileData, id: integer): dbc.row.FileData|nil
---@field GetById fun(self: dbc.Table.FileData, id: integer): dbc.row.FileData|nil
---@field GetRow fun(self: dbc.Table.FileData, row: integer): dbc.row.FileData
---@field NewRow fun(self: dbc.Table.FileData, id?: integer): dbc.row.FileData
---@field Create fun(self: dbc.Table.FileData, id?: integer): dbc.row.FileData
---@field CreateNext fun(self: dbc.Table.FileData, data?: table): dbc.row.FileData
---@field CloneRow fun(self: dbc.Table.FileData, source: integer|dbc.row.FileData, new_id?: integer): dbc.row.FileData
---@field GetAllRows fun(self: dbc.Table.FileData): dbc.row.FileData[]
---@field Query fun(self: dbc.Table.FileData): dbc.Query<dbc.row.FileData>
---@field Rows fun(self: dbc.Table.FileData): fun(): integer, dbc.row.FileData
