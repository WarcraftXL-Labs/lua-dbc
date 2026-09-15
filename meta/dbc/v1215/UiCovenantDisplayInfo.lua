---@meta
-- Generated LuaLS annotations for UiCovenantDisplayInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiCovenantDisplayInfo in build 12.1.5.69594.
---@class dbc.row.v1215.UiCovenantDisplayInfo : RowProxy
---@field ID integer
---@field CovenantID integer
---@field UiTextureKitID integer
---@field CelebrationSoundKitID integer
---@field AnimaChannelSelectSoundKitID integer
---@field AnimaChannelActiveSoundKitID integer
---@field AnimaGemsFullSoundKitID integer
---@field AnimaNewGemSoundKitID integer
---@field AnimaReinforceSelectSoundKitID integer
---@field UpgradeTabSelectSoundKitID integer
---@field ReservoirFullSoundKitID integer
---@field BeginResearchSoundKitID integer
---@field RenownFanfareSoundKitID integer
---@field UiPriority integer
---@field RenownTrackLevelEffectID integer
---@field FactionFontColor integer
---@field Field_12_0_0_63534_016 integer
---@field PlayerCompanionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiCovenantDisplayInfo self
function row:SetID(value) end

---Gets the value of field 'CovenantID'.
---@return integer value
function row:GetCovenantID() end

---Sets the value of field 'CovenantID'.
---@param value integer
---@return dbc.row.v1215.UiCovenantDisplayInfo self
function row:SetCovenantID(value) end

---Navigates foreign relationship to 'Covenant' via 'CovenantID'.
---@return dbc.row.v1215.Covenant|nil
function row:GetCovenant() end

---Creates a related 'Covenant' row and automatically links 'CovenantID'.
---@param data? table
---@return dbc.row.v1215.Covenant
function row:CreateRelated(data) end

---Gets the value of field 'UiTextureKitID'.
---@return integer value
function row:GetUiTextureKitID() end

---Sets the value of field 'UiTextureKitID'.
---@param value integer
---@return dbc.row.v1215.UiCovenantDisplayInfo self
function row:SetUiTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'UiTextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetUiTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'UiTextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'CelebrationSoundKitID'.
---@return integer value
function row:GetCelebrationSoundKitID() end

---Sets the value of field 'CelebrationSoundKitID'.
---@param value integer
---@return dbc.row.v1215.UiCovenantDisplayInfo self
function row:SetCelebrationSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'CelebrationSoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetCelebrationSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'CelebrationSoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'AnimaChannelSelectSoundKitID'.
---@return integer value
function row:GetAnimaChannelSelectSoundKitID() end

---Sets the value of field 'AnimaChannelSelectSoundKitID'.
---@param value integer
---@return dbc.row.v1215.UiCovenantDisplayInfo self
function row:SetAnimaChannelSelectSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'AnimaChannelSelectSoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetAnimaChannelSelectSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'AnimaChannelSelectSoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'AnimaChannelActiveSoundKitID'.
---@return integer value
function row:GetAnimaChannelActiveSoundKitID() end

---Sets the value of field 'AnimaChannelActiveSoundKitID'.
---@param value integer
---@return dbc.row.v1215.UiCovenantDisplayInfo self
function row:SetAnimaChannelActiveSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'AnimaChannelActiveSoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetAnimaChannelActiveSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'AnimaChannelActiveSoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'AnimaGemsFullSoundKitID'.
---@return integer value
function row:GetAnimaGemsFullSoundKitID() end

---Sets the value of field 'AnimaGemsFullSoundKitID'.
---@param value integer
---@return dbc.row.v1215.UiCovenantDisplayInfo self
function row:SetAnimaGemsFullSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'AnimaGemsFullSoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetAnimaGemsFullSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'AnimaGemsFullSoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'AnimaNewGemSoundKitID'.
---@return integer value
function row:GetAnimaNewGemSoundKitID() end

---Sets the value of field 'AnimaNewGemSoundKitID'.
---@param value integer
---@return dbc.row.v1215.UiCovenantDisplayInfo self
function row:SetAnimaNewGemSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'AnimaNewGemSoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetAnimaNewGemSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'AnimaNewGemSoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'AnimaReinforceSelectSoundKitID'.
---@return integer value
function row:GetAnimaReinforceSelectSoundKitID() end

---Sets the value of field 'AnimaReinforceSelectSoundKitID'.
---@param value integer
---@return dbc.row.v1215.UiCovenantDisplayInfo self
function row:SetAnimaReinforceSelectSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'AnimaReinforceSelectSoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetAnimaReinforceSelectSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'AnimaReinforceSelectSoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'UpgradeTabSelectSoundKitID'.
---@return integer value
function row:GetUpgradeTabSelectSoundKitID() end

---Sets the value of field 'UpgradeTabSelectSoundKitID'.
---@param value integer
---@return dbc.row.v1215.UiCovenantDisplayInfo self
function row:SetUpgradeTabSelectSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'UpgradeTabSelectSoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetUpgradeTabSelectSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'UpgradeTabSelectSoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'ReservoirFullSoundKitID'.
---@return integer value
function row:GetReservoirFullSoundKitID() end

---Sets the value of field 'ReservoirFullSoundKitID'.
---@param value integer
---@return dbc.row.v1215.UiCovenantDisplayInfo self
function row:SetReservoirFullSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'ReservoirFullSoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetReservoirFullSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'ReservoirFullSoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'BeginResearchSoundKitID'.
---@return integer value
function row:GetBeginResearchSoundKitID() end

---Sets the value of field 'BeginResearchSoundKitID'.
---@param value integer
---@return dbc.row.v1215.UiCovenantDisplayInfo self
function row:SetBeginResearchSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'BeginResearchSoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetBeginResearchSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'BeginResearchSoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'RenownFanfareSoundKitID'.
---@return integer value
function row:GetRenownFanfareSoundKitID() end

---Sets the value of field 'RenownFanfareSoundKitID'.
---@param value integer
---@return dbc.row.v1215.UiCovenantDisplayInfo self
function row:SetRenownFanfareSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'RenownFanfareSoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetRenownFanfareSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'RenownFanfareSoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'UiPriority'.
---@return integer value
function row:GetUiPriority() end

---Sets the value of field 'UiPriority'.
---@param value integer
---@return dbc.row.v1215.UiCovenantDisplayInfo self
function row:SetUiPriority(value) end

---Gets the value of field 'RenownTrackLevelEffectID'.
---@return integer value
function row:GetRenownTrackLevelEffectID() end

---Sets the value of field 'RenownTrackLevelEffectID'.
---@param value integer
---@return dbc.row.v1215.UiCovenantDisplayInfo self
function row:SetRenownTrackLevelEffectID(value) end

---Navigates foreign relationship to 'UIScriptedAnimationEffect' via 'RenownTrackLevelEffectID'.
---@return dbc.row.v1215.UIScriptedAnimationEffect|nil
function row:GetRenownTrackLevelEffect() end

---Creates a related 'UIScriptedAnimationEffect' row and automatically links 'RenownTrackLevelEffectID'.
---@param data? table
---@return dbc.row.v1215.UIScriptedAnimationEffect
function row:CreateRelated(data) end

---Gets the value of field 'FactionFontColor'.
---@return integer value
function row:GetFactionFontColor() end

---Sets the value of field 'FactionFontColor'.
---@param value integer
---@return dbc.row.v1215.UiCovenantDisplayInfo self
function row:SetFactionFontColor(value) end

---Navigates foreign relationship to 'GlobalColor' via 'FactionFontColor'.
---@return dbc.row.v1215.GlobalColor|nil
function row:GetFactionFontColor() end

---Creates a related 'GlobalColor' row and automatically links 'FactionFontColor'.
---@param data? table
---@return dbc.row.v1215.GlobalColor
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_0_0_63534_016'.
---@return integer value
function row:GetField_12_0_0_63534_016() end

---Sets the value of field 'Field_12_0_0_63534_016'.
---@param value integer
---@return dbc.row.v1215.UiCovenantDisplayInfo self
function row:SetField_12_0_0_63534_016(value) end

---Gets the value of field 'PlayerCompanionID'.
---@return integer value
function row:GetPlayerCompanionID() end

---Sets the value of field 'PlayerCompanionID'.
---@param value integer
---@return dbc.row.v1215.UiCovenantDisplayInfo self
function row:SetPlayerCompanionID(value) end

---Navigates foreign relationship to 'PlayerCompanionInfo' via 'PlayerCompanionID'.
---@return dbc.row.v1215.PlayerCompanionInfo|nil
function row:GetPlayerCompanion() end

---Creates a related 'PlayerCompanionInfo' row and automatically links 'PlayerCompanionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCompanionInfo
function row:CreateRelated(data) end

---Table container for UiCovenantDisplayInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiCovenantDisplayInfo : DbcTable
---@field [integer] dbc.row.v1215.UiCovenantDisplayInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiCovenantDisplayInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiCovenantDisplayInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiCovenantDisplayInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiCovenantDisplayInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiCovenantDisplayInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
