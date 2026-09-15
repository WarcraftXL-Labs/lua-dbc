---@meta
-- Generated LuaLS annotations for SpellMechanic.dbc. Do not edit.

---Row representation of SpellMechanic.dbc.
---@class dbc.row.SpellMechanic : RowProxy
---@field ID integer
---@field StateName string

-- Fluent PascalCase Methods for SpellMechanic
---@field GetID fun(self: dbc.row.SpellMechanic): integer
---@field SetID fun(self: dbc.row.SpellMechanic, value: integer): dbc.row.SpellMechanic
---@field GetStateName fun(self: dbc.row.SpellMechanic, locale?: string|integer): string
---@field SetStateName fun(self: dbc.row.SpellMechanic, value: string, locale?: string|integer): dbc.row.SpellMechanic

-- Inferred Cross-Table Relations for SpellMechanic

-- Cascading Creation & Relations Engine for SpellMechanic
---@field CreateRelated fun(self: dbc.row.SpellMechanic, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.SpellMechanic, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.SpellMechanic, child_table: string, child_field?: string): any[]

---Typed table handle for SpellMechanic.dbc.
---@class dbc.Table.SpellMechanic : DbcTable
---@field FindById fun(self: dbc.Table.SpellMechanic, id: integer): dbc.row.SpellMechanic|nil
---@field GetById fun(self: dbc.Table.SpellMechanic, id: integer): dbc.row.SpellMechanic|nil
---@field GetRow fun(self: dbc.Table.SpellMechanic, row: integer): dbc.row.SpellMechanic
---@field NewRow fun(self: dbc.Table.SpellMechanic, id?: integer): dbc.row.SpellMechanic
---@field Create fun(self: dbc.Table.SpellMechanic, id?: integer): dbc.row.SpellMechanic
---@field CreateNext fun(self: dbc.Table.SpellMechanic, data?: table): dbc.row.SpellMechanic
---@field CloneRow fun(self: dbc.Table.SpellMechanic, source: integer|dbc.row.SpellMechanic, new_id?: integer): dbc.row.SpellMechanic
---@field GetAllRows fun(self: dbc.Table.SpellMechanic): dbc.row.SpellMechanic[]
---@field Query fun(self: dbc.Table.SpellMechanic): dbc.Query<dbc.row.SpellMechanic>
---@field Rows fun(self: dbc.Table.SpellMechanic): fun(): integer, dbc.row.SpellMechanic
