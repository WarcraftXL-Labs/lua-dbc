---@meta
-- Generated LuaLS annotations for ItemPetFood.dbc. Do not edit.

---Row representation of ItemPetFood.dbc.
---@class dbc.row.ItemPetFood : RowProxy
---@field ID integer
---@field Name string

-- Fluent PascalCase Methods for ItemPetFood
---@field GetID fun(self: dbc.row.ItemPetFood): integer
---@field SetID fun(self: dbc.row.ItemPetFood, value: integer): dbc.row.ItemPetFood
---@field GetName fun(self: dbc.row.ItemPetFood, locale?: string|integer): string
---@field SetName fun(self: dbc.row.ItemPetFood, value: string, locale?: string|integer): dbc.row.ItemPetFood

-- Inferred Cross-Table Relations for ItemPetFood

-- Cascading Creation & Relations Engine for ItemPetFood
---@field CreateRelated fun(self: dbc.row.ItemPetFood, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.ItemPetFood, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.ItemPetFood, child_table: string, child_field?: string): any[]

---Typed table handle for ItemPetFood.dbc.
---@class dbc.Table.ItemPetFood : DbcTable
---@field FindById fun(self: dbc.Table.ItemPetFood, id: integer): dbc.row.ItemPetFood|nil
---@field GetById fun(self: dbc.Table.ItemPetFood, id: integer): dbc.row.ItemPetFood|nil
---@field GetRow fun(self: dbc.Table.ItemPetFood, row: integer): dbc.row.ItemPetFood
---@field NewRow fun(self: dbc.Table.ItemPetFood, id?: integer): dbc.row.ItemPetFood
---@field Create fun(self: dbc.Table.ItemPetFood, id?: integer): dbc.row.ItemPetFood
---@field CreateNext fun(self: dbc.Table.ItemPetFood, data?: table): dbc.row.ItemPetFood
---@field CloneRow fun(self: dbc.Table.ItemPetFood, source: integer|dbc.row.ItemPetFood, new_id?: integer): dbc.row.ItemPetFood
---@field GetAllRows fun(self: dbc.Table.ItemPetFood): dbc.row.ItemPetFood[]
---@field Query fun(self: dbc.Table.ItemPetFood): dbc.Query<dbc.row.ItemPetFood>
---@field Rows fun(self: dbc.Table.ItemPetFood): fun(): integer, dbc.row.ItemPetFood
