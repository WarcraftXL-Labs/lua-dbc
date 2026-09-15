---@meta
-- Generated LuaLS annotations for TransportRotation.dbc. Do not edit.

---Row representation of TransportRotation.dbc.
---@class dbc.row.TransportRotation : RowProxy
---@field ID integer
---@field GameObjectsID integer
---@field TimeIndex integer
---@field RotX number
---@field RotY number
---@field RotZ number
---@field RotW number

-- Fluent PascalCase Methods for TransportRotation
---@field GetID fun(self: dbc.row.TransportRotation): integer
---@field SetID fun(self: dbc.row.TransportRotation, value: integer): dbc.row.TransportRotation
---@field GetGameObjectsID fun(self: dbc.row.TransportRotation): integer
---@field SetGameObjectsID fun(self: dbc.row.TransportRotation, value: integer): dbc.row.TransportRotation
---@field GetTimeIndex fun(self: dbc.row.TransportRotation): integer
---@field SetTimeIndex fun(self: dbc.row.TransportRotation, value: integer): dbc.row.TransportRotation
---@field GetRotX fun(self: dbc.row.TransportRotation): number
---@field SetRotX fun(self: dbc.row.TransportRotation, value: number): dbc.row.TransportRotation
---@field GetRotY fun(self: dbc.row.TransportRotation): number
---@field SetRotY fun(self: dbc.row.TransportRotation, value: number): dbc.row.TransportRotation
---@field GetRotZ fun(self: dbc.row.TransportRotation): number
---@field SetRotZ fun(self: dbc.row.TransportRotation, value: number): dbc.row.TransportRotation
---@field GetRotW fun(self: dbc.row.TransportRotation): number
---@field SetRotW fun(self: dbc.row.TransportRotation, value: number): dbc.row.TransportRotation

-- Inferred Cross-Table Relations for TransportRotation

-- Cascading Creation & Relations Engine for TransportRotation
---@field CreateRelated fun(self: dbc.row.TransportRotation, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.TransportRotation, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.TransportRotation, child_table: string, child_field?: string): any[]

---Typed table handle for TransportRotation.dbc.
---@class dbc.Table.TransportRotation : DbcTable
---@field FindById fun(self: dbc.Table.TransportRotation, id: integer): dbc.row.TransportRotation|nil
---@field GetById fun(self: dbc.Table.TransportRotation, id: integer): dbc.row.TransportRotation|nil
---@field GetRow fun(self: dbc.Table.TransportRotation, row: integer): dbc.row.TransportRotation
---@field NewRow fun(self: dbc.Table.TransportRotation, id?: integer): dbc.row.TransportRotation
---@field Create fun(self: dbc.Table.TransportRotation, id?: integer): dbc.row.TransportRotation
---@field CreateNext fun(self: dbc.Table.TransportRotation, data?: table): dbc.row.TransportRotation
---@field CloneRow fun(self: dbc.Table.TransportRotation, source: integer|dbc.row.TransportRotation, new_id?: integer): dbc.row.TransportRotation
---@field GetAllRows fun(self: dbc.Table.TransportRotation): dbc.row.TransportRotation[]
---@field Query fun(self: dbc.Table.TransportRotation): dbc.Query<dbc.row.TransportRotation>
---@field Rows fun(self: dbc.Table.TransportRotation): fun(): integer, dbc.row.TransportRotation
