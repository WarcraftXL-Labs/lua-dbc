---@meta
-- Generated LuaLS annotations for AreaGroup.dbc. Do not edit.

---Row representation of AreaGroup.dbc.
---@class dbc.row.AreaGroup : RowProxy
---@field ID integer
---@field AreaID integer[]
---@field NextAreaID integer

-- Fluent PascalCase Methods for AreaGroup
---@field GetID fun(self: dbc.row.AreaGroup): integer
---@field SetID fun(self: dbc.row.AreaGroup, value: integer): dbc.row.AreaGroup
---@field GetAreaID fun(self: dbc.row.AreaGroup, index?: integer): integer|integer[]
---@field SetAreaID fun(self: dbc.row.AreaGroup, value: integer|integer[], index?: integer): dbc.row.AreaGroup
---@field GetNextAreaID fun(self: dbc.row.AreaGroup): integer
---@field SetNextAreaID fun(self: dbc.row.AreaGroup, value: integer): dbc.row.AreaGroup

-- Inferred Cross-Table Relations for AreaGroup
---@field GetAreaTable fun(self: dbc.row.AreaGroup): dbc.row.AreaTable|nil
---@field SetAreaTable fun(self: dbc.row.AreaGroup, target: dbc.row.AreaTable|integer): dbc.row.AreaGroup

-- Cascading Creation & Relations Engine for AreaGroup
---@field CreateRelated fun(self: dbc.row.AreaGroup, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.AreaGroup, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.AreaGroup, child_table: string, child_field?: string): any[]

---Typed table handle for AreaGroup.dbc.
---@class dbc.Table.AreaGroup : DbcTable
---@field FindById fun(self: dbc.Table.AreaGroup, id: integer): dbc.row.AreaGroup|nil
---@field GetById fun(self: dbc.Table.AreaGroup, id: integer): dbc.row.AreaGroup|nil
---@field GetRow fun(self: dbc.Table.AreaGroup, row: integer): dbc.row.AreaGroup
---@field NewRow fun(self: dbc.Table.AreaGroup, id?: integer): dbc.row.AreaGroup
---@field Create fun(self: dbc.Table.AreaGroup, id?: integer): dbc.row.AreaGroup
---@field CreateNext fun(self: dbc.Table.AreaGroup, data?: table): dbc.row.AreaGroup
---@field CloneRow fun(self: dbc.Table.AreaGroup, source: integer|dbc.row.AreaGroup, new_id?: integer): dbc.row.AreaGroup
---@field GetAllRows fun(self: dbc.Table.AreaGroup): dbc.row.AreaGroup[]
---@field Query fun(self: dbc.Table.AreaGroup): dbc.Query<dbc.row.AreaGroup>
---@field Rows fun(self: dbc.Table.AreaGroup): fun(): integer, dbc.row.AreaGroup
