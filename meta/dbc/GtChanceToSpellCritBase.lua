---@meta
-- Generated LuaLS annotations for GtChanceToSpellCritBase.dbc. Do not edit.

---Row representation of GtChanceToSpellCritBase.dbc.
---@class dbc.row.GtChanceToSpellCritBase : RowProxy
---@field Data number

-- Fluent PascalCase Methods for GtChanceToSpellCritBase
---@field GetData fun(self: dbc.row.GtChanceToSpellCritBase): number
---@field SetData fun(self: dbc.row.GtChanceToSpellCritBase, value: number): dbc.row.GtChanceToSpellCritBase

-- Inferred Cross-Table Relations for GtChanceToSpellCritBase

-- Cascading Creation & Relations Engine for GtChanceToSpellCritBase
---@field CreateRelated fun(self: dbc.row.GtChanceToSpellCritBase, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.GtChanceToSpellCritBase, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.GtChanceToSpellCritBase, child_table: string, child_field?: string): any[]

---Typed table handle for GtChanceToSpellCritBase.dbc.
---@class dbc.Table.GtChanceToSpellCritBase : DbcTable
---@field FindById fun(self: dbc.Table.GtChanceToSpellCritBase, id: integer): dbc.row.GtChanceToSpellCritBase|nil
---@field GetById fun(self: dbc.Table.GtChanceToSpellCritBase, id: integer): dbc.row.GtChanceToSpellCritBase|nil
---@field GetRow fun(self: dbc.Table.GtChanceToSpellCritBase, row: integer): dbc.row.GtChanceToSpellCritBase
---@field NewRow fun(self: dbc.Table.GtChanceToSpellCritBase, id?: integer): dbc.row.GtChanceToSpellCritBase
---@field Create fun(self: dbc.Table.GtChanceToSpellCritBase, id?: integer): dbc.row.GtChanceToSpellCritBase
---@field CreateNext fun(self: dbc.Table.GtChanceToSpellCritBase, data?: table): dbc.row.GtChanceToSpellCritBase
---@field CloneRow fun(self: dbc.Table.GtChanceToSpellCritBase, source: integer|dbc.row.GtChanceToSpellCritBase, new_id?: integer): dbc.row.GtChanceToSpellCritBase
---@field GetAllRows fun(self: dbc.Table.GtChanceToSpellCritBase): dbc.row.GtChanceToSpellCritBase[]
---@field Query fun(self: dbc.Table.GtChanceToSpellCritBase): dbc.Query<dbc.row.GtChanceToSpellCritBase>
---@field Rows fun(self: dbc.Table.GtChanceToSpellCritBase): fun(): integer, dbc.row.GtChanceToSpellCritBase
