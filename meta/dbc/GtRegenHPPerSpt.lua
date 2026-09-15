---@meta
-- Generated LuaLS annotations for GtRegenHPPerSpt.dbc. Do not edit.

---Row representation of GtRegenHPPerSpt.dbc.
---@class dbc.row.GtRegenHPPerSpt : RowProxy
---@field Data number

-- Fluent PascalCase Methods for GtRegenHPPerSpt
---@field GetData fun(self: dbc.row.GtRegenHPPerSpt): number
---@field SetData fun(self: dbc.row.GtRegenHPPerSpt, value: number): dbc.row.GtRegenHPPerSpt

-- Inferred Cross-Table Relations for GtRegenHPPerSpt

-- Cascading Creation & Relations Engine for GtRegenHPPerSpt
---@field CreateRelated fun(self: dbc.row.GtRegenHPPerSpt, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.GtRegenHPPerSpt, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.GtRegenHPPerSpt, child_table: string, child_field?: string): any[]

---Typed table handle for GtRegenHPPerSpt.dbc.
---@class dbc.Table.GtRegenHPPerSpt : DbcTable
---@field FindById fun(self: dbc.Table.GtRegenHPPerSpt, id: integer): dbc.row.GtRegenHPPerSpt|nil
---@field GetById fun(self: dbc.Table.GtRegenHPPerSpt, id: integer): dbc.row.GtRegenHPPerSpt|nil
---@field GetRow fun(self: dbc.Table.GtRegenHPPerSpt, row: integer): dbc.row.GtRegenHPPerSpt
---@field NewRow fun(self: dbc.Table.GtRegenHPPerSpt, id?: integer): dbc.row.GtRegenHPPerSpt
---@field Create fun(self: dbc.Table.GtRegenHPPerSpt, id?: integer): dbc.row.GtRegenHPPerSpt
---@field CreateNext fun(self: dbc.Table.GtRegenHPPerSpt, data?: table): dbc.row.GtRegenHPPerSpt
---@field CloneRow fun(self: dbc.Table.GtRegenHPPerSpt, source: integer|dbc.row.GtRegenHPPerSpt, new_id?: integer): dbc.row.GtRegenHPPerSpt
---@field GetAllRows fun(self: dbc.Table.GtRegenHPPerSpt): dbc.row.GtRegenHPPerSpt[]
---@field Query fun(self: dbc.Table.GtRegenHPPerSpt): dbc.Query<dbc.row.GtRegenHPPerSpt>
---@field Rows fun(self: dbc.Table.GtRegenHPPerSpt): fun(): integer, dbc.row.GtRegenHPPerSpt
