---@meta
-- Generated LuaLS annotations for CreatureType.dbc. Do not edit.

---Row representation of CreatureType.dbc.
---@class dbc.row.CreatureType : RowProxy
---@field ID integer
---@field Name string
---@field Flags integer

-- Fluent PascalCase Methods for CreatureType
---@field GetID fun(self: dbc.row.CreatureType): integer
---@field SetID fun(self: dbc.row.CreatureType, value: integer): dbc.row.CreatureType
---@field GetName fun(self: dbc.row.CreatureType, locale?: string|integer): string
---@field SetName fun(self: dbc.row.CreatureType, value: string, locale?: string|integer): dbc.row.CreatureType
---@field GetFlags fun(self: dbc.row.CreatureType): integer
---@field SetFlags fun(self: dbc.row.CreatureType, value: integer): dbc.row.CreatureType
---@field HasFlags fun(self: dbc.row.CreatureType, flag: integer): boolean
---@field AddFlags fun(self: dbc.row.CreatureType, flag: integer): dbc.row.CreatureType
---@field RemoveFlags fun(self: dbc.row.CreatureType, flag: integer): dbc.row.CreatureType

-- Inferred Cross-Table Relations for CreatureType

-- Cascading Creation & Relations Engine for CreatureType
---@field CreateRelated fun(self: dbc.row.CreatureType, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.CreatureType, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.CreatureType, child_table: string, child_field?: string): any[]

---Typed table handle for CreatureType.dbc.
---@class dbc.Table.CreatureType : DbcTable
---@field FindById fun(self: dbc.Table.CreatureType, id: integer): dbc.row.CreatureType|nil
---@field GetById fun(self: dbc.Table.CreatureType, id: integer): dbc.row.CreatureType|nil
---@field GetRow fun(self: dbc.Table.CreatureType, row: integer): dbc.row.CreatureType
---@field NewRow fun(self: dbc.Table.CreatureType, id?: integer): dbc.row.CreatureType
---@field Create fun(self: dbc.Table.CreatureType, id?: integer): dbc.row.CreatureType
---@field CreateNext fun(self: dbc.Table.CreatureType, data?: table): dbc.row.CreatureType
---@field CloneRow fun(self: dbc.Table.CreatureType, source: integer|dbc.row.CreatureType, new_id?: integer): dbc.row.CreatureType
---@field GetAllRows fun(self: dbc.Table.CreatureType): dbc.row.CreatureType[]
---@field Query fun(self: dbc.Table.CreatureType): dbc.Query<dbc.row.CreatureType>
---@field Rows fun(self: dbc.Table.CreatureType): fun(): integer, dbc.row.CreatureType
