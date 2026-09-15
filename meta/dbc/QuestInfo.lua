---@meta
-- Generated LuaLS annotations for QuestInfo.dbc. Do not edit.

---Row representation of QuestInfo.dbc.
---@class dbc.row.QuestInfo : RowProxy
---@field ID integer
---@field InfoName string

-- Fluent PascalCase Methods for QuestInfo
---@field GetID fun(self: dbc.row.QuestInfo): integer
---@field SetID fun(self: dbc.row.QuestInfo, value: integer): dbc.row.QuestInfo
---@field GetInfoName fun(self: dbc.row.QuestInfo, locale?: string|integer): string
---@field SetInfoName fun(self: dbc.row.QuestInfo, value: string, locale?: string|integer): dbc.row.QuestInfo

-- Inferred Cross-Table Relations for QuestInfo

-- Cascading Creation & Relations Engine for QuestInfo
---@field CreateRelated fun(self: dbc.row.QuestInfo, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.QuestInfo, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.QuestInfo, child_table: string, child_field?: string): any[]

---Typed table handle for QuestInfo.dbc.
---@class dbc.Table.QuestInfo : DbcTable
---@field FindById fun(self: dbc.Table.QuestInfo, id: integer): dbc.row.QuestInfo|nil
---@field GetById fun(self: dbc.Table.QuestInfo, id: integer): dbc.row.QuestInfo|nil
---@field GetRow fun(self: dbc.Table.QuestInfo, row: integer): dbc.row.QuestInfo
---@field NewRow fun(self: dbc.Table.QuestInfo, id?: integer): dbc.row.QuestInfo
---@field Create fun(self: dbc.Table.QuestInfo, id?: integer): dbc.row.QuestInfo
---@field CreateNext fun(self: dbc.Table.QuestInfo, data?: table): dbc.row.QuestInfo
---@field CloneRow fun(self: dbc.Table.QuestInfo, source: integer|dbc.row.QuestInfo, new_id?: integer): dbc.row.QuestInfo
---@field GetAllRows fun(self: dbc.Table.QuestInfo): dbc.row.QuestInfo[]
---@field Query fun(self: dbc.Table.QuestInfo): dbc.Query<dbc.row.QuestInfo>
---@field Rows fun(self: dbc.Table.QuestInfo): fun(): integer, dbc.row.QuestInfo
