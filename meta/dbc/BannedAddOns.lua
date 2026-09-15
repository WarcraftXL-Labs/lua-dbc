---@meta
-- Generated LuaLS annotations for BannedAddOns.dbc. Do not edit.

---Row representation of BannedAddOns.dbc.
---@class dbc.row.BannedAddOns : RowProxy
---@field ID integer
---@field NameMD5_ integer[]
---@field VersionMD5_ integer[]
---@field LastModified integer
---@field Flags integer

-- Fluent PascalCase Methods for BannedAddOns
---@field GetID fun(self: dbc.row.BannedAddOns): integer
---@field SetID fun(self: dbc.row.BannedAddOns, value: integer): dbc.row.BannedAddOns
---@field GetNameMD5_ fun(self: dbc.row.BannedAddOns, index?: integer): integer|integer[]
---@field SetNameMD5_ fun(self: dbc.row.BannedAddOns, value: integer|integer[], index?: integer): dbc.row.BannedAddOns
---@field GetVersionMD5_ fun(self: dbc.row.BannedAddOns, index?: integer): integer|integer[]
---@field SetVersionMD5_ fun(self: dbc.row.BannedAddOns, value: integer|integer[], index?: integer): dbc.row.BannedAddOns
---@field GetLastModified fun(self: dbc.row.BannedAddOns): integer
---@field SetLastModified fun(self: dbc.row.BannedAddOns, value: integer): dbc.row.BannedAddOns
---@field GetFlags fun(self: dbc.row.BannedAddOns): integer
---@field SetFlags fun(self: dbc.row.BannedAddOns, value: integer): dbc.row.BannedAddOns
---@field HasFlags fun(self: dbc.row.BannedAddOns, flag: integer): boolean
---@field AddFlags fun(self: dbc.row.BannedAddOns, flag: integer): dbc.row.BannedAddOns
---@field RemoveFlags fun(self: dbc.row.BannedAddOns, flag: integer): dbc.row.BannedAddOns

-- Inferred Cross-Table Relations for BannedAddOns

-- Cascading Creation & Relations Engine for BannedAddOns
---@field CreateRelated fun(self: dbc.row.BannedAddOns, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.BannedAddOns, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.BannedAddOns, child_table: string, child_field?: string): any[]

---Typed table handle for BannedAddOns.dbc.
---@class dbc.Table.BannedAddOns : DbcTable
---@field FindById fun(self: dbc.Table.BannedAddOns, id: integer): dbc.row.BannedAddOns|nil
---@field GetById fun(self: dbc.Table.BannedAddOns, id: integer): dbc.row.BannedAddOns|nil
---@field GetRow fun(self: dbc.Table.BannedAddOns, row: integer): dbc.row.BannedAddOns
---@field NewRow fun(self: dbc.Table.BannedAddOns, id?: integer): dbc.row.BannedAddOns
---@field Create fun(self: dbc.Table.BannedAddOns, id?: integer): dbc.row.BannedAddOns
---@field CreateNext fun(self: dbc.Table.BannedAddOns, data?: table): dbc.row.BannedAddOns
---@field CloneRow fun(self: dbc.Table.BannedAddOns, source: integer|dbc.row.BannedAddOns, new_id?: integer): dbc.row.BannedAddOns
---@field GetAllRows fun(self: dbc.Table.BannedAddOns): dbc.row.BannedAddOns[]
---@field Query fun(self: dbc.Table.BannedAddOns): dbc.Query<dbc.row.BannedAddOns>
---@field Rows fun(self: dbc.Table.BannedAddOns): fun(): integer, dbc.row.BannedAddOns
