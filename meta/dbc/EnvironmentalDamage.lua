---@meta
-- Generated LuaLS annotations for EnvironmentalDamage.dbc. Do not edit.

---Row representation of EnvironmentalDamage.dbc.
---@class dbc.row.EnvironmentalDamage : RowProxy
---@field ID integer
---@field EnumID integer
---@field VisualkitID integer

-- Fluent PascalCase Methods for EnvironmentalDamage
---@field GetID fun(self: dbc.row.EnvironmentalDamage): integer
---@field SetID fun(self: dbc.row.EnvironmentalDamage, value: integer): dbc.row.EnvironmentalDamage
---@field GetEnumID fun(self: dbc.row.EnvironmentalDamage): integer
---@field SetEnumID fun(self: dbc.row.EnvironmentalDamage, value: integer): dbc.row.EnvironmentalDamage
---@field GetVisualkitID fun(self: dbc.row.EnvironmentalDamage): integer
---@field SetVisualkitID fun(self: dbc.row.EnvironmentalDamage, value: integer): dbc.row.EnvironmentalDamage

-- Inferred Cross-Table Relations for EnvironmentalDamage

-- Cascading Creation & Relations Engine for EnvironmentalDamage
---@field CreateRelated fun(self: dbc.row.EnvironmentalDamage, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.EnvironmentalDamage, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.EnvironmentalDamage, child_table: string, child_field?: string): any[]

---Typed table handle for EnvironmentalDamage.dbc.
---@class dbc.Table.EnvironmentalDamage : DbcTable
---@field FindById fun(self: dbc.Table.EnvironmentalDamage, id: integer): dbc.row.EnvironmentalDamage|nil
---@field GetById fun(self: dbc.Table.EnvironmentalDamage, id: integer): dbc.row.EnvironmentalDamage|nil
---@field GetRow fun(self: dbc.Table.EnvironmentalDamage, row: integer): dbc.row.EnvironmentalDamage
---@field NewRow fun(self: dbc.Table.EnvironmentalDamage, id?: integer): dbc.row.EnvironmentalDamage
---@field Create fun(self: dbc.Table.EnvironmentalDamage, id?: integer): dbc.row.EnvironmentalDamage
---@field CreateNext fun(self: dbc.Table.EnvironmentalDamage, data?: table): dbc.row.EnvironmentalDamage
---@field CloneRow fun(self: dbc.Table.EnvironmentalDamage, source: integer|dbc.row.EnvironmentalDamage, new_id?: integer): dbc.row.EnvironmentalDamage
---@field GetAllRows fun(self: dbc.Table.EnvironmentalDamage): dbc.row.EnvironmentalDamage[]
---@field Query fun(self: dbc.Table.EnvironmentalDamage): dbc.Query<dbc.row.EnvironmentalDamage>
---@field Rows fun(self: dbc.Table.EnvironmentalDamage): fun(): integer, dbc.row.EnvironmentalDamage
