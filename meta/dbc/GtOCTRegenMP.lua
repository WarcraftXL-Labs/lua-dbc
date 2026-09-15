---@meta
-- Generated LuaLS annotations for GtOCTRegenMP.dbc. Do not edit.

---Row representation of GtOCTRegenMP.dbc.
---@class dbc.row.GtOCTRegenMP : RowProxy
---@field Data number

-- Fluent PascalCase Methods for GtOCTRegenMP
---@field GetData fun(self: dbc.row.GtOCTRegenMP): number
---@field SetData fun(self: dbc.row.GtOCTRegenMP, value: number): dbc.row.GtOCTRegenMP

-- Inferred Cross-Table Relations for GtOCTRegenMP

-- Cascading Creation & Relations Engine for GtOCTRegenMP
---@field CreateRelated fun(self: dbc.row.GtOCTRegenMP, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.GtOCTRegenMP, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.GtOCTRegenMP, child_table: string, child_field?: string): any[]

---Typed table handle for GtOCTRegenMP.dbc.
---@class dbc.Table.GtOCTRegenMP : DbcTable
---@field FindById fun(self: dbc.Table.GtOCTRegenMP, id: integer): dbc.row.GtOCTRegenMP|nil
---@field GetById fun(self: dbc.Table.GtOCTRegenMP, id: integer): dbc.row.GtOCTRegenMP|nil
---@field GetRow fun(self: dbc.Table.GtOCTRegenMP, row: integer): dbc.row.GtOCTRegenMP
---@field NewRow fun(self: dbc.Table.GtOCTRegenMP, id?: integer): dbc.row.GtOCTRegenMP
---@field Create fun(self: dbc.Table.GtOCTRegenMP, id?: integer): dbc.row.GtOCTRegenMP
---@field CreateNext fun(self: dbc.Table.GtOCTRegenMP, data?: table): dbc.row.GtOCTRegenMP
---@field CloneRow fun(self: dbc.Table.GtOCTRegenMP, source: integer|dbc.row.GtOCTRegenMP, new_id?: integer): dbc.row.GtOCTRegenMP
---@field GetAllRows fun(self: dbc.Table.GtOCTRegenMP): dbc.row.GtOCTRegenMP[]
---@field Query fun(self: dbc.Table.GtOCTRegenMP): dbc.Query<dbc.row.GtOCTRegenMP>
---@field Rows fun(self: dbc.Table.GtOCTRegenMP): fun(): integer, dbc.row.GtOCTRegenMP
