---@meta
-- Generated LuaLS annotations for SpellMissileMotion.dbc. Do not edit.

---Row representation of SpellMissileMotion.dbc.
---@class dbc.row.SpellMissileMotion : RowProxy
---@field ID integer
---@field Name string
---@field ScriptBody string
---@field Flags integer
---@field MissileCount integer

-- Fluent PascalCase Methods for SpellMissileMotion
---@field GetID fun(self: dbc.row.SpellMissileMotion): integer
---@field SetID fun(self: dbc.row.SpellMissileMotion, value: integer): dbc.row.SpellMissileMotion
---@field GetName fun(self: dbc.row.SpellMissileMotion): string
---@field SetName fun(self: dbc.row.SpellMissileMotion, value: string): dbc.row.SpellMissileMotion
---@field GetScriptBody fun(self: dbc.row.SpellMissileMotion): string
---@field SetScriptBody fun(self: dbc.row.SpellMissileMotion, value: string): dbc.row.SpellMissileMotion
---@field GetFlags fun(self: dbc.row.SpellMissileMotion): integer
---@field SetFlags fun(self: dbc.row.SpellMissileMotion, value: integer): dbc.row.SpellMissileMotion
---@field HasFlags fun(self: dbc.row.SpellMissileMotion, flag: integer): boolean
---@field AddFlags fun(self: dbc.row.SpellMissileMotion, flag: integer): dbc.row.SpellMissileMotion
---@field RemoveFlags fun(self: dbc.row.SpellMissileMotion, flag: integer): dbc.row.SpellMissileMotion
---@field GetMissileCount fun(self: dbc.row.SpellMissileMotion): integer
---@field SetMissileCount fun(self: dbc.row.SpellMissileMotion, value: integer): dbc.row.SpellMissileMotion

-- Inferred Cross-Table Relations for SpellMissileMotion

-- Cascading Creation & Relations Engine for SpellMissileMotion
---@field CreateRelated fun(self: dbc.row.SpellMissileMotion, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.SpellMissileMotion, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.SpellMissileMotion, child_table: string, child_field?: string): any[]

---Typed table handle for SpellMissileMotion.dbc.
---@class dbc.Table.SpellMissileMotion : DbcTable
---@field FindById fun(self: dbc.Table.SpellMissileMotion, id: integer): dbc.row.SpellMissileMotion|nil
---@field GetById fun(self: dbc.Table.SpellMissileMotion, id: integer): dbc.row.SpellMissileMotion|nil
---@field GetRow fun(self: dbc.Table.SpellMissileMotion, row: integer): dbc.row.SpellMissileMotion
---@field NewRow fun(self: dbc.Table.SpellMissileMotion, id?: integer): dbc.row.SpellMissileMotion
---@field Create fun(self: dbc.Table.SpellMissileMotion, id?: integer): dbc.row.SpellMissileMotion
---@field CreateNext fun(self: dbc.Table.SpellMissileMotion, data?: table): dbc.row.SpellMissileMotion
---@field CloneRow fun(self: dbc.Table.SpellMissileMotion, source: integer|dbc.row.SpellMissileMotion, new_id?: integer): dbc.row.SpellMissileMotion
---@field GetAllRows fun(self: dbc.Table.SpellMissileMotion): dbc.row.SpellMissileMotion[]
---@field Query fun(self: dbc.Table.SpellMissileMotion): dbc.Query<dbc.row.SpellMissileMotion>
---@field Rows fun(self: dbc.Table.SpellMissileMotion): fun(): integer, dbc.row.SpellMissileMotion
