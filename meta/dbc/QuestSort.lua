---@meta
-- Generated LuaLS annotations for QuestSort.dbc. Do not edit.

---Row representation of QuestSort.dbc.
---@class dbc.row.QuestSort : RowProxy
---@field ID integer
---@field SortName string

-- Fluent PascalCase Methods for QuestSort
---@field GetID fun(self: dbc.row.QuestSort): integer
---@field SetID fun(self: dbc.row.QuestSort, value: integer): dbc.row.QuestSort
---@field GetSortName fun(self: dbc.row.QuestSort, locale?: string|integer): string
---@field SetSortName fun(self: dbc.row.QuestSort, value: string, locale?: string|integer): dbc.row.QuestSort

-- Inferred Cross-Table Relations for QuestSort

-- Cascading Creation & Relations Engine for QuestSort
---@field CreateRelated fun(self: dbc.row.QuestSort, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.QuestSort, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.QuestSort, child_table: string, child_field?: string): any[]

---Typed table handle for QuestSort.dbc.
---@class dbc.Table.QuestSort : DbcTable
---@field FindById fun(self: dbc.Table.QuestSort, id: integer): dbc.row.QuestSort|nil
---@field GetById fun(self: dbc.Table.QuestSort, id: integer): dbc.row.QuestSort|nil
---@field GetRow fun(self: dbc.Table.QuestSort, row: integer): dbc.row.QuestSort
---@field NewRow fun(self: dbc.Table.QuestSort, id?: integer): dbc.row.QuestSort
---@field Create fun(self: dbc.Table.QuestSort, id?: integer): dbc.row.QuestSort
---@field CreateNext fun(self: dbc.Table.QuestSort, data?: table): dbc.row.QuestSort
---@field CloneRow fun(self: dbc.Table.QuestSort, source: integer|dbc.row.QuestSort, new_id?: integer): dbc.row.QuestSort
---@field GetAllRows fun(self: dbc.Table.QuestSort): dbc.row.QuestSort[]
---@field Query fun(self: dbc.Table.QuestSort): dbc.Query<dbc.row.QuestSort>
---@field Rows fun(self: dbc.Table.QuestSort): fun(): integer, dbc.row.QuestSort
