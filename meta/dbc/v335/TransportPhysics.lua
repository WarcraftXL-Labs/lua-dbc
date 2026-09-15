---@meta
-- Generated LuaLS annotations for TransportPhysics (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of TransportPhysics in build 3.3.5.12340.
---@class dbc.row.v335.TransportPhysics : RowProxy
---@field ID integer
---@field WaveAmp number
---@field WaveTimeScale number
---@field RollAmp number
---@field RollTimeScale number
---@field PitchAmp number
---@field PitchTimeScale number
---@field MaxBank number
---@field MaxBankTurnSpeed number
---@field SpeedDampThresh number
---@field SpeedDamp number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.TransportPhysics self
function row:SetID(value) end

---Gets the value of field 'WaveAmp'.
---@return number value
function row:GetWaveAmp() end

---Sets the value of field 'WaveAmp'.
---@param value number
---@return dbc.row.v335.TransportPhysics self
function row:SetWaveAmp(value) end

---Gets the value of field 'WaveTimeScale'.
---@return number value
function row:GetWaveTimeScale() end

---Sets the value of field 'WaveTimeScale'.
---@param value number
---@return dbc.row.v335.TransportPhysics self
function row:SetWaveTimeScale(value) end

---Gets the value of field 'RollAmp'.
---@return number value
function row:GetRollAmp() end

---Sets the value of field 'RollAmp'.
---@param value number
---@return dbc.row.v335.TransportPhysics self
function row:SetRollAmp(value) end

---Gets the value of field 'RollTimeScale'.
---@return number value
function row:GetRollTimeScale() end

---Sets the value of field 'RollTimeScale'.
---@param value number
---@return dbc.row.v335.TransportPhysics self
function row:SetRollTimeScale(value) end

---Gets the value of field 'PitchAmp'.
---@return number value
function row:GetPitchAmp() end

---Sets the value of field 'PitchAmp'.
---@param value number
---@return dbc.row.v335.TransportPhysics self
function row:SetPitchAmp(value) end

---Gets the value of field 'PitchTimeScale'.
---@return number value
function row:GetPitchTimeScale() end

---Sets the value of field 'PitchTimeScale'.
---@param value number
---@return dbc.row.v335.TransportPhysics self
function row:SetPitchTimeScale(value) end

---Gets the value of field 'MaxBank'.
---@return number value
function row:GetMaxBank() end

---Sets the value of field 'MaxBank'.
---@param value number
---@return dbc.row.v335.TransportPhysics self
function row:SetMaxBank(value) end

---Gets the value of field 'MaxBankTurnSpeed'.
---@return number value
function row:GetMaxBankTurnSpeed() end

---Sets the value of field 'MaxBankTurnSpeed'.
---@param value number
---@return dbc.row.v335.TransportPhysics self
function row:SetMaxBankTurnSpeed(value) end

---Gets the value of field 'SpeedDampThresh'.
---@return number value
function row:GetSpeedDampThresh() end

---Sets the value of field 'SpeedDampThresh'.
---@param value number
---@return dbc.row.v335.TransportPhysics self
function row:SetSpeedDampThresh(value) end

---Gets the value of field 'SpeedDamp'.
---@return number value
function row:GetSpeedDamp() end

---Sets the value of field 'SpeedDamp'.
---@param value number
---@return dbc.row.v335.TransportPhysics self
function row:SetSpeedDamp(value) end

---Table container for TransportPhysics (Build 3.3.5.12340).
---@class dbc.Table.v335.TransportPhysics : DbcTable
---@field [integer] dbc.row.v335.TransportPhysics
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.TransportPhysics
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.TransportPhysics|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.TransportPhysics
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.TransportPhysics>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.TransportPhysics[]
function tbl:GetByRelation(foreign_id) end

return {}
