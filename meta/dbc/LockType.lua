---@meta
-- Generated LuaLS annotations for LockType.dbc. Do not edit.

---Row representation of LockType.dbc.
---@class dbc.row.LockType : RowProxy
---@field ID integer
---@field Name string
---@field ResourceName string
---@field Verb string
---@field CursorName string

-- Fluent PascalCase Methods for LockType
---@field GetID fun(self: dbc.row.LockType): integer
---@field SetID fun(self: dbc.row.LockType, value: integer): dbc.row.LockType
---@field GetName fun(self: dbc.row.LockType, locale?: string|integer): string
---@field SetName fun(self: dbc.row.LockType, value: string, locale?: string|integer): dbc.row.LockType
---@field GetResourceName fun(self: dbc.row.LockType, locale?: string|integer): string
---@field SetResourceName fun(self: dbc.row.LockType, value: string, locale?: string|integer): dbc.row.LockType
---@field GetVerb fun(self: dbc.row.LockType, locale?: string|integer): string
---@field SetVerb fun(self: dbc.row.LockType, value: string, locale?: string|integer): dbc.row.LockType
---@field GetCursorName fun(self: dbc.row.LockType): string
---@field SetCursorName fun(self: dbc.row.LockType, value: string): dbc.row.LockType

-- Inferred Cross-Table Relations for LockType

-- Cascading Creation & Relations Engine for LockType
---@field CreateRelated fun(self: dbc.row.LockType, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.LockType, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.LockType, child_table: string, child_field?: string): any[]

---Typed table handle for LockType.dbc.
---@class dbc.Table.LockType : DbcTable
---@field FindById fun(self: dbc.Table.LockType, id: integer): dbc.row.LockType|nil
---@field GetById fun(self: dbc.Table.LockType, id: integer): dbc.row.LockType|nil
---@field GetRow fun(self: dbc.Table.LockType, row: integer): dbc.row.LockType
---@field NewRow fun(self: dbc.Table.LockType, id?: integer): dbc.row.LockType
---@field Create fun(self: dbc.Table.LockType, id?: integer): dbc.row.LockType
---@field CreateNext fun(self: dbc.Table.LockType, data?: table): dbc.row.LockType
---@field CloneRow fun(self: dbc.Table.LockType, source: integer|dbc.row.LockType, new_id?: integer): dbc.row.LockType
---@field GetAllRows fun(self: dbc.Table.LockType): dbc.row.LockType[]
---@field Query fun(self: dbc.Table.LockType): dbc.Query<dbc.row.LockType>
---@field Rows fun(self: dbc.Table.LockType): fun(): integer, dbc.row.LockType
