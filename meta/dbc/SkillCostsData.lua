---@meta
-- Generated LuaLS annotations for SkillCostsData.dbc. Do not edit.

---Row representation of SkillCostsData.dbc.
---@class dbc.row.SkillCostsData : RowProxy
---@field ID integer
---@field SkillCostsID integer
---@field Cost integer[]

-- Fluent PascalCase Methods for SkillCostsData
---@field GetID fun(self: dbc.row.SkillCostsData): integer
---@field SetID fun(self: dbc.row.SkillCostsData, value: integer): dbc.row.SkillCostsData
---@field GetSkillCostsID fun(self: dbc.row.SkillCostsData): integer
---@field SetSkillCostsID fun(self: dbc.row.SkillCostsData, value: integer): dbc.row.SkillCostsData
---@field GetCost fun(self: dbc.row.SkillCostsData, index?: integer): integer|integer[]
---@field SetCost fun(self: dbc.row.SkillCostsData, value: integer|integer[], index?: integer): dbc.row.SkillCostsData

-- Inferred Cross-Table Relations for SkillCostsData

-- Cascading Creation & Relations Engine for SkillCostsData
---@field CreateRelated fun(self: dbc.row.SkillCostsData, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.SkillCostsData, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.SkillCostsData, child_table: string, child_field?: string): any[]

---Typed table handle for SkillCostsData.dbc.
---@class dbc.Table.SkillCostsData : DbcTable
---@field FindById fun(self: dbc.Table.SkillCostsData, id: integer): dbc.row.SkillCostsData|nil
---@field GetById fun(self: dbc.Table.SkillCostsData, id: integer): dbc.row.SkillCostsData|nil
---@field GetRow fun(self: dbc.Table.SkillCostsData, row: integer): dbc.row.SkillCostsData
---@field NewRow fun(self: dbc.Table.SkillCostsData, id?: integer): dbc.row.SkillCostsData
---@field Create fun(self: dbc.Table.SkillCostsData, id?: integer): dbc.row.SkillCostsData
---@field CreateNext fun(self: dbc.Table.SkillCostsData, data?: table): dbc.row.SkillCostsData
---@field CloneRow fun(self: dbc.Table.SkillCostsData, source: integer|dbc.row.SkillCostsData, new_id?: integer): dbc.row.SkillCostsData
---@field GetAllRows fun(self: dbc.Table.SkillCostsData): dbc.row.SkillCostsData[]
---@field Query fun(self: dbc.Table.SkillCostsData): dbc.Query<dbc.row.SkillCostsData>
---@field Rows fun(self: dbc.Table.SkillCostsData): fun(): integer, dbc.row.SkillCostsData
