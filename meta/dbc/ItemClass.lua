---@meta
-- Generated LuaLS annotations for ItemClass.dbc. Do not edit.

---Row representation of ItemClass.dbc.
---@class dbc.row.ItemClass : RowProxy
---@field ClassID integer
---@field SubclassMapID integer
---@field Flags integer
---@field ClassName string

-- Fluent PascalCase Methods for ItemClass
---@field GetClassID fun(self: dbc.row.ItemClass): integer
---@field SetClassID fun(self: dbc.row.ItemClass, value: integer): dbc.row.ItemClass
---@field GetSubclassMapID fun(self: dbc.row.ItemClass): integer
---@field SetSubclassMapID fun(self: dbc.row.ItemClass, value: integer): dbc.row.ItemClass
---@field GetFlags fun(self: dbc.row.ItemClass): integer
---@field SetFlags fun(self: dbc.row.ItemClass, value: integer): dbc.row.ItemClass
---@field HasFlags fun(self: dbc.row.ItemClass, flag: integer): boolean
---@field AddFlags fun(self: dbc.row.ItemClass, flag: integer): dbc.row.ItemClass
---@field RemoveFlags fun(self: dbc.row.ItemClass, flag: integer): dbc.row.ItemClass
---@field GetClassName fun(self: dbc.row.ItemClass, locale?: string|integer): string
---@field SetClassName fun(self: dbc.row.ItemClass, value: string, locale?: string|integer): dbc.row.ItemClass

-- Inferred Cross-Table Relations for ItemClass

-- Cascading Creation & Relations Engine for ItemClass
---@field CreateRelated fun(self: dbc.row.ItemClass, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.ItemClass, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.ItemClass, child_table: string, child_field?: string): any[]

---Typed table handle for ItemClass.dbc.
---@class dbc.Table.ItemClass : DbcTable
---@field FindById fun(self: dbc.Table.ItemClass, id: integer): dbc.row.ItemClass|nil
---@field GetById fun(self: dbc.Table.ItemClass, id: integer): dbc.row.ItemClass|nil
---@field GetRow fun(self: dbc.Table.ItemClass, row: integer): dbc.row.ItemClass
---@field NewRow fun(self: dbc.Table.ItemClass, id?: integer): dbc.row.ItemClass
---@field Create fun(self: dbc.Table.ItemClass, id?: integer): dbc.row.ItemClass
---@field CreateNext fun(self: dbc.Table.ItemClass, data?: table): dbc.row.ItemClass
---@field CloneRow fun(self: dbc.Table.ItemClass, source: integer|dbc.row.ItemClass, new_id?: integer): dbc.row.ItemClass
---@field GetAllRows fun(self: dbc.Table.ItemClass): dbc.row.ItemClass[]
---@field Query fun(self: dbc.Table.ItemClass): dbc.Query<dbc.row.ItemClass>
---@field Rows fun(self: dbc.Table.ItemClass): fun(): integer, dbc.row.ItemClass
