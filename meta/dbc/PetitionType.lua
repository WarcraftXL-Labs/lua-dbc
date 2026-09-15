---@meta
-- Generated LuaLS annotations for PetitionType.dbc. Do not edit.

---Row representation of PetitionType.dbc.
---@class dbc.row.PetitionType : RowProxy
---@field ID integer
---@field RefName integer
---@field Field02 integer

-- Fluent PascalCase Methods for PetitionType
---@field GetID fun(self: dbc.row.PetitionType): integer
---@field SetID fun(self: dbc.row.PetitionType, value: integer): dbc.row.PetitionType
---@field GetRefName fun(self: dbc.row.PetitionType): integer
---@field SetRefName fun(self: dbc.row.PetitionType, value: integer): dbc.row.PetitionType
---@field GetField02 fun(self: dbc.row.PetitionType): integer
---@field SetField02 fun(self: dbc.row.PetitionType, value: integer): dbc.row.PetitionType

-- Inferred Cross-Table Relations for PetitionType

-- Cascading Creation & Relations Engine for PetitionType
---@field CreateRelated fun(self: dbc.row.PetitionType, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.PetitionType, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.PetitionType, child_table: string, child_field?: string): any[]

---Typed table handle for PetitionType.dbc.
---@class dbc.Table.PetitionType : DbcTable
---@field FindById fun(self: dbc.Table.PetitionType, id: integer): dbc.row.PetitionType|nil
---@field GetById fun(self: dbc.Table.PetitionType, id: integer): dbc.row.PetitionType|nil
---@field GetRow fun(self: dbc.Table.PetitionType, row: integer): dbc.row.PetitionType
---@field NewRow fun(self: dbc.Table.PetitionType, id?: integer): dbc.row.PetitionType
---@field Create fun(self: dbc.Table.PetitionType, id?: integer): dbc.row.PetitionType
---@field CreateNext fun(self: dbc.Table.PetitionType, data?: table): dbc.row.PetitionType
---@field CloneRow fun(self: dbc.Table.PetitionType, source: integer|dbc.row.PetitionType, new_id?: integer): dbc.row.PetitionType
---@field GetAllRows fun(self: dbc.Table.PetitionType): dbc.row.PetitionType[]
---@field Query fun(self: dbc.Table.PetitionType): dbc.Query<dbc.row.PetitionType>
---@field Rows fun(self: dbc.Table.PetitionType): fun(): integer, dbc.row.PetitionType
