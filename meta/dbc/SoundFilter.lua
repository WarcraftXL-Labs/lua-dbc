---@meta
-- Generated LuaLS annotations for SoundFilter.dbc. Do not edit.

---Row representation of SoundFilter.dbc.
---@class dbc.row.SoundFilter : RowProxy
---@field ID integer
---@field Name string

-- Fluent PascalCase Methods for SoundFilter
---@field GetID fun(self: dbc.row.SoundFilter): integer
---@field SetID fun(self: dbc.row.SoundFilter, value: integer): dbc.row.SoundFilter
---@field GetName fun(self: dbc.row.SoundFilter): string
---@field SetName fun(self: dbc.row.SoundFilter, value: string): dbc.row.SoundFilter

-- Inferred Cross-Table Relations for SoundFilter

-- Cascading Creation & Relations Engine for SoundFilter
---@field CreateRelated fun(self: dbc.row.SoundFilter, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.SoundFilter, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.SoundFilter, child_table: string, child_field?: string): any[]

---Typed table handle for SoundFilter.dbc.
---@class dbc.Table.SoundFilter : DbcTable
---@field FindById fun(self: dbc.Table.SoundFilter, id: integer): dbc.row.SoundFilter|nil
---@field GetById fun(self: dbc.Table.SoundFilter, id: integer): dbc.row.SoundFilter|nil
---@field GetRow fun(self: dbc.Table.SoundFilter, row: integer): dbc.row.SoundFilter
---@field NewRow fun(self: dbc.Table.SoundFilter, id?: integer): dbc.row.SoundFilter
---@field Create fun(self: dbc.Table.SoundFilter, id?: integer): dbc.row.SoundFilter
---@field CreateNext fun(self: dbc.Table.SoundFilter, data?: table): dbc.row.SoundFilter
---@field CloneRow fun(self: dbc.Table.SoundFilter, source: integer|dbc.row.SoundFilter, new_id?: integer): dbc.row.SoundFilter
---@field GetAllRows fun(self: dbc.Table.SoundFilter): dbc.row.SoundFilter[]
---@field Query fun(self: dbc.Table.SoundFilter): dbc.Query<dbc.row.SoundFilter>
---@field Rows fun(self: dbc.Table.SoundFilter): fun(): integer, dbc.row.SoundFilter
