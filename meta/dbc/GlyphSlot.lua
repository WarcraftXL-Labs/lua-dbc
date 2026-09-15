---@meta
-- Generated LuaLS annotations for GlyphSlot.dbc. Do not edit.

---Row representation of GlyphSlot.dbc.
---@class dbc.row.GlyphSlot : RowProxy
---@field ID integer
---@field Type integer
---@field Tooltip integer

-- Fluent PascalCase Methods for GlyphSlot
---@field GetID fun(self: dbc.row.GlyphSlot): integer
---@field SetID fun(self: dbc.row.GlyphSlot, value: integer): dbc.row.GlyphSlot
---@field GetType fun(self: dbc.row.GlyphSlot): integer
---@field SetType fun(self: dbc.row.GlyphSlot, value: integer): dbc.row.GlyphSlot
---@field GetTooltip fun(self: dbc.row.GlyphSlot): integer
---@field SetTooltip fun(self: dbc.row.GlyphSlot, value: integer): dbc.row.GlyphSlot

-- Inferred Cross-Table Relations for GlyphSlot

-- Cascading Creation & Relations Engine for GlyphSlot
---@field CreateRelated fun(self: dbc.row.GlyphSlot, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.GlyphSlot, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.GlyphSlot, child_table: string, child_field?: string): any[]

---Typed table handle for GlyphSlot.dbc.
---@class dbc.Table.GlyphSlot : DbcTable
---@field FindById fun(self: dbc.Table.GlyphSlot, id: integer): dbc.row.GlyphSlot|nil
---@field GetById fun(self: dbc.Table.GlyphSlot, id: integer): dbc.row.GlyphSlot|nil
---@field GetRow fun(self: dbc.Table.GlyphSlot, row: integer): dbc.row.GlyphSlot
---@field NewRow fun(self: dbc.Table.GlyphSlot, id?: integer): dbc.row.GlyphSlot
---@field Create fun(self: dbc.Table.GlyphSlot, id?: integer): dbc.row.GlyphSlot
---@field CreateNext fun(self: dbc.Table.GlyphSlot, data?: table): dbc.row.GlyphSlot
---@field CloneRow fun(self: dbc.Table.GlyphSlot, source: integer|dbc.row.GlyphSlot, new_id?: integer): dbc.row.GlyphSlot
---@field GetAllRows fun(self: dbc.Table.GlyphSlot): dbc.row.GlyphSlot[]
---@field Query fun(self: dbc.Table.GlyphSlot): dbc.Query<dbc.row.GlyphSlot>
---@field Rows fun(self: dbc.Table.GlyphSlot): fun(): integer, dbc.row.GlyphSlot
