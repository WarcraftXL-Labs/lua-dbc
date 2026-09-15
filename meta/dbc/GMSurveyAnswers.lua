---@meta
-- Generated LuaLS annotations for GMSurveyAnswers.dbc. Do not edit.

---Row representation of GMSurveyAnswers.dbc.
---@class dbc.row.GMSurveyAnswers : RowProxy
---@field ID integer
---@field Sort_Index integer
---@field GMSurveyQuestionID integer
---@field Answer string

-- Fluent PascalCase Methods for GMSurveyAnswers
---@field GetID fun(self: dbc.row.GMSurveyAnswers): integer
---@field SetID fun(self: dbc.row.GMSurveyAnswers, value: integer): dbc.row.GMSurveyAnswers
---@field GetSort_Index fun(self: dbc.row.GMSurveyAnswers): integer
---@field SetSort_Index fun(self: dbc.row.GMSurveyAnswers, value: integer): dbc.row.GMSurveyAnswers
---@field GetGMSurveyQuestionID fun(self: dbc.row.GMSurveyAnswers): integer
---@field SetGMSurveyQuestionID fun(self: dbc.row.GMSurveyAnswers, value: integer): dbc.row.GMSurveyAnswers
---@field GetAnswer fun(self: dbc.row.GMSurveyAnswers, locale?: string|integer): string
---@field SetAnswer fun(self: dbc.row.GMSurveyAnswers, value: string, locale?: string|integer): dbc.row.GMSurveyAnswers

-- Inferred Cross-Table Relations for GMSurveyAnswers

-- Cascading Creation & Relations Engine for GMSurveyAnswers
---@field CreateRelated fun(self: dbc.row.GMSurveyAnswers, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.GMSurveyAnswers, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.GMSurveyAnswers, child_table: string, child_field?: string): any[]

---Typed table handle for GMSurveyAnswers.dbc.
---@class dbc.Table.GMSurveyAnswers : DbcTable
---@field FindById fun(self: dbc.Table.GMSurveyAnswers, id: integer): dbc.row.GMSurveyAnswers|nil
---@field GetById fun(self: dbc.Table.GMSurveyAnswers, id: integer): dbc.row.GMSurveyAnswers|nil
---@field GetRow fun(self: dbc.Table.GMSurveyAnswers, row: integer): dbc.row.GMSurveyAnswers
---@field NewRow fun(self: dbc.Table.GMSurveyAnswers, id?: integer): dbc.row.GMSurveyAnswers
---@field Create fun(self: dbc.Table.GMSurveyAnswers, id?: integer): dbc.row.GMSurveyAnswers
---@field CreateNext fun(self: dbc.Table.GMSurveyAnswers, data?: table): dbc.row.GMSurveyAnswers
---@field CloneRow fun(self: dbc.Table.GMSurveyAnswers, source: integer|dbc.row.GMSurveyAnswers, new_id?: integer): dbc.row.GMSurveyAnswers
---@field GetAllRows fun(self: dbc.Table.GMSurveyAnswers): dbc.row.GMSurveyAnswers[]
---@field Query fun(self: dbc.Table.GMSurveyAnswers): dbc.Query<dbc.row.GMSurveyAnswers>
---@field Rows fun(self: dbc.Table.GMSurveyAnswers): fun(): integer, dbc.row.GMSurveyAnswers
