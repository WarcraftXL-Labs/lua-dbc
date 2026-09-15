---@meta
-- Generated LuaLS annotations for PetPersonality.dbc. Do not edit.

---Row representation of PetPersonality.dbc.
---@class dbc.row.PetPersonality : RowProxy
---@field ID integer
---@field Name string
---@field HappinessThreshold integer[]
---@field HappinessDamage number[]

-- Fluent PascalCase Methods for PetPersonality
---@field GetID fun(self: dbc.row.PetPersonality): integer
---@field SetID fun(self: dbc.row.PetPersonality, value: integer): dbc.row.PetPersonality
---@field GetName fun(self: dbc.row.PetPersonality, locale?: string|integer): string
---@field SetName fun(self: dbc.row.PetPersonality, value: string, locale?: string|integer): dbc.row.PetPersonality
---@field GetHappinessThreshold fun(self: dbc.row.PetPersonality, index?: integer): integer|integer[]
---@field SetHappinessThreshold fun(self: dbc.row.PetPersonality, value: integer|integer[], index?: integer): dbc.row.PetPersonality
---@field GetHappinessDamage fun(self: dbc.row.PetPersonality, index?: integer): number|number[]
---@field SetHappinessDamage fun(self: dbc.row.PetPersonality, value: number|number[], index?: integer): dbc.row.PetPersonality

-- Inferred Cross-Table Relations for PetPersonality

-- Cascading Creation & Relations Engine for PetPersonality
---@field CreateRelated fun(self: dbc.row.PetPersonality, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.PetPersonality, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.PetPersonality, child_table: string, child_field?: string): any[]

---Typed table handle for PetPersonality.dbc.
---@class dbc.Table.PetPersonality : DbcTable
---@field FindById fun(self: dbc.Table.PetPersonality, id: integer): dbc.row.PetPersonality|nil
---@field GetById fun(self: dbc.Table.PetPersonality, id: integer): dbc.row.PetPersonality|nil
---@field GetRow fun(self: dbc.Table.PetPersonality, row: integer): dbc.row.PetPersonality
---@field NewRow fun(self: dbc.Table.PetPersonality, id?: integer): dbc.row.PetPersonality
---@field Create fun(self: dbc.Table.PetPersonality, id?: integer): dbc.row.PetPersonality
---@field CreateNext fun(self: dbc.Table.PetPersonality, data?: table): dbc.row.PetPersonality
---@field CloneRow fun(self: dbc.Table.PetPersonality, source: integer|dbc.row.PetPersonality, new_id?: integer): dbc.row.PetPersonality
---@field GetAllRows fun(self: dbc.Table.PetPersonality): dbc.row.PetPersonality[]
---@field Query fun(self: dbc.Table.PetPersonality): dbc.Query<dbc.row.PetPersonality>
---@field Rows fun(self: dbc.Table.PetPersonality): fun(): integer, dbc.row.PetPersonality
