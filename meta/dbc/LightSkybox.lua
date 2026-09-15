---@meta
-- Generated LuaLS annotations for LightSkybox.dbc. Do not edit.

---Row representation of LightSkybox.dbc.
---@class dbc.row.LightSkybox : RowProxy
---@field ID integer
---@field Name string
---@field Flags integer

-- Fluent PascalCase Methods for LightSkybox
---@field GetID fun(self: dbc.row.LightSkybox): integer
---@field SetID fun(self: dbc.row.LightSkybox, value: integer): dbc.row.LightSkybox
---@field GetName fun(self: dbc.row.LightSkybox): string
---@field SetName fun(self: dbc.row.LightSkybox, value: string): dbc.row.LightSkybox
---@field GetFlags fun(self: dbc.row.LightSkybox): integer
---@field SetFlags fun(self: dbc.row.LightSkybox, value: integer): dbc.row.LightSkybox
---@field HasFlags fun(self: dbc.row.LightSkybox, flag: integer): boolean
---@field AddFlags fun(self: dbc.row.LightSkybox, flag: integer): dbc.row.LightSkybox
---@field RemoveFlags fun(self: dbc.row.LightSkybox, flag: integer): dbc.row.LightSkybox

-- Inferred Cross-Table Relations for LightSkybox

-- Cascading Creation & Relations Engine for LightSkybox
---@field CreateRelated fun(self: dbc.row.LightSkybox, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.LightSkybox, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.LightSkybox, child_table: string, child_field?: string): any[]

---Typed table handle for LightSkybox.dbc.
---@class dbc.Table.LightSkybox : DbcTable
---@field FindById fun(self: dbc.Table.LightSkybox, id: integer): dbc.row.LightSkybox|nil
---@field GetById fun(self: dbc.Table.LightSkybox, id: integer): dbc.row.LightSkybox|nil
---@field GetRow fun(self: dbc.Table.LightSkybox, row: integer): dbc.row.LightSkybox
---@field NewRow fun(self: dbc.Table.LightSkybox, id?: integer): dbc.row.LightSkybox
---@field Create fun(self: dbc.Table.LightSkybox, id?: integer): dbc.row.LightSkybox
---@field CreateNext fun(self: dbc.Table.LightSkybox, data?: table): dbc.row.LightSkybox
---@field CloneRow fun(self: dbc.Table.LightSkybox, source: integer|dbc.row.LightSkybox, new_id?: integer): dbc.row.LightSkybox
---@field GetAllRows fun(self: dbc.Table.LightSkybox): dbc.row.LightSkybox[]
---@field Query fun(self: dbc.Table.LightSkybox): dbc.Query<dbc.row.LightSkybox>
---@field Rows fun(self: dbc.Table.LightSkybox): fun(): integer, dbc.row.LightSkybox
