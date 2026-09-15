---@meta
-- Generated LuaLS annotations for VehicleUIIndSeat.dbc. Do not edit.

---Row representation of VehicleUIIndSeat.dbc.
---@class dbc.row.VehicleUIIndSeat : RowProxy
---@field ID integer
---@field VehicleUIIndicatorID integer
---@field VirtualSeatIndex integer
---@field XPos number
---@field YPos number

-- Fluent PascalCase Methods for VehicleUIIndSeat
---@field GetID fun(self: dbc.row.VehicleUIIndSeat): integer
---@field SetID fun(self: dbc.row.VehicleUIIndSeat, value: integer): dbc.row.VehicleUIIndSeat
---@field GetVehicleUIIndicatorID fun(self: dbc.row.VehicleUIIndSeat): integer
---@field SetVehicleUIIndicatorID fun(self: dbc.row.VehicleUIIndSeat, value: integer): dbc.row.VehicleUIIndSeat
---@field GetVirtualSeatIndex fun(self: dbc.row.VehicleUIIndSeat): integer
---@field SetVirtualSeatIndex fun(self: dbc.row.VehicleUIIndSeat, value: integer): dbc.row.VehicleUIIndSeat
---@field GetXPos fun(self: dbc.row.VehicleUIIndSeat): number
---@field SetXPos fun(self: dbc.row.VehicleUIIndSeat, value: number): dbc.row.VehicleUIIndSeat
---@field GetYPos fun(self: dbc.row.VehicleUIIndSeat): number
---@field SetYPos fun(self: dbc.row.VehicleUIIndSeat, value: number): dbc.row.VehicleUIIndSeat

-- Inferred Cross-Table Relations for VehicleUIIndSeat
---@field GetVehicleUIIndicator fun(self: dbc.row.VehicleUIIndSeat): dbc.row.VehicleUIIndicator|nil
---@field SetVehicleUIIndicator fun(self: dbc.row.VehicleUIIndSeat, target: dbc.row.VehicleUIIndicator|integer): dbc.row.VehicleUIIndSeat

-- Cascading Creation & Relations Engine for VehicleUIIndSeat
---@field CreateRelated fun(self: dbc.row.VehicleUIIndSeat, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.VehicleUIIndSeat, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.VehicleUIIndSeat, child_table: string, child_field?: string): any[]

---Typed table handle for VehicleUIIndSeat.dbc.
---@class dbc.Table.VehicleUIIndSeat : DbcTable
---@field FindById fun(self: dbc.Table.VehicleUIIndSeat, id: integer): dbc.row.VehicleUIIndSeat|nil
---@field GetById fun(self: dbc.Table.VehicleUIIndSeat, id: integer): dbc.row.VehicleUIIndSeat|nil
---@field GetRow fun(self: dbc.Table.VehicleUIIndSeat, row: integer): dbc.row.VehicleUIIndSeat
---@field NewRow fun(self: dbc.Table.VehicleUIIndSeat, id?: integer): dbc.row.VehicleUIIndSeat
---@field Create fun(self: dbc.Table.VehicleUIIndSeat, id?: integer): dbc.row.VehicleUIIndSeat
---@field CreateNext fun(self: dbc.Table.VehicleUIIndSeat, data?: table): dbc.row.VehicleUIIndSeat
---@field CloneRow fun(self: dbc.Table.VehicleUIIndSeat, source: integer|dbc.row.VehicleUIIndSeat, new_id?: integer): dbc.row.VehicleUIIndSeat
---@field GetAllRows fun(self: dbc.Table.VehicleUIIndSeat): dbc.row.VehicleUIIndSeat[]
---@field Query fun(self: dbc.Table.VehicleUIIndSeat): dbc.Query<dbc.row.VehicleUIIndSeat>
---@field Rows fun(self: dbc.Table.VehicleUIIndSeat): fun(): integer, dbc.row.VehicleUIIndSeat
