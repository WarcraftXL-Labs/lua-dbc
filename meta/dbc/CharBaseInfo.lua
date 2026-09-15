---@meta
-- Generated LuaLS annotations for CharBaseInfo.dbc. Do not edit.

---Row representation of CharBaseInfo.dbc.
---@class dbc.row.CharBaseInfo : RowProxy
---@field RaceID integer
---@field ClassID integer

-- Fluent PascalCase Methods for CharBaseInfo
---@field GetRaceID fun(self: dbc.row.CharBaseInfo): integer
---@field SetRaceID fun(self: dbc.row.CharBaseInfo, value: integer): dbc.row.CharBaseInfo
---@field GetClassID fun(self: dbc.row.CharBaseInfo): integer
---@field SetClassID fun(self: dbc.row.CharBaseInfo, value: integer): dbc.row.CharBaseInfo

-- Inferred Cross-Table Relations for CharBaseInfo

-- Cascading Creation & Relations Engine for CharBaseInfo
---@field CreateRelated fun(self: dbc.row.CharBaseInfo, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.CharBaseInfo, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.CharBaseInfo, child_table: string, child_field?: string): any[]

---Typed table handle for CharBaseInfo.dbc.
---@class dbc.Table.CharBaseInfo : DbcTable
---@field FindById fun(self: dbc.Table.CharBaseInfo, id: integer): dbc.row.CharBaseInfo|nil
---@field GetById fun(self: dbc.Table.CharBaseInfo, id: integer): dbc.row.CharBaseInfo|nil
---@field GetRow fun(self: dbc.Table.CharBaseInfo, row: integer): dbc.row.CharBaseInfo
---@field NewRow fun(self: dbc.Table.CharBaseInfo, id?: integer): dbc.row.CharBaseInfo
---@field Create fun(self: dbc.Table.CharBaseInfo, id?: integer): dbc.row.CharBaseInfo
---@field CreateNext fun(self: dbc.Table.CharBaseInfo, data?: table): dbc.row.CharBaseInfo
---@field CloneRow fun(self: dbc.Table.CharBaseInfo, source: integer|dbc.row.CharBaseInfo, new_id?: integer): dbc.row.CharBaseInfo
---@field GetAllRows fun(self: dbc.Table.CharBaseInfo): dbc.row.CharBaseInfo[]
---@field Query fun(self: dbc.Table.CharBaseInfo): dbc.Query<dbc.row.CharBaseInfo>
---@field Rows fun(self: dbc.Table.CharBaseInfo): fun(): integer, dbc.row.CharBaseInfo
