---@meta
-- Generated LuaLS annotations for SpellDispelType.dbc. Do not edit.

---Row representation of SpellDispelType.dbc.
---@class dbc.row.SpellDispelType : RowProxy
---@field ID integer
---@field Name string
---@field flag integer
---@field ImmunityPossible integer
---@field InternalName string

-- Fluent PascalCase Methods for SpellDispelType
---@field GetID fun(self: dbc.row.SpellDispelType): integer
---@field SetID fun(self: dbc.row.SpellDispelType, value: integer): dbc.row.SpellDispelType
---@field GetName fun(self: dbc.row.SpellDispelType, locale?: string|integer): string
---@field SetName fun(self: dbc.row.SpellDispelType, value: string, locale?: string|integer): dbc.row.SpellDispelType
---@field Getflag fun(self: dbc.row.SpellDispelType): integer
---@field Setflag fun(self: dbc.row.SpellDispelType, value: integer): dbc.row.SpellDispelType
---@field GetImmunityPossible fun(self: dbc.row.SpellDispelType): integer
---@field SetImmunityPossible fun(self: dbc.row.SpellDispelType, value: integer): dbc.row.SpellDispelType
---@field GetInternalName fun(self: dbc.row.SpellDispelType): string
---@field SetInternalName fun(self: dbc.row.SpellDispelType, value: string): dbc.row.SpellDispelType

-- Inferred Cross-Table Relations for SpellDispelType

-- Cascading Creation & Relations Engine for SpellDispelType
---@field CreateRelated fun(self: dbc.row.SpellDispelType, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.SpellDispelType, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.SpellDispelType, child_table: string, child_field?: string): any[]

---Typed table handle for SpellDispelType.dbc.
---@class dbc.Table.SpellDispelType : DbcTable
---@field FindById fun(self: dbc.Table.SpellDispelType, id: integer): dbc.row.SpellDispelType|nil
---@field GetById fun(self: dbc.Table.SpellDispelType, id: integer): dbc.row.SpellDispelType|nil
---@field GetRow fun(self: dbc.Table.SpellDispelType, row: integer): dbc.row.SpellDispelType
---@field NewRow fun(self: dbc.Table.SpellDispelType, id?: integer): dbc.row.SpellDispelType
---@field Create fun(self: dbc.Table.SpellDispelType, id?: integer): dbc.row.SpellDispelType
---@field CreateNext fun(self: dbc.Table.SpellDispelType, data?: table): dbc.row.SpellDispelType
---@field CloneRow fun(self: dbc.Table.SpellDispelType, source: integer|dbc.row.SpellDispelType, new_id?: integer): dbc.row.SpellDispelType
---@field GetAllRows fun(self: dbc.Table.SpellDispelType): dbc.row.SpellDispelType[]
---@field Query fun(self: dbc.Table.SpellDispelType): dbc.Query<dbc.row.SpellDispelType>
---@field Rows fun(self: dbc.Table.SpellDispelType): fun(): integer, dbc.row.SpellDispelType
