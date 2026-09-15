---@meta
-- Generated LuaLS annotations for CameraShakes (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of CameraShakes in build 3.3.5.12340.
---@class dbc.row.v335.CameraShakes : RowProxy
---@field ID integer
---@field ShakeType integer
---@field Direction integer
---@field Amplitude number
---@field Frequency number
---@field Duration number
---@field Phase number
---@field Coefficient number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.CameraShakes self
function row:SetID(value) end

---Gets the value of field 'ShakeType'.
---@return integer value
function row:GetShakeType() end

---Sets the value of field 'ShakeType'.
---@param value integer
---@return dbc.row.v335.CameraShakes self
function row:SetShakeType(value) end

---Gets the value of field 'Direction'.
---@return integer value
function row:GetDirection() end

---Sets the value of field 'Direction'.
---@param value integer
---@return dbc.row.v335.CameraShakes self
function row:SetDirection(value) end

---Gets the value of field 'Amplitude'.
---@return number value
function row:GetAmplitude() end

---Sets the value of field 'Amplitude'.
---@param value number
---@return dbc.row.v335.CameraShakes self
function row:SetAmplitude(value) end

---Gets the value of field 'Frequency'.
---@return number value
function row:GetFrequency() end

---Sets the value of field 'Frequency'.
---@param value number
---@return dbc.row.v335.CameraShakes self
function row:SetFrequency(value) end

---Gets the value of field 'Duration'.
---@return number value
function row:GetDuration() end

---Sets the value of field 'Duration'.
---@param value number
---@return dbc.row.v335.CameraShakes self
function row:SetDuration(value) end

---Gets the value of field 'Phase'.
---@return number value
function row:GetPhase() end

---Sets the value of field 'Phase'.
---@param value number
---@return dbc.row.v335.CameraShakes self
function row:SetPhase(value) end

---Gets the value of field 'Coefficient'.
---@return number value
function row:GetCoefficient() end

---Sets the value of field 'Coefficient'.
---@param value number
---@return dbc.row.v335.CameraShakes self
function row:SetCoefficient(value) end

---Table container for CameraShakes (Build 3.3.5.12340).
---@class dbc.Table.v335.CameraShakes : DbcTable
---@field [integer] dbc.row.v335.CameraShakes
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.CameraShakes
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.CameraShakes|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.CameraShakes
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.CameraShakes>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.CameraShakes[]
function tbl:GetByRelation(foreign_id) end

return {}
