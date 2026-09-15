---@meta
-- Generated LuaLS annotations for Lock.dbc. Do not edit.

---Row representation of Lock.dbc.
---@class dbc.row.Lock : RowProxy
---@field ID integer
---@field Type integer[]
---@field Index integer[]
---@field Skill integer[]
---@field Action integer[]

-- Fluent PascalCase Methods for Lock
---@field GetID fun(self: dbc.row.Lock): integer
---@field SetID fun(self: dbc.row.Lock, value: integer): dbc.row.Lock
---@field GetType fun(self: dbc.row.Lock, index?: integer): integer|integer[]
---@field SetType fun(self: dbc.row.Lock, value: integer|integer[], index?: integer): dbc.row.Lock
---@field GetIndex fun(self: dbc.row.Lock, index?: integer): integer|integer[]
---@field SetIndex fun(self: dbc.row.Lock, value: integer|integer[], index?: integer): dbc.row.Lock
---@field GetSkill fun(self: dbc.row.Lock, index?: integer): integer|integer[]
---@field SetSkill fun(self: dbc.row.Lock, value: integer|integer[], index?: integer): dbc.row.Lock
---@field GetAction fun(self: dbc.row.Lock, index?: integer): integer|integer[]
---@field SetAction fun(self: dbc.row.Lock, value: integer|integer[], index?: integer): dbc.row.Lock

-- Inferred Cross-Table Relations for Lock

-- Cascading Creation & Relations Engine for Lock
---@field CreateRelated fun(self: dbc.row.Lock, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.Lock, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.Lock, child_table: string, child_field?: string): any[]

---Typed table handle for Lock.dbc.
---@class dbc.Table.Lock : DbcTable
---@field FindById fun(self: dbc.Table.Lock, id: integer): dbc.row.Lock|nil
---@field GetById fun(self: dbc.Table.Lock, id: integer): dbc.row.Lock|nil
---@field GetRow fun(self: dbc.Table.Lock, row: integer): dbc.row.Lock
---@field NewRow fun(self: dbc.Table.Lock, id?: integer): dbc.row.Lock
---@field Create fun(self: dbc.Table.Lock, id?: integer): dbc.row.Lock
---@field CreateNext fun(self: dbc.Table.Lock, data?: table): dbc.row.Lock
---@field CloneRow fun(self: dbc.Table.Lock, source: integer|dbc.row.Lock, new_id?: integer): dbc.row.Lock
---@field GetAllRows fun(self: dbc.Table.Lock): dbc.row.Lock[]
---@field Query fun(self: dbc.Table.Lock): dbc.Query<dbc.row.Lock>
---@field Rows fun(self: dbc.Table.Lock): fun(): integer, dbc.row.Lock
