---@meta
-- Generated LuaLS annotations for LoadingScreens.dbc. Do not edit.

---Row representation of LoadingScreens.dbc.
---@class dbc.row.LoadingScreens : RowProxy
---@field ID integer
---@field Name string
---@field FileName string
---@field HasWideScreen integer

-- Fluent PascalCase Methods for LoadingScreens
---@field GetID fun(self: dbc.row.LoadingScreens): integer
---@field SetID fun(self: dbc.row.LoadingScreens, value: integer): dbc.row.LoadingScreens
---@field GetName fun(self: dbc.row.LoadingScreens): string
---@field SetName fun(self: dbc.row.LoadingScreens, value: string): dbc.row.LoadingScreens
---@field GetFileName fun(self: dbc.row.LoadingScreens): string
---@field SetFileName fun(self: dbc.row.LoadingScreens, value: string): dbc.row.LoadingScreens
---@field GetHasWideScreen fun(self: dbc.row.LoadingScreens): integer
---@field SetHasWideScreen fun(self: dbc.row.LoadingScreens, value: integer): dbc.row.LoadingScreens

-- Inferred Cross-Table Relations for LoadingScreens

-- Cascading Creation & Relations Engine for LoadingScreens
---@field CreateRelated fun(self: dbc.row.LoadingScreens, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.LoadingScreens, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.LoadingScreens, child_table: string, child_field?: string): any[]

---Typed table handle for LoadingScreens.dbc.
---@class dbc.Table.LoadingScreens : DbcTable
---@field FindById fun(self: dbc.Table.LoadingScreens, id: integer): dbc.row.LoadingScreens|nil
---@field GetById fun(self: dbc.Table.LoadingScreens, id: integer): dbc.row.LoadingScreens|nil
---@field GetRow fun(self: dbc.Table.LoadingScreens, row: integer): dbc.row.LoadingScreens
---@field NewRow fun(self: dbc.Table.LoadingScreens, id?: integer): dbc.row.LoadingScreens
---@field Create fun(self: dbc.Table.LoadingScreens, id?: integer): dbc.row.LoadingScreens
---@field CreateNext fun(self: dbc.Table.LoadingScreens, data?: table): dbc.row.LoadingScreens
---@field CloneRow fun(self: dbc.Table.LoadingScreens, source: integer|dbc.row.LoadingScreens, new_id?: integer): dbc.row.LoadingScreens
---@field GetAllRows fun(self: dbc.Table.LoadingScreens): dbc.row.LoadingScreens[]
---@field Query fun(self: dbc.Table.LoadingScreens): dbc.Query<dbc.row.LoadingScreens>
---@field Rows fun(self: dbc.Table.LoadingScreens): fun(): integer, dbc.row.LoadingScreens
