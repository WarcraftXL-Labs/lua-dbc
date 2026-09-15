---@meta
-- Generated LuaLS annotations for HelmetGeosetVisData.dbc. Do not edit.

---Row representation of HelmetGeosetVisData.dbc.
---@class dbc.row.HelmetGeosetVisData : RowProxy
---@field ID integer
---@field HideGeoset integer[]

-- Fluent PascalCase Methods for HelmetGeosetVisData
---@field GetID fun(self: dbc.row.HelmetGeosetVisData): integer
---@field SetID fun(self: dbc.row.HelmetGeosetVisData, value: integer): dbc.row.HelmetGeosetVisData
---@field GetHideGeoset fun(self: dbc.row.HelmetGeosetVisData, index?: integer): integer|integer[]
---@field SetHideGeoset fun(self: dbc.row.HelmetGeosetVisData, value: integer|integer[], index?: integer): dbc.row.HelmetGeosetVisData

-- Inferred Cross-Table Relations for HelmetGeosetVisData

-- Cascading Creation & Relations Engine for HelmetGeosetVisData
---@field CreateRelated fun(self: dbc.row.HelmetGeosetVisData, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.HelmetGeosetVisData, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.HelmetGeosetVisData, child_table: string, child_field?: string): any[]

---Typed table handle for HelmetGeosetVisData.dbc.
---@class dbc.Table.HelmetGeosetVisData : DbcTable
---@field FindById fun(self: dbc.Table.HelmetGeosetVisData, id: integer): dbc.row.HelmetGeosetVisData|nil
---@field GetById fun(self: dbc.Table.HelmetGeosetVisData, id: integer): dbc.row.HelmetGeosetVisData|nil
---@field GetRow fun(self: dbc.Table.HelmetGeosetVisData, row: integer): dbc.row.HelmetGeosetVisData
---@field NewRow fun(self: dbc.Table.HelmetGeosetVisData, id?: integer): dbc.row.HelmetGeosetVisData
---@field Create fun(self: dbc.Table.HelmetGeosetVisData, id?: integer): dbc.row.HelmetGeosetVisData
---@field CreateNext fun(self: dbc.Table.HelmetGeosetVisData, data?: table): dbc.row.HelmetGeosetVisData
---@field CloneRow fun(self: dbc.Table.HelmetGeosetVisData, source: integer|dbc.row.HelmetGeosetVisData, new_id?: integer): dbc.row.HelmetGeosetVisData
---@field GetAllRows fun(self: dbc.Table.HelmetGeosetVisData): dbc.row.HelmetGeosetVisData[]
---@field Query fun(self: dbc.Table.HelmetGeosetVisData): dbc.Query<dbc.row.HelmetGeosetVisData>
---@field Rows fun(self: dbc.Table.HelmetGeosetVisData): fun(): integer, dbc.row.HelmetGeosetVisData
