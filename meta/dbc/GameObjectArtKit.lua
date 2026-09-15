---@meta
-- Generated LuaLS annotations for GameObjectArtKit.dbc. Do not edit.

---Row representation of GameObjectArtKit.dbc.
---@class dbc.row.GameObjectArtKit : RowProxy
---@field ID integer
---@field TextureVariation string[]
---@field AttachModel string[]

-- Fluent PascalCase Methods for GameObjectArtKit
---@field GetID fun(self: dbc.row.GameObjectArtKit): integer
---@field SetID fun(self: dbc.row.GameObjectArtKit, value: integer): dbc.row.GameObjectArtKit
---@field GetTextureVariation fun(self: dbc.row.GameObjectArtKit, index?: integer): string|string[]
---@field SetTextureVariation fun(self: dbc.row.GameObjectArtKit, value: string|string[], index?: integer): dbc.row.GameObjectArtKit
---@field GetAttachModel fun(self: dbc.row.GameObjectArtKit, index?: integer): string|string[]
---@field SetAttachModel fun(self: dbc.row.GameObjectArtKit, value: string|string[], index?: integer): dbc.row.GameObjectArtKit

-- Inferred Cross-Table Relations for GameObjectArtKit

-- Cascading Creation & Relations Engine for GameObjectArtKit
---@field CreateRelated fun(self: dbc.row.GameObjectArtKit, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.GameObjectArtKit, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.GameObjectArtKit, child_table: string, child_field?: string): any[]

---Typed table handle for GameObjectArtKit.dbc.
---@class dbc.Table.GameObjectArtKit : DbcTable
---@field FindById fun(self: dbc.Table.GameObjectArtKit, id: integer): dbc.row.GameObjectArtKit|nil
---@field GetById fun(self: dbc.Table.GameObjectArtKit, id: integer): dbc.row.GameObjectArtKit|nil
---@field GetRow fun(self: dbc.Table.GameObjectArtKit, row: integer): dbc.row.GameObjectArtKit
---@field NewRow fun(self: dbc.Table.GameObjectArtKit, id?: integer): dbc.row.GameObjectArtKit
---@field Create fun(self: dbc.Table.GameObjectArtKit, id?: integer): dbc.row.GameObjectArtKit
---@field CreateNext fun(self: dbc.Table.GameObjectArtKit, data?: table): dbc.row.GameObjectArtKit
---@field CloneRow fun(self: dbc.Table.GameObjectArtKit, source: integer|dbc.row.GameObjectArtKit, new_id?: integer): dbc.row.GameObjectArtKit
---@field GetAllRows fun(self: dbc.Table.GameObjectArtKit): dbc.row.GameObjectArtKit[]
---@field Query fun(self: dbc.Table.GameObjectArtKit): dbc.Query<dbc.row.GameObjectArtKit>
---@field Rows fun(self: dbc.Table.GameObjectArtKit): fun(): integer, dbc.row.GameObjectArtKit
