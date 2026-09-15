---@meta
-- Generated LuaLS annotations for Exhaustion.dbc. Do not edit.

---Row representation of Exhaustion.dbc.
---@class dbc.row.Exhaustion : RowProxy
---@field ID integer
---@field Xp integer
---@field Factor number
---@field OutdoorHours number
---@field InnHours number
---@field Name string
---@field Threshold number

-- Fluent PascalCase Methods for Exhaustion
---@field GetID fun(self: dbc.row.Exhaustion): integer
---@field SetID fun(self: dbc.row.Exhaustion, value: integer): dbc.row.Exhaustion
---@field GetXp fun(self: dbc.row.Exhaustion): integer
---@field SetXp fun(self: dbc.row.Exhaustion, value: integer): dbc.row.Exhaustion
---@field GetFactor fun(self: dbc.row.Exhaustion): number
---@field SetFactor fun(self: dbc.row.Exhaustion, value: number): dbc.row.Exhaustion
---@field GetOutdoorHours fun(self: dbc.row.Exhaustion): number
---@field SetOutdoorHours fun(self: dbc.row.Exhaustion, value: number): dbc.row.Exhaustion
---@field GetInnHours fun(self: dbc.row.Exhaustion): number
---@field SetInnHours fun(self: dbc.row.Exhaustion, value: number): dbc.row.Exhaustion
---@field GetName fun(self: dbc.row.Exhaustion, locale?: string|integer): string
---@field SetName fun(self: dbc.row.Exhaustion, value: string, locale?: string|integer): dbc.row.Exhaustion
---@field GetThreshold fun(self: dbc.row.Exhaustion): number
---@field SetThreshold fun(self: dbc.row.Exhaustion, value: number): dbc.row.Exhaustion

-- Inferred Cross-Table Relations for Exhaustion

-- Cascading Creation & Relations Engine for Exhaustion
---@field CreateRelated fun(self: dbc.row.Exhaustion, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.Exhaustion, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.Exhaustion, child_table: string, child_field?: string): any[]

---Typed table handle for Exhaustion.dbc.
---@class dbc.Table.Exhaustion : DbcTable
---@field FindById fun(self: dbc.Table.Exhaustion, id: integer): dbc.row.Exhaustion|nil
---@field GetById fun(self: dbc.Table.Exhaustion, id: integer): dbc.row.Exhaustion|nil
---@field GetRow fun(self: dbc.Table.Exhaustion, row: integer): dbc.row.Exhaustion
---@field NewRow fun(self: dbc.Table.Exhaustion, id?: integer): dbc.row.Exhaustion
---@field Create fun(self: dbc.Table.Exhaustion, id?: integer): dbc.row.Exhaustion
---@field CreateNext fun(self: dbc.Table.Exhaustion, data?: table): dbc.row.Exhaustion
---@field CloneRow fun(self: dbc.Table.Exhaustion, source: integer|dbc.row.Exhaustion, new_id?: integer): dbc.row.Exhaustion
---@field GetAllRows fun(self: dbc.Table.Exhaustion): dbc.row.Exhaustion[]
---@field Query fun(self: dbc.Table.Exhaustion): dbc.Query<dbc.row.Exhaustion>
---@field Rows fun(self: dbc.Table.Exhaustion): fun(): integer, dbc.row.Exhaustion
