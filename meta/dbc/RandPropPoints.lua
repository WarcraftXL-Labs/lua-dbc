---@meta
-- Generated LuaLS annotations for RandPropPoints.dbc. Do not edit.

---Row representation of RandPropPoints.dbc.
---@class dbc.row.RandPropPoints : RowProxy
---@field ID integer
---@field Epic integer[]
---@field Superior integer[]
---@field Good integer[]

-- Fluent PascalCase Methods for RandPropPoints
---@field GetID fun(self: dbc.row.RandPropPoints): integer
---@field SetID fun(self: dbc.row.RandPropPoints, value: integer): dbc.row.RandPropPoints
---@field GetEpic fun(self: dbc.row.RandPropPoints, index?: integer): integer|integer[]
---@field SetEpic fun(self: dbc.row.RandPropPoints, value: integer|integer[], index?: integer): dbc.row.RandPropPoints
---@field GetSuperior fun(self: dbc.row.RandPropPoints, index?: integer): integer|integer[]
---@field SetSuperior fun(self: dbc.row.RandPropPoints, value: integer|integer[], index?: integer): dbc.row.RandPropPoints
---@field GetGood fun(self: dbc.row.RandPropPoints, index?: integer): integer|integer[]
---@field SetGood fun(self: dbc.row.RandPropPoints, value: integer|integer[], index?: integer): dbc.row.RandPropPoints

-- Inferred Cross-Table Relations for RandPropPoints

-- Cascading Creation & Relations Engine for RandPropPoints
---@field CreateRelated fun(self: dbc.row.RandPropPoints, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.RandPropPoints, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.RandPropPoints, child_table: string, child_field?: string): any[]

---Typed table handle for RandPropPoints.dbc.
---@class dbc.Table.RandPropPoints : DbcTable
---@field FindById fun(self: dbc.Table.RandPropPoints, id: integer): dbc.row.RandPropPoints|nil
---@field GetById fun(self: dbc.Table.RandPropPoints, id: integer): dbc.row.RandPropPoints|nil
---@field GetRow fun(self: dbc.Table.RandPropPoints, row: integer): dbc.row.RandPropPoints
---@field NewRow fun(self: dbc.Table.RandPropPoints, id?: integer): dbc.row.RandPropPoints
---@field Create fun(self: dbc.Table.RandPropPoints, id?: integer): dbc.row.RandPropPoints
---@field CreateNext fun(self: dbc.Table.RandPropPoints, data?: table): dbc.row.RandPropPoints
---@field CloneRow fun(self: dbc.Table.RandPropPoints, source: integer|dbc.row.RandPropPoints, new_id?: integer): dbc.row.RandPropPoints
---@field GetAllRows fun(self: dbc.Table.RandPropPoints): dbc.row.RandPropPoints[]
---@field Query fun(self: dbc.Table.RandPropPoints): dbc.Query<dbc.row.RandPropPoints>
---@field Rows fun(self: dbc.Table.RandPropPoints): fun(): integer, dbc.row.RandPropPoints
