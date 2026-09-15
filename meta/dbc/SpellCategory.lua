---@meta
-- Generated LuaLS annotations for SpellCategory.dbc. Do not edit.

---Row representation of SpellCategory.dbc.
---@class dbc.row.SpellCategory : RowProxy
---@field ID integer
---@field Flags integer

-- Fluent PascalCase Methods for SpellCategory
---@field GetID fun(self: dbc.row.SpellCategory): integer
---@field SetID fun(self: dbc.row.SpellCategory, value: integer): dbc.row.SpellCategory
---@field GetFlags fun(self: dbc.row.SpellCategory): integer
---@field SetFlags fun(self: dbc.row.SpellCategory, value: integer): dbc.row.SpellCategory
---@field HasFlags fun(self: dbc.row.SpellCategory, flag: integer): boolean
---@field AddFlags fun(self: dbc.row.SpellCategory, flag: integer): dbc.row.SpellCategory
---@field RemoveFlags fun(self: dbc.row.SpellCategory, flag: integer): dbc.row.SpellCategory

-- Inferred Cross-Table Relations for SpellCategory

-- Cascading Creation & Relations Engine for SpellCategory
---@field CreateRelated fun(self: dbc.row.SpellCategory, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.SpellCategory, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.SpellCategory, child_table: string, child_field?: string): any[]

---Typed table handle for SpellCategory.dbc.
---@class dbc.Table.SpellCategory : DbcTable
---@field FindById fun(self: dbc.Table.SpellCategory, id: integer): dbc.row.SpellCategory|nil
---@field GetById fun(self: dbc.Table.SpellCategory, id: integer): dbc.row.SpellCategory|nil
---@field GetRow fun(self: dbc.Table.SpellCategory, row: integer): dbc.row.SpellCategory
---@field NewRow fun(self: dbc.Table.SpellCategory, id?: integer): dbc.row.SpellCategory
---@field Create fun(self: dbc.Table.SpellCategory, id?: integer): dbc.row.SpellCategory
---@field CreateNext fun(self: dbc.Table.SpellCategory, data?: table): dbc.row.SpellCategory
---@field CloneRow fun(self: dbc.Table.SpellCategory, source: integer|dbc.row.SpellCategory, new_id?: integer): dbc.row.SpellCategory
---@field GetAllRows fun(self: dbc.Table.SpellCategory): dbc.row.SpellCategory[]
---@field Query fun(self: dbc.Table.SpellCategory): dbc.Query<dbc.row.SpellCategory>
---@field Rows fun(self: dbc.Table.SpellCategory): fun(): integer, dbc.row.SpellCategory
