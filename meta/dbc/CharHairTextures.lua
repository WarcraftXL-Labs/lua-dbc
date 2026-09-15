---@meta
-- Generated LuaLS annotations for CharHairTextures.dbc. Do not edit.

---Row representation of CharHairTextures.dbc.
---@class dbc.row.CharHairTextures : RowProxy
---@field ID integer
---@field Race integer
---@field Gender boolean
---@field Field03 boolean
---@field Field04 integer[]

-- Fluent PascalCase Methods for CharHairTextures
---@field GetID fun(self: dbc.row.CharHairTextures): integer
---@field SetID fun(self: dbc.row.CharHairTextures, value: integer): dbc.row.CharHairTextures
---@field GetRace fun(self: dbc.row.CharHairTextures): integer
---@field SetRace fun(self: dbc.row.CharHairTextures, value: integer): dbc.row.CharHairTextures
---@field GetGender fun(self: dbc.row.CharHairTextures): boolean
---@field SetGender fun(self: dbc.row.CharHairTextures, value: boolean): dbc.row.CharHairTextures
---@field GetField03 fun(self: dbc.row.CharHairTextures): boolean
---@field SetField03 fun(self: dbc.row.CharHairTextures, value: boolean): dbc.row.CharHairTextures
---@field GetField04 fun(self: dbc.row.CharHairTextures, index?: integer): integer|integer[]
---@field SetField04 fun(self: dbc.row.CharHairTextures, value: integer|integer[], index?: integer): dbc.row.CharHairTextures

-- Inferred Cross-Table Relations for CharHairTextures

-- Cascading Creation & Relations Engine for CharHairTextures
---@field CreateRelated fun(self: dbc.row.CharHairTextures, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.CharHairTextures, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.CharHairTextures, child_table: string, child_field?: string): any[]

---Typed table handle for CharHairTextures.dbc.
---@class dbc.Table.CharHairTextures : DbcTable
---@field FindById fun(self: dbc.Table.CharHairTextures, id: integer): dbc.row.CharHairTextures|nil
---@field GetById fun(self: dbc.Table.CharHairTextures, id: integer): dbc.row.CharHairTextures|nil
---@field GetRow fun(self: dbc.Table.CharHairTextures, row: integer): dbc.row.CharHairTextures
---@field NewRow fun(self: dbc.Table.CharHairTextures, id?: integer): dbc.row.CharHairTextures
---@field Create fun(self: dbc.Table.CharHairTextures, id?: integer): dbc.row.CharHairTextures
---@field CreateNext fun(self: dbc.Table.CharHairTextures, data?: table): dbc.row.CharHairTextures
---@field CloneRow fun(self: dbc.Table.CharHairTextures, source: integer|dbc.row.CharHairTextures, new_id?: integer): dbc.row.CharHairTextures
---@field GetAllRows fun(self: dbc.Table.CharHairTextures): dbc.row.CharHairTextures[]
---@field Query fun(self: dbc.Table.CharHairTextures): dbc.Query<dbc.row.CharHairTextures>
---@field Rows fun(self: dbc.Table.CharHairTextures): fun(): integer, dbc.row.CharHairTextures
