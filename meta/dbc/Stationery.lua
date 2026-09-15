---@meta
-- Generated LuaLS annotations for Stationery.dbc. Do not edit.

---Row representation of Stationery.dbc.
---@class dbc.row.Stationery : RowProxy
---@field ID integer
---@field ItemID integer
---@field Texture string
---@field Flags integer

-- Fluent PascalCase Methods for Stationery
---@field GetID fun(self: dbc.row.Stationery): integer
---@field SetID fun(self: dbc.row.Stationery, value: integer): dbc.row.Stationery
---@field GetItemID fun(self: dbc.row.Stationery): integer
---@field SetItemID fun(self: dbc.row.Stationery, value: integer): dbc.row.Stationery
---@field GetTexture fun(self: dbc.row.Stationery): string
---@field SetTexture fun(self: dbc.row.Stationery, value: string): dbc.row.Stationery
---@field GetFlags fun(self: dbc.row.Stationery): integer
---@field SetFlags fun(self: dbc.row.Stationery, value: integer): dbc.row.Stationery
---@field HasFlags fun(self: dbc.row.Stationery, flag: integer): boolean
---@field AddFlags fun(self: dbc.row.Stationery, flag: integer): dbc.row.Stationery
---@field RemoveFlags fun(self: dbc.row.Stationery, flag: integer): dbc.row.Stationery

-- Inferred Cross-Table Relations for Stationery
---@field GetItem fun(self: dbc.row.Stationery): dbc.row.Item|nil
---@field SetItem fun(self: dbc.row.Stationery, target: dbc.row.Item|integer): dbc.row.Stationery

-- Cascading Creation & Relations Engine for Stationery
---@field CreateRelated fun(self: dbc.row.Stationery, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.Stationery, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.Stationery, child_table: string, child_field?: string): any[]

---Typed table handle for Stationery.dbc.
---@class dbc.Table.Stationery : DbcTable
---@field FindById fun(self: dbc.Table.Stationery, id: integer): dbc.row.Stationery|nil
---@field GetById fun(self: dbc.Table.Stationery, id: integer): dbc.row.Stationery|nil
---@field GetRow fun(self: dbc.Table.Stationery, row: integer): dbc.row.Stationery
---@field NewRow fun(self: dbc.Table.Stationery, id?: integer): dbc.row.Stationery
---@field Create fun(self: dbc.Table.Stationery, id?: integer): dbc.row.Stationery
---@field CreateNext fun(self: dbc.Table.Stationery, data?: table): dbc.row.Stationery
---@field CloneRow fun(self: dbc.Table.Stationery, source: integer|dbc.row.Stationery, new_id?: integer): dbc.row.Stationery
---@field GetAllRows fun(self: dbc.Table.Stationery): dbc.row.Stationery[]
---@field Query fun(self: dbc.Table.Stationery): dbc.Query<dbc.row.Stationery>
---@field Rows fun(self: dbc.Table.Stationery): fun(): integer, dbc.row.Stationery
