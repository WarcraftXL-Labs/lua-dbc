---@meta
-- Generated LuaLS annotations for SkillTiers.dbc. Do not edit.

---Row representation of SkillTiers.dbc.
---@class dbc.row.SkillTiers : RowProxy
---@field ID integer
---@field Cost integer[]
---@field Value integer[]

-- Fluent PascalCase Methods for SkillTiers
---@field GetID fun(self: dbc.row.SkillTiers): integer
---@field SetID fun(self: dbc.row.SkillTiers, value: integer): dbc.row.SkillTiers
---@field GetCost fun(self: dbc.row.SkillTiers, index?: integer): integer|integer[]
---@field SetCost fun(self: dbc.row.SkillTiers, value: integer|integer[], index?: integer): dbc.row.SkillTiers
---@field GetValue fun(self: dbc.row.SkillTiers, index?: integer): integer|integer[]
---@field SetValue fun(self: dbc.row.SkillTiers, value: integer|integer[], index?: integer): dbc.row.SkillTiers

-- Inferred Cross-Table Relations for SkillTiers

-- Cascading Creation & Relations Engine for SkillTiers
---@field CreateRelated fun(self: dbc.row.SkillTiers, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.SkillTiers, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.SkillTiers, child_table: string, child_field?: string): any[]

---Typed table handle for SkillTiers.dbc.
---@class dbc.Table.SkillTiers : DbcTable
---@field FindById fun(self: dbc.Table.SkillTiers, id: integer): dbc.row.SkillTiers|nil
---@field GetById fun(self: dbc.Table.SkillTiers, id: integer): dbc.row.SkillTiers|nil
---@field GetRow fun(self: dbc.Table.SkillTiers, row: integer): dbc.row.SkillTiers
---@field NewRow fun(self: dbc.Table.SkillTiers, id?: integer): dbc.row.SkillTiers
---@field Create fun(self: dbc.Table.SkillTiers, id?: integer): dbc.row.SkillTiers
---@field CreateNext fun(self: dbc.Table.SkillTiers, data?: table): dbc.row.SkillTiers
---@field CloneRow fun(self: dbc.Table.SkillTiers, source: integer|dbc.row.SkillTiers, new_id?: integer): dbc.row.SkillTiers
---@field GetAllRows fun(self: dbc.Table.SkillTiers): dbc.row.SkillTiers[]
---@field Query fun(self: dbc.Table.SkillTiers): dbc.Query<dbc.row.SkillTiers>
---@field Rows fun(self: dbc.Table.SkillTiers): fun(): integer, dbc.row.SkillTiers
