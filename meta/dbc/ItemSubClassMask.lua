---@meta
-- Generated LuaLS annotations for ItemSubClassMask.dbc. Do not edit.

---Row representation of ItemSubClassMask.dbc.
---@class dbc.row.ItemSubClassMask : RowProxy
---@field ClassID integer
---@field flag integer
---@field Name string

-- Fluent PascalCase Methods for ItemSubClassMask
---@field GetClassID fun(self: dbc.row.ItemSubClassMask): integer
---@field SetClassID fun(self: dbc.row.ItemSubClassMask, value: integer): dbc.row.ItemSubClassMask
---@field Getflag fun(self: dbc.row.ItemSubClassMask): integer
---@field Setflag fun(self: dbc.row.ItemSubClassMask, value: integer): dbc.row.ItemSubClassMask
---@field GetName fun(self: dbc.row.ItemSubClassMask, locale?: string|integer): string
---@field SetName fun(self: dbc.row.ItemSubClassMask, value: string, locale?: string|integer): dbc.row.ItemSubClassMask

-- Inferred Cross-Table Relations for ItemSubClassMask

-- Cascading Creation & Relations Engine for ItemSubClassMask
---@field CreateRelated fun(self: dbc.row.ItemSubClassMask, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.ItemSubClassMask, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.ItemSubClassMask, child_table: string, child_field?: string): any[]

---Typed table handle for ItemSubClassMask.dbc.
---@class dbc.Table.ItemSubClassMask : DbcTable
---@field FindById fun(self: dbc.Table.ItemSubClassMask, id: integer): dbc.row.ItemSubClassMask|nil
---@field GetById fun(self: dbc.Table.ItemSubClassMask, id: integer): dbc.row.ItemSubClassMask|nil
---@field GetRow fun(self: dbc.Table.ItemSubClassMask, row: integer): dbc.row.ItemSubClassMask
---@field NewRow fun(self: dbc.Table.ItemSubClassMask, id?: integer): dbc.row.ItemSubClassMask
---@field Create fun(self: dbc.Table.ItemSubClassMask, id?: integer): dbc.row.ItemSubClassMask
---@field CreateNext fun(self: dbc.Table.ItemSubClassMask, data?: table): dbc.row.ItemSubClassMask
---@field CloneRow fun(self: dbc.Table.ItemSubClassMask, source: integer|dbc.row.ItemSubClassMask, new_id?: integer): dbc.row.ItemSubClassMask
---@field GetAllRows fun(self: dbc.Table.ItemSubClassMask): dbc.row.ItemSubClassMask[]
---@field Query fun(self: dbc.Table.ItemSubClassMask): dbc.Query<dbc.row.ItemSubClassMask>
---@field Rows fun(self: dbc.Table.ItemSubClassMask): fun(): integer, dbc.row.ItemSubClassMask
