---@meta
-- Generated LuaLS annotations for SpellDescriptionVariables.dbc. Do not edit.

---Row representation of SpellDescriptionVariables.dbc.
---@class dbc.row.SpellDescriptionVariables : RowProxy
---@field ID integer
---@field Variables string

-- Fluent PascalCase Methods for SpellDescriptionVariables
---@field GetID fun(self: dbc.row.SpellDescriptionVariables): integer
---@field SetID fun(self: dbc.row.SpellDescriptionVariables, value: integer): dbc.row.SpellDescriptionVariables
---@field GetVariables fun(self: dbc.row.SpellDescriptionVariables): string
---@field SetVariables fun(self: dbc.row.SpellDescriptionVariables, value: string): dbc.row.SpellDescriptionVariables

-- Inferred Cross-Table Relations for SpellDescriptionVariables

-- Cascading Creation & Relations Engine for SpellDescriptionVariables
---@field CreateRelated fun(self: dbc.row.SpellDescriptionVariables, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.SpellDescriptionVariables, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.SpellDescriptionVariables, child_table: string, child_field?: string): any[]

---Typed table handle for SpellDescriptionVariables.dbc.
---@class dbc.Table.SpellDescriptionVariables : DbcTable
---@field FindById fun(self: dbc.Table.SpellDescriptionVariables, id: integer): dbc.row.SpellDescriptionVariables|nil
---@field GetById fun(self: dbc.Table.SpellDescriptionVariables, id: integer): dbc.row.SpellDescriptionVariables|nil
---@field GetRow fun(self: dbc.Table.SpellDescriptionVariables, row: integer): dbc.row.SpellDescriptionVariables
---@field NewRow fun(self: dbc.Table.SpellDescriptionVariables, id?: integer): dbc.row.SpellDescriptionVariables
---@field Create fun(self: dbc.Table.SpellDescriptionVariables, id?: integer): dbc.row.SpellDescriptionVariables
---@field CreateNext fun(self: dbc.Table.SpellDescriptionVariables, data?: table): dbc.row.SpellDescriptionVariables
---@field CloneRow fun(self: dbc.Table.SpellDescriptionVariables, source: integer|dbc.row.SpellDescriptionVariables, new_id?: integer): dbc.row.SpellDescriptionVariables
---@field GetAllRows fun(self: dbc.Table.SpellDescriptionVariables): dbc.row.SpellDescriptionVariables[]
---@field Query fun(self: dbc.Table.SpellDescriptionVariables): dbc.Query<dbc.row.SpellDescriptionVariables>
---@field Rows fun(self: dbc.Table.SpellDescriptionVariables): fun(): integer, dbc.row.SpellDescriptionVariables
