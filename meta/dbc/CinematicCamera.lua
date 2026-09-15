---@meta
-- Generated LuaLS annotations for CinematicCamera.dbc. Do not edit.

---Row representation of CinematicCamera.dbc.
---@class dbc.row.CinematicCamera : RowProxy
---@field ID integer
---@field Model string
---@field SoundID integer
---@field OriginX number
---@field OriginY number
---@field OriginZ number
---@field OriginFacing number

-- Fluent PascalCase Methods for CinematicCamera
---@field GetID fun(self: dbc.row.CinematicCamera): integer
---@field SetID fun(self: dbc.row.CinematicCamera, value: integer): dbc.row.CinematicCamera
---@field GetModel fun(self: dbc.row.CinematicCamera): string
---@field SetModel fun(self: dbc.row.CinematicCamera, value: string): dbc.row.CinematicCamera
---@field GetSoundID fun(self: dbc.row.CinematicCamera): integer
---@field SetSoundID fun(self: dbc.row.CinematicCamera, value: integer): dbc.row.CinematicCamera
---@field GetOriginX fun(self: dbc.row.CinematicCamera): number
---@field SetOriginX fun(self: dbc.row.CinematicCamera, value: number): dbc.row.CinematicCamera
---@field GetOriginY fun(self: dbc.row.CinematicCamera): number
---@field SetOriginY fun(self: dbc.row.CinematicCamera, value: number): dbc.row.CinematicCamera
---@field GetOriginZ fun(self: dbc.row.CinematicCamera): number
---@field SetOriginZ fun(self: dbc.row.CinematicCamera, value: number): dbc.row.CinematicCamera
---@field GetOriginFacing fun(self: dbc.row.CinematicCamera): number
---@field SetOriginFacing fun(self: dbc.row.CinematicCamera, value: number): dbc.row.CinematicCamera

-- Inferred Cross-Table Relations for CinematicCamera
---@field GetSoundEntries fun(self: dbc.row.CinematicCamera): dbc.row.SoundEntries|nil
---@field SetSoundEntries fun(self: dbc.row.CinematicCamera, target: dbc.row.SoundEntries|integer): dbc.row.CinematicCamera

-- Cascading Creation & Relations Engine for CinematicCamera
---@field CreateRelated fun(self: dbc.row.CinematicCamera, target: string, data_or_id?: table|integer): any
---@field GetRelated fun(self: dbc.row.CinematicCamera, target_or_field: string): any
---@field GetChildren fun(self: dbc.row.CinematicCamera, child_table: string, child_field?: string): any[]

---Typed table handle for CinematicCamera.dbc.
---@class dbc.Table.CinematicCamera : DbcTable
---@field FindById fun(self: dbc.Table.CinematicCamera, id: integer): dbc.row.CinematicCamera|nil
---@field GetById fun(self: dbc.Table.CinematicCamera, id: integer): dbc.row.CinematicCamera|nil
---@field GetRow fun(self: dbc.Table.CinematicCamera, row: integer): dbc.row.CinematicCamera
---@field NewRow fun(self: dbc.Table.CinematicCamera, id?: integer): dbc.row.CinematicCamera
---@field Create fun(self: dbc.Table.CinematicCamera, id?: integer): dbc.row.CinematicCamera
---@field CreateNext fun(self: dbc.Table.CinematicCamera, data?: table): dbc.row.CinematicCamera
---@field CloneRow fun(self: dbc.Table.CinematicCamera, source: integer|dbc.row.CinematicCamera, new_id?: integer): dbc.row.CinematicCamera
---@field GetAllRows fun(self: dbc.Table.CinematicCamera): dbc.row.CinematicCamera[]
---@field Query fun(self: dbc.Table.CinematicCamera): dbc.Query<dbc.row.CinematicCamera>
---@field Rows fun(self: dbc.Table.CinematicCamera): fun(): integer, dbc.row.CinematicCamera
