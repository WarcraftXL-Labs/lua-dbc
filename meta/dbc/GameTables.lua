---@meta
-- Generated LuaLS annotations for GameTables.dbc. Do not edit.

---Row representation of GameTables.dbc.
---@class dbc.row.GameTables : RowProxy
---@field Name integer
---@field NumRows integer
---@field NumColumns integer

-- Fluent PascalCase Methods for GameTables
---@field GetName fun(self: dbc.row.GameTables): integer
---@field SetName fun(self: dbc.row.GameTables, value: integer): dbc.row.GameTables
---@field GetNumRows fun(self: dbc.row.GameTables): integer
---@field SetNumRows fun(self: dbc.row.GameTables, value: integer): dbc.row.GameTables
---@field GetNumColumns fun(self: dbc.row.GameTables): integer
---@field SetNumColumns fun(self: dbc.row.GameTables, value: integer): dbc.row.GameTables

-- Inferred Cross-Table Relations for GameTables

-- Cascading Creation & Relations Engine for GameTables
---@field CreateRelated fun(self: dbc.row.GameTables, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.GameTables, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.GameTables, child_table: string, child_field?: string): any[]

---Typed table handle for GameTables.dbc.
---@class dbc.Table.GameTables : DbcTable
---@field FindById fun(self: dbc.Table.GameTables, id: integer): dbc.row.GameTables|nil
---@field GetById fun(self: dbc.Table.GameTables, id: integer): dbc.row.GameTables|nil
---@field GetRow fun(self: dbc.Table.GameTables, row: integer): dbc.row.GameTables
---@field NewRow fun(self: dbc.Table.GameTables, id?: integer): dbc.row.GameTables
---@field Create fun(self: dbc.Table.GameTables, id?: integer): dbc.row.GameTables
---@field CreateNext fun(self: dbc.Table.GameTables, data?: table): dbc.row.GameTables
---@field CloneRow fun(self: dbc.Table.GameTables, source: integer|dbc.row.GameTables, new_id?: integer): dbc.row.GameTables
---@field GetAllRows fun(self: dbc.Table.GameTables): dbc.row.GameTables[]
---@field Query fun(self: dbc.Table.GameTables): dbc.Query<dbc.row.GameTables>
---@field Rows fun(self: dbc.Table.GameTables): fun(): integer, dbc.row.GameTables
