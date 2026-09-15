---@meta
-- Generated LuaLS annotations for TeamContributionPoints.dbc. Do not edit.

---Row representation of TeamContributionPoints.dbc.
---@class dbc.row.TeamContributionPoints : RowProxy
---@field ID integer
---@field Data number

-- Fluent PascalCase Methods for TeamContributionPoints
---@field GetID fun(self: dbc.row.TeamContributionPoints): integer
---@field SetID fun(self: dbc.row.TeamContributionPoints, value: integer): dbc.row.TeamContributionPoints
---@field GetData fun(self: dbc.row.TeamContributionPoints): number
---@field SetData fun(self: dbc.row.TeamContributionPoints, value: number): dbc.row.TeamContributionPoints

-- Inferred Cross-Table Relations for TeamContributionPoints

-- Cascading Creation & Relations Engine for TeamContributionPoints
---@field CreateRelated fun(self: dbc.row.TeamContributionPoints, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.TeamContributionPoints, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.TeamContributionPoints, child_table: string, child_field?: string): any[]

---Typed table handle for TeamContributionPoints.dbc.
---@class dbc.Table.TeamContributionPoints : DbcTable
---@field FindById fun(self: dbc.Table.TeamContributionPoints, id: integer): dbc.row.TeamContributionPoints|nil
---@field GetById fun(self: dbc.Table.TeamContributionPoints, id: integer): dbc.row.TeamContributionPoints|nil
---@field GetRow fun(self: dbc.Table.TeamContributionPoints, row: integer): dbc.row.TeamContributionPoints
---@field NewRow fun(self: dbc.Table.TeamContributionPoints, id?: integer): dbc.row.TeamContributionPoints
---@field Create fun(self: dbc.Table.TeamContributionPoints, id?: integer): dbc.row.TeamContributionPoints
---@field CreateNext fun(self: dbc.Table.TeamContributionPoints, data?: table): dbc.row.TeamContributionPoints
---@field CloneRow fun(self: dbc.Table.TeamContributionPoints, source: integer|dbc.row.TeamContributionPoints, new_id?: integer): dbc.row.TeamContributionPoints
---@field GetAllRows fun(self: dbc.Table.TeamContributionPoints): dbc.row.TeamContributionPoints[]
---@field Query fun(self: dbc.Table.TeamContributionPoints): dbc.Query<dbc.row.TeamContributionPoints>
---@field Rows fun(self: dbc.Table.TeamContributionPoints): fun(): integer, dbc.row.TeamContributionPoints
