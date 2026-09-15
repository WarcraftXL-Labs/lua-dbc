---@meta
-- Generated LuaLS annotations for SoundKitAdvanced (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SoundKitAdvanced in build 12.1.5.69594.
---@class dbc.row.v1215.SoundKitAdvanced : RowProxy
---@field ID integer
---@field SoundKitID integer
---@field InnerRadius2D number
---@field OuterRadius2D number
---@field TimeA integer
---@field TimeB integer
---@field TimeC integer
---@field TimeD integer
---@field RandomOffsetRange integer
---@field Usage integer
---@field TimeIntervalMin integer
---@field TimeIntervalMax integer
---@field DelayMin integer
---@field DelayMax integer
---@field VolumeSliderCategory integer
---@field DuckToSFX number
---@field DuckToMusic number
---@field DuckToAmbience number
---@field DuckToDialog number
---@field DuckToSuppressors number
---@field DuckToCinematicSFX number
---@field DuckToCinematicMusic number
---@field Field_11_2_0_61476_021 number
---@field InnerRadiusOfInfluence number
---@field OuterRadiusOfInfluence number
---@field TimeToDuck integer
---@field TimeToUnduck integer
---@field InsideAngle number
---@field OutsideAngle number
---@field OutsideVolume number
---@field MinRandomPosOffset integer
---@field MaxRandomPosOffset integer
---@field MsOffset integer
---@field TimeCooldownMin integer
---@field TimeCooldownMax integer
---@field MaxInstancesBehavior integer
---@field VolumeControlType integer
---@field VolumeFadeInTimeMin integer
---@field VolumeFadeInTimeMax integer
---@field VolumeFadeInCurveID integer
---@field VolumeFadeOutTimeMin integer
---@field VolumeFadeOutTimeMax integer
---@field VolumeFadeOutCurveID integer
---@field ChanceToPlay number
---@field RolloffType integer
---@field RolloffParam0 number
---@field Field_8_2_0_30080_045 number
---@field Field_8_2_0_30080_046 number
---@field Field_8_2_0_30080_047 integer
---@field Field_8_2_0_30080_048 integer
---@field Field_8_3_0_32044_049 number
---@field Field_8_3_0_32044_050 number
---@field Field_8_3_0_32044_051 number
---@field Field_8_3_0_32044_052 number
---@field Field_8_3_0_32044_053 number
---@field Field_8_3_0_32044_054 number
---@field Field_9_1_0_38312_055 number
---@field Field_9_1_0_38312_056 number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetID(value) end

---Gets the value of field 'SoundKitID'.
---@return integer value
function row:GetSoundKitID() end

---Sets the value of field 'SoundKitID'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'SoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'SoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'InnerRadius2D'.
---@return number value
function row:GetInnerRadius2D() end

---Sets the value of field 'InnerRadius2D'.
---@param value number
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetInnerRadius2D(value) end

---Gets the value of field 'OuterRadius2D'.
---@return number value
function row:GetOuterRadius2D() end

---Sets the value of field 'OuterRadius2D'.
---@param value number
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetOuterRadius2D(value) end

---Gets the value of field 'TimeA'.
---@return integer value
function row:GetTimeA() end

---Sets the value of field 'TimeA'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetTimeA(value) end

---Gets the value of field 'TimeB'.
---@return integer value
function row:GetTimeB() end

---Sets the value of field 'TimeB'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetTimeB(value) end

---Gets the value of field 'TimeC'.
---@return integer value
function row:GetTimeC() end

---Sets the value of field 'TimeC'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetTimeC(value) end

---Gets the value of field 'TimeD'.
---@return integer value
function row:GetTimeD() end

---Sets the value of field 'TimeD'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetTimeD(value) end

---Gets the value of field 'RandomOffsetRange'.
---@return integer value
function row:GetRandomOffsetRange() end

---Sets the value of field 'RandomOffsetRange'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetRandomOffsetRange(value) end

---Gets the value of field 'Usage'.
---@return integer value
function row:GetUsage() end

---Sets the value of field 'Usage'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetUsage(value) end

---Gets the value of field 'TimeIntervalMin'.
---@return integer value
function row:GetTimeIntervalMin() end

---Sets the value of field 'TimeIntervalMin'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetTimeIntervalMin(value) end

---Gets the value of field 'TimeIntervalMax'.
---@return integer value
function row:GetTimeIntervalMax() end

---Sets the value of field 'TimeIntervalMax'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetTimeIntervalMax(value) end

---Gets the value of field 'DelayMin'.
---@return integer value
function row:GetDelayMin() end

---Sets the value of field 'DelayMin'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetDelayMin(value) end

---Gets the value of field 'DelayMax'.
---@return integer value
function row:GetDelayMax() end

---Sets the value of field 'DelayMax'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetDelayMax(value) end

---Gets the value of field 'VolumeSliderCategory'.
---@return integer value
function row:GetVolumeSliderCategory() end

---Sets the value of field 'VolumeSliderCategory'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetVolumeSliderCategory(value) end

---Gets the value of field 'DuckToSFX'.
---@return number value
function row:GetDuckToSFX() end

---Sets the value of field 'DuckToSFX'.
---@param value number
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetDuckToSFX(value) end

---Gets the value of field 'DuckToMusic'.
---@return number value
function row:GetDuckToMusic() end

---Sets the value of field 'DuckToMusic'.
---@param value number
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetDuckToMusic(value) end

---Gets the value of field 'DuckToAmbience'.
---@return number value
function row:GetDuckToAmbience() end

---Sets the value of field 'DuckToAmbience'.
---@param value number
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetDuckToAmbience(value) end

---Gets the value of field 'DuckToDialog'.
---@return number value
function row:GetDuckToDialog() end

---Sets the value of field 'DuckToDialog'.
---@param value number
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetDuckToDialog(value) end

---Gets the value of field 'DuckToSuppressors'.
---@return number value
function row:GetDuckToSuppressors() end

---Sets the value of field 'DuckToSuppressors'.
---@param value number
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetDuckToSuppressors(value) end

---Gets the value of field 'DuckToCinematicSFX'.
---@return number value
function row:GetDuckToCinematicSFX() end

---Sets the value of field 'DuckToCinematicSFX'.
---@param value number
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetDuckToCinematicSFX(value) end

---Gets the value of field 'DuckToCinematicMusic'.
---@return number value
function row:GetDuckToCinematicMusic() end

---Sets the value of field 'DuckToCinematicMusic'.
---@param value number
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetDuckToCinematicMusic(value) end

---Gets the value of field 'Field_11_2_0_61476_021'.
---@return number value
function row:GetField_11_2_0_61476_021() end

---Sets the value of field 'Field_11_2_0_61476_021'.
---@param value number
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetField_11_2_0_61476_021(value) end

---Gets the value of field 'InnerRadiusOfInfluence'.
---@return number value
function row:GetInnerRadiusOfInfluence() end

---Sets the value of field 'InnerRadiusOfInfluence'.
---@param value number
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetInnerRadiusOfInfluence(value) end

---Gets the value of field 'OuterRadiusOfInfluence'.
---@return number value
function row:GetOuterRadiusOfInfluence() end

---Sets the value of field 'OuterRadiusOfInfluence'.
---@param value number
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetOuterRadiusOfInfluence(value) end

---Gets the value of field 'TimeToDuck'.
---@return integer value
function row:GetTimeToDuck() end

---Sets the value of field 'TimeToDuck'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetTimeToDuck(value) end

---Gets the value of field 'TimeToUnduck'.
---@return integer value
function row:GetTimeToUnduck() end

---Sets the value of field 'TimeToUnduck'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetTimeToUnduck(value) end

---Gets the value of field 'InsideAngle'.
---@return number value
function row:GetInsideAngle() end

---Sets the value of field 'InsideAngle'.
---@param value number
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetInsideAngle(value) end

---Gets the value of field 'OutsideAngle'.
---@return number value
function row:GetOutsideAngle() end

---Sets the value of field 'OutsideAngle'.
---@param value number
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetOutsideAngle(value) end

---Gets the value of field 'OutsideVolume'.
---@return number value
function row:GetOutsideVolume() end

---Sets the value of field 'OutsideVolume'.
---@param value number
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetOutsideVolume(value) end

---Gets the value of field 'MinRandomPosOffset'.
---@return integer value
function row:GetMinRandomPosOffset() end

---Sets the value of field 'MinRandomPosOffset'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetMinRandomPosOffset(value) end

---Gets the value of field 'MaxRandomPosOffset'.
---@return integer value
function row:GetMaxRandomPosOffset() end

---Sets the value of field 'MaxRandomPosOffset'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetMaxRandomPosOffset(value) end

---Gets the value of field 'MsOffset'.
---@return integer value
function row:GetMsOffset() end

---Sets the value of field 'MsOffset'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetMsOffset(value) end

---Gets the value of field 'TimeCooldownMin'.
---@return integer value
function row:GetTimeCooldownMin() end

---Sets the value of field 'TimeCooldownMin'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetTimeCooldownMin(value) end

---Gets the value of field 'TimeCooldownMax'.
---@return integer value
function row:GetTimeCooldownMax() end

---Sets the value of field 'TimeCooldownMax'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetTimeCooldownMax(value) end

---Gets the value of field 'MaxInstancesBehavior'.
---@return integer value
function row:GetMaxInstancesBehavior() end

---Sets the value of field 'MaxInstancesBehavior'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetMaxInstancesBehavior(value) end

---Gets the value of field 'VolumeControlType'.
---@return integer value
function row:GetVolumeControlType() end

---Sets the value of field 'VolumeControlType'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetVolumeControlType(value) end

---Gets the value of field 'VolumeFadeInTimeMin'.
---@return integer value
function row:GetVolumeFadeInTimeMin() end

---Sets the value of field 'VolumeFadeInTimeMin'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetVolumeFadeInTimeMin(value) end

---Gets the value of field 'VolumeFadeInTimeMax'.
---@return integer value
function row:GetVolumeFadeInTimeMax() end

---Sets the value of field 'VolumeFadeInTimeMax'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetVolumeFadeInTimeMax(value) end

---Gets the value of field 'VolumeFadeInCurveID'.
---@return integer value
function row:GetVolumeFadeInCurveID() end

---Sets the value of field 'VolumeFadeInCurveID'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetVolumeFadeInCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'VolumeFadeInCurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetVolumeFadeInCurve() end

---Creates a related 'Curve' row and automatically links 'VolumeFadeInCurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'VolumeFadeOutTimeMin'.
---@return integer value
function row:GetVolumeFadeOutTimeMin() end

---Sets the value of field 'VolumeFadeOutTimeMin'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetVolumeFadeOutTimeMin(value) end

---Gets the value of field 'VolumeFadeOutTimeMax'.
---@return integer value
function row:GetVolumeFadeOutTimeMax() end

---Sets the value of field 'VolumeFadeOutTimeMax'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetVolumeFadeOutTimeMax(value) end

---Gets the value of field 'VolumeFadeOutCurveID'.
---@return integer value
function row:GetVolumeFadeOutCurveID() end

---Sets the value of field 'VolumeFadeOutCurveID'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetVolumeFadeOutCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'VolumeFadeOutCurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetVolumeFadeOutCurve() end

---Creates a related 'Curve' row and automatically links 'VolumeFadeOutCurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'ChanceToPlay'.
---@return number value
function row:GetChanceToPlay() end

---Sets the value of field 'ChanceToPlay'.
---@param value number
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetChanceToPlay(value) end

---Gets the value of field 'RolloffType'.
---@return integer value
function row:GetRolloffType() end

---Sets the value of field 'RolloffType'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetRolloffType(value) end

---Gets the value of field 'RolloffParam0'.
---@return number value
function row:GetRolloffParam0() end

---Sets the value of field 'RolloffParam0'.
---@param value number
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetRolloffParam0(value) end

---Gets the value of field 'Field_8_2_0_30080_045'.
---@return number value
function row:GetField_8_2_0_30080_045() end

---Sets the value of field 'Field_8_2_0_30080_045'.
---@param value number
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetField_8_2_0_30080_045(value) end

---Gets the value of field 'Field_8_2_0_30080_046'.
---@return number value
function row:GetField_8_2_0_30080_046() end

---Sets the value of field 'Field_8_2_0_30080_046'.
---@param value number
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetField_8_2_0_30080_046(value) end

---Gets the value of field 'Field_8_2_0_30080_047'.
---@return integer value
function row:GetField_8_2_0_30080_047() end

---Sets the value of field 'Field_8_2_0_30080_047'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetField_8_2_0_30080_047(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'Field_8_2_0_30080_047'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetField_8_2_0_30080_047() end

---Creates a related 'PlayerCondition' row and automatically links 'Field_8_2_0_30080_047'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'Field_8_2_0_30080_048'.
---@return integer value
function row:GetField_8_2_0_30080_048() end

---Sets the value of field 'Field_8_2_0_30080_048'.
---@param value integer
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetField_8_2_0_30080_048(value) end

---Navigates foreign relationship to 'UnitCondition' via 'Field_8_2_0_30080_048'.
---@return dbc.row.v1215.UnitCondition|nil
function row:GetField_8_2_0_30080_048() end

---Creates a related 'UnitCondition' row and automatically links 'Field_8_2_0_30080_048'.
---@param data? table
---@return dbc.row.v1215.UnitCondition
function row:CreateRelated(data) end

---Gets the value of field 'Field_8_3_0_32044_049'.
---@return number value
function row:GetField_8_3_0_32044_049() end

---Sets the value of field 'Field_8_3_0_32044_049'.
---@param value number
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetField_8_3_0_32044_049(value) end

---Gets the value of field 'Field_8_3_0_32044_050'.
---@return number value
function row:GetField_8_3_0_32044_050() end

---Sets the value of field 'Field_8_3_0_32044_050'.
---@param value number
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetField_8_3_0_32044_050(value) end

---Gets the value of field 'Field_8_3_0_32044_051'.
---@return number value
function row:GetField_8_3_0_32044_051() end

---Sets the value of field 'Field_8_3_0_32044_051'.
---@param value number
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetField_8_3_0_32044_051(value) end

---Gets the value of field 'Field_8_3_0_32044_052'.
---@return number value
function row:GetField_8_3_0_32044_052() end

---Sets the value of field 'Field_8_3_0_32044_052'.
---@param value number
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetField_8_3_0_32044_052(value) end

---Gets the value of field 'Field_8_3_0_32044_053'.
---@return number value
function row:GetField_8_3_0_32044_053() end

---Sets the value of field 'Field_8_3_0_32044_053'.
---@param value number
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetField_8_3_0_32044_053(value) end

---Gets the value of field 'Field_8_3_0_32044_054'.
---@return number value
function row:GetField_8_3_0_32044_054() end

---Sets the value of field 'Field_8_3_0_32044_054'.
---@param value number
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetField_8_3_0_32044_054(value) end

---Gets the value of field 'Field_9_1_0_38312_055'.
---@return number value
function row:GetField_9_1_0_38312_055() end

---Sets the value of field 'Field_9_1_0_38312_055'.
---@param value number
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetField_9_1_0_38312_055(value) end

---Gets the value of field 'Field_9_1_0_38312_056'.
---@return number value
function row:GetField_9_1_0_38312_056() end

---Sets the value of field 'Field_9_1_0_38312_056'.
---@param value number
---@return dbc.row.v1215.SoundKitAdvanced self
function row:SetField_9_1_0_38312_056(value) end

---Table container for SoundKitAdvanced (Build 12.1.5.69594).
---@class dbc.Table.v1215.SoundKitAdvanced : DbcTable
---@field [integer] dbc.row.v1215.SoundKitAdvanced
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SoundKitAdvanced
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SoundKitAdvanced|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SoundKitAdvanced
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SoundKitAdvanced>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SoundKitAdvanced[]
function tbl:GetByRelation(foreign_id) end

return {}
