---@meta
-- Generated LuaLS annotations for ParticleColor.dbc. Do not edit.

---Row representation of ParticleColor.dbc.
---@class dbc.row.ParticleColor : RowProxy
---@field ID integer
---@field Start integer[]
---@field Mid integer[]
---@field End integer[]

-- Fluent PascalCase Methods for ParticleColor
---@field GetID fun(self: dbc.row.ParticleColor): integer
---@field SetID fun(self: dbc.row.ParticleColor, value: integer): dbc.row.ParticleColor
---@field GetStart fun(self: dbc.row.ParticleColor, index?: integer): integer|integer[]
---@field SetStart fun(self: dbc.row.ParticleColor, value: integer|integer[], index?: integer): dbc.row.ParticleColor
---@field GetMid fun(self: dbc.row.ParticleColor, index?: integer): integer|integer[]
---@field SetMid fun(self: dbc.row.ParticleColor, value: integer|integer[], index?: integer): dbc.row.ParticleColor
---@field GetEnd fun(self: dbc.row.ParticleColor, index?: integer): integer|integer[]
---@field SetEnd fun(self: dbc.row.ParticleColor, value: integer|integer[], index?: integer): dbc.row.ParticleColor

-- Inferred Cross-Table Relations for ParticleColor

-- Cascading Creation & Relations Engine for ParticleColor
---@field CreateRelated fun(self: dbc.row.ParticleColor, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.ParticleColor, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.ParticleColor, child_table: string, child_field?: string): any[]

---Typed table handle for ParticleColor.dbc.
---@class dbc.Table.ParticleColor : DbcTable
---@field FindById fun(self: dbc.Table.ParticleColor, id: integer): dbc.row.ParticleColor|nil
---@field GetById fun(self: dbc.Table.ParticleColor, id: integer): dbc.row.ParticleColor|nil
---@field GetRow fun(self: dbc.Table.ParticleColor, row: integer): dbc.row.ParticleColor
---@field NewRow fun(self: dbc.Table.ParticleColor, id?: integer): dbc.row.ParticleColor
---@field Create fun(self: dbc.Table.ParticleColor, id?: integer): dbc.row.ParticleColor
---@field CreateNext fun(self: dbc.Table.ParticleColor, data?: table): dbc.row.ParticleColor
---@field CloneRow fun(self: dbc.Table.ParticleColor, source: integer|dbc.row.ParticleColor, new_id?: integer): dbc.row.ParticleColor
---@field GetAllRows fun(self: dbc.Table.ParticleColor): dbc.row.ParticleColor[]
---@field Query fun(self: dbc.Table.ParticleColor): dbc.Query<dbc.row.ParticleColor>
---@field Rows fun(self: dbc.Table.ParticleColor): fun(): integer, dbc.row.ParticleColor
