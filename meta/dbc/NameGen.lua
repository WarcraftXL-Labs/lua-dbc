---@meta
-- Generated LuaLS annotations for NameGen.dbc. Do not edit.

---Row representation of NameGen.dbc.
---@class dbc.row.NameGen : RowProxy
---@field ID integer
---@field Name string
---@field RaceID integer
---@field Sex integer

-- Fluent PascalCase Methods for NameGen
---@field GetID fun(self: dbc.row.NameGen): integer
---@field SetID fun(self: dbc.row.NameGen, value: integer): dbc.row.NameGen
---@field GetName fun(self: dbc.row.NameGen): string
---@field SetName fun(self: dbc.row.NameGen, value: string): dbc.row.NameGen
---@field GetRaceID fun(self: dbc.row.NameGen): integer
---@field SetRaceID fun(self: dbc.row.NameGen, value: integer): dbc.row.NameGen
---@field GetSex fun(self: dbc.row.NameGen): integer
---@field SetSex fun(self: dbc.row.NameGen, value: integer): dbc.row.NameGen

-- Inferred Cross-Table Relations for NameGen

-- Cascading Creation & Relations Engine for NameGen
---@field CreateRelated fun(self: dbc.row.NameGen, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.NameGen, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.NameGen, child_table: string, child_field?: string): any[]

---Typed table handle for NameGen.dbc.
---@class dbc.Table.NameGen : DbcTable
---@field FindById fun(self: dbc.Table.NameGen, id: integer): dbc.row.NameGen|nil
---@field GetById fun(self: dbc.Table.NameGen, id: integer): dbc.row.NameGen|nil
---@field GetRow fun(self: dbc.Table.NameGen, row: integer): dbc.row.NameGen
---@field NewRow fun(self: dbc.Table.NameGen, id?: integer): dbc.row.NameGen
---@field Create fun(self: dbc.Table.NameGen, id?: integer): dbc.row.NameGen
---@field CreateNext fun(self: dbc.Table.NameGen, data?: table): dbc.row.NameGen
---@field CloneRow fun(self: dbc.Table.NameGen, source: integer|dbc.row.NameGen, new_id?: integer): dbc.row.NameGen
---@field GetAllRows fun(self: dbc.Table.NameGen): dbc.row.NameGen[]
---@field Query fun(self: dbc.Table.NameGen): dbc.Query<dbc.row.NameGen>
---@field Rows fun(self: dbc.Table.NameGen): fun(): integer, dbc.row.NameGen
