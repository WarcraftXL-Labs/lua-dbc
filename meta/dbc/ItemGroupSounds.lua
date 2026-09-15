---@meta
-- Generated LuaLS annotations for ItemGroupSounds.dbc. Do not edit.

---Row representation of ItemGroupSounds.dbc.
---@class dbc.row.ItemGroupSounds : RowProxy
---@field ID integer
---@field Sound integer[]

-- Fluent PascalCase Methods for ItemGroupSounds
---@field GetID fun(self: dbc.row.ItemGroupSounds): integer
---@field SetID fun(self: dbc.row.ItemGroupSounds, value: integer): dbc.row.ItemGroupSounds
---@field GetSound fun(self: dbc.row.ItemGroupSounds, index?: integer): integer|integer[]
---@field SetSound fun(self: dbc.row.ItemGroupSounds, value: integer|integer[], index?: integer): dbc.row.ItemGroupSounds

-- Inferred Cross-Table Relations for ItemGroupSounds

-- Cascading Creation & Relations Engine for ItemGroupSounds
---@field CreateRelated fun(self: dbc.row.ItemGroupSounds, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.ItemGroupSounds, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.ItemGroupSounds, child_table: string, child_field?: string): any[]

---Typed table handle for ItemGroupSounds.dbc.
---@class dbc.Table.ItemGroupSounds : DbcTable
---@field FindById fun(self: dbc.Table.ItemGroupSounds, id: integer): dbc.row.ItemGroupSounds|nil
---@field GetById fun(self: dbc.Table.ItemGroupSounds, id: integer): dbc.row.ItemGroupSounds|nil
---@field GetRow fun(self: dbc.Table.ItemGroupSounds, row: integer): dbc.row.ItemGroupSounds
---@field NewRow fun(self: dbc.Table.ItemGroupSounds, id?: integer): dbc.row.ItemGroupSounds
---@field Create fun(self: dbc.Table.ItemGroupSounds, id?: integer): dbc.row.ItemGroupSounds
---@field CreateNext fun(self: dbc.Table.ItemGroupSounds, data?: table): dbc.row.ItemGroupSounds
---@field CloneRow fun(self: dbc.Table.ItemGroupSounds, source: integer|dbc.row.ItemGroupSounds, new_id?: integer): dbc.row.ItemGroupSounds
---@field GetAllRows fun(self: dbc.Table.ItemGroupSounds): dbc.row.ItemGroupSounds[]
---@field Query fun(self: dbc.Table.ItemGroupSounds): dbc.Query<dbc.row.ItemGroupSounds>
---@field Rows fun(self: dbc.Table.ItemGroupSounds): fun(): integer, dbc.row.ItemGroupSounds
