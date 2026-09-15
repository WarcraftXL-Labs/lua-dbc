---@meta
-- Generated LuaLS annotations for GtOCTClassCombatRatingScalar.dbc. Do not edit.

---Row representation of GtOCTClassCombatRatingScalar.dbc.
---@class dbc.row.GtOCTClassCombatRatingScalar : RowProxy
---@field ID integer
---@field Data number

-- Fluent PascalCase Methods for GtOCTClassCombatRatingScalar
---@field GetID fun(self: dbc.row.GtOCTClassCombatRatingScalar): integer
---@field SetID fun(self: dbc.row.GtOCTClassCombatRatingScalar, value: integer): dbc.row.GtOCTClassCombatRatingScalar
---@field GetData fun(self: dbc.row.GtOCTClassCombatRatingScalar): number
---@field SetData fun(self: dbc.row.GtOCTClassCombatRatingScalar, value: number): dbc.row.GtOCTClassCombatRatingScalar

-- Inferred Cross-Table Relations for GtOCTClassCombatRatingScalar

-- Cascading Creation & Relations Engine for GtOCTClassCombatRatingScalar
---@field CreateRelated fun(self: dbc.row.GtOCTClassCombatRatingScalar, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.GtOCTClassCombatRatingScalar, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.GtOCTClassCombatRatingScalar, child_table: string, child_field?: string): any[]

---Typed table handle for GtOCTClassCombatRatingScalar.dbc.
---@class dbc.Table.GtOCTClassCombatRatingScalar : DbcTable
---@field FindById fun(self: dbc.Table.GtOCTClassCombatRatingScalar, id: integer): dbc.row.GtOCTClassCombatRatingScalar|nil
---@field GetById fun(self: dbc.Table.GtOCTClassCombatRatingScalar, id: integer): dbc.row.GtOCTClassCombatRatingScalar|nil
---@field GetRow fun(self: dbc.Table.GtOCTClassCombatRatingScalar, row: integer): dbc.row.GtOCTClassCombatRatingScalar
---@field NewRow fun(self: dbc.Table.GtOCTClassCombatRatingScalar, id?: integer): dbc.row.GtOCTClassCombatRatingScalar
---@field Create fun(self: dbc.Table.GtOCTClassCombatRatingScalar, id?: integer): dbc.row.GtOCTClassCombatRatingScalar
---@field CreateNext fun(self: dbc.Table.GtOCTClassCombatRatingScalar, data?: table): dbc.row.GtOCTClassCombatRatingScalar
---@field CloneRow fun(self: dbc.Table.GtOCTClassCombatRatingScalar, source: integer|dbc.row.GtOCTClassCombatRatingScalar, new_id?: integer): dbc.row.GtOCTClassCombatRatingScalar
---@field GetAllRows fun(self: dbc.Table.GtOCTClassCombatRatingScalar): dbc.row.GtOCTClassCombatRatingScalar[]
---@field Query fun(self: dbc.Table.GtOCTClassCombatRatingScalar): dbc.Query<dbc.row.GtOCTClassCombatRatingScalar>
---@field Rows fun(self: dbc.Table.GtOCTClassCombatRatingScalar): fun(): integer, dbc.row.GtOCTClassCombatRatingScalar
