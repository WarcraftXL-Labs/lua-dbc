---@meta
-- Generated LuaLS annotations for ItemVisualEffects.dbc. Do not edit.

---Row representation of ItemVisualEffects.dbc.
---@class dbc.row.ItemVisualEffects : RowProxy
---@field ID integer
---@field Model string

-- Fluent PascalCase Methods for ItemVisualEffects
---@field GetID fun(self: dbc.row.ItemVisualEffects): integer
---@field SetID fun(self: dbc.row.ItemVisualEffects, value: integer): dbc.row.ItemVisualEffects
---@field GetModel fun(self: dbc.row.ItemVisualEffects): string
---@field SetModel fun(self: dbc.row.ItemVisualEffects, value: string): dbc.row.ItemVisualEffects

-- Inferred Cross-Table Relations for ItemVisualEffects

-- Cascading Creation & Relations Engine for ItemVisualEffects
---@field CreateRelated fun(self: dbc.row.ItemVisualEffects, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.ItemVisualEffects, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.ItemVisualEffects, child_table: string, child_field?: string): any[]

---Typed table handle for ItemVisualEffects.dbc.
---@class dbc.Table.ItemVisualEffects : DbcTable
---@field FindById fun(self: dbc.Table.ItemVisualEffects, id: integer): dbc.row.ItemVisualEffects|nil
---@field GetById fun(self: dbc.Table.ItemVisualEffects, id: integer): dbc.row.ItemVisualEffects|nil
---@field GetRow fun(self: dbc.Table.ItemVisualEffects, row: integer): dbc.row.ItemVisualEffects
---@field NewRow fun(self: dbc.Table.ItemVisualEffects, id?: integer): dbc.row.ItemVisualEffects
---@field Create fun(self: dbc.Table.ItemVisualEffects, id?: integer): dbc.row.ItemVisualEffects
---@field CreateNext fun(self: dbc.Table.ItemVisualEffects, data?: table): dbc.row.ItemVisualEffects
---@field CloneRow fun(self: dbc.Table.ItemVisualEffects, source: integer|dbc.row.ItemVisualEffects, new_id?: integer): dbc.row.ItemVisualEffects
---@field GetAllRows fun(self: dbc.Table.ItemVisualEffects): dbc.row.ItemVisualEffects[]
---@field Query fun(self: dbc.Table.ItemVisualEffects): dbc.Query<dbc.row.ItemVisualEffects>
---@field Rows fun(self: dbc.Table.ItemVisualEffects): fun(): integer, dbc.row.ItemVisualEffects
