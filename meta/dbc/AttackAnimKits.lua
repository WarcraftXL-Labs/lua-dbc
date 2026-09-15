---@meta
-- Generated LuaLS annotations for AttackAnimKits.dbc. Do not edit.

---Row representation of AttackAnimKits.dbc.
---@class dbc.row.AttackAnimKits : RowProxy
---@field ID integer
---@field Animation integer
---@field Type integer
---@field Flags integer
---@field Field04 integer

-- Fluent PascalCase Methods for AttackAnimKits
---@field GetID fun(self: dbc.row.AttackAnimKits): integer
---@field SetID fun(self: dbc.row.AttackAnimKits, value: integer): dbc.row.AttackAnimKits
---@field GetAnimation fun(self: dbc.row.AttackAnimKits): integer
---@field SetAnimation fun(self: dbc.row.AttackAnimKits, value: integer): dbc.row.AttackAnimKits
---@field GetType fun(self: dbc.row.AttackAnimKits): integer
---@field SetType fun(self: dbc.row.AttackAnimKits, value: integer): dbc.row.AttackAnimKits
---@field GetFlags fun(self: dbc.row.AttackAnimKits): integer
---@field SetFlags fun(self: dbc.row.AttackAnimKits, value: integer): dbc.row.AttackAnimKits
---@field HasFlags fun(self: dbc.row.AttackAnimKits, flag: integer): boolean
---@field AddFlags fun(self: dbc.row.AttackAnimKits, flag: integer): dbc.row.AttackAnimKits
---@field RemoveFlags fun(self: dbc.row.AttackAnimKits, flag: integer): dbc.row.AttackAnimKits
---@field GetField04 fun(self: dbc.row.AttackAnimKits): integer
---@field SetField04 fun(self: dbc.row.AttackAnimKits, value: integer): dbc.row.AttackAnimKits

-- Inferred Cross-Table Relations for AttackAnimKits

-- Cascading Creation & Relations Engine for AttackAnimKits
---@field CreateRelated fun(self: dbc.row.AttackAnimKits, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.AttackAnimKits, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.AttackAnimKits, child_table: string, child_field?: string): any[]

---Typed table handle for AttackAnimKits.dbc.
---@class dbc.Table.AttackAnimKits : DbcTable
---@field FindById fun(self: dbc.Table.AttackAnimKits, id: integer): dbc.row.AttackAnimKits|nil
---@field GetById fun(self: dbc.Table.AttackAnimKits, id: integer): dbc.row.AttackAnimKits|nil
---@field GetRow fun(self: dbc.Table.AttackAnimKits, row: integer): dbc.row.AttackAnimKits
---@field NewRow fun(self: dbc.Table.AttackAnimKits, id?: integer): dbc.row.AttackAnimKits
---@field Create fun(self: dbc.Table.AttackAnimKits, id?: integer): dbc.row.AttackAnimKits
---@field CreateNext fun(self: dbc.Table.AttackAnimKits, data?: table): dbc.row.AttackAnimKits
---@field CloneRow fun(self: dbc.Table.AttackAnimKits, source: integer|dbc.row.AttackAnimKits, new_id?: integer): dbc.row.AttackAnimKits
---@field GetAllRows fun(self: dbc.Table.AttackAnimKits): dbc.row.AttackAnimKits[]
---@field Query fun(self: dbc.Table.AttackAnimKits): dbc.Query<dbc.row.AttackAnimKits>
---@field Rows fun(self: dbc.Table.AttackAnimKits): fun(): integer, dbc.row.AttackAnimKits
