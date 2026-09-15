---@meta
-- Generated LuaLS annotations for GtChanceToMeleeCritBase.dbc. Do not edit.

---Row representation of GtChanceToMeleeCritBase.dbc.
---@class dbc.row.GtChanceToMeleeCritBase : RowProxy
---@field Data number

-- Fluent PascalCase Methods for GtChanceToMeleeCritBase
---@field GetData fun(self: dbc.row.GtChanceToMeleeCritBase): number
---@field SetData fun(self: dbc.row.GtChanceToMeleeCritBase, value: number): dbc.row.GtChanceToMeleeCritBase

-- Inferred Cross-Table Relations for GtChanceToMeleeCritBase

-- Cascading Creation & Relations Engine for GtChanceToMeleeCritBase
---@field CreateRelated fun(self: dbc.row.GtChanceToMeleeCritBase, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.GtChanceToMeleeCritBase, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.GtChanceToMeleeCritBase, child_table: string, child_field?: string): any[]

---Typed table handle for GtChanceToMeleeCritBase.dbc.
---@class dbc.Table.GtChanceToMeleeCritBase : DbcTable
---@field FindById fun(self: dbc.Table.GtChanceToMeleeCritBase, id: integer): dbc.row.GtChanceToMeleeCritBase|nil
---@field GetById fun(self: dbc.Table.GtChanceToMeleeCritBase, id: integer): dbc.row.GtChanceToMeleeCritBase|nil
---@field GetRow fun(self: dbc.Table.GtChanceToMeleeCritBase, row: integer): dbc.row.GtChanceToMeleeCritBase
---@field NewRow fun(self: dbc.Table.GtChanceToMeleeCritBase, id?: integer): dbc.row.GtChanceToMeleeCritBase
---@field Create fun(self: dbc.Table.GtChanceToMeleeCritBase, id?: integer): dbc.row.GtChanceToMeleeCritBase
---@field CreateNext fun(self: dbc.Table.GtChanceToMeleeCritBase, data?: table): dbc.row.GtChanceToMeleeCritBase
---@field CloneRow fun(self: dbc.Table.GtChanceToMeleeCritBase, source: integer|dbc.row.GtChanceToMeleeCritBase, new_id?: integer): dbc.row.GtChanceToMeleeCritBase
---@field GetAllRows fun(self: dbc.Table.GtChanceToMeleeCritBase): dbc.row.GtChanceToMeleeCritBase[]
---@field Query fun(self: dbc.Table.GtChanceToMeleeCritBase): dbc.Query<dbc.row.GtChanceToMeleeCritBase>
---@field Rows fun(self: dbc.Table.GtChanceToMeleeCritBase): fun(): integer, dbc.row.GtChanceToMeleeCritBase
