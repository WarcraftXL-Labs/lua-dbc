---@meta
-- Generated LuaLS annotations for GMSurveyQuestions.dbc. Do not edit.

---Row representation of GMSurveyQuestions.dbc.
---@class dbc.row.GMSurveyQuestions : RowProxy
---@field ID integer
---@field Question string

-- Fluent PascalCase Methods for GMSurveyQuestions
---@field GetID fun(self: dbc.row.GMSurveyQuestions): integer
---@field SetID fun(self: dbc.row.GMSurveyQuestions, value: integer): dbc.row.GMSurveyQuestions
---@field GetQuestion fun(self: dbc.row.GMSurveyQuestions, locale?: string|integer): string
---@field SetQuestion fun(self: dbc.row.GMSurveyQuestions, value: string, locale?: string|integer): dbc.row.GMSurveyQuestions

-- Inferred Cross-Table Relations for GMSurveyQuestions

-- Cascading Creation & Relations Engine for GMSurveyQuestions
---@field CreateRelated fun(self: dbc.row.GMSurveyQuestions, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.GMSurveyQuestions, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.GMSurveyQuestions, child_table: string, child_field?: string): any[]

---Typed table handle for GMSurveyQuestions.dbc.
---@class dbc.Table.GMSurveyQuestions : DbcTable
---@field FindById fun(self: dbc.Table.GMSurveyQuestions, id: integer): dbc.row.GMSurveyQuestions|nil
---@field GetById fun(self: dbc.Table.GMSurveyQuestions, id: integer): dbc.row.GMSurveyQuestions|nil
---@field GetRow fun(self: dbc.Table.GMSurveyQuestions, row: integer): dbc.row.GMSurveyQuestions
---@field NewRow fun(self: dbc.Table.GMSurveyQuestions, id?: integer): dbc.row.GMSurveyQuestions
---@field Create fun(self: dbc.Table.GMSurveyQuestions, id?: integer): dbc.row.GMSurveyQuestions
---@field CreateNext fun(self: dbc.Table.GMSurveyQuestions, data?: table): dbc.row.GMSurveyQuestions
---@field CloneRow fun(self: dbc.Table.GMSurveyQuestions, source: integer|dbc.row.GMSurveyQuestions, new_id?: integer): dbc.row.GMSurveyQuestions
---@field GetAllRows fun(self: dbc.Table.GMSurveyQuestions): dbc.row.GMSurveyQuestions[]
---@field Query fun(self: dbc.Table.GMSurveyQuestions): dbc.Query<dbc.row.GMSurveyQuestions>
---@field Rows fun(self: dbc.Table.GMSurveyQuestions): fun(): integer, dbc.row.GMSurveyQuestions
