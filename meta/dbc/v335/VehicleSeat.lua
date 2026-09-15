---@meta
-- Generated LuaLS annotations for VehicleSeat (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of VehicleSeat in build 3.3.5.12340.
---@class dbc.row.v335.VehicleSeat : RowProxy
---@field ID integer
---@field Field_3_3_5_12213_001 number
---@field AttachmentID integer
---@field AttachmentOffset number[]
---@field Field_3_3_5_12213_004 number
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
---@field Field_3_3_5_12213_017 number
---@field ExitSpeed number
---@field ExitGravity number
---@field ExitMinDuration number
---@field ExitMaxDuration number
---@field ExitMinArcHeight number
---@field ExitMaxArcHeight number
---@field ExitAnimStart integer
---@field ExitAnimLoop integer
---@field ExitAnimEnd integer
---@field Field_3_3_5_12213_027 number
---@field PassengerPitch number
---@field Field_3_3_5_12213_029 number
---@field PassengerAttachmentID integer
---@field VehicleEnterAnim integer
---@field VehicleExitAnim integer
---@field VehicleRideAnimLoop integer
---@field Field_3_3_5_12213_034 integer
---@field VehicleExitAnimBone integer
---@field VehicleEnterAnimBone integer
---@field Field_3_3_5_12213_037 number
---@field Field_3_3_5_12213_038 number
---@field VehicleAbilityDisplay integer
---@field EnterUISoundID integer
---@field Field_3_3_5_12213_041 integer
---@field UiSkin integer
---@field Field_3_3_5_12213_043 number
---@field Field_3_3_5_12213_044 number
---@field Field_3_3_5_12213_045 number
---@field Field_3_3_5_12213_046 integer
---@field Field_3_3_5_12213_047 number
---@field Field_3_3_5_12213_048 number
---@field Field_3_3_5_12213_049 number
---@field Field_3_3_5_12213_050 number
---@field Field_3_3_5_12213_051 number
---@field Field_3_3_5_12213_052 number
---@field Field_3_3_5_12213_053 number
---@field Field_3_3_5_12213_054 number
---@field Field_3_3_5_12213_055 number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.VehicleSeat self
function row:SetID(value) end

---Gets the value of field 'Field_3_3_5_12213_001'.
---@return number value
function row:GetField_3_3_5_12213_001() end

---Sets the value of field 'Field_3_3_5_12213_001'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetField_3_3_5_12213_001(value) end

---Gets the value of field 'AttachmentID'.
---@return integer value
function row:GetAttachmentID() end

---Sets the value of field 'AttachmentID'.
---@param value integer
---@return dbc.row.v335.VehicleSeat self
function row:SetAttachmentID(value) end

---Navigates foreign relationship to 'Attachment' via 'AttachmentID'.
---@return dbc.row.v335.Attachment|nil
function row:GetAttachment() end

---Creates a related 'Attachment' row and automatically links 'AttachmentID'.
---@param data? table
---@return dbc.row.v335.Attachment
function row:CreateRelated(data) end

---Gets the value of field 'AttachmentOffset'.
---@return number[] value
function row:GetAttachmentOffset() end

---Sets the value of field 'AttachmentOffset'.
---@param value number[]
---@return dbc.row.v335.VehicleSeat self
function row:SetAttachmentOffset(value) end

---Gets element at 1-based index in 'AttachmentOffset'.
---@param index integer
---@return number value
function row:GetAttachmentOffsetItem(index) end

---Gets the value of field 'Field_3_3_5_12213_004'.
---@return number value
function row:GetField_3_3_5_12213_004() end

---Sets the value of field 'Field_3_3_5_12213_004'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetField_3_3_5_12213_004(value) end

---Gets the value of field 'EnterSpeed'.
---@return number value
function row:GetEnterSpeed() end

---Sets the value of field 'EnterSpeed'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetEnterSpeed(value) end

---Gets the value of field 'EnterGravity'.
---@return number value
function row:GetEnterGravity() end

---Sets the value of field 'EnterGravity'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetEnterGravity(value) end

---Gets the value of field 'EnterMinDuration'.
---@return number value
function row:GetEnterMinDuration() end

---Sets the value of field 'EnterMinDuration'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetEnterMinDuration(value) end

---Gets the value of field 'EnterMaxDuration'.
---@return number value
function row:GetEnterMaxDuration() end

---Sets the value of field 'EnterMaxDuration'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetEnterMaxDuration(value) end

---Gets the value of field 'EnterMinArcHeight'.
---@return number value
function row:GetEnterMinArcHeight() end

---Sets the value of field 'EnterMinArcHeight'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetEnterMinArcHeight(value) end

---Gets the value of field 'EnterMaxArcHeight'.
---@return number value
function row:GetEnterMaxArcHeight() end

---Sets the value of field 'EnterMaxArcHeight'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetEnterMaxArcHeight(value) end

---Gets the value of field 'EnterAnimStart'.
---@return integer value
function row:GetEnterAnimStart() end

---Sets the value of field 'EnterAnimStart'.
---@param value integer
---@return dbc.row.v335.VehicleSeat self
function row:SetEnterAnimStart(value) end

---Gets the value of field 'EnterAnimLoop'.
---@return integer value
function row:GetEnterAnimLoop() end

---Sets the value of field 'EnterAnimLoop'.
---@param value integer
---@return dbc.row.v335.VehicleSeat self
function row:SetEnterAnimLoop(value) end

---Gets the value of field 'RideAnimStart'.
---@return integer value
function row:GetRideAnimStart() end

---Sets the value of field 'RideAnimStart'.
---@param value integer
---@return dbc.row.v335.VehicleSeat self
function row:SetRideAnimStart(value) end

---Gets the value of field 'RideAnimLoop'.
---@return integer value
function row:GetRideAnimLoop() end

---Sets the value of field 'RideAnimLoop'.
---@param value integer
---@return dbc.row.v335.VehicleSeat self
function row:SetRideAnimLoop(value) end

---Gets the value of field 'RideUpperAnimStart'.
---@return integer value
function row:GetRideUpperAnimStart() end

---Sets the value of field 'RideUpperAnimStart'.
---@param value integer
---@return dbc.row.v335.VehicleSeat self
function row:SetRideUpperAnimStart(value) end

---Gets the value of field 'RideUpperAnimLoop'.
---@return integer value
function row:GetRideUpperAnimLoop() end

---Sets the value of field 'RideUpperAnimLoop'.
---@param value integer
---@return dbc.row.v335.VehicleSeat self
function row:SetRideUpperAnimLoop(value) end

---Gets the value of field 'Field_3_3_5_12213_017'.
---@return number value
function row:GetField_3_3_5_12213_017() end

---Sets the value of field 'Field_3_3_5_12213_017'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetField_3_3_5_12213_017(value) end

---Gets the value of field 'ExitSpeed'.
---@return number value
function row:GetExitSpeed() end

---Sets the value of field 'ExitSpeed'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetExitSpeed(value) end

---Gets the value of field 'ExitGravity'.
---@return number value
function row:GetExitGravity() end

---Sets the value of field 'ExitGravity'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetExitGravity(value) end

---Gets the value of field 'ExitMinDuration'.
---@return number value
function row:GetExitMinDuration() end

---Sets the value of field 'ExitMinDuration'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetExitMinDuration(value) end

---Gets the value of field 'ExitMaxDuration'.
---@return number value
function row:GetExitMaxDuration() end

---Sets the value of field 'ExitMaxDuration'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetExitMaxDuration(value) end

---Gets the value of field 'ExitMinArcHeight'.
---@return number value
function row:GetExitMinArcHeight() end

---Sets the value of field 'ExitMinArcHeight'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetExitMinArcHeight(value) end

---Gets the value of field 'ExitMaxArcHeight'.
---@return number value
function row:GetExitMaxArcHeight() end

---Sets the value of field 'ExitMaxArcHeight'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetExitMaxArcHeight(value) end

---Gets the value of field 'ExitAnimStart'.
---@return integer value
function row:GetExitAnimStart() end

---Sets the value of field 'ExitAnimStart'.
---@param value integer
---@return dbc.row.v335.VehicleSeat self
function row:SetExitAnimStart(value) end

---Gets the value of field 'ExitAnimLoop'.
---@return integer value
function row:GetExitAnimLoop() end

---Sets the value of field 'ExitAnimLoop'.
---@param value integer
---@return dbc.row.v335.VehicleSeat self
function row:SetExitAnimLoop(value) end

---Gets the value of field 'ExitAnimEnd'.
---@return integer value
function row:GetExitAnimEnd() end

---Sets the value of field 'ExitAnimEnd'.
---@param value integer
---@return dbc.row.v335.VehicleSeat self
function row:SetExitAnimEnd(value) end

---Gets the value of field 'Field_3_3_5_12213_027'.
---@return number value
function row:GetField_3_3_5_12213_027() end

---Sets the value of field 'Field_3_3_5_12213_027'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetField_3_3_5_12213_027(value) end

---Gets the value of field 'PassengerPitch'.
---@return number value
function row:GetPassengerPitch() end

---Sets the value of field 'PassengerPitch'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetPassengerPitch(value) end

---Gets the value of field 'Field_3_3_5_12213_029'.
---@return number value
function row:GetField_3_3_5_12213_029() end

---Sets the value of field 'Field_3_3_5_12213_029'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetField_3_3_5_12213_029(value) end

---Gets the value of field 'PassengerAttachmentID'.
---@return integer value
function row:GetPassengerAttachmentID() end

---Sets the value of field 'PassengerAttachmentID'.
---@param value integer
---@return dbc.row.v335.VehicleSeat self
function row:SetPassengerAttachmentID(value) end

---Navigates foreign relationship to 'PassengerAttachment' via 'PassengerAttachmentID'.
---@return dbc.row.v335.PassengerAttachment|nil
function row:GetPassengerAttachment() end

---Creates a related 'PassengerAttachment' row and automatically links 'PassengerAttachmentID'.
---@param data? table
---@return dbc.row.v335.PassengerAttachment
function row:CreateRelated(data) end

---Gets the value of field 'VehicleEnterAnim'.
---@return integer value
function row:GetVehicleEnterAnim() end

---Sets the value of field 'VehicleEnterAnim'.
---@param value integer
---@return dbc.row.v335.VehicleSeat self
function row:SetVehicleEnterAnim(value) end

---Gets the value of field 'VehicleExitAnim'.
---@return integer value
function row:GetVehicleExitAnim() end

---Sets the value of field 'VehicleExitAnim'.
---@param value integer
---@return dbc.row.v335.VehicleSeat self
function row:SetVehicleExitAnim(value) end

---Gets the value of field 'VehicleRideAnimLoop'.
---@return integer value
function row:GetVehicleRideAnimLoop() end

---Sets the value of field 'VehicleRideAnimLoop'.
---@param value integer
---@return dbc.row.v335.VehicleSeat self
function row:SetVehicleRideAnimLoop(value) end

---Gets the value of field 'Field_3_3_5_12213_034'.
---@return integer value
function row:GetField_3_3_5_12213_034() end

---Sets the value of field 'Field_3_3_5_12213_034'.
---@param value integer
---@return dbc.row.v335.VehicleSeat self
function row:SetField_3_3_5_12213_034(value) end

---Gets the value of field 'VehicleExitAnimBone'.
---@return integer value
function row:GetVehicleExitAnimBone() end

---Sets the value of field 'VehicleExitAnimBone'.
---@param value integer
---@return dbc.row.v335.VehicleSeat self
function row:SetVehicleExitAnimBone(value) end

---Gets the value of field 'VehicleEnterAnimBone'.
---@return integer value
function row:GetVehicleEnterAnimBone() end

---Sets the value of field 'VehicleEnterAnimBone'.
---@param value integer
---@return dbc.row.v335.VehicleSeat self
function row:SetVehicleEnterAnimBone(value) end

---Gets the value of field 'Field_3_3_5_12213_037'.
---@return number value
function row:GetField_3_3_5_12213_037() end

---Sets the value of field 'Field_3_3_5_12213_037'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetField_3_3_5_12213_037(value) end

---Gets the value of field 'Field_3_3_5_12213_038'.
---@return number value
function row:GetField_3_3_5_12213_038() end

---Sets the value of field 'Field_3_3_5_12213_038'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetField_3_3_5_12213_038(value) end

---Gets the value of field 'VehicleAbilityDisplay'.
---@return integer value
function row:GetVehicleAbilityDisplay() end

---Sets the value of field 'VehicleAbilityDisplay'.
---@param value integer
---@return dbc.row.v335.VehicleSeat self
function row:SetVehicleAbilityDisplay(value) end

---Gets the value of field 'EnterUISoundID'.
---@return integer value
function row:GetEnterUISoundID() end

---Sets the value of field 'EnterUISoundID'.
---@param value integer
---@return dbc.row.v335.VehicleSeat self
function row:SetEnterUISoundID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'EnterUISoundID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetEnterUISound() end

---Creates a related 'SoundEntries' row and automatically links 'EnterUISoundID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'Field_3_3_5_12213_041'.
---@return integer value
function row:GetField_3_3_5_12213_041() end

---Sets the value of field 'Field_3_3_5_12213_041'.
---@param value integer
---@return dbc.row.v335.VehicleSeat self
function row:SetField_3_3_5_12213_041(value) end

---Gets the value of field 'UiSkin'.
---@return integer value
function row:GetUiSkin() end

---Sets the value of field 'UiSkin'.
---@param value integer
---@return dbc.row.v335.VehicleSeat self
function row:SetUiSkin(value) end

---Gets the value of field 'Field_3_3_5_12213_043'.
---@return number value
function row:GetField_3_3_5_12213_043() end

---Sets the value of field 'Field_3_3_5_12213_043'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetField_3_3_5_12213_043(value) end

---Gets the value of field 'Field_3_3_5_12213_044'.
---@return number value
function row:GetField_3_3_5_12213_044() end

---Sets the value of field 'Field_3_3_5_12213_044'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetField_3_3_5_12213_044(value) end

---Gets the value of field 'Field_3_3_5_12213_045'.
---@return number value
function row:GetField_3_3_5_12213_045() end

---Sets the value of field 'Field_3_3_5_12213_045'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetField_3_3_5_12213_045(value) end

---Gets the value of field 'Field_3_3_5_12213_046'.
---@return integer value
function row:GetField_3_3_5_12213_046() end

---Sets the value of field 'Field_3_3_5_12213_046'.
---@param value integer
---@return dbc.row.v335.VehicleSeat self
function row:SetField_3_3_5_12213_046(value) end

---Gets the value of field 'Field_3_3_5_12213_047'.
---@return number value
function row:GetField_3_3_5_12213_047() end

---Sets the value of field 'Field_3_3_5_12213_047'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetField_3_3_5_12213_047(value) end

---Gets the value of field 'Field_3_3_5_12213_048'.
---@return number value
function row:GetField_3_3_5_12213_048() end

---Sets the value of field 'Field_3_3_5_12213_048'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetField_3_3_5_12213_048(value) end

---Gets the value of field 'Field_3_3_5_12213_049'.
---@return number value
function row:GetField_3_3_5_12213_049() end

---Sets the value of field 'Field_3_3_5_12213_049'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetField_3_3_5_12213_049(value) end

---Gets the value of field 'Field_3_3_5_12213_050'.
---@return number value
function row:GetField_3_3_5_12213_050() end

---Sets the value of field 'Field_3_3_5_12213_050'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetField_3_3_5_12213_050(value) end

---Gets the value of field 'Field_3_3_5_12213_051'.
---@return number value
function row:GetField_3_3_5_12213_051() end

---Sets the value of field 'Field_3_3_5_12213_051'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetField_3_3_5_12213_051(value) end

---Gets the value of field 'Field_3_3_5_12213_052'.
---@return number value
function row:GetField_3_3_5_12213_052() end

---Sets the value of field 'Field_3_3_5_12213_052'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetField_3_3_5_12213_052(value) end

---Gets the value of field 'Field_3_3_5_12213_053'.
---@return number value
function row:GetField_3_3_5_12213_053() end

---Sets the value of field 'Field_3_3_5_12213_053'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetField_3_3_5_12213_053(value) end

---Gets the value of field 'Field_3_3_5_12213_054'.
---@return number value
function row:GetField_3_3_5_12213_054() end

---Sets the value of field 'Field_3_3_5_12213_054'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetField_3_3_5_12213_054(value) end

---Gets the value of field 'Field_3_3_5_12213_055'.
---@return number value
function row:GetField_3_3_5_12213_055() end

---Sets the value of field 'Field_3_3_5_12213_055'.
---@param value number
---@return dbc.row.v335.VehicleSeat self
function row:SetField_3_3_5_12213_055(value) end

---Table container for VehicleSeat (Build 3.3.5.12340).
---@class dbc.Table.v335.VehicleSeat : DbcTable
---@field [integer] dbc.row.v335.VehicleSeat
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.VehicleSeat
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.VehicleSeat|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.VehicleSeat
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.VehicleSeat>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.VehicleSeat[]
function tbl:GetByRelation(foreign_id) end

return {}
