---@meta
-- Generated LuaLS annotations for DungeonMapChunk.dbc. Do not edit.

---Row representation of DungeonMapChunk.dbc.
---@class dbc.row.DungeonMapChunk : RowProxy
---@field ID integer
---@field MapID integer
---@field WmoGroupID integer
---@field DungeonMapID integer
---@field MinZ number

-- Fluent PascalCase Methods for DungeonMapChunk
---@field GetID fun(self: dbc.row.DungeonMapChunk): integer
---@field SetID fun(self: dbc.row.DungeonMapChunk, value: integer): dbc.row.DungeonMapChunk
---@field GetMapID fun(self: dbc.row.DungeonMapChunk): integer
---@field SetMapID fun(self: dbc.row.DungeonMapChunk, value: integer): dbc.row.DungeonMapChunk
---@field GetWmoGroupID fun(self: dbc.row.DungeonMapChunk): integer
---@field SetWmoGroupID fun(self: dbc.row.DungeonMapChunk, value: integer): dbc.row.DungeonMapChunk
---@field GetDungeonMapID fun(self: dbc.row.DungeonMapChunk): integer
---@field SetDungeonMapID fun(self: dbc.row.DungeonMapChunk, value: integer): dbc.row.DungeonMapChunk
---@field GetMinZ fun(self: dbc.row.DungeonMapChunk): number
---@field SetMinZ fun(self: dbc.row.DungeonMapChunk, value: number): dbc.row.DungeonMapChunk

-- Inferred Cross-Table Relations for DungeonMapChunk
---@field GetMap fun(self: dbc.row.DungeonMapChunk): dbc.row.Map|nil
---@field SetMap fun(self: dbc.row.DungeonMapChunk, target: dbc.row.Map|integer): dbc.row.DungeonMapChunk
---@field GetDungeonMap fun(self: dbc.row.DungeonMapChunk): dbc.row.DungeonMap|nil
---@field SetDungeonMap fun(self: dbc.row.DungeonMapChunk, target: dbc.row.DungeonMap|integer): dbc.row.DungeonMapChunk

-- Cascading Creation & Relations Engine for DungeonMapChunk
---@field CreateRelated fun(self: dbc.row.DungeonMapChunk, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.DungeonMapChunk, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.DungeonMapChunk, child_table: string, child_field?: string): any[]

---Typed table handle for DungeonMapChunk.dbc.
---@class dbc.Table.DungeonMapChunk : DbcTable
---@field FindById fun(self: dbc.Table.DungeonMapChunk, id: integer): dbc.row.DungeonMapChunk|nil
---@field GetById fun(self: dbc.Table.DungeonMapChunk, id: integer): dbc.row.DungeonMapChunk|nil
---@field GetRow fun(self: dbc.Table.DungeonMapChunk, row: integer): dbc.row.DungeonMapChunk
---@field NewRow fun(self: dbc.Table.DungeonMapChunk, id?: integer): dbc.row.DungeonMapChunk
---@field Create fun(self: dbc.Table.DungeonMapChunk, id?: integer): dbc.row.DungeonMapChunk
---@field CreateNext fun(self: dbc.Table.DungeonMapChunk, data?: table): dbc.row.DungeonMapChunk
---@field CloneRow fun(self: dbc.Table.DungeonMapChunk, source: integer|dbc.row.DungeonMapChunk, new_id?: integer): dbc.row.DungeonMapChunk
---@field GetAllRows fun(self: dbc.Table.DungeonMapChunk): dbc.row.DungeonMapChunk[]
---@field Query fun(self: dbc.Table.DungeonMapChunk): dbc.Query<dbc.row.DungeonMapChunk>
---@field Rows fun(self: dbc.Table.DungeonMapChunk): fun(): integer, dbc.row.DungeonMapChunk
