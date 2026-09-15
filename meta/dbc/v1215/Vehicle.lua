---@meta
-- Generated LuaLS annotations for Vehicle (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Vehicle in build 12.1.5.69594.
---@class dbc.row.v1215.Vehicle : RowProxy
---@field ID integer
---@field Flags integer
---@field FlagsB integer
---@field TurnSpeed number
---@field PitchSpeed number
---@field PitchMin number
---@field PitchMax number
---@field MouseLookOffsetPitch number
---@field CameraFadeDistScalarMin number
---@field CameraFadeDistScalarMax number
---@field CameraPitchOffset number
---@field FacingLimitRight number
---@field FacingLimitLeft number
---@field CameraYawOffset number
---@field VehicleUIIndicatorID integer
---@field MissileTargetingID integer
---@field VehiclePOITypeID integer
---@field SeatID integer[]
---@field PowerDisplayID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Vehicle self
function row:SetID(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.Vehicle self
function row:SetFlags(value) end

---Gets the value of field 'FlagsB'.
---@return integer value
function row:GetFlagsB() end

---Sets the value of field 'FlagsB'.
---@param value integer
---@return dbc.row.v1215.Vehicle self
function row:SetFlagsB(value) end

---Gets the value of field 'TurnSpeed'.
---@return number value
function row:GetTurnSpeed() end

---Sets the value of field 'TurnSpeed'.
---@param value number
---@return dbc.row.v1215.Vehicle self
function row:SetTurnSpeed(value) end

---Gets the value of field 'PitchSpeed'.
---@return number value
function row:GetPitchSpeed() end

---Sets the value of field 'PitchSpeed'.
---@param value number
---@return dbc.row.v1215.Vehicle self
function row:SetPitchSpeed(value) end

---Gets the value of field 'PitchMin'.
---@return number value
function row:GetPitchMin() end

---Sets the value of field 'PitchMin'.
---@param value number
---@return dbc.row.v1215.Vehicle self
function row:SetPitchMin(value) end

---Gets the value of field 'PitchMax'.
---@return number value
function row:GetPitchMax() end

---Sets the value of field 'PitchMax'.
---@param value number
---@return dbc.row.v1215.Vehicle self
function row:SetPitchMax(value) end

---Gets the value of field 'MouseLookOffsetPitch'.
---@return number value
function row:GetMouseLookOffsetPitch() end

---Sets the value of field 'MouseLookOffsetPitch'.
---@param value number
---@return dbc.row.v1215.Vehicle self
function row:SetMouseLookOffsetPitch(value) end

---Gets the value of field 'CameraFadeDistScalarMin'.
---@return number value
function row:GetCameraFadeDistScalarMin() end

---Sets the value of field 'CameraFadeDistScalarMin'.
---@param value number
---@return dbc.row.v1215.Vehicle self
function row:SetCameraFadeDistScalarMin(value) end

---Gets the value of field 'CameraFadeDistScalarMax'.
---@return number value
function row:GetCameraFadeDistScalarMax() end

---Sets the value of field 'CameraFadeDistScalarMax'.
---@param value number
---@return dbc.row.v1215.Vehicle self
function row:SetCameraFadeDistScalarMax(value) end

---Gets the value of field 'CameraPitchOffset'.
---@return number value
function row:GetCameraPitchOffset() end

---Sets the value of field 'CameraPitchOffset'.
---@param value number
---@return dbc.row.v1215.Vehicle self
function row:SetCameraPitchOffset(value) end

---Gets the value of field 'FacingLimitRight'.
---@return number value
function row:GetFacingLimitRight() end

---Sets the value of field 'FacingLimitRight'.
---@param value number
---@return dbc.row.v1215.Vehicle self
function row:SetFacingLimitRight(value) end

---Gets the value of field 'FacingLimitLeft'.
---@return number value
function row:GetFacingLimitLeft() end

---Sets the value of field 'FacingLimitLeft'.
---@param value number
---@return dbc.row.v1215.Vehicle self
function row:SetFacingLimitLeft(value) end

---Gets the value of field 'CameraYawOffset'.
---@return number value
function row:GetCameraYawOffset() end

---Sets the value of field 'CameraYawOffset'.
---@param value number
---@return dbc.row.v1215.Vehicle self
function row:SetCameraYawOffset(value) end

---Gets the value of field 'VehicleUIIndicatorID'.
---@return integer value
function row:GetVehicleUIIndicatorID() end

---Sets the value of field 'VehicleUIIndicatorID'.
---@param value integer
---@return dbc.row.v1215.Vehicle self
function row:SetVehicleUIIndicatorID(value) end

---Navigates foreign relationship to 'VehicleUIIndicator' via 'VehicleUIIndicatorID'.
---@return dbc.row.v1215.VehicleUIIndicator|nil
function row:GetVehicleUIIndicator() end

---Creates a related 'VehicleUIIndicator' row and automatically links 'VehicleUIIndicatorID'.
---@param data? table
---@return dbc.row.v1215.VehicleUIIndicator
function row:CreateRelated(data) end

---Gets the value of field 'MissileTargetingID'.
---@return integer value
function row:GetMissileTargetingID() end

---Sets the value of field 'MissileTargetingID'.
---@param value integer
---@return dbc.row.v1215.Vehicle self
function row:SetMissileTargetingID(value) end

---Navigates foreign relationship to 'MissileTargeting' via 'MissileTargetingID'.
---@return dbc.row.v1215.MissileTargeting|nil
function row:GetMissileTargeting() end

---Creates a related 'MissileTargeting' row and automatically links 'MissileTargetingID'.
---@param data? table
---@return dbc.row.v1215.MissileTargeting
function row:CreateRelated(data) end

---Gets the value of field 'VehiclePOITypeID'.
---@return integer value
function row:GetVehiclePOITypeID() end

---Sets the value of field 'VehiclePOITypeID'.
---@param value integer
---@return dbc.row.v1215.Vehicle self
function row:SetVehiclePOITypeID(value) end

---Navigates foreign relationship to 'VehiclePOIType' via 'VehiclePOITypeID'.
---@return dbc.row.v1215.VehiclePOIType|nil
function row:GetVehiclePOIType() end

---Creates a related 'VehiclePOIType' row and automatically links 'VehiclePOITypeID'.
---@param data? table
---@return dbc.row.v1215.VehiclePOIType
function row:CreateRelated(data) end

---Gets the value of field 'SeatID'.
---@return integer[] value
function row:GetSeatID() end

---Sets the value of field 'SeatID'.
---@param value integer[]
---@return dbc.row.v1215.Vehicle self
function row:SetSeatID(value) end

---Gets element at 1-based index in 'SeatID'.
---@param index integer
---@return integer value
function row:GetSeatIDItem(index) end

---Navigates foreign relationship to 'VehicleSeat' via 'SeatID'.
---@return dbc.row.v1215.VehicleSeat|nil
function row:GetSeat() end

---Creates a related 'VehicleSeat' row and automatically links 'SeatID'.
---@param data? table
---@return dbc.row.v1215.VehicleSeat
function row:CreateRelated(data) end

---Gets the value of field 'PowerDisplayID'.
---@return integer[] value
function row:GetPowerDisplayID() end

---Sets the value of field 'PowerDisplayID'.
---@param value integer[]
---@return dbc.row.v1215.Vehicle self
function row:SetPowerDisplayID(value) end

---Gets element at 1-based index in 'PowerDisplayID'.
---@param index integer
---@return integer value
function row:GetPowerDisplayIDItem(index) end

---Navigates foreign relationship to 'PowerDisplay' via 'PowerDisplayID'.
---@return dbc.row.v1215.PowerDisplay|nil
function row:GetPowerDisplay() end

---Creates a related 'PowerDisplay' row and automatically links 'PowerDisplayID'.
---@param data? table
---@return dbc.row.v1215.PowerDisplay
function row:CreateRelated(data) end

---Table container for Vehicle (Build 12.1.5.69594).
---@class dbc.Table.v1215.Vehicle : DbcTable
---@field [integer] dbc.row.v1215.Vehicle
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Vehicle
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Vehicle|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Vehicle
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Vehicle>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Vehicle[]
function tbl:GetByRelation(foreign_id) end

return {}
