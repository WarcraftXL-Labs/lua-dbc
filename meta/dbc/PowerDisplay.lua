---@meta
-- Generated LuaLS annotations for PowerDisplay.dbc. Do not edit.

---Row representation of PowerDisplay.dbc.
---@class dbc.row.PowerDisplay : RowProxy
---@field ID integer
---@field ActualType integer
---@field GlobalstringBaseTag string
---@field Red integer
---@field Green integer
---@field Blue integer

-- Fluent PascalCase Methods for PowerDisplay
---@field GetID fun(self: dbc.row.PowerDisplay): integer
---@field SetID fun(self: dbc.row.PowerDisplay, value: integer): dbc.row.PowerDisplay
---@field GetActualType fun(self: dbc.row.PowerDisplay): integer
---@field SetActualType fun(self: dbc.row.PowerDisplay, value: integer): dbc.row.PowerDisplay
---@field GetGlobalstringBaseTag fun(self: dbc.row.PowerDisplay): string
---@field SetGlobalstringBaseTag fun(self: dbc.row.PowerDisplay, value: string): dbc.row.PowerDisplay
---@field GetRed fun(self: dbc.row.PowerDisplay): integer
---@field SetRed fun(self: dbc.row.PowerDisplay, value: integer): dbc.row.PowerDisplay
---@field GetGreen fun(self: dbc.row.PowerDisplay): integer
---@field SetGreen fun(self: dbc.row.PowerDisplay, value: integer): dbc.row.PowerDisplay
---@field GetBlue fun(self: dbc.row.PowerDisplay): integer
---@field SetBlue fun(self: dbc.row.PowerDisplay, value: integer): dbc.row.PowerDisplay

-- Inferred Cross-Table Relations for PowerDisplay

-- Cascading Creation & Relations Engine for PowerDisplay
---@field CreateRelated fun(self: dbc.row.PowerDisplay, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.PowerDisplay, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.PowerDisplay, child_table: string, child_field?: string): any[]

---Typed table handle for PowerDisplay.dbc.
---@class dbc.Table.PowerDisplay : DbcTable
---@field FindById fun(self: dbc.Table.PowerDisplay, id: integer): dbc.row.PowerDisplay|nil
---@field GetById fun(self: dbc.Table.PowerDisplay, id: integer): dbc.row.PowerDisplay|nil
---@field GetRow fun(self: dbc.Table.PowerDisplay, row: integer): dbc.row.PowerDisplay
---@field NewRow fun(self: dbc.Table.PowerDisplay, id?: integer): dbc.row.PowerDisplay
---@field Create fun(self: dbc.Table.PowerDisplay, id?: integer): dbc.row.PowerDisplay
---@field CreateNext fun(self: dbc.Table.PowerDisplay, data?: table): dbc.row.PowerDisplay
---@field CloneRow fun(self: dbc.Table.PowerDisplay, source: integer|dbc.row.PowerDisplay, new_id?: integer): dbc.row.PowerDisplay
---@field GetAllRows fun(self: dbc.Table.PowerDisplay): dbc.row.PowerDisplay[]
---@field Query fun(self: dbc.Table.PowerDisplay): dbc.Query<dbc.row.PowerDisplay>
---@field Rows fun(self: dbc.Table.PowerDisplay): fun(): integer, dbc.row.PowerDisplay
