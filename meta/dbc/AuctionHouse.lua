---@meta
-- Generated LuaLS annotations for AuctionHouse.dbc. Do not edit.

---Row representation of AuctionHouse.dbc.
---@class dbc.row.AuctionHouse : RowProxy
---@field ID integer
---@field FactionID integer
---@field DepositRate integer
---@field ConsignmentRate integer
---@field Name string

-- Fluent PascalCase Methods for AuctionHouse
---@field GetID fun(self: dbc.row.AuctionHouse): integer
---@field SetID fun(self: dbc.row.AuctionHouse, value: integer): dbc.row.AuctionHouse
---@field GetFactionID fun(self: dbc.row.AuctionHouse): integer
---@field SetFactionID fun(self: dbc.row.AuctionHouse, value: integer): dbc.row.AuctionHouse
---@field GetDepositRate fun(self: dbc.row.AuctionHouse): integer
---@field SetDepositRate fun(self: dbc.row.AuctionHouse, value: integer): dbc.row.AuctionHouse
---@field GetConsignmentRate fun(self: dbc.row.AuctionHouse): integer
---@field SetConsignmentRate fun(self: dbc.row.AuctionHouse, value: integer): dbc.row.AuctionHouse
---@field GetName fun(self: dbc.row.AuctionHouse, locale?: string|integer): string
---@field SetName fun(self: dbc.row.AuctionHouse, value: string, locale?: string|integer): dbc.row.AuctionHouse

-- Inferred Cross-Table Relations for AuctionHouse
---@field GetFaction fun(self: dbc.row.AuctionHouse): dbc.row.Faction|nil
---@field SetFaction fun(self: dbc.row.AuctionHouse, target: dbc.row.Faction|integer): dbc.row.AuctionHouse

-- Cascading Creation & Relations Engine for AuctionHouse
---@field CreateRelated fun(self: dbc.row.AuctionHouse, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.AuctionHouse, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.AuctionHouse, child_table: string, child_field?: string): any[]

---Typed table handle for AuctionHouse.dbc.
---@class dbc.Table.AuctionHouse : DbcTable
---@field FindById fun(self: dbc.Table.AuctionHouse, id: integer): dbc.row.AuctionHouse|nil
---@field GetById fun(self: dbc.Table.AuctionHouse, id: integer): dbc.row.AuctionHouse|nil
---@field GetRow fun(self: dbc.Table.AuctionHouse, row: integer): dbc.row.AuctionHouse
---@field NewRow fun(self: dbc.Table.AuctionHouse, id?: integer): dbc.row.AuctionHouse
---@field Create fun(self: dbc.Table.AuctionHouse, id?: integer): dbc.row.AuctionHouse
---@field CreateNext fun(self: dbc.Table.AuctionHouse, data?: table): dbc.row.AuctionHouse
---@field CloneRow fun(self: dbc.Table.AuctionHouse, source: integer|dbc.row.AuctionHouse, new_id?: integer): dbc.row.AuctionHouse
---@field GetAllRows fun(self: dbc.Table.AuctionHouse): dbc.row.AuctionHouse[]
---@field Query fun(self: dbc.Table.AuctionHouse): dbc.Query<dbc.row.AuctionHouse>
---@field Rows fun(self: dbc.Table.AuctionHouse): fun(): integer, dbc.row.AuctionHouse
