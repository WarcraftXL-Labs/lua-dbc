---@meta
-- Generated LuaLS annotations for TaxiNodes.dbc. Do not edit.

---Row representation of TaxiNodes.dbc.
---@class dbc.row.TaxiNodes : RowProxy
---@field ID integer
---@field MapID integer
---@field X number
---@field Y number
---@field Z number
---@field Name string
---@field MountCreatureID integer[]

-- Fluent PascalCase Methods for TaxiNodes
---@field GetID fun(self: dbc.row.TaxiNodes): integer
---@field SetID fun(self: dbc.row.TaxiNodes, value: integer): dbc.row.TaxiNodes
---@field GetMapID fun(self: dbc.row.TaxiNodes): integer
---@field SetMapID fun(self: dbc.row.TaxiNodes, value: integer): dbc.row.TaxiNodes
---@field GetX fun(self: dbc.row.TaxiNodes): number
---@field SetX fun(self: dbc.row.TaxiNodes, value: number): dbc.row.TaxiNodes
---@field GetY fun(self: dbc.row.TaxiNodes): number
---@field SetY fun(self: dbc.row.TaxiNodes, value: number): dbc.row.TaxiNodes
---@field GetZ fun(self: dbc.row.TaxiNodes): number
---@field SetZ fun(self: dbc.row.TaxiNodes, value: number): dbc.row.TaxiNodes
---@field GetName fun(self: dbc.row.TaxiNodes, locale?: string|integer): string
---@field SetName fun(self: dbc.row.TaxiNodes, value: string, locale?: string|integer): dbc.row.TaxiNodes
---@field GetMountCreatureID fun(self: dbc.row.TaxiNodes, index?: integer): integer|integer[]
---@field SetMountCreatureID fun(self: dbc.row.TaxiNodes, value: integer|integer[], index?: integer): dbc.row.TaxiNodes

-- Inferred Cross-Table Relations for TaxiNodes
---@field GetMap fun(self: dbc.row.TaxiNodes): dbc.row.Map|nil
---@field SetMap fun(self: dbc.row.TaxiNodes, target: dbc.row.Map|integer): dbc.row.TaxiNodes

-- Cascading Creation & Relations Engine for TaxiNodes
---@field CreateRelated fun(self: dbc.row.TaxiNodes, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.TaxiNodes, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.TaxiNodes, child_table: string, child_field?: string): any[]

---Typed table handle for TaxiNodes.dbc.
---@class dbc.Table.TaxiNodes : DbcTable
---@field FindById fun(self: dbc.Table.TaxiNodes, id: integer): dbc.row.TaxiNodes|nil
---@field GetById fun(self: dbc.Table.TaxiNodes, id: integer): dbc.row.TaxiNodes|nil
---@field GetRow fun(self: dbc.Table.TaxiNodes, row: integer): dbc.row.TaxiNodes
---@field NewRow fun(self: dbc.Table.TaxiNodes, id?: integer): dbc.row.TaxiNodes
---@field Create fun(self: dbc.Table.TaxiNodes, id?: integer): dbc.row.TaxiNodes
---@field CreateNext fun(self: dbc.Table.TaxiNodes, data?: table): dbc.row.TaxiNodes
---@field CloneRow fun(self: dbc.Table.TaxiNodes, source: integer|dbc.row.TaxiNodes, new_id?: integer): dbc.row.TaxiNodes
---@field GetAllRows fun(self: dbc.Table.TaxiNodes): dbc.row.TaxiNodes[]
---@field Query fun(self: dbc.Table.TaxiNodes): dbc.Query<dbc.row.TaxiNodes>
---@field Rows fun(self: dbc.Table.TaxiNodes): fun(): integer, dbc.row.TaxiNodes
