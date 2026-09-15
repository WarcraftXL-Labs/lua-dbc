---@meta
-- Generated LuaLS annotations for CreatureTemplate.dbc. Do not edit.

---Row representation of CreatureTemplate.dbc.
---@class dbc.row.CreatureTemplate : RowProxy
---@field entry integer
---@field difficulty_entry_1 integer
---@field difficulty_entry_2 integer
---@field difficulty_entry_3 integer

-- Fluent PascalCase Methods for CreatureTemplate
---@field Getentry fun(self: dbc.row.CreatureTemplate): integer
---@field Setentry fun(self: dbc.row.CreatureTemplate, value: integer): dbc.row.CreatureTemplate
---@field Getdifficulty_entry_1 fun(self: dbc.row.CreatureTemplate): integer
---@field Setdifficulty_entry_1 fun(self: dbc.row.CreatureTemplate, value: integer): dbc.row.CreatureTemplate
---@field Getdifficulty_entry_2 fun(self: dbc.row.CreatureTemplate): integer
---@field Setdifficulty_entry_2 fun(self: dbc.row.CreatureTemplate, value: integer): dbc.row.CreatureTemplate
---@field Getdifficulty_entry_3 fun(self: dbc.row.CreatureTemplate): integer
---@field Setdifficulty_entry_3 fun(self: dbc.row.CreatureTemplate, value: integer): dbc.row.CreatureTemplate

-- Inferred Cross-Table Relations for CreatureTemplate

-- Cascading Creation & Relations Engine for CreatureTemplate
---@field CreateRelated fun(self: dbc.row.CreatureTemplate, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.CreatureTemplate, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.CreatureTemplate, child_table: string, child_field?: string): any[]

---Typed table handle for CreatureTemplate.dbc.
---@class dbc.Table.CreatureTemplate : DbcTable
---@field FindById fun(self: dbc.Table.CreatureTemplate, id: integer): dbc.row.CreatureTemplate|nil
---@field GetById fun(self: dbc.Table.CreatureTemplate, id: integer): dbc.row.CreatureTemplate|nil
---@field GetRow fun(self: dbc.Table.CreatureTemplate, row: integer): dbc.row.CreatureTemplate
---@field NewRow fun(self: dbc.Table.CreatureTemplate, id?: integer): dbc.row.CreatureTemplate
---@field Create fun(self: dbc.Table.CreatureTemplate, id?: integer): dbc.row.CreatureTemplate
---@field CreateNext fun(self: dbc.Table.CreatureTemplate, data?: table): dbc.row.CreatureTemplate
---@field CloneRow fun(self: dbc.Table.CreatureTemplate, source: integer|dbc.row.CreatureTemplate, new_id?: integer): dbc.row.CreatureTemplate
---@field GetAllRows fun(self: dbc.Table.CreatureTemplate): dbc.row.CreatureTemplate[]
---@field Query fun(self: dbc.Table.CreatureTemplate): dbc.Query<dbc.row.CreatureTemplate>
---@field Rows fun(self: dbc.Table.CreatureTemplate): fun(): integer, dbc.row.CreatureTemplate
