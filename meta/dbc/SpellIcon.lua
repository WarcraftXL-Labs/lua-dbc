---@meta
-- Generated LuaLS annotations for SpellIcon.dbc. Do not edit.

---Row representation of SpellIcon.dbc.
---@class dbc.row.SpellIcon : RowProxy
---@field ID integer
---@field TextureFilename string

-- Fluent PascalCase Methods for SpellIcon
---@field GetID fun(self: dbc.row.SpellIcon): integer
---@field SetID fun(self: dbc.row.SpellIcon, value: integer): dbc.row.SpellIcon
---@field GetTextureFilename fun(self: dbc.row.SpellIcon): string
---@field SetTextureFilename fun(self: dbc.row.SpellIcon, value: string): dbc.row.SpellIcon

-- Inferred Cross-Table Relations for SpellIcon

-- Cascading Creation & Relations Engine for SpellIcon
---@field CreateRelated fun(self: dbc.row.SpellIcon, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.SpellIcon, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.SpellIcon, child_table: string, child_field?: string): any[]

---Typed table handle for SpellIcon.dbc.
---@class dbc.Table.SpellIcon : DbcTable
---@field FindById fun(self: dbc.Table.SpellIcon, id: integer): dbc.row.SpellIcon|nil
---@field GetById fun(self: dbc.Table.SpellIcon, id: integer): dbc.row.SpellIcon|nil
---@field GetRow fun(self: dbc.Table.SpellIcon, row: integer): dbc.row.SpellIcon
---@field NewRow fun(self: dbc.Table.SpellIcon, id?: integer): dbc.row.SpellIcon
---@field Create fun(self: dbc.Table.SpellIcon, id?: integer): dbc.row.SpellIcon
---@field CreateNext fun(self: dbc.Table.SpellIcon, data?: table): dbc.row.SpellIcon
---@field CloneRow fun(self: dbc.Table.SpellIcon, source: integer|dbc.row.SpellIcon, new_id?: integer): dbc.row.SpellIcon
---@field GetAllRows fun(self: dbc.Table.SpellIcon): dbc.row.SpellIcon[]
---@field Query fun(self: dbc.Table.SpellIcon): dbc.Query<dbc.row.SpellIcon>
---@field Rows fun(self: dbc.Table.SpellIcon): fun(): integer, dbc.row.SpellIcon
