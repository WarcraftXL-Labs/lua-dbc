---@meta
-- Generated LuaLS annotations for SpellVisualEffectName.dbc. Do not edit.

---Row representation of SpellVisualEffectName.dbc.
---@class dbc.row.SpellVisualEffectName : RowProxy
---@field ID integer
---@field Name string
---@field FileName string
---@field AreaEffectSize number
---@field Scale number
---@field MinAllowedScale number
---@field MaxAllowedScale number

-- Fluent PascalCase Methods for SpellVisualEffectName
---@field GetID fun(self: dbc.row.SpellVisualEffectName): integer
---@field SetID fun(self: dbc.row.SpellVisualEffectName, value: integer): dbc.row.SpellVisualEffectName
---@field GetName fun(self: dbc.row.SpellVisualEffectName): string
---@field SetName fun(self: dbc.row.SpellVisualEffectName, value: string): dbc.row.SpellVisualEffectName
---@field GetFileName fun(self: dbc.row.SpellVisualEffectName): string
---@field SetFileName fun(self: dbc.row.SpellVisualEffectName, value: string): dbc.row.SpellVisualEffectName
---@field GetAreaEffectSize fun(self: dbc.row.SpellVisualEffectName): number
---@field SetAreaEffectSize fun(self: dbc.row.SpellVisualEffectName, value: number): dbc.row.SpellVisualEffectName
---@field GetScale fun(self: dbc.row.SpellVisualEffectName): number
---@field SetScale fun(self: dbc.row.SpellVisualEffectName, value: number): dbc.row.SpellVisualEffectName
---@field GetMinAllowedScale fun(self: dbc.row.SpellVisualEffectName): number
---@field SetMinAllowedScale fun(self: dbc.row.SpellVisualEffectName, value: number): dbc.row.SpellVisualEffectName
---@field GetMaxAllowedScale fun(self: dbc.row.SpellVisualEffectName): number
---@field SetMaxAllowedScale fun(self: dbc.row.SpellVisualEffectName, value: number): dbc.row.SpellVisualEffectName

-- Inferred Cross-Table Relations for SpellVisualEffectName

-- Cascading Creation & Relations Engine for SpellVisualEffectName
---@field CreateRelated fun(self: dbc.row.SpellVisualEffectName, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.SpellVisualEffectName, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.SpellVisualEffectName, child_table: string, child_field?: string): any[]

---Typed table handle for SpellVisualEffectName.dbc.
---@class dbc.Table.SpellVisualEffectName : DbcTable
---@field FindById fun(self: dbc.Table.SpellVisualEffectName, id: integer): dbc.row.SpellVisualEffectName|nil
---@field GetById fun(self: dbc.Table.SpellVisualEffectName, id: integer): dbc.row.SpellVisualEffectName|nil
---@field GetRow fun(self: dbc.Table.SpellVisualEffectName, row: integer): dbc.row.SpellVisualEffectName
---@field NewRow fun(self: dbc.Table.SpellVisualEffectName, id?: integer): dbc.row.SpellVisualEffectName
---@field Create fun(self: dbc.Table.SpellVisualEffectName, id?: integer): dbc.row.SpellVisualEffectName
---@field CreateNext fun(self: dbc.Table.SpellVisualEffectName, data?: table): dbc.row.SpellVisualEffectName
---@field CloneRow fun(self: dbc.Table.SpellVisualEffectName, source: integer|dbc.row.SpellVisualEffectName, new_id?: integer): dbc.row.SpellVisualEffectName
---@field GetAllRows fun(self: dbc.Table.SpellVisualEffectName): dbc.row.SpellVisualEffectName[]
---@field Query fun(self: dbc.Table.SpellVisualEffectName): dbc.Query<dbc.row.SpellVisualEffectName>
---@field Rows fun(self: dbc.Table.SpellVisualEffectName): fun(): integer, dbc.row.SpellVisualEffectName
