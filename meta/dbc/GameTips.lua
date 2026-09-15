---@meta
-- Generated LuaLS annotations for GameTips.dbc. Do not edit.

---Row representation of GameTips.dbc.
---@class dbc.row.GameTips : RowProxy
---@field ID integer
---@field Text string

-- Fluent PascalCase Methods for GameTips
---@field GetID fun(self: dbc.row.GameTips): integer
---@field SetID fun(self: dbc.row.GameTips, value: integer): dbc.row.GameTips
---@field GetText fun(self: dbc.row.GameTips, locale?: string|integer): string
---@field SetText fun(self: dbc.row.GameTips, value: string, locale?: string|integer): dbc.row.GameTips

-- Inferred Cross-Table Relations for GameTips

-- Cascading Creation & Relations Engine for GameTips
---@field CreateRelated fun(self: dbc.row.GameTips, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.GameTips, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.GameTips, child_table: string, child_field?: string): any[]

---Typed table handle for GameTips.dbc.
---@class dbc.Table.GameTips : DbcTable
---@field FindById fun(self: dbc.Table.GameTips, id: integer): dbc.row.GameTips|nil
---@field GetById fun(self: dbc.Table.GameTips, id: integer): dbc.row.GameTips|nil
---@field GetRow fun(self: dbc.Table.GameTips, row: integer): dbc.row.GameTips
---@field NewRow fun(self: dbc.Table.GameTips, id?: integer): dbc.row.GameTips
---@field Create fun(self: dbc.Table.GameTips, id?: integer): dbc.row.GameTips
---@field CreateNext fun(self: dbc.Table.GameTips, data?: table): dbc.row.GameTips
---@field CloneRow fun(self: dbc.Table.GameTips, source: integer|dbc.row.GameTips, new_id?: integer): dbc.row.GameTips
---@field GetAllRows fun(self: dbc.Table.GameTips): dbc.row.GameTips[]
---@field Query fun(self: dbc.Table.GameTips): dbc.Query<dbc.row.GameTips>
---@field Rows fun(self: dbc.Table.GameTips): fun(): integer, dbc.row.GameTips
