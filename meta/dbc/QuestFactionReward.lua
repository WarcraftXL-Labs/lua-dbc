---@meta
-- Generated LuaLS annotations for QuestFactionReward.dbc. Do not edit.

---Row representation of QuestFactionReward.dbc.
---@class dbc.row.QuestFactionReward : RowProxy
---@field ID integer
---@field Difficulty integer[]

-- Fluent PascalCase Methods for QuestFactionReward
---@field GetID fun(self: dbc.row.QuestFactionReward): integer
---@field SetID fun(self: dbc.row.QuestFactionReward, value: integer): dbc.row.QuestFactionReward
---@field GetDifficulty fun(self: dbc.row.QuestFactionReward, index?: integer): integer|integer[]
---@field SetDifficulty fun(self: dbc.row.QuestFactionReward, value: integer|integer[], index?: integer): dbc.row.QuestFactionReward

-- Inferred Cross-Table Relations for QuestFactionReward

-- Cascading Creation & Relations Engine for QuestFactionReward
---@field CreateRelated fun(self: dbc.row.QuestFactionReward, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.QuestFactionReward, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.QuestFactionReward, child_table: string, child_field?: string): any[]

---Typed table handle for QuestFactionReward.dbc.
---@class dbc.Table.QuestFactionReward : DbcTable
---@field FindById fun(self: dbc.Table.QuestFactionReward, id: integer): dbc.row.QuestFactionReward|nil
---@field GetById fun(self: dbc.Table.QuestFactionReward, id: integer): dbc.row.QuestFactionReward|nil
---@field GetRow fun(self: dbc.Table.QuestFactionReward, row: integer): dbc.row.QuestFactionReward
---@field NewRow fun(self: dbc.Table.QuestFactionReward, id?: integer): dbc.row.QuestFactionReward
---@field Create fun(self: dbc.Table.QuestFactionReward, id?: integer): dbc.row.QuestFactionReward
---@field CreateNext fun(self: dbc.Table.QuestFactionReward, data?: table): dbc.row.QuestFactionReward
---@field CloneRow fun(self: dbc.Table.QuestFactionReward, source: integer|dbc.row.QuestFactionReward, new_id?: integer): dbc.row.QuestFactionReward
---@field GetAllRows fun(self: dbc.Table.QuestFactionReward): dbc.row.QuestFactionReward[]
---@field Query fun(self: dbc.Table.QuestFactionReward): dbc.Query<dbc.row.QuestFactionReward>
---@field Rows fun(self: dbc.Table.QuestFactionReward): fun(): integer, dbc.row.QuestFactionReward
