---@meta
-- Generated LuaLS annotations for QuestXP.dbc. Do not edit.

---Row representation of QuestXP.dbc.
---@class dbc.row.QuestXP : RowProxy
---@field ID integer
---@field Difficulty integer[]

-- Fluent PascalCase Methods for QuestXP
---@field GetID fun(self: dbc.row.QuestXP): integer
---@field SetID fun(self: dbc.row.QuestXP, value: integer): dbc.row.QuestXP
---@field GetDifficulty fun(self: dbc.row.QuestXP, index?: integer): integer|integer[]
---@field SetDifficulty fun(self: dbc.row.QuestXP, value: integer|integer[], index?: integer): dbc.row.QuestXP

-- Inferred Cross-Table Relations for QuestXP

-- Cascading Creation & Relations Engine for QuestXP
---@field CreateRelated fun(self: dbc.row.QuestXP, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.QuestXP, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.QuestXP, child_table: string, child_field?: string): any[]

---Typed table handle for QuestXP.dbc.
---@class dbc.Table.QuestXP : DbcTable
---@field FindById fun(self: dbc.Table.QuestXP, id: integer): dbc.row.QuestXP|nil
---@field GetById fun(self: dbc.Table.QuestXP, id: integer): dbc.row.QuestXP|nil
---@field GetRow fun(self: dbc.Table.QuestXP, row: integer): dbc.row.QuestXP
---@field NewRow fun(self: dbc.Table.QuestXP, id?: integer): dbc.row.QuestXP
---@field Create fun(self: dbc.Table.QuestXP, id?: integer): dbc.row.QuestXP
---@field CreateNext fun(self: dbc.Table.QuestXP, data?: table): dbc.row.QuestXP
---@field CloneRow fun(self: dbc.Table.QuestXP, source: integer|dbc.row.QuestXP, new_id?: integer): dbc.row.QuestXP
---@field GetAllRows fun(self: dbc.Table.QuestXP): dbc.row.QuestXP[]
---@field Query fun(self: dbc.Table.QuestXP): dbc.Query<dbc.row.QuestXP>
---@field Rows fun(self: dbc.Table.QuestXP): fun(): integer, dbc.row.QuestXP
