---@meta
-- Generated LuaLS annotations for ItemSet.dbc. Do not edit.

---Row representation of ItemSet.dbc.
---@class dbc.row.ItemSet : RowProxy
---@field ID integer
---@field Name string
---@field ItemID integer[]
---@field SetSpellID integer[]
---@field SetThreshold integer[]
---@field RequiredSkill integer
---@field RequiredSkillRank integer

-- Fluent PascalCase Methods for ItemSet
---@field GetID fun(self: dbc.row.ItemSet): integer
---@field SetID fun(self: dbc.row.ItemSet, value: integer): dbc.row.ItemSet
---@field GetName fun(self: dbc.row.ItemSet, locale?: string|integer): string
---@field SetName fun(self: dbc.row.ItemSet, value: string, locale?: string|integer): dbc.row.ItemSet
---@field GetItemID fun(self: dbc.row.ItemSet, index?: integer): integer|integer[]
---@field SetItemID fun(self: dbc.row.ItemSet, value: integer|integer[], index?: integer): dbc.row.ItemSet
---@field GetSetSpellID fun(self: dbc.row.ItemSet, index?: integer): integer|integer[]
---@field SetSetSpellID fun(self: dbc.row.ItemSet, value: integer|integer[], index?: integer): dbc.row.ItemSet
---@field GetSetThreshold fun(self: dbc.row.ItemSet, index?: integer): integer|integer[]
---@field SetSetThreshold fun(self: dbc.row.ItemSet, value: integer|integer[], index?: integer): dbc.row.ItemSet
---@field GetRequiredSkill fun(self: dbc.row.ItemSet): integer
---@field SetRequiredSkill fun(self: dbc.row.ItemSet, value: integer): dbc.row.ItemSet
---@field GetRequiredSkillRank fun(self: dbc.row.ItemSet): integer
---@field SetRequiredSkillRank fun(self: dbc.row.ItemSet, value: integer): dbc.row.ItemSet

-- Inferred Cross-Table Relations for ItemSet
---@field GetItem fun(self: dbc.row.ItemSet): dbc.row.Item|nil
---@field SetItem fun(self: dbc.row.ItemSet, target: dbc.row.Item|integer): dbc.row.ItemSet

-- Cascading Creation & Relations Engine for ItemSet
---@field CreateRelated fun(self: dbc.row.ItemSet, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.ItemSet, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.ItemSet, child_table: string, child_field?: string): any[]

---Typed table handle for ItemSet.dbc.
---@class dbc.Table.ItemSet : DbcTable
---@field FindById fun(self: dbc.Table.ItemSet, id: integer): dbc.row.ItemSet|nil
---@field GetById fun(self: dbc.Table.ItemSet, id: integer): dbc.row.ItemSet|nil
---@field GetRow fun(self: dbc.Table.ItemSet, row: integer): dbc.row.ItemSet
---@field NewRow fun(self: dbc.Table.ItemSet, id?: integer): dbc.row.ItemSet
---@field Create fun(self: dbc.Table.ItemSet, id?: integer): dbc.row.ItemSet
---@field CreateNext fun(self: dbc.Table.ItemSet, data?: table): dbc.row.ItemSet
---@field CloneRow fun(self: dbc.Table.ItemSet, source: integer|dbc.row.ItemSet, new_id?: integer): dbc.row.ItemSet
---@field GetAllRows fun(self: dbc.Table.ItemSet): dbc.row.ItemSet[]
---@field Query fun(self: dbc.Table.ItemSet): dbc.Query<dbc.row.ItemSet>
---@field Rows fun(self: dbc.Table.ItemSet): fun(): integer, dbc.row.ItemSet
