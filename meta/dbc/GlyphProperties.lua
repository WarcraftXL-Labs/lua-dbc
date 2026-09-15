---@meta
-- Generated LuaLS annotations for GlyphProperties.dbc. Do not edit.

---Row representation of GlyphProperties.dbc.
---@class dbc.row.GlyphProperties : RowProxy
---@field ID integer
---@field SpellID integer
---@field GlyphSlotFlags integer
---@field SpellIconID integer

-- Fluent PascalCase Methods for GlyphProperties
---@field GetID fun(self: dbc.row.GlyphProperties): integer
---@field SetID fun(self: dbc.row.GlyphProperties, value: integer): dbc.row.GlyphProperties
---@field GetSpellID fun(self: dbc.row.GlyphProperties): integer
---@field SetSpellID fun(self: dbc.row.GlyphProperties, value: integer): dbc.row.GlyphProperties
---@field GetGlyphSlotFlags fun(self: dbc.row.GlyphProperties): integer
---@field SetGlyphSlotFlags fun(self: dbc.row.GlyphProperties, value: integer): dbc.row.GlyphProperties
---@field HasGlyphSlotFlags fun(self: dbc.row.GlyphProperties, flag: integer): boolean
---@field AddGlyphSlotFlags fun(self: dbc.row.GlyphProperties, flag: integer): dbc.row.GlyphProperties
---@field RemoveGlyphSlotFlags fun(self: dbc.row.GlyphProperties, flag: integer): dbc.row.GlyphProperties
---@field GetSpellIconID fun(self: dbc.row.GlyphProperties): integer
---@field SetSpellIconID fun(self: dbc.row.GlyphProperties, value: integer): dbc.row.GlyphProperties

-- Inferred Cross-Table Relations for GlyphProperties
---@field GetSpell fun(self: dbc.row.GlyphProperties): dbc.row.Spell|nil
---@field SetSpell fun(self: dbc.row.GlyphProperties, target: dbc.row.Spell|integer): dbc.row.GlyphProperties
---@field GetSpellIcon fun(self: dbc.row.GlyphProperties): dbc.row.SpellIcon|nil
---@field SetSpellIcon fun(self: dbc.row.GlyphProperties, target: dbc.row.SpellIcon|integer): dbc.row.GlyphProperties

-- Cascading Creation & Relations Engine for GlyphProperties
---@field CreateRelated fun(self: dbc.row.GlyphProperties, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.GlyphProperties, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.GlyphProperties, child_table: string, child_field?: string): any[]

---Typed table handle for GlyphProperties.dbc.
---@class dbc.Table.GlyphProperties : DbcTable
---@field FindById fun(self: dbc.Table.GlyphProperties, id: integer): dbc.row.GlyphProperties|nil
---@field GetById fun(self: dbc.Table.GlyphProperties, id: integer): dbc.row.GlyphProperties|nil
---@field GetRow fun(self: dbc.Table.GlyphProperties, row: integer): dbc.row.GlyphProperties
---@field NewRow fun(self: dbc.Table.GlyphProperties, id?: integer): dbc.row.GlyphProperties
---@field Create fun(self: dbc.Table.GlyphProperties, id?: integer): dbc.row.GlyphProperties
---@field CreateNext fun(self: dbc.Table.GlyphProperties, data?: table): dbc.row.GlyphProperties
---@field CloneRow fun(self: dbc.Table.GlyphProperties, source: integer|dbc.row.GlyphProperties, new_id?: integer): dbc.row.GlyphProperties
---@field GetAllRows fun(self: dbc.Table.GlyphProperties): dbc.row.GlyphProperties[]
---@field Query fun(self: dbc.Table.GlyphProperties): dbc.Query<dbc.row.GlyphProperties>
---@field Rows fun(self: dbc.Table.GlyphProperties): fun(): integer, dbc.row.GlyphProperties
