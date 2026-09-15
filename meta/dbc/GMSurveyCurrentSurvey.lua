---@meta
-- Generated LuaLS annotations for GMSurveyCurrentSurvey.dbc. Do not edit.

---Row representation of GMSurveyCurrentSurvey.dbc.
---@class dbc.row.GMSurveyCurrentSurvey : RowProxy
---@field ID integer
---@field GMSURVEY_ID integer

-- Fluent PascalCase Methods for GMSurveyCurrentSurvey
---@field GetID fun(self: dbc.row.GMSurveyCurrentSurvey): integer
---@field SetID fun(self: dbc.row.GMSurveyCurrentSurvey, value: integer): dbc.row.GMSurveyCurrentSurvey
---@field GetGMSURVEY_ID fun(self: dbc.row.GMSurveyCurrentSurvey): integer
---@field SetGMSURVEY_ID fun(self: dbc.row.GMSurveyCurrentSurvey, value: integer): dbc.row.GMSurveyCurrentSurvey

-- Inferred Cross-Table Relations for GMSurveyCurrentSurvey

-- Cascading Creation & Relations Engine for GMSurveyCurrentSurvey
---@field CreateRelated fun(self: dbc.row.GMSurveyCurrentSurvey, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.GMSurveyCurrentSurvey, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.GMSurveyCurrentSurvey, child_table: string, child_field?: string): any[]

---Typed table handle for GMSurveyCurrentSurvey.dbc.
---@class dbc.Table.GMSurveyCurrentSurvey : DbcTable
---@field FindById fun(self: dbc.Table.GMSurveyCurrentSurvey, id: integer): dbc.row.GMSurveyCurrentSurvey|nil
---@field GetById fun(self: dbc.Table.GMSurveyCurrentSurvey, id: integer): dbc.row.GMSurveyCurrentSurvey|nil
---@field GetRow fun(self: dbc.Table.GMSurveyCurrentSurvey, row: integer): dbc.row.GMSurveyCurrentSurvey
---@field NewRow fun(self: dbc.Table.GMSurveyCurrentSurvey, id?: integer): dbc.row.GMSurveyCurrentSurvey
---@field Create fun(self: dbc.Table.GMSurveyCurrentSurvey, id?: integer): dbc.row.GMSurveyCurrentSurvey
---@field CreateNext fun(self: dbc.Table.GMSurveyCurrentSurvey, data?: table): dbc.row.GMSurveyCurrentSurvey
---@field CloneRow fun(self: dbc.Table.GMSurveyCurrentSurvey, source: integer|dbc.row.GMSurveyCurrentSurvey, new_id?: integer): dbc.row.GMSurveyCurrentSurvey
---@field GetAllRows fun(self: dbc.Table.GMSurveyCurrentSurvey): dbc.row.GMSurveyCurrentSurvey[]
---@field Query fun(self: dbc.Table.GMSurveyCurrentSurvey): dbc.Query<dbc.row.GMSurveyCurrentSurvey>
---@field Rows fun(self: dbc.Table.GMSurveyCurrentSurvey): fun(): integer, dbc.row.GMSurveyCurrentSurvey
