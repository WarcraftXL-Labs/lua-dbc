---@meta
-- Generated LuaLS annotations for SkillLineCategory.dbc. Do not edit.

---Row representation of SkillLineCategory.dbc.
---@class dbc.row.SkillLineCategory : RowProxy
---@field ID integer
---@field Name string
---@field SortIndex integer

-- Fluent PascalCase Methods for SkillLineCategory
---@field GetID fun(self: dbc.row.SkillLineCategory): integer
---@field SetID fun(self: dbc.row.SkillLineCategory, value: integer): dbc.row.SkillLineCategory
---@field GetName fun(self: dbc.row.SkillLineCategory, locale?: string|integer): string
---@field SetName fun(self: dbc.row.SkillLineCategory, value: string, locale?: string|integer): dbc.row.SkillLineCategory
---@field GetSortIndex fun(self: dbc.row.SkillLineCategory): integer
---@field SetSortIndex fun(self: dbc.row.SkillLineCategory, value: integer): dbc.row.SkillLineCategory

-- Inferred Cross-Table Relations for SkillLineCategory

-- Cascading Creation & Relations Engine for SkillLineCategory
---@field CreateRelated fun(self: dbc.row.SkillLineCategory, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.SkillLineCategory, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.SkillLineCategory, child_table: string, child_field?: string): any[]

---Typed table handle for SkillLineCategory.dbc.
---@class dbc.Table.SkillLineCategory : DbcTable
---@field FindById fun(self: dbc.Table.SkillLineCategory, id: integer): dbc.row.SkillLineCategory|nil
---@field GetById fun(self: dbc.Table.SkillLineCategory, id: integer): dbc.row.SkillLineCategory|nil
---@field GetRow fun(self: dbc.Table.SkillLineCategory, row: integer): dbc.row.SkillLineCategory
---@field NewRow fun(self: dbc.Table.SkillLineCategory, id?: integer): dbc.row.SkillLineCategory
---@field Create fun(self: dbc.Table.SkillLineCategory, id?: integer): dbc.row.SkillLineCategory
---@field CreateNext fun(self: dbc.Table.SkillLineCategory, data?: table): dbc.row.SkillLineCategory
---@field CloneRow fun(self: dbc.Table.SkillLineCategory, source: integer|dbc.row.SkillLineCategory, new_id?: integer): dbc.row.SkillLineCategory
---@field GetAllRows fun(self: dbc.Table.SkillLineCategory): dbc.row.SkillLineCategory[]
---@field Query fun(self: dbc.Table.SkillLineCategory): dbc.Query<dbc.row.SkillLineCategory>
---@field Rows fun(self: dbc.Table.SkillLineCategory): fun(): integer, dbc.row.SkillLineCategory
