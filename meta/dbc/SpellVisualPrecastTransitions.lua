---@meta
-- Generated LuaLS annotations for SpellVisualPrecastTransitions.dbc. Do not edit.

---Row representation of SpellVisualPrecastTransitions.dbc.
---@class dbc.row.SpellVisualPrecastTransitions : RowProxy
---@field ID integer
---@field LoadAnimation string
---@field HoldAnimation string

-- Fluent PascalCase Methods for SpellVisualPrecastTransitions
---@field GetID fun(self: dbc.row.SpellVisualPrecastTransitions): integer
---@field SetID fun(self: dbc.row.SpellVisualPrecastTransitions, value: integer): dbc.row.SpellVisualPrecastTransitions
---@field GetLoadAnimation fun(self: dbc.row.SpellVisualPrecastTransitions): string
---@field SetLoadAnimation fun(self: dbc.row.SpellVisualPrecastTransitions, value: string): dbc.row.SpellVisualPrecastTransitions
---@field GetHoldAnimation fun(self: dbc.row.SpellVisualPrecastTransitions): string
---@field SetHoldAnimation fun(self: dbc.row.SpellVisualPrecastTransitions, value: string): dbc.row.SpellVisualPrecastTransitions

-- Inferred Cross-Table Relations for SpellVisualPrecastTransitions

-- Cascading Creation & Relations Engine for SpellVisualPrecastTransitions
---@field CreateRelated fun(self: dbc.row.SpellVisualPrecastTransitions, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.SpellVisualPrecastTransitions, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.SpellVisualPrecastTransitions, child_table: string, child_field?: string): any[]

---Typed table handle for SpellVisualPrecastTransitions.dbc.
---@class dbc.Table.SpellVisualPrecastTransitions : DbcTable
---@field FindById fun(self: dbc.Table.SpellVisualPrecastTransitions, id: integer): dbc.row.SpellVisualPrecastTransitions|nil
---@field GetById fun(self: dbc.Table.SpellVisualPrecastTransitions, id: integer): dbc.row.SpellVisualPrecastTransitions|nil
---@field GetRow fun(self: dbc.Table.SpellVisualPrecastTransitions, row: integer): dbc.row.SpellVisualPrecastTransitions
---@field NewRow fun(self: dbc.Table.SpellVisualPrecastTransitions, id?: integer): dbc.row.SpellVisualPrecastTransitions
---@field Create fun(self: dbc.Table.SpellVisualPrecastTransitions, id?: integer): dbc.row.SpellVisualPrecastTransitions
---@field CreateNext fun(self: dbc.Table.SpellVisualPrecastTransitions, data?: table): dbc.row.SpellVisualPrecastTransitions
---@field CloneRow fun(self: dbc.Table.SpellVisualPrecastTransitions, source: integer|dbc.row.SpellVisualPrecastTransitions, new_id?: integer): dbc.row.SpellVisualPrecastTransitions
---@field GetAllRows fun(self: dbc.Table.SpellVisualPrecastTransitions): dbc.row.SpellVisualPrecastTransitions[]
---@field Query fun(self: dbc.Table.SpellVisualPrecastTransitions): dbc.Query<dbc.row.SpellVisualPrecastTransitions>
---@field Rows fun(self: dbc.Table.SpellVisualPrecastTransitions): fun(): integer, dbc.row.SpellVisualPrecastTransitions
