---@meta
-- Generated LuaLS annotations for FactionGroup.dbc. Do not edit.

---Row representation of FactionGroup.dbc.
---@class dbc.row.FactionGroup : RowProxy
---@field ID integer
---@field MaskID integer
---@field InternalName string
---@field Name string

-- Fluent PascalCase Methods for FactionGroup
---@field GetID fun(self: dbc.row.FactionGroup): integer
---@field SetID fun(self: dbc.row.FactionGroup, value: integer): dbc.row.FactionGroup
---@field GetMaskID fun(self: dbc.row.FactionGroup): integer
---@field SetMaskID fun(self: dbc.row.FactionGroup, value: integer): dbc.row.FactionGroup
---@field HasMaskID fun(self: dbc.row.FactionGroup, flag: integer): boolean
---@field AddMaskID fun(self: dbc.row.FactionGroup, flag: integer): dbc.row.FactionGroup
---@field RemoveMaskID fun(self: dbc.row.FactionGroup, flag: integer): dbc.row.FactionGroup
---@field GetInternalName fun(self: dbc.row.FactionGroup): string
---@field SetInternalName fun(self: dbc.row.FactionGroup, value: string): dbc.row.FactionGroup
---@field GetName fun(self: dbc.row.FactionGroup, locale?: string|integer): string
---@field SetName fun(self: dbc.row.FactionGroup, value: string, locale?: string|integer): dbc.row.FactionGroup

-- Inferred Cross-Table Relations for FactionGroup

-- Cascading Creation & Relations Engine for FactionGroup
---@field CreateRelated fun(self: dbc.row.FactionGroup, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.FactionGroup, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.FactionGroup, child_table: string, child_field?: string): any[]

---Typed table handle for FactionGroup.dbc.
---@class dbc.Table.FactionGroup : DbcTable
---@field FindById fun(self: dbc.Table.FactionGroup, id: integer): dbc.row.FactionGroup|nil
---@field GetById fun(self: dbc.Table.FactionGroup, id: integer): dbc.row.FactionGroup|nil
---@field GetRow fun(self: dbc.Table.FactionGroup, row: integer): dbc.row.FactionGroup
---@field NewRow fun(self: dbc.Table.FactionGroup, id?: integer): dbc.row.FactionGroup
---@field Create fun(self: dbc.Table.FactionGroup, id?: integer): dbc.row.FactionGroup
---@field CreateNext fun(self: dbc.Table.FactionGroup, data?: table): dbc.row.FactionGroup
---@field CloneRow fun(self: dbc.Table.FactionGroup, source: integer|dbc.row.FactionGroup, new_id?: integer): dbc.row.FactionGroup
---@field GetAllRows fun(self: dbc.Table.FactionGroup): dbc.row.FactionGroup[]
---@field Query fun(self: dbc.Table.FactionGroup): dbc.Query<dbc.row.FactionGroup>
---@field Rows fun(self: dbc.Table.FactionGroup): fun(): integer, dbc.row.FactionGroup
