---@meta
-- Generated LuaLS annotations for SoundFilterElem.dbc. Do not edit.

---Row representation of SoundFilterElem.dbc.
---@class dbc.row.SoundFilterElem : RowProxy
---@field ID integer
---@field SoundFilterID integer
---@field OrderIndex integer
---@field FilterType integer
---@field Params number[]

-- Fluent PascalCase Methods for SoundFilterElem
---@field GetID fun(self: dbc.row.SoundFilterElem): integer
---@field SetID fun(self: dbc.row.SoundFilterElem, value: integer): dbc.row.SoundFilterElem
---@field GetSoundFilterID fun(self: dbc.row.SoundFilterElem): integer
---@field SetSoundFilterID fun(self: dbc.row.SoundFilterElem, value: integer): dbc.row.SoundFilterElem
---@field GetOrderIndex fun(self: dbc.row.SoundFilterElem): integer
---@field SetOrderIndex fun(self: dbc.row.SoundFilterElem, value: integer): dbc.row.SoundFilterElem
---@field GetFilterType fun(self: dbc.row.SoundFilterElem): integer
---@field SetFilterType fun(self: dbc.row.SoundFilterElem, value: integer): dbc.row.SoundFilterElem
---@field GetParams fun(self: dbc.row.SoundFilterElem, index?: integer): number|number[]
---@field SetParams fun(self: dbc.row.SoundFilterElem, value: number|number[], index?: integer): dbc.row.SoundFilterElem

-- Inferred Cross-Table Relations for SoundFilterElem
---@field GetSoundFilter fun(self: dbc.row.SoundFilterElem): dbc.row.SoundFilter|nil
---@field SetSoundFilter fun(self: dbc.row.SoundFilterElem, target: dbc.row.SoundFilter|integer): dbc.row.SoundFilterElem

-- Cascading Creation & Relations Engine for SoundFilterElem
---@field CreateRelated fun(self: dbc.row.SoundFilterElem, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.SoundFilterElem, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.SoundFilterElem, child_table: string, child_field?: string): any[]

---Typed table handle for SoundFilterElem.dbc.
---@class dbc.Table.SoundFilterElem : DbcTable
---@field FindById fun(self: dbc.Table.SoundFilterElem, id: integer): dbc.row.SoundFilterElem|nil
---@field GetById fun(self: dbc.Table.SoundFilterElem, id: integer): dbc.row.SoundFilterElem|nil
---@field GetRow fun(self: dbc.Table.SoundFilterElem, row: integer): dbc.row.SoundFilterElem
---@field NewRow fun(self: dbc.Table.SoundFilterElem, id?: integer): dbc.row.SoundFilterElem
---@field Create fun(self: dbc.Table.SoundFilterElem, id?: integer): dbc.row.SoundFilterElem
---@field CreateNext fun(self: dbc.Table.SoundFilterElem, data?: table): dbc.row.SoundFilterElem
---@field CloneRow fun(self: dbc.Table.SoundFilterElem, source: integer|dbc.row.SoundFilterElem, new_id?: integer): dbc.row.SoundFilterElem
---@field GetAllRows fun(self: dbc.Table.SoundFilterElem): dbc.row.SoundFilterElem[]
---@field Query fun(self: dbc.Table.SoundFilterElem): dbc.Query<dbc.row.SoundFilterElem>
---@field Rows fun(self: dbc.Table.SoundFilterElem): fun(): integer, dbc.row.SoundFilterElem
