---@meta
-- Generated LuaLS annotations for GemProperties.dbc. Do not edit.

---Row representation of GemProperties.dbc.
---@class dbc.row.GemProperties : RowProxy
---@field ID integer
---@field Enchant_Id integer
---@field Maxcount_Inv integer
---@field Maxcount_Item integer
---@field Type integer

-- Fluent PascalCase Methods for GemProperties
---@field GetID fun(self: dbc.row.GemProperties): integer
---@field SetID fun(self: dbc.row.GemProperties, value: integer): dbc.row.GemProperties
---@field GetEnchant_Id fun(self: dbc.row.GemProperties): integer
---@field SetEnchant_Id fun(self: dbc.row.GemProperties, value: integer): dbc.row.GemProperties
---@field GetMaxcount_Inv fun(self: dbc.row.GemProperties): integer
---@field SetMaxcount_Inv fun(self: dbc.row.GemProperties, value: integer): dbc.row.GemProperties
---@field GetMaxcount_Item fun(self: dbc.row.GemProperties): integer
---@field SetMaxcount_Item fun(self: dbc.row.GemProperties, value: integer): dbc.row.GemProperties
---@field GetType fun(self: dbc.row.GemProperties): integer
---@field SetType fun(self: dbc.row.GemProperties, value: integer): dbc.row.GemProperties

-- Inferred Cross-Table Relations for GemProperties

-- Cascading Creation & Relations Engine for GemProperties
---@field CreateRelated fun(self: dbc.row.GemProperties, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.GemProperties, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.GemProperties, child_table: string, child_field?: string): any[]

---Typed table handle for GemProperties.dbc.
---@class dbc.Table.GemProperties : DbcTable
---@field FindById fun(self: dbc.Table.GemProperties, id: integer): dbc.row.GemProperties|nil
---@field GetById fun(self: dbc.Table.GemProperties, id: integer): dbc.row.GemProperties|nil
---@field GetRow fun(self: dbc.Table.GemProperties, row: integer): dbc.row.GemProperties
---@field NewRow fun(self: dbc.Table.GemProperties, id?: integer): dbc.row.GemProperties
---@field Create fun(self: dbc.Table.GemProperties, id?: integer): dbc.row.GemProperties
---@field CreateNext fun(self: dbc.Table.GemProperties, data?: table): dbc.row.GemProperties
---@field CloneRow fun(self: dbc.Table.GemProperties, source: integer|dbc.row.GemProperties, new_id?: integer): dbc.row.GemProperties
---@field GetAllRows fun(self: dbc.Table.GemProperties): dbc.row.GemProperties[]
---@field Query fun(self: dbc.Table.GemProperties): dbc.Query<dbc.row.GemProperties>
---@field Rows fun(self: dbc.Table.GemProperties): fun(): integer, dbc.row.GemProperties
