---@meta
-- Generated LuaLS annotations for UiPartyPose (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiPartyPose in build 12.1.5.69594.
---@class dbc.row.v1215.UiPartyPose : RowProxy
---@field TitleText_lang string
---@field ExtraButtonText_lang string
---@field ID integer
---@field UiWidgetSetID integer
---@field VictoryUiModelSceneID integer
---@field DefeatUiModelSceneID integer
---@field VictorySoundKitID integer
---@field DefeatSoundKitID integer
---@field SpellID integer
---@field UiTextureKitID integer
---@field Flags integer PartyPoseUIConstants.PartyPoseFlags, 1: HideLeaveInstanceButton
---@field MapID integer

local row = {}

---Gets the value of field 'TitleText_lang'.
---@return string value
function row:GetTitleText_lang() end

---Sets the value of field 'TitleText_lang'.
---@param value string
---@return dbc.row.v1215.UiPartyPose self
function row:SetTitleText_lang(value) end

---Gets the value of field 'ExtraButtonText_lang'.
---@return string value
function row:GetExtraButtonText_lang() end

---Sets the value of field 'ExtraButtonText_lang'.
---@param value string
---@return dbc.row.v1215.UiPartyPose self
function row:SetExtraButtonText_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiPartyPose self
function row:SetID(value) end

---Gets the value of field 'UiWidgetSetID'.
---@return integer value
function row:GetUiWidgetSetID() end

---Sets the value of field 'UiWidgetSetID'.
---@param value integer
---@return dbc.row.v1215.UiPartyPose self
function row:SetUiWidgetSetID(value) end

---Navigates foreign relationship to 'UiWidgetSet' via 'UiWidgetSetID'.
---@return dbc.row.v1215.UiWidgetSet|nil
function row:GetUiWidgetSet() end

---Creates a related 'UiWidgetSet' row and automatically links 'UiWidgetSetID'.
---@param data? table
---@return dbc.row.v1215.UiWidgetSet
function row:CreateRelated(data) end

---Gets the value of field 'VictoryUiModelSceneID'.
---@return integer value
function row:GetVictoryUiModelSceneID() end

---Sets the value of field 'VictoryUiModelSceneID'.
---@param value integer
---@return dbc.row.v1215.UiPartyPose self
function row:SetVictoryUiModelSceneID(value) end

---Navigates foreign relationship to 'UiModelScene' via 'VictoryUiModelSceneID'.
---@return dbc.row.v1215.UiModelScene|nil
function row:GetVictoryUiModelScene() end

---Creates a related 'UiModelScene' row and automatically links 'VictoryUiModelSceneID'.
---@param data? table
---@return dbc.row.v1215.UiModelScene
function row:CreateRelated(data) end

---Gets the value of field 'DefeatUiModelSceneID'.
---@return integer value
function row:GetDefeatUiModelSceneID() end

---Sets the value of field 'DefeatUiModelSceneID'.
---@param value integer
---@return dbc.row.v1215.UiPartyPose self
function row:SetDefeatUiModelSceneID(value) end

---Navigates foreign relationship to 'UiModelScene' via 'DefeatUiModelSceneID'.
---@return dbc.row.v1215.UiModelScene|nil
function row:GetDefeatUiModelScene() end

---Creates a related 'UiModelScene' row and automatically links 'DefeatUiModelSceneID'.
---@param data? table
---@return dbc.row.v1215.UiModelScene
function row:CreateRelated(data) end

---Gets the value of field 'VictorySoundKitID'.
---@return integer value
function row:GetVictorySoundKitID() end

---Sets the value of field 'VictorySoundKitID'.
---@param value integer
---@return dbc.row.v1215.UiPartyPose self
function row:SetVictorySoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'VictorySoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetVictorySoundKit() end

---Creates a related 'SoundKit' row and automatically links 'VictorySoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'DefeatSoundKitID'.
---@return integer value
function row:GetDefeatSoundKitID() end

---Sets the value of field 'DefeatSoundKitID'.
---@param value integer
---@return dbc.row.v1215.UiPartyPose self
function row:SetDefeatSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'DefeatSoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetDefeatSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'DefeatSoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.UiPartyPose self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'UiTextureKitID'.
---@return integer value
function row:GetUiTextureKitID() end

---Sets the value of field 'UiTextureKitID'.
---@param value integer
---@return dbc.row.v1215.UiPartyPose self
function row:SetUiTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'UiTextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetUiTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'UiTextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.UiPartyPose self
function row:SetFlags(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.UiPartyPose self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Table container for UiPartyPose (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiPartyPose : DbcTable
---@field [integer] dbc.row.v1215.UiPartyPose
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiPartyPose
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiPartyPose|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiPartyPose
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiPartyPose>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiPartyPose[]
function tbl:GetByRelation(foreign_id) end

return {}
