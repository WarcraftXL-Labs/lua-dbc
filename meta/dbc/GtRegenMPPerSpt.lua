---@meta
-- Generated LuaLS annotations for GtRegenMPPerSpt.dbc. Do not edit.

---Row representation of GtRegenMPPerSpt.dbc.
---@class dbc.row.GtRegenMPPerSpt : RowProxy
---@field Data number

-- Fluent PascalCase Methods for GtRegenMPPerSpt
---@field GetData fun(self: dbc.row.GtRegenMPPerSpt): number
---@field SetData fun(self: dbc.row.GtRegenMPPerSpt, value: number): dbc.row.GtRegenMPPerSpt

-- Inferred Cross-Table Relations for GtRegenMPPerSpt

-- Cascading Creation & Relations Engine for GtRegenMPPerSpt
---@field CreateRelated fun(self: dbc.row.GtRegenMPPerSpt, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.GtRegenMPPerSpt, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.GtRegenMPPerSpt, child_table: string, child_field?: string): any[]

---Typed table handle for GtRegenMPPerSpt.dbc.
---@class dbc.Table.GtRegenMPPerSpt : DbcTable
---@field FindById fun(self: dbc.Table.GtRegenMPPerSpt, id: integer): dbc.row.GtRegenMPPerSpt|nil
---@field GetById fun(self: dbc.Table.GtRegenMPPerSpt, id: integer): dbc.row.GtRegenMPPerSpt|nil
---@field GetRow fun(self: dbc.Table.GtRegenMPPerSpt, row: integer): dbc.row.GtRegenMPPerSpt
---@field NewRow fun(self: dbc.Table.GtRegenMPPerSpt, id?: integer): dbc.row.GtRegenMPPerSpt
---@field Create fun(self: dbc.Table.GtRegenMPPerSpt, id?: integer): dbc.row.GtRegenMPPerSpt
---@field CreateNext fun(self: dbc.Table.GtRegenMPPerSpt, data?: table): dbc.row.GtRegenMPPerSpt
---@field CloneRow fun(self: dbc.Table.GtRegenMPPerSpt, source: integer|dbc.row.GtRegenMPPerSpt, new_id?: integer): dbc.row.GtRegenMPPerSpt
---@field GetAllRows fun(self: dbc.Table.GtRegenMPPerSpt): dbc.row.GtRegenMPPerSpt[]
---@field Query fun(self: dbc.Table.GtRegenMPPerSpt): dbc.Query<dbc.row.GtRegenMPPerSpt>
---@field Rows fun(self: dbc.Table.GtRegenMPPerSpt): fun(): integer, dbc.row.GtRegenMPPerSpt
