---@meta
-- Generated LuaLS annotations for CreatureMovementInfo.dbc. Do not edit.

---Row representation of CreatureMovementInfo.dbc.
---@class dbc.row.CreatureMovementInfo : RowProxy
---@field ID integer
---@field SmoothFacingChaseRate number

-- Fluent PascalCase Methods for CreatureMovementInfo
---@field GetID fun(self: dbc.row.CreatureMovementInfo): integer
---@field SetID fun(self: dbc.row.CreatureMovementInfo, value: integer): dbc.row.CreatureMovementInfo
---@field GetSmoothFacingChaseRate fun(self: dbc.row.CreatureMovementInfo): number
---@field SetSmoothFacingChaseRate fun(self: dbc.row.CreatureMovementInfo, value: number): dbc.row.CreatureMovementInfo

-- Inferred Cross-Table Relations for CreatureMovementInfo

-- Cascading Creation & Relations Engine for CreatureMovementInfo
---@field CreateRelated fun(self: dbc.row.CreatureMovementInfo, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.CreatureMovementInfo, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.CreatureMovementInfo, child_table: string, child_field?: string): any[]

---Typed table handle for CreatureMovementInfo.dbc.
---@class dbc.Table.CreatureMovementInfo : DbcTable
---@field FindById fun(self: dbc.Table.CreatureMovementInfo, id: integer): dbc.row.CreatureMovementInfo|nil
---@field GetById fun(self: dbc.Table.CreatureMovementInfo, id: integer): dbc.row.CreatureMovementInfo|nil
---@field GetRow fun(self: dbc.Table.CreatureMovementInfo, row: integer): dbc.row.CreatureMovementInfo
---@field NewRow fun(self: dbc.Table.CreatureMovementInfo, id?: integer): dbc.row.CreatureMovementInfo
---@field Create fun(self: dbc.Table.CreatureMovementInfo, id?: integer): dbc.row.CreatureMovementInfo
---@field CreateNext fun(self: dbc.Table.CreatureMovementInfo, data?: table): dbc.row.CreatureMovementInfo
---@field CloneRow fun(self: dbc.Table.CreatureMovementInfo, source: integer|dbc.row.CreatureMovementInfo, new_id?: integer): dbc.row.CreatureMovementInfo
---@field GetAllRows fun(self: dbc.Table.CreatureMovementInfo): dbc.row.CreatureMovementInfo[]
---@field Query fun(self: dbc.Table.CreatureMovementInfo): dbc.Query<dbc.row.CreatureMovementInfo>
---@field Rows fun(self: dbc.Table.CreatureMovementInfo): fun(): integer, dbc.row.CreatureMovementInfo
