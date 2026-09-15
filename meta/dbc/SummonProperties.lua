---@meta
-- Generated LuaLS annotations for SummonProperties.dbc. Do not edit.

---Row representation of SummonProperties.dbc.
---@class dbc.row.SummonProperties : RowProxy
---@field ID integer
---@field Control integer
---@field Faction integer
---@field Title integer
---@field Slot integer
---@field Flags integer

-- Fluent PascalCase Methods for SummonProperties
---@field GetID fun(self: dbc.row.SummonProperties): integer
---@field SetID fun(self: dbc.row.SummonProperties, value: integer): dbc.row.SummonProperties
---@field GetControl fun(self: dbc.row.SummonProperties): integer
---@field SetControl fun(self: dbc.row.SummonProperties, value: integer): dbc.row.SummonProperties
---@field GetFaction fun(self: dbc.row.SummonProperties): integer
---@field SetFaction fun(self: dbc.row.SummonProperties, value: integer): dbc.row.SummonProperties
---@field GetTitle fun(self: dbc.row.SummonProperties): integer
---@field SetTitle fun(self: dbc.row.SummonProperties, value: integer): dbc.row.SummonProperties
---@field GetSlot fun(self: dbc.row.SummonProperties): integer
---@field SetSlot fun(self: dbc.row.SummonProperties, value: integer): dbc.row.SummonProperties
---@field GetFlags fun(self: dbc.row.SummonProperties): integer
---@field SetFlags fun(self: dbc.row.SummonProperties, value: integer): dbc.row.SummonProperties
---@field HasFlags fun(self: dbc.row.SummonProperties, flag: integer): boolean
---@field AddFlags fun(self: dbc.row.SummonProperties, flag: integer): dbc.row.SummonProperties
---@field RemoveFlags fun(self: dbc.row.SummonProperties, flag: integer): dbc.row.SummonProperties

-- Inferred Cross-Table Relations for SummonProperties
---@field GetFaction fun(self: dbc.row.SummonProperties): dbc.row.Faction|nil
---@field SetFaction fun(self: dbc.row.SummonProperties, target: dbc.row.Faction|integer): dbc.row.SummonProperties

-- Cascading Creation & Relations Engine for SummonProperties
---@field CreateRelated fun(self: dbc.row.SummonProperties, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.SummonProperties, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.SummonProperties, child_table: string, child_field?: string): any[]

---Typed table handle for SummonProperties.dbc.
---@class dbc.Table.SummonProperties : DbcTable
---@field FindById fun(self: dbc.Table.SummonProperties, id: integer): dbc.row.SummonProperties|nil
---@field GetById fun(self: dbc.Table.SummonProperties, id: integer): dbc.row.SummonProperties|nil
---@field GetRow fun(self: dbc.Table.SummonProperties, row: integer): dbc.row.SummonProperties
---@field NewRow fun(self: dbc.Table.SummonProperties, id?: integer): dbc.row.SummonProperties
---@field Create fun(self: dbc.Table.SummonProperties, id?: integer): dbc.row.SummonProperties
---@field CreateNext fun(self: dbc.Table.SummonProperties, data?: table): dbc.row.SummonProperties
---@field CloneRow fun(self: dbc.Table.SummonProperties, source: integer|dbc.row.SummonProperties, new_id?: integer): dbc.row.SummonProperties
---@field GetAllRows fun(self: dbc.Table.SummonProperties): dbc.row.SummonProperties[]
---@field Query fun(self: dbc.Table.SummonProperties): dbc.Query<dbc.row.SummonProperties>
---@field Rows fun(self: dbc.Table.SummonProperties): fun(): integer, dbc.row.SummonProperties
