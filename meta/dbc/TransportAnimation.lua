---@meta
-- Generated LuaLS annotations for TransportAnimation.dbc. Do not edit.

---Row representation of TransportAnimation.dbc.
---@class dbc.row.TransportAnimation : RowProxy
---@field ID integer
---@field TransportID integer
---@field TimeIndex integer
---@field PosX number
---@field PosY number
---@field PosZ number
---@field SequenceID integer

-- Fluent PascalCase Methods for TransportAnimation
---@field GetID fun(self: dbc.row.TransportAnimation): integer
---@field SetID fun(self: dbc.row.TransportAnimation, value: integer): dbc.row.TransportAnimation
---@field GetTransportID fun(self: dbc.row.TransportAnimation): integer
---@field SetTransportID fun(self: dbc.row.TransportAnimation, value: integer): dbc.row.TransportAnimation
---@field GetTimeIndex fun(self: dbc.row.TransportAnimation): integer
---@field SetTimeIndex fun(self: dbc.row.TransportAnimation, value: integer): dbc.row.TransportAnimation
---@field GetPosX fun(self: dbc.row.TransportAnimation): number
---@field SetPosX fun(self: dbc.row.TransportAnimation, value: number): dbc.row.TransportAnimation
---@field GetPosY fun(self: dbc.row.TransportAnimation): number
---@field SetPosY fun(self: dbc.row.TransportAnimation, value: number): dbc.row.TransportAnimation
---@field GetPosZ fun(self: dbc.row.TransportAnimation): number
---@field SetPosZ fun(self: dbc.row.TransportAnimation, value: number): dbc.row.TransportAnimation
---@field GetSequenceID fun(self: dbc.row.TransportAnimation): integer
---@field SetSequenceID fun(self: dbc.row.TransportAnimation, value: integer): dbc.row.TransportAnimation

-- Inferred Cross-Table Relations for TransportAnimation

-- Cascading Creation & Relations Engine for TransportAnimation
---@field CreateRelated fun(self: dbc.row.TransportAnimation, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.TransportAnimation, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.TransportAnimation, child_table: string, child_field?: string): any[]

---Typed table handle for TransportAnimation.dbc.
---@class dbc.Table.TransportAnimation : DbcTable
---@field FindById fun(self: dbc.Table.TransportAnimation, id: integer): dbc.row.TransportAnimation|nil
---@field GetById fun(self: dbc.Table.TransportAnimation, id: integer): dbc.row.TransportAnimation|nil
---@field GetRow fun(self: dbc.Table.TransportAnimation, row: integer): dbc.row.TransportAnimation
---@field NewRow fun(self: dbc.Table.TransportAnimation, id?: integer): dbc.row.TransportAnimation
---@field Create fun(self: dbc.Table.TransportAnimation, id?: integer): dbc.row.TransportAnimation
---@field CreateNext fun(self: dbc.Table.TransportAnimation, data?: table): dbc.row.TransportAnimation
---@field CloneRow fun(self: dbc.Table.TransportAnimation, source: integer|dbc.row.TransportAnimation, new_id?: integer): dbc.row.TransportAnimation
---@field GetAllRows fun(self: dbc.Table.TransportAnimation): dbc.row.TransportAnimation[]
---@field Query fun(self: dbc.Table.TransportAnimation): dbc.Query<dbc.row.TransportAnimation>
---@field Rows fun(self: dbc.Table.TransportAnimation): fun(): integer, dbc.row.TransportAnimation
