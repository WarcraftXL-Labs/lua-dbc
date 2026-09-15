---@meta
-- Generated LuaLS annotations for CameraEffectEntry (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CameraEffectEntry in build 12.1.5.69594.
---@class dbc.row.v1215.CameraEffectEntry : RowProxy
---@field ID integer
---@field OrderIndex integer
---@field AmplitudeCurveID integer
---@field Duration number
---@field Delay number
---@field Phase number
---@field Amplitude number
---@field AmplitudeB number
---@field Frequency number
---@field RadiusMin number
---@field RadiusMax number
---@field Flags integer
---@field EffectType integer 0: rotation, 1: translation, 2: fov
---@field DirectionType integer
---@field MovementType integer
---@field AttenuationType integer
---@field CameraEffectID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CameraEffectEntry self
function row:SetID(value) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.CameraEffectEntry self
function row:SetOrderIndex(value) end

---Gets the value of field 'AmplitudeCurveID'.
---@return integer value
function row:GetAmplitudeCurveID() end

---Sets the value of field 'AmplitudeCurveID'.
---@param value integer
---@return dbc.row.v1215.CameraEffectEntry self
function row:SetAmplitudeCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'AmplitudeCurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetAmplitudeCurve() end

---Creates a related 'Curve' row and automatically links 'AmplitudeCurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'Duration'.
---@return number value
function row:GetDuration() end

---Sets the value of field 'Duration'.
---@param value number
---@return dbc.row.v1215.CameraEffectEntry self
function row:SetDuration(value) end

---Gets the value of field 'Delay'.
---@return number value
function row:GetDelay() end

---Sets the value of field 'Delay'.
---@param value number
---@return dbc.row.v1215.CameraEffectEntry self
function row:SetDelay(value) end

---Gets the value of field 'Phase'.
---@return number value
function row:GetPhase() end

---Sets the value of field 'Phase'.
---@param value number
---@return dbc.row.v1215.CameraEffectEntry self
function row:SetPhase(value) end

---Gets the value of field 'Amplitude'.
---@return number value
function row:GetAmplitude() end

---Sets the value of field 'Amplitude'.
---@param value number
---@return dbc.row.v1215.CameraEffectEntry self
function row:SetAmplitude(value) end

---Gets the value of field 'AmplitudeB'.
---@return number value
function row:GetAmplitudeB() end

---Sets the value of field 'AmplitudeB'.
---@param value number
---@return dbc.row.v1215.CameraEffectEntry self
function row:SetAmplitudeB(value) end

---Gets the value of field 'Frequency'.
---@return number value
function row:GetFrequency() end

---Sets the value of field 'Frequency'.
---@param value number
---@return dbc.row.v1215.CameraEffectEntry self
function row:SetFrequency(value) end

---Gets the value of field 'RadiusMin'.
---@return number value
function row:GetRadiusMin() end

---Sets the value of field 'RadiusMin'.
---@param value number
---@return dbc.row.v1215.CameraEffectEntry self
function row:SetRadiusMin(value) end

---Gets the value of field 'RadiusMax'.
---@return number value
function row:GetRadiusMax() end

---Sets the value of field 'RadiusMax'.
---@param value number
---@return dbc.row.v1215.CameraEffectEntry self
function row:SetRadiusMax(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.CameraEffectEntry self
function row:SetFlags(value) end

---Gets the value of field 'EffectType'.
---@return integer value
function row:GetEffectType() end

---Sets the value of field 'EffectType'.
---@param value integer
---@return dbc.row.v1215.CameraEffectEntry self
function row:SetEffectType(value) end

---Gets the value of field 'DirectionType'.
---@return integer value
function row:GetDirectionType() end

---Sets the value of field 'DirectionType'.
---@param value integer
---@return dbc.row.v1215.CameraEffectEntry self
function row:SetDirectionType(value) end

---Gets the value of field 'MovementType'.
---@return integer value
function row:GetMovementType() end

---Sets the value of field 'MovementType'.
---@param value integer
---@return dbc.row.v1215.CameraEffectEntry self
function row:SetMovementType(value) end

---Gets the value of field 'AttenuationType'.
---@return integer value
function row:GetAttenuationType() end

---Sets the value of field 'AttenuationType'.
---@param value integer
---@return dbc.row.v1215.CameraEffectEntry self
function row:SetAttenuationType(value) end

---Gets the value of field 'CameraEffectID'.
---@return integer value
function row:GetCameraEffectID() end

---Sets the value of field 'CameraEffectID'.
---@param value integer
---@return dbc.row.v1215.CameraEffectEntry self
function row:SetCameraEffectID(value) end

---Navigates foreign relationship to 'CameraEffect' via 'CameraEffectID'.
---@return dbc.row.v1215.CameraEffect|nil
function row:GetCameraEffect() end

---Creates a related 'CameraEffect' row and automatically links 'CameraEffectID'.
---@param data? table
---@return dbc.row.v1215.CameraEffect
function row:CreateRelated(data) end

---Table container for CameraEffectEntry (Build 12.1.5.69594).
---@class dbc.Table.v1215.CameraEffectEntry : DbcTable
---@field [integer] dbc.row.v1215.CameraEffectEntry
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CameraEffectEntry
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CameraEffectEntry|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CameraEffectEntry
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CameraEffectEntry>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CameraEffectEntry[]
function tbl:GetByRelation(foreign_id) end

return {}
