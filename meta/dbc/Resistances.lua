---@meta
-- Generated LuaLS annotations for Resistances.dbc. Do not edit.

---Row representation of Resistances.dbc.
---@class dbc.row.Resistances : RowProxy
---@field ID integer
---@field Flags integer
---@field FizzleSoundID integer
---@field Name string

-- Fluent PascalCase Methods for Resistances
---@field GetID fun(self: dbc.row.Resistances): integer
---@field SetID fun(self: dbc.row.Resistances, value: integer): dbc.row.Resistances
---@field GetFlags fun(self: dbc.row.Resistances): integer
---@field SetFlags fun(self: dbc.row.Resistances, value: integer): dbc.row.Resistances
---@field HasFlags fun(self: dbc.row.Resistances, flag: integer): boolean
---@field AddFlags fun(self: dbc.row.Resistances, flag: integer): dbc.row.Resistances
---@field RemoveFlags fun(self: dbc.row.Resistances, flag: integer): dbc.row.Resistances
---@field GetFizzleSoundID fun(self: dbc.row.Resistances): integer
---@field SetFizzleSoundID fun(self: dbc.row.Resistances, value: integer): dbc.row.Resistances
---@field GetName fun(self: dbc.row.Resistances, locale?: string|integer): string
---@field SetName fun(self: dbc.row.Resistances, value: string, locale?: string|integer): dbc.row.Resistances

-- Inferred Cross-Table Relations for Resistances

-- Cascading Creation & Relations Engine for Resistances
---@field CreateRelated fun(self: dbc.row.Resistances, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.Resistances, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.Resistances, child_table: string, child_field?: string): any[]

---Typed table handle for Resistances.dbc.
---@class dbc.Table.Resistances : DbcTable
---@field FindById fun(self: dbc.Table.Resistances, id: integer): dbc.row.Resistances|nil
---@field GetById fun(self: dbc.Table.Resistances, id: integer): dbc.row.Resistances|nil
---@field GetRow fun(self: dbc.Table.Resistances, row: integer): dbc.row.Resistances
---@field NewRow fun(self: dbc.Table.Resistances, id?: integer): dbc.row.Resistances
---@field Create fun(self: dbc.Table.Resistances, id?: integer): dbc.row.Resistances
---@field CreateNext fun(self: dbc.Table.Resistances, data?: table): dbc.row.Resistances
---@field CloneRow fun(self: dbc.Table.Resistances, source: integer|dbc.row.Resistances, new_id?: integer): dbc.row.Resistances
---@field GetAllRows fun(self: dbc.Table.Resistances): dbc.row.Resistances[]
---@field Query fun(self: dbc.Table.Resistances): dbc.Query<dbc.row.Resistances>
---@field Rows fun(self: dbc.Table.Resistances): fun(): integer, dbc.row.Resistances
