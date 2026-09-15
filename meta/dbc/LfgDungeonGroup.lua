---@meta
-- Generated LuaLS annotations for LfgDungeonGroup.dbc. Do not edit.

---Row representation of LfgDungeonGroup.dbc.
---@class dbc.row.LfgDungeonGroup : RowProxy
---@field ID integer
---@field Name string
---@field Order_Index integer
---@field Parent_Group_Id integer
---@field Typeid integer

-- Fluent PascalCase Methods for LfgDungeonGroup
---@field GetID fun(self: dbc.row.LfgDungeonGroup): integer
---@field SetID fun(self: dbc.row.LfgDungeonGroup, value: integer): dbc.row.LfgDungeonGroup
---@field GetName fun(self: dbc.row.LfgDungeonGroup, locale?: string|integer): string
---@field SetName fun(self: dbc.row.LfgDungeonGroup, value: string, locale?: string|integer): dbc.row.LfgDungeonGroup
---@field GetOrder_Index fun(self: dbc.row.LfgDungeonGroup): integer
---@field SetOrder_Index fun(self: dbc.row.LfgDungeonGroup, value: integer): dbc.row.LfgDungeonGroup
---@field GetParent_Group_Id fun(self: dbc.row.LfgDungeonGroup): integer
---@field SetParent_Group_Id fun(self: dbc.row.LfgDungeonGroup, value: integer): dbc.row.LfgDungeonGroup
---@field GetTypeid fun(self: dbc.row.LfgDungeonGroup): integer
---@field SetTypeid fun(self: dbc.row.LfgDungeonGroup, value: integer): dbc.row.LfgDungeonGroup

-- Inferred Cross-Table Relations for LfgDungeonGroup

-- Cascading Creation & Relations Engine for LfgDungeonGroup
---@field CreateRelated fun(self: dbc.row.LfgDungeonGroup, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.LfgDungeonGroup, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.LfgDungeonGroup, child_table: string, child_field?: string): any[]

---Typed table handle for LfgDungeonGroup.dbc.
---@class dbc.Table.LfgDungeonGroup : DbcTable
---@field FindById fun(self: dbc.Table.LfgDungeonGroup, id: integer): dbc.row.LfgDungeonGroup|nil
---@field GetById fun(self: dbc.Table.LfgDungeonGroup, id: integer): dbc.row.LfgDungeonGroup|nil
---@field GetRow fun(self: dbc.Table.LfgDungeonGroup, row: integer): dbc.row.LfgDungeonGroup
---@field NewRow fun(self: dbc.Table.LfgDungeonGroup, id?: integer): dbc.row.LfgDungeonGroup
---@field Create fun(self: dbc.Table.LfgDungeonGroup, id?: integer): dbc.row.LfgDungeonGroup
---@field CreateNext fun(self: dbc.Table.LfgDungeonGroup, data?: table): dbc.row.LfgDungeonGroup
---@field CloneRow fun(self: dbc.Table.LfgDungeonGroup, source: integer|dbc.row.LfgDungeonGroup, new_id?: integer): dbc.row.LfgDungeonGroup
---@field GetAllRows fun(self: dbc.Table.LfgDungeonGroup): dbc.row.LfgDungeonGroup[]
---@field Query fun(self: dbc.Table.LfgDungeonGroup): dbc.Query<dbc.row.LfgDungeonGroup>
---@field Rows fun(self: dbc.Table.LfgDungeonGroup): fun(): integer, dbc.row.LfgDungeonGroup
