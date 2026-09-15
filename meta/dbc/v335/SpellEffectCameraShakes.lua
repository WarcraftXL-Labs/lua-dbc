---@meta
-- Generated LuaLS annotations for SpellEffectCameraShakes (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SpellEffectCameraShakes in build 3.3.5.12340.
---@class dbc.row.v335.SpellEffectCameraShakes : RowProxy
---@field ID integer
---@field CameraShake integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SpellEffectCameraShakes self
function row:SetID(value) end

---Gets the value of field 'CameraShake'.
---@return integer[] value
function row:GetCameraShake() end

---Sets the value of field 'CameraShake'.
---@param value integer[]
---@return dbc.row.v335.SpellEffectCameraShakes self
function row:SetCameraShake(value) end

---Gets element at 1-based index in 'CameraShake'.
---@param index integer
---@return integer value
function row:GetCameraShakeItem(index) end

---Table container for SpellEffectCameraShakes (Build 3.3.5.12340).
---@class dbc.Table.v335.SpellEffectCameraShakes : DbcTable
---@field [integer] dbc.row.v335.SpellEffectCameraShakes
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SpellEffectCameraShakes
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SpellEffectCameraShakes|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SpellEffectCameraShakes
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SpellEffectCameraShakes>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SpellEffectCameraShakes[]
function tbl:GetByRelation(foreign_id) end

return {}
