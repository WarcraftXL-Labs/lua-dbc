---@meta
-- Generated LuaLS annotations for SpellVisualKitAreaModel.dbc. Do not edit.

---Row representation of SpellVisualKitAreaModel.dbc.
---@class dbc.row.SpellVisualKitAreaModel : RowProxy
---@field ID integer
---@field Name string
---@field EnumID integer

-- Fluent PascalCase Methods for SpellVisualKitAreaModel
---@field GetID fun(self: dbc.row.SpellVisualKitAreaModel): integer
---@field SetID fun(self: dbc.row.SpellVisualKitAreaModel, value: integer): dbc.row.SpellVisualKitAreaModel
---@field GetName fun(self: dbc.row.SpellVisualKitAreaModel): string
---@field SetName fun(self: dbc.row.SpellVisualKitAreaModel, value: string): dbc.row.SpellVisualKitAreaModel
---@field GetEnumID fun(self: dbc.row.SpellVisualKitAreaModel): integer
---@field SetEnumID fun(self: dbc.row.SpellVisualKitAreaModel, value: integer): dbc.row.SpellVisualKitAreaModel

-- Inferred Cross-Table Relations for SpellVisualKitAreaModel

-- Cascading Creation & Relations Engine for SpellVisualKitAreaModel
---@field CreateRelated fun(self: dbc.row.SpellVisualKitAreaModel, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.SpellVisualKitAreaModel, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.SpellVisualKitAreaModel, child_table: string, child_field?: string): any[]

---Typed table handle for SpellVisualKitAreaModel.dbc.
---@class dbc.Table.SpellVisualKitAreaModel : DbcTable
---@field FindById fun(self: dbc.Table.SpellVisualKitAreaModel, id: integer): dbc.row.SpellVisualKitAreaModel|nil
---@field GetById fun(self: dbc.Table.SpellVisualKitAreaModel, id: integer): dbc.row.SpellVisualKitAreaModel|nil
---@field GetRow fun(self: dbc.Table.SpellVisualKitAreaModel, row: integer): dbc.row.SpellVisualKitAreaModel
---@field NewRow fun(self: dbc.Table.SpellVisualKitAreaModel, id?: integer): dbc.row.SpellVisualKitAreaModel
---@field Create fun(self: dbc.Table.SpellVisualKitAreaModel, id?: integer): dbc.row.SpellVisualKitAreaModel
---@field CreateNext fun(self: dbc.Table.SpellVisualKitAreaModel, data?: table): dbc.row.SpellVisualKitAreaModel
---@field CloneRow fun(self: dbc.Table.SpellVisualKitAreaModel, source: integer|dbc.row.SpellVisualKitAreaModel, new_id?: integer): dbc.row.SpellVisualKitAreaModel
---@field GetAllRows fun(self: dbc.Table.SpellVisualKitAreaModel): dbc.row.SpellVisualKitAreaModel[]
---@field Query fun(self: dbc.Table.SpellVisualKitAreaModel): dbc.Query<dbc.row.SpellVisualKitAreaModel>
---@field Rows fun(self: dbc.Table.SpellVisualKitAreaModel): fun(): integer, dbc.row.SpellVisualKitAreaModel
