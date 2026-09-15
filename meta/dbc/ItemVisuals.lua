---@meta
-- Generated LuaLS annotations for ItemVisuals.dbc. Do not edit.

---Row representation of ItemVisuals.dbc.
---@class dbc.row.ItemVisuals : RowProxy
---@field ID integer
---@field Slot integer[]

-- Fluent PascalCase Methods for ItemVisuals
---@field GetID fun(self: dbc.row.ItemVisuals): integer
---@field SetID fun(self: dbc.row.ItemVisuals, value: integer): dbc.row.ItemVisuals
---@field GetSlot fun(self: dbc.row.ItemVisuals, index?: integer): integer|integer[]
---@field SetSlot fun(self: dbc.row.ItemVisuals, value: integer|integer[], index?: integer): dbc.row.ItemVisuals

-- Inferred Cross-Table Relations for ItemVisuals

-- Cascading Creation & Relations Engine for ItemVisuals
---@field CreateRelated fun(self: dbc.row.ItemVisuals, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.ItemVisuals, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.ItemVisuals, child_table: string, child_field?: string): any[]

---Typed table handle for ItemVisuals.dbc.
---@class dbc.Table.ItemVisuals : DbcTable
---@field FindById fun(self: dbc.Table.ItemVisuals, id: integer): dbc.row.ItemVisuals|nil
---@field GetById fun(self: dbc.Table.ItemVisuals, id: integer): dbc.row.ItemVisuals|nil
---@field GetRow fun(self: dbc.Table.ItemVisuals, row: integer): dbc.row.ItemVisuals
---@field NewRow fun(self: dbc.Table.ItemVisuals, id?: integer): dbc.row.ItemVisuals
---@field Create fun(self: dbc.Table.ItemVisuals, id?: integer): dbc.row.ItemVisuals
---@field CreateNext fun(self: dbc.Table.ItemVisuals, data?: table): dbc.row.ItemVisuals
---@field CloneRow fun(self: dbc.Table.ItemVisuals, source: integer|dbc.row.ItemVisuals, new_id?: integer): dbc.row.ItemVisuals
---@field GetAllRows fun(self: dbc.Table.ItemVisuals): dbc.row.ItemVisuals[]
---@field Query fun(self: dbc.Table.ItemVisuals): dbc.Query<dbc.row.ItemVisuals>
---@field Rows fun(self: dbc.Table.ItemVisuals): fun(): integer, dbc.row.ItemVisuals
