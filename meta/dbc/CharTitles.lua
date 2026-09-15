---@meta
-- Generated LuaLS annotations for CharTitles.dbc. Do not edit.

---Row representation of CharTitles.dbc.
---@class dbc.row.CharTitles : RowProxy
---@field ID integer
---@field Condition_ID integer
---@field Name string
---@field Name1 string
---@field Mask_ID integer

-- Fluent PascalCase Methods for CharTitles
---@field GetID fun(self: dbc.row.CharTitles): integer
---@field SetID fun(self: dbc.row.CharTitles, value: integer): dbc.row.CharTitles
---@field GetCondition_ID fun(self: dbc.row.CharTitles): integer
---@field SetCondition_ID fun(self: dbc.row.CharTitles, value: integer): dbc.row.CharTitles
---@field GetName fun(self: dbc.row.CharTitles, locale?: string|integer): string
---@field SetName fun(self: dbc.row.CharTitles, value: string, locale?: string|integer): dbc.row.CharTitles
---@field GetName1 fun(self: dbc.row.CharTitles, locale?: string|integer): string
---@field SetName1 fun(self: dbc.row.CharTitles, value: string, locale?: string|integer): dbc.row.CharTitles
---@field GetMask_ID fun(self: dbc.row.CharTitles): integer
---@field SetMask_ID fun(self: dbc.row.CharTitles, value: integer): dbc.row.CharTitles
---@field HasMask_ID fun(self: dbc.row.CharTitles, flag: integer): boolean
---@field AddMask_ID fun(self: dbc.row.CharTitles, flag: integer): dbc.row.CharTitles
---@field RemoveMask_ID fun(self: dbc.row.CharTitles, flag: integer): dbc.row.CharTitles

-- Inferred Cross-Table Relations for CharTitles

-- Cascading Creation & Relations Engine for CharTitles
---@field CreateRelated fun(self: dbc.row.CharTitles, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.CharTitles, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.CharTitles, child_table: string, child_field?: string): any[]

---Typed table handle for CharTitles.dbc.
---@class dbc.Table.CharTitles : DbcTable
---@field FindById fun(self: dbc.Table.CharTitles, id: integer): dbc.row.CharTitles|nil
---@field GetById fun(self: dbc.Table.CharTitles, id: integer): dbc.row.CharTitles|nil
---@field GetRow fun(self: dbc.Table.CharTitles, row: integer): dbc.row.CharTitles
---@field NewRow fun(self: dbc.Table.CharTitles, id?: integer): dbc.row.CharTitles
---@field Create fun(self: dbc.Table.CharTitles, id?: integer): dbc.row.CharTitles
---@field CreateNext fun(self: dbc.Table.CharTitles, data?: table): dbc.row.CharTitles
---@field CloneRow fun(self: dbc.Table.CharTitles, source: integer|dbc.row.CharTitles, new_id?: integer): dbc.row.CharTitles
---@field GetAllRows fun(self: dbc.Table.CharTitles): dbc.row.CharTitles[]
---@field Query fun(self: dbc.Table.CharTitles): dbc.Query<dbc.row.CharTitles>
---@field Rows fun(self: dbc.Table.CharTitles): fun(): integer, dbc.row.CharTitles
