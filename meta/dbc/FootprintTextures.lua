---@meta
-- Generated LuaLS annotations for FootprintTextures.dbc. Do not edit.

---Row representation of FootprintTextures.dbc.
---@class dbc.row.FootprintTextures : RowProxy
---@field ID integer
---@field FootstepFilename string

-- Fluent PascalCase Methods for FootprintTextures
---@field GetID fun(self: dbc.row.FootprintTextures): integer
---@field SetID fun(self: dbc.row.FootprintTextures, value: integer): dbc.row.FootprintTextures
---@field GetFootstepFilename fun(self: dbc.row.FootprintTextures): string
---@field SetFootstepFilename fun(self: dbc.row.FootprintTextures, value: string): dbc.row.FootprintTextures

-- Inferred Cross-Table Relations for FootprintTextures

-- Cascading Creation & Relations Engine for FootprintTextures
---@field CreateRelated fun(self: dbc.row.FootprintTextures, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.FootprintTextures, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.FootprintTextures, child_table: string, child_field?: string): any[]

---Typed table handle for FootprintTextures.dbc.
---@class dbc.Table.FootprintTextures : DbcTable
---@field FindById fun(self: dbc.Table.FootprintTextures, id: integer): dbc.row.FootprintTextures|nil
---@field GetById fun(self: dbc.Table.FootprintTextures, id: integer): dbc.row.FootprintTextures|nil
---@field GetRow fun(self: dbc.Table.FootprintTextures, row: integer): dbc.row.FootprintTextures
---@field NewRow fun(self: dbc.Table.FootprintTextures, id?: integer): dbc.row.FootprintTextures
---@field Create fun(self: dbc.Table.FootprintTextures, id?: integer): dbc.row.FootprintTextures
---@field CreateNext fun(self: dbc.Table.FootprintTextures, data?: table): dbc.row.FootprintTextures
---@field CloneRow fun(self: dbc.Table.FootprintTextures, source: integer|dbc.row.FootprintTextures, new_id?: integer): dbc.row.FootprintTextures
---@field GetAllRows fun(self: dbc.Table.FootprintTextures): dbc.row.FootprintTextures[]
---@field Query fun(self: dbc.Table.FootprintTextures): dbc.Query<dbc.row.FootprintTextures>
---@field Rows fun(self: dbc.Table.FootprintTextures): fun(): integer, dbc.row.FootprintTextures
