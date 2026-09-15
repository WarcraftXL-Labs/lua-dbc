---@meta
-- Generated LuaLS annotations for GMSurveySurveys.dbc. Do not edit.

---Row representation of GMSurveySurveys.dbc.
---@class dbc.row.GMSurveySurveys : RowProxy
---@field ID integer
---@field Q integer[]

-- Fluent PascalCase Methods for GMSurveySurveys
---@field GetID fun(self: dbc.row.GMSurveySurveys): integer
---@field SetID fun(self: dbc.row.GMSurveySurveys, value: integer): dbc.row.GMSurveySurveys
---@field GetQ fun(self: dbc.row.GMSurveySurveys, index?: integer): integer|integer[]
---@field SetQ fun(self: dbc.row.GMSurveySurveys, value: integer|integer[], index?: integer): dbc.row.GMSurveySurveys

-- Inferred Cross-Table Relations for GMSurveySurveys

-- Cascading Creation & Relations Engine for GMSurveySurveys
---@field CreateRelated fun(self: dbc.row.GMSurveySurveys, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.GMSurveySurveys, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.GMSurveySurveys, child_table: string, child_field?: string): any[]

---Typed table handle for GMSurveySurveys.dbc.
---@class dbc.Table.GMSurveySurveys : DbcTable
---@field FindById fun(self: dbc.Table.GMSurveySurveys, id: integer): dbc.row.GMSurveySurveys|nil
---@field GetById fun(self: dbc.Table.GMSurveySurveys, id: integer): dbc.row.GMSurveySurveys|nil
---@field GetRow fun(self: dbc.Table.GMSurveySurveys, row: integer): dbc.row.GMSurveySurveys
---@field NewRow fun(self: dbc.Table.GMSurveySurveys, id?: integer): dbc.row.GMSurveySurveys
---@field Create fun(self: dbc.Table.GMSurveySurveys, id?: integer): dbc.row.GMSurveySurveys
---@field CreateNext fun(self: dbc.Table.GMSurveySurveys, data?: table): dbc.row.GMSurveySurveys
---@field CloneRow fun(self: dbc.Table.GMSurveySurveys, source: integer|dbc.row.GMSurveySurveys, new_id?: integer): dbc.row.GMSurveySurveys
---@field GetAllRows fun(self: dbc.Table.GMSurveySurveys): dbc.row.GMSurveySurveys[]
---@field Query fun(self: dbc.Table.GMSurveySurveys): dbc.Query<dbc.row.GMSurveySurveys>
---@field Rows fun(self: dbc.Table.GMSurveySurveys): fun(): integer, dbc.row.GMSurveySurveys
