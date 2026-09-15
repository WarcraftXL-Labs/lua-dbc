---@meta
-- Generated LuaLS annotations for SoundWaterType.dbc. Do not edit.

---Row representation of SoundWaterType.dbc.
---@class dbc.row.SoundWaterType : RowProxy
---@field ID integer
---@field LiquidTypeID integer
---@field FluidSpeed integer
---@field SoundID integer

-- Fluent PascalCase Methods for SoundWaterType
---@field GetID fun(self: dbc.row.SoundWaterType): integer
---@field SetID fun(self: dbc.row.SoundWaterType, value: integer): dbc.row.SoundWaterType
---@field GetLiquidTypeID fun(self: dbc.row.SoundWaterType): integer
---@field SetLiquidTypeID fun(self: dbc.row.SoundWaterType, value: integer): dbc.row.SoundWaterType
---@field GetFluidSpeed fun(self: dbc.row.SoundWaterType): integer
---@field SetFluidSpeed fun(self: dbc.row.SoundWaterType, value: integer): dbc.row.SoundWaterType
---@field GetSoundID fun(self: dbc.row.SoundWaterType): integer
---@field SetSoundID fun(self: dbc.row.SoundWaterType, value: integer): dbc.row.SoundWaterType

-- Inferred Cross-Table Relations for SoundWaterType
---@field GetLiquidType fun(self: dbc.row.SoundWaterType): dbc.row.LiquidType|nil
---@field SetLiquidType fun(self: dbc.row.SoundWaterType, target: dbc.row.LiquidType|integer): dbc.row.SoundWaterType
---@field GetSoundEntries fun(self: dbc.row.SoundWaterType): dbc.row.SoundEntries|nil
---@field SetSoundEntries fun(self: dbc.row.SoundWaterType, target: dbc.row.SoundEntries|integer): dbc.row.SoundWaterType

-- Cascading Creation & Relations Engine for SoundWaterType
---@field CreateRelated fun(self: dbc.row.SoundWaterType, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.SoundWaterType, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.SoundWaterType, child_table: string, child_field?: string): any[]

---Typed table handle for SoundWaterType.dbc.
---@class dbc.Table.SoundWaterType : DbcTable
---@field FindById fun(self: dbc.Table.SoundWaterType, id: integer): dbc.row.SoundWaterType|nil
---@field GetById fun(self: dbc.Table.SoundWaterType, id: integer): dbc.row.SoundWaterType|nil
---@field GetRow fun(self: dbc.Table.SoundWaterType, row: integer): dbc.row.SoundWaterType
---@field NewRow fun(self: dbc.Table.SoundWaterType, id?: integer): dbc.row.SoundWaterType
---@field Create fun(self: dbc.Table.SoundWaterType, id?: integer): dbc.row.SoundWaterType
---@field CreateNext fun(self: dbc.Table.SoundWaterType, data?: table): dbc.row.SoundWaterType
---@field CloneRow fun(self: dbc.Table.SoundWaterType, source: integer|dbc.row.SoundWaterType, new_id?: integer): dbc.row.SoundWaterType
---@field GetAllRows fun(self: dbc.Table.SoundWaterType): dbc.row.SoundWaterType[]
---@field Query fun(self: dbc.Table.SoundWaterType): dbc.Query<dbc.row.SoundWaterType>
---@field Rows fun(self: dbc.Table.SoundWaterType): fun(): integer, dbc.row.SoundWaterType
