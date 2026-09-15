---@meta
-- Generated LuaLS annotations for SpellRange.dbc. Do not edit.

---Row representation of SpellRange.dbc.
---@class dbc.row.SpellRange : RowProxy
---@field ID integer
---@field RangeMin number[]
---@field RangeMax number[]
---@field Flags integer
---@field DisplayName string
---@field DisplayNameShort string

-- Fluent PascalCase Methods for SpellRange
---@field GetID fun(self: dbc.row.SpellRange): integer
---@field SetID fun(self: dbc.row.SpellRange, value: integer): dbc.row.SpellRange
---@field GetRangeMin fun(self: dbc.row.SpellRange, index?: integer): number|number[]
---@field SetRangeMin fun(self: dbc.row.SpellRange, value: number|number[], index?: integer): dbc.row.SpellRange
---@field GetRangeMax fun(self: dbc.row.SpellRange, index?: integer): number|number[]
---@field SetRangeMax fun(self: dbc.row.SpellRange, value: number|number[], index?: integer): dbc.row.SpellRange
---@field GetFlags fun(self: dbc.row.SpellRange): integer
---@field SetFlags fun(self: dbc.row.SpellRange, value: integer): dbc.row.SpellRange
---@field HasFlags fun(self: dbc.row.SpellRange, flag: integer): boolean
---@field AddFlags fun(self: dbc.row.SpellRange, flag: integer): dbc.row.SpellRange
---@field RemoveFlags fun(self: dbc.row.SpellRange, flag: integer): dbc.row.SpellRange
---@field GetDisplayName fun(self: dbc.row.SpellRange, locale?: string|integer): string
---@field SetDisplayName fun(self: dbc.row.SpellRange, value: string, locale?: string|integer): dbc.row.SpellRange
---@field GetDisplayNameShort fun(self: dbc.row.SpellRange, locale?: string|integer): string
---@field SetDisplayNameShort fun(self: dbc.row.SpellRange, value: string, locale?: string|integer): dbc.row.SpellRange

-- Inferred Cross-Table Relations for SpellRange

-- Cascading Creation & Relations Engine for SpellRange
---@field CreateRelated fun(self: dbc.row.SpellRange, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.SpellRange, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.SpellRange, child_table: string, child_field?: string): any[]

---Typed table handle for SpellRange.dbc.
---@class dbc.Table.SpellRange : DbcTable
---@field FindById fun(self: dbc.Table.SpellRange, id: integer): dbc.row.SpellRange|nil
---@field GetById fun(self: dbc.Table.SpellRange, id: integer): dbc.row.SpellRange|nil
---@field GetRow fun(self: dbc.Table.SpellRange, row: integer): dbc.row.SpellRange
---@field NewRow fun(self: dbc.Table.SpellRange, id?: integer): dbc.row.SpellRange
---@field Create fun(self: dbc.Table.SpellRange, id?: integer): dbc.row.SpellRange
---@field CreateNext fun(self: dbc.Table.SpellRange, data?: table): dbc.row.SpellRange
---@field CloneRow fun(self: dbc.Table.SpellRange, source: integer|dbc.row.SpellRange, new_id?: integer): dbc.row.SpellRange
---@field GetAllRows fun(self: dbc.Table.SpellRange): dbc.row.SpellRange[]
---@field Query fun(self: dbc.Table.SpellRange): dbc.Query<dbc.row.SpellRange>
---@field Rows fun(self: dbc.Table.SpellRange): fun(): integer, dbc.row.SpellRange
