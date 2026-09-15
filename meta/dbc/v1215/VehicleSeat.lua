---@meta
-- Generated LuaLS annotations for VehicleSeat (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of VehicleSeat in build 12.1.5.69594.
---@class dbc.row.v1215.VehicleSeat : RowProxy
---@field ID integer
---@field AttachmentOffset number[]
---@field CameraOffset number[]
---@field Flags integer
---@field FlagsB integer
---@field FlagsC integer
---@field AttachmentID integer
---@field EnterPreDelay number
---@field EnterSpeed number
---@field EnterGravity number
---@field EnterMinDuration number
---@field EnterMaxDuration number
---@field EnterMinArcHeight number
---@field EnterMaxArcHeight number
---@field EnterAnimStart integer
---@field EnterAnimLoop integer
---@field RideAnimStart integer
---@field RideAnimLoop integer
---@field RideUpperAnimStart integer
---@field RideUpperAnimLoop integer
---@field ExitPreDelay number
---@field ExitSpeed number
---@field ExitGravity number
---@field ExitMinDuration number
---@field ExitMaxDuration number
---@field ExitMinArcHeight number
---@field ExitMaxArcHeight number
---@field ExitAnimStart integer
---@field ExitAnimLoop integer
---@field ExitAnimEnd integer
---@field VehicleEnterAnim integer
---@field VehicleEnterAnimBone integer
---@field VehicleExitAnim integer
---@field VehicleExitAnimBone integer
---@field VehicleRideAnimLoop integer
---@field VehicleRideAnimLoopBone integer
---@field PassengerAttachmentID integer
---@field PassengerYaw number
---@field PassengerPitch number
---@field PassengerRoll number
---@field VehicleEnterAnimDelay number
---@field VehicleExitAnimDelay number
---@field VehicleAbilityDisplay integer
---@field EnterUISoundID integer
---@field ExitUISoundID integer
---@field UiSkinFileDataID integer
---@field CameraEnteringDelay number
---@field CameraEnteringDuration number
---@field CameraExitingDelay number
---@field CameraExitingDuration number
---@field CameraPosChaseRate number
---@field CameraFacingChaseRate number
---@field CameraEnteringZoom number
---@field CameraSeatZoomMin number
---@field CameraSeatZoomMax number
---@field EnterAnimKitID integer
---@field RideAnimKitID integer
---@field ExitAnimKitID integer
---@field VehicleEnterAnimKitID integer
---@field VehicleRideAnimKitID integer
---@field VehicleExitAnimKitID integer
---@field CameraModeID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetID(value) end

---Gets the value of field 'AttachmentOffset'.
---@return number[] value
function row:GetAttachmentOffset() end

---Sets the value of field 'AttachmentOffset'.
---@param value number[]
---@return dbc.row.v1215.VehicleSeat self
function row:SetAttachmentOffset(value) end

---Gets element at 1-based index in 'AttachmentOffset'.
---@param index integer
---@return number value
function row:GetAttachmentOffsetItem(index) end

---Gets the value of field 'CameraOffset'.
---@return number[] value
function row:GetCameraOffset() end

---Sets the value of field 'CameraOffset'.
---@param value number[]
---@return dbc.row.v1215.VehicleSeat self
function row:SetCameraOffset(value) end

---Gets element at 1-based index in 'CameraOffset'.
---@param index integer
---@return number value
function row:GetCameraOffsetItem(index) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetFlags(value) end

---Gets the value of field 'FlagsB'.
---@return integer value
function row:GetFlagsB() end

---Sets the value of field 'FlagsB'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetFlagsB(value) end

---Gets the value of field 'FlagsC'.
---@return integer value
function row:GetFlagsC() end

---Sets the value of field 'FlagsC'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetFlagsC(value) end

---Gets the value of field 'AttachmentID'.
---@return integer value
function row:GetAttachmentID() end

---Sets the value of field 'AttachmentID'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetAttachmentID(value) end

---Navigates foreign relationship to 'Attachment' via 'AttachmentID'.
---@return dbc.row.v1215.Attachment|nil
function row:GetAttachment() end

---Creates a related 'Attachment' row and automatically links 'AttachmentID'.
---@param data? table
---@return dbc.row.v1215.Attachment
function row:CreateRelated(data) end

---Gets the value of field 'EnterPreDelay'.
---@return number value
function row:GetEnterPreDelay() end

---Sets the value of field 'EnterPreDelay'.
---@param value number
---@return dbc.row.v1215.VehicleSeat self
function row:SetEnterPreDelay(value) end

---Gets the value of field 'EnterSpeed'.
---@return number value
function row:GetEnterSpeed() end

---Sets the value of field 'EnterSpeed'.
---@param value number
---@return dbc.row.v1215.VehicleSeat self
function row:SetEnterSpeed(value) end

---Gets the value of field 'EnterGravity'.
---@return number value
function row:GetEnterGravity() end

---Sets the value of field 'EnterGravity'.
---@param value number
---@return dbc.row.v1215.VehicleSeat self
function row:SetEnterGravity(value) end

---Gets the value of field 'EnterMinDuration'.
---@return number value
function row:GetEnterMinDuration() end

---Sets the value of field 'EnterMinDuration'.
---@param value number
---@return dbc.row.v1215.VehicleSeat self
function row:SetEnterMinDuration(value) end

---Gets the value of field 'EnterMaxDuration'.
---@return number value
function row:GetEnterMaxDuration() end

---Sets the value of field 'EnterMaxDuration'.
---@param value number
---@return dbc.row.v1215.VehicleSeat self
function row:SetEnterMaxDuration(value) end

---Gets the value of field 'EnterMinArcHeight'.
---@return number value
function row:GetEnterMinArcHeight() end

---Sets the value of field 'EnterMinArcHeight'.
---@param value number
---@return dbc.row.v1215.VehicleSeat self
function row:SetEnterMinArcHeight(value) end

---Gets the value of field 'EnterMaxArcHeight'.
---@return number value
function row:GetEnterMaxArcHeight() end

---Sets the value of field 'EnterMaxArcHeight'.
---@param value number
---@return dbc.row.v1215.VehicleSeat self
function row:SetEnterMaxArcHeight(value) end

---Gets the value of field 'EnterAnimStart'.
---@return integer value
function row:GetEnterAnimStart() end

---Sets the value of field 'EnterAnimStart'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetEnterAnimStart(value) end

---Gets the value of field 'EnterAnimLoop'.
---@return integer value
function row:GetEnterAnimLoop() end

---Sets the value of field 'EnterAnimLoop'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetEnterAnimLoop(value) end

---Gets the value of field 'RideAnimStart'.
---@return integer value
function row:GetRideAnimStart() end

---Sets the value of field 'RideAnimStart'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetRideAnimStart(value) end

---Gets the value of field 'RideAnimLoop'.
---@return integer value
function row:GetRideAnimLoop() end

---Sets the value of field 'RideAnimLoop'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetRideAnimLoop(value) end

---Gets the value of field 'RideUpperAnimStart'.
---@return integer value
function row:GetRideUpperAnimStart() end

---Sets the value of field 'RideUpperAnimStart'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetRideUpperAnimStart(value) end

---Gets the value of field 'RideUpperAnimLoop'.
---@return integer value
function row:GetRideUpperAnimLoop() end

---Sets the value of field 'RideUpperAnimLoop'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetRideUpperAnimLoop(value) end

---Gets the value of field 'ExitPreDelay'.
---@return number value
function row:GetExitPreDelay() end

---Sets the value of field 'ExitPreDelay'.
---@param value number
---@return dbc.row.v1215.VehicleSeat self
function row:SetExitPreDelay(value) end

---Gets the value of field 'ExitSpeed'.
---@return number value
function row:GetExitSpeed() end

---Sets the value of field 'ExitSpeed'.
---@param value number
---@return dbc.row.v1215.VehicleSeat self
function row:SetExitSpeed(value) end

---Gets the value of field 'ExitGravity'.
---@return number value
function row:GetExitGravity() end

---Sets the value of field 'ExitGravity'.
---@param value number
---@return dbc.row.v1215.VehicleSeat self
function row:SetExitGravity(value) end

---Gets the value of field 'ExitMinDuration'.
---@return number value
function row:GetExitMinDuration() end

---Sets the value of field 'ExitMinDuration'.
---@param value number
---@return dbc.row.v1215.VehicleSeat self
function row:SetExitMinDuration(value) end

---Gets the value of field 'ExitMaxDuration'.
---@return number value
function row:GetExitMaxDuration() end

---Sets the value of field 'ExitMaxDuration'.
---@param value number
---@return dbc.row.v1215.VehicleSeat self
function row:SetExitMaxDuration(value) end

---Gets the value of field 'ExitMinArcHeight'.
---@return number value
function row:GetExitMinArcHeight() end

---Sets the value of field 'ExitMinArcHeight'.
---@param value number
---@return dbc.row.v1215.VehicleSeat self
function row:SetExitMinArcHeight(value) end

---Gets the value of field 'ExitMaxArcHeight'.
---@return number value
function row:GetExitMaxArcHeight() end

---Sets the value of field 'ExitMaxArcHeight'.
---@param value number
---@return dbc.row.v1215.VehicleSeat self
function row:SetExitMaxArcHeight(value) end

---Gets the value of field 'ExitAnimStart'.
---@return integer value
function row:GetExitAnimStart() end

---Sets the value of field 'ExitAnimStart'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetExitAnimStart(value) end

---Gets the value of field 'ExitAnimLoop'.
---@return integer value
function row:GetExitAnimLoop() end

---Sets the value of field 'ExitAnimLoop'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetExitAnimLoop(value) end

---Gets the value of field 'ExitAnimEnd'.
---@return integer value
function row:GetExitAnimEnd() end

---Sets the value of field 'ExitAnimEnd'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetExitAnimEnd(value) end

---Gets the value of field 'VehicleEnterAnim'.
---@return integer value
function row:GetVehicleEnterAnim() end

---Sets the value of field 'VehicleEnterAnim'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetVehicleEnterAnim(value) end

---Gets the value of field 'VehicleEnterAnimBone'.
---@return integer value
function row:GetVehicleEnterAnimBone() end

---Sets the value of field 'VehicleEnterAnimBone'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetVehicleEnterAnimBone(value) end

---Gets the value of field 'VehicleExitAnim'.
---@return integer value
function row:GetVehicleExitAnim() end

---Sets the value of field 'VehicleExitAnim'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetVehicleExitAnim(value) end

---Gets the value of field 'VehicleExitAnimBone'.
---@return integer value
function row:GetVehicleExitAnimBone() end

---Sets the value of field 'VehicleExitAnimBone'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetVehicleExitAnimBone(value) end

---Gets the value of field 'VehicleRideAnimLoop'.
---@return integer value
function row:GetVehicleRideAnimLoop() end

---Sets the value of field 'VehicleRideAnimLoop'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetVehicleRideAnimLoop(value) end

---Gets the value of field 'VehicleRideAnimLoopBone'.
---@return integer value
function row:GetVehicleRideAnimLoopBone() end

---Sets the value of field 'VehicleRideAnimLoopBone'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetVehicleRideAnimLoopBone(value) end

---Gets the value of field 'PassengerAttachmentID'.
---@return integer value
function row:GetPassengerAttachmentID() end

---Sets the value of field 'PassengerAttachmentID'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetPassengerAttachmentID(value) end

---Navigates foreign relationship to 'PassengerAttachment' via 'PassengerAttachmentID'.
---@return dbc.row.v1215.PassengerAttachment|nil
function row:GetPassengerAttachment() end

---Creates a related 'PassengerAttachment' row and automatically links 'PassengerAttachmentID'.
---@param data? table
---@return dbc.row.v1215.PassengerAttachment
function row:CreateRelated(data) end

---Gets the value of field 'PassengerYaw'.
---@return number value
function row:GetPassengerYaw() end

---Sets the value of field 'PassengerYaw'.
---@param value number
---@return dbc.row.v1215.VehicleSeat self
function row:SetPassengerYaw(value) end

---Gets the value of field 'PassengerPitch'.
---@return number value
function row:GetPassengerPitch() end

---Sets the value of field 'PassengerPitch'.
---@param value number
---@return dbc.row.v1215.VehicleSeat self
function row:SetPassengerPitch(value) end

---Gets the value of field 'PassengerRoll'.
---@return number value
function row:GetPassengerRoll() end

---Sets the value of field 'PassengerRoll'.
---@param value number
---@return dbc.row.v1215.VehicleSeat self
function row:SetPassengerRoll(value) end

---Gets the value of field 'VehicleEnterAnimDelay'.
---@return number value
function row:GetVehicleEnterAnimDelay() end

---Sets the value of field 'VehicleEnterAnimDelay'.
---@param value number
---@return dbc.row.v1215.VehicleSeat self
function row:SetVehicleEnterAnimDelay(value) end

---Gets the value of field 'VehicleExitAnimDelay'.
---@return number value
function row:GetVehicleExitAnimDelay() end

---Sets the value of field 'VehicleExitAnimDelay'.
---@param value number
---@return dbc.row.v1215.VehicleSeat self
function row:SetVehicleExitAnimDelay(value) end

---Gets the value of field 'VehicleAbilityDisplay'.
---@return integer value
function row:GetVehicleAbilityDisplay() end

---Sets the value of field 'VehicleAbilityDisplay'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetVehicleAbilityDisplay(value) end

---Gets the value of field 'EnterUISoundID'.
---@return integer value
function row:GetEnterUISoundID() end

---Sets the value of field 'EnterUISoundID'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetEnterUISoundID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'EnterUISoundID'.
---@return dbc.row.v1215.SoundEntries|nil
function row:GetEnterUISound() end

---Creates a related 'SoundEntries' row and automatically links 'EnterUISoundID'.
---@param data? table
---@return dbc.row.v1215.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'ExitUISoundID'.
---@return integer value
function row:GetExitUISoundID() end

---Sets the value of field 'ExitUISoundID'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetExitUISoundID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'ExitUISoundID'.
---@return dbc.row.v1215.SoundEntries|nil
function row:GetExitUISound() end

---Creates a related 'SoundEntries' row and automatically links 'ExitUISoundID'.
---@param data? table
---@return dbc.row.v1215.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'UiSkinFileDataID'.
---@return integer value
function row:GetUiSkinFileDataID() end

---Sets the value of field 'UiSkinFileDataID'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetUiSkinFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'UiSkinFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetUiSkinFileData() end

---Creates a related 'FileData' row and automatically links 'UiSkinFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'CameraEnteringDelay'.
---@return number value
function row:GetCameraEnteringDelay() end

---Sets the value of field 'CameraEnteringDelay'.
---@param value number
---@return dbc.row.v1215.VehicleSeat self
function row:SetCameraEnteringDelay(value) end

---Gets the value of field 'CameraEnteringDuration'.
---@return number value
function row:GetCameraEnteringDuration() end

---Sets the value of field 'CameraEnteringDuration'.
---@param value number
---@return dbc.row.v1215.VehicleSeat self
function row:SetCameraEnteringDuration(value) end

---Gets the value of field 'CameraExitingDelay'.
---@return number value
function row:GetCameraExitingDelay() end

---Sets the value of field 'CameraExitingDelay'.
---@param value number
---@return dbc.row.v1215.VehicleSeat self
function row:SetCameraExitingDelay(value) end

---Gets the value of field 'CameraExitingDuration'.
---@return number value
function row:GetCameraExitingDuration() end

---Sets the value of field 'CameraExitingDuration'.
---@param value number
---@return dbc.row.v1215.VehicleSeat self
function row:SetCameraExitingDuration(value) end

---Gets the value of field 'CameraPosChaseRate'.
---@return number value
function row:GetCameraPosChaseRate() end

---Sets the value of field 'CameraPosChaseRate'.
---@param value number
---@return dbc.row.v1215.VehicleSeat self
function row:SetCameraPosChaseRate(value) end

---Gets the value of field 'CameraFacingChaseRate'.
---@return number value
function row:GetCameraFacingChaseRate() end

---Sets the value of field 'CameraFacingChaseRate'.
---@param value number
---@return dbc.row.v1215.VehicleSeat self
function row:SetCameraFacingChaseRate(value) end

---Gets the value of field 'CameraEnteringZoom'.
---@return number value
function row:GetCameraEnteringZoom() end

---Sets the value of field 'CameraEnteringZoom'.
---@param value number
---@return dbc.row.v1215.VehicleSeat self
function row:SetCameraEnteringZoom(value) end

---Gets the value of field 'CameraSeatZoomMin'.
---@return number value
function row:GetCameraSeatZoomMin() end

---Sets the value of field 'CameraSeatZoomMin'.
---@param value number
---@return dbc.row.v1215.VehicleSeat self
function row:SetCameraSeatZoomMin(value) end

---Gets the value of field 'CameraSeatZoomMax'.
---@return number value
function row:GetCameraSeatZoomMax() end

---Sets the value of field 'CameraSeatZoomMax'.
---@param value number
---@return dbc.row.v1215.VehicleSeat self
function row:SetCameraSeatZoomMax(value) end

---Gets the value of field 'EnterAnimKitID'.
---@return integer value
function row:GetEnterAnimKitID() end

---Sets the value of field 'EnterAnimKitID'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetEnterAnimKitID(value) end

---Navigates foreign relationship to 'AnimKit' via 'EnterAnimKitID'.
---@return dbc.row.v1215.AnimKit|nil
function row:GetEnterAnimKit() end

---Creates a related 'AnimKit' row and automatically links 'EnterAnimKitID'.
---@param data? table
---@return dbc.row.v1215.AnimKit
function row:CreateRelated(data) end

---Gets the value of field 'RideAnimKitID'.
---@return integer value
function row:GetRideAnimKitID() end

---Sets the value of field 'RideAnimKitID'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetRideAnimKitID(value) end

---Navigates foreign relationship to 'AnimKit' via 'RideAnimKitID'.
---@return dbc.row.v1215.AnimKit|nil
function row:GetRideAnimKit() end

---Creates a related 'AnimKit' row and automatically links 'RideAnimKitID'.
---@param data? table
---@return dbc.row.v1215.AnimKit
function row:CreateRelated(data) end

---Gets the value of field 'ExitAnimKitID'.
---@return integer value
function row:GetExitAnimKitID() end

---Sets the value of field 'ExitAnimKitID'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetExitAnimKitID(value) end

---Navigates foreign relationship to 'AnimKit' via 'ExitAnimKitID'.
---@return dbc.row.v1215.AnimKit|nil
function row:GetExitAnimKit() end

---Creates a related 'AnimKit' row and automatically links 'ExitAnimKitID'.
---@param data? table
---@return dbc.row.v1215.AnimKit
function row:CreateRelated(data) end

---Gets the value of field 'VehicleEnterAnimKitID'.
---@return integer value
function row:GetVehicleEnterAnimKitID() end

---Sets the value of field 'VehicleEnterAnimKitID'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetVehicleEnterAnimKitID(value) end

---Navigates foreign relationship to 'AnimKit' via 'VehicleEnterAnimKitID'.
---@return dbc.row.v1215.AnimKit|nil
function row:GetVehicleEnterAnimKit() end

---Creates a related 'AnimKit' row and automatically links 'VehicleEnterAnimKitID'.
---@param data? table
---@return dbc.row.v1215.AnimKit
function row:CreateRelated(data) end

---Gets the value of field 'VehicleRideAnimKitID'.
---@return integer value
function row:GetVehicleRideAnimKitID() end

---Sets the value of field 'VehicleRideAnimKitID'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetVehicleRideAnimKitID(value) end

---Navigates foreign relationship to 'AnimKit' via 'VehicleRideAnimKitID'.
---@return dbc.row.v1215.AnimKit|nil
function row:GetVehicleRideAnimKit() end

---Creates a related 'AnimKit' row and automatically links 'VehicleRideAnimKitID'.
---@param data? table
---@return dbc.row.v1215.AnimKit
function row:CreateRelated(data) end

---Gets the value of field 'VehicleExitAnimKitID'.
---@return integer value
function row:GetVehicleExitAnimKitID() end

---Sets the value of field 'VehicleExitAnimKitID'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetVehicleExitAnimKitID(value) end

---Navigates foreign relationship to 'AnimKit' via 'VehicleExitAnimKitID'.
---@return dbc.row.v1215.AnimKit|nil
function row:GetVehicleExitAnimKit() end

---Creates a related 'AnimKit' row and automatically links 'VehicleExitAnimKitID'.
---@param data? table
---@return dbc.row.v1215.AnimKit
function row:CreateRelated(data) end

---Gets the value of field 'CameraModeID'.
---@return integer value
function row:GetCameraModeID() end

---Sets the value of field 'CameraModeID'.
---@param value integer
---@return dbc.row.v1215.VehicleSeat self
function row:SetCameraModeID(value) end

---Navigates foreign relationship to 'CameraMode' via 'CameraModeID'.
---@return dbc.row.v1215.CameraMode|nil
function row:GetCameraMode() end

---Creates a related 'CameraMode' row and automatically links 'CameraModeID'.
---@param data? table
---@return dbc.row.v1215.CameraMode
function row:CreateRelated(data) end

---Table container for VehicleSeat (Build 12.1.5.69594).
---@class dbc.Table.v1215.VehicleSeat : DbcTable
---@field [integer] dbc.row.v1215.VehicleSeat
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.VehicleSeat
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.VehicleSeat|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.VehicleSeat
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.VehicleSeat>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.VehicleSeat[]
function tbl:GetByRelation(foreign_id) end

return {}
