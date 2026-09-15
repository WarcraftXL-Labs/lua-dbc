---@meta
-- Generated LuaLS annotations for GtOCTRegenHP.dbc. Do not edit.

---Row representation of GtOCTRegenHP.dbc.
---@class dbc.row.GtOCTRegenHP : RowProxy
---@field Data number

-- Fluent PascalCase Methods for GtOCTRegenHP
---@field GetData fun(self: dbc.row.GtOCTRegenHP): number
---@field SetData fun(self: dbc.row.GtOCTRegenHP, value: number): dbc.row.GtOCTRegenHP

-- Inferred Cross-Table Relations for GtOCTRegenHP

-- Cascading Creation & Relations Engine for GtOCTRegenHP
---@field CreateRelated fun(self: dbc.row.GtOCTRegenHP, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.GtOCTRegenHP, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.GtOCTRegenHP, child_table: string, child_field?: string): any[]

---Typed table handle for GtOCTRegenHP.dbc.
---@class dbc.Table.GtOCTRegenHP : DbcTable
---@field FindById fun(self: dbc.Table.GtOCTRegenHP, id: integer): dbc.row.GtOCTRegenHP|nil
---@field GetById fun(self: dbc.Table.GtOCTRegenHP, id: integer): dbc.row.GtOCTRegenHP|nil
---@field GetRow fun(self: dbc.Table.GtOCTRegenHP, row: integer): dbc.row.GtOCTRegenHP
---@field NewRow fun(self: dbc.Table.GtOCTRegenHP, id?: integer): dbc.row.GtOCTRegenHP
---@field Create fun(self: dbc.Table.GtOCTRegenHP, id?: integer): dbc.row.GtOCTRegenHP
---@field CreateNext fun(self: dbc.Table.GtOCTRegenHP, data?: table): dbc.row.GtOCTRegenHP
---@field CloneRow fun(self: dbc.Table.GtOCTRegenHP, source: integer|dbc.row.GtOCTRegenHP, new_id?: integer): dbc.row.GtOCTRegenHP
---@field GetAllRows fun(self: dbc.Table.GtOCTRegenHP): dbc.row.GtOCTRegenHP[]
---@field Query fun(self: dbc.Table.GtOCTRegenHP): dbc.Query<dbc.row.GtOCTRegenHP>
---@field Rows fun(self: dbc.Table.GtOCTRegenHP): fun(): integer, dbc.row.GtOCTRegenHP
