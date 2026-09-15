---@meta
-- Generated LuaLS annotations for UIEventToast (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UIEventToast in build 12.1.5.69594.
---@class dbc.row.v1215.UIEventToast : RowProxy
---@field Title_lang string
---@field Subtitle_lang string
---@field InstructionText_lang string
---@field SubIcon_lang string
---@field TitleTooltip_lang string
---@field SubtitleTooltip_lang string
---@field EventToastID integer
---@field PlayerConditionID integer
---@field UiTextureAtlasMemberID integer
---@field UiTextureKitID integer
---@field EventType integer EventToastEventType | LevelUp: 0; LevelUpSpell: 1; LevelUpDungeon: 2; LevelUpRaid: 3; LevelUpPvP: 4; PetBattleNewAbility: 5; PetBattleFinalRound: 6; PetBattleCapture: 7; BattlePetLevelChanged: 8; BattlePetLevelUpAbility: 9; QuestBossEmote: 10; MythicPlusWeeklyRecord: 11; QuestTurnedIn: 12; WorldStateChange: 13; Scenario: 14; LevelUpOther: 15; PlayerAuraAdded: 16; PlayerAuraRemoved: 17; SpellScript: 18
---@field DisplayType integer EventToastDisplayType | NormalSingleLine: 0; NormalBlockText: 1; NormalTitleAndSubTitle: 2; NormalTextWithIcon: 3; LargeTextWithIcon: 4; NormalTextWithIconAndRarity: 5; Scenario: 6; ChallengeMode: 7; ScenarioClickExpand: 8
---@field EventAsset integer EventType == PlayerAuraAdded: Spell::ID; == PlayerAuraRemoved: Spell::ID; == QuestTurnedIn: QuestV2::ID
---@field Field_9_1_0_38312_011 integer flags? hideDefaultAlias = 1?
---@field IconFileID integer
---@field UiWidgetSetID integer
---@field ExtraUiWidgetSetID integer
---@field TitleTooltipUiWidgetSetID integer
---@field SubtitleTooltipUiWidgetSetID integer
---@field ShowSoundKitID integer
---@field HideSoundKitID integer or the other way around? next soundkit id will be ExpandSoundKitID
---@field Field_10_2_5_52554_021 integer

local row = {}

---Gets the value of field 'Title_lang'.
---@return string value
function row:GetTitle_lang() end

---Sets the value of field 'Title_lang'.
---@param value string
---@return dbc.row.v1215.UIEventToast self
function row:SetTitle_lang(value) end

---Gets the value of field 'Subtitle_lang'.
---@return string value
function row:GetSubtitle_lang() end

---Sets the value of field 'Subtitle_lang'.
---@param value string
---@return dbc.row.v1215.UIEventToast self
function row:SetSubtitle_lang(value) end

---Gets the value of field 'InstructionText_lang'.
---@return string value
function row:GetInstructionText_lang() end

---Sets the value of field 'InstructionText_lang'.
---@param value string
---@return dbc.row.v1215.UIEventToast self
function row:SetInstructionText_lang(value) end

---Gets the value of field 'SubIcon_lang'.
---@return string value
function row:GetSubIcon_lang() end

---Sets the value of field 'SubIcon_lang'.
---@param value string
---@return dbc.row.v1215.UIEventToast self
function row:SetSubIcon_lang(value) end

---Gets the value of field 'TitleTooltip_lang'.
---@return string value
function row:GetTitleTooltip_lang() end

---Sets the value of field 'TitleTooltip_lang'.
---@param value string
---@return dbc.row.v1215.UIEventToast self
function row:SetTitleTooltip_lang(value) end

---Gets the value of field 'SubtitleTooltip_lang'.
---@return string value
function row:GetSubtitleTooltip_lang() end

---Sets the value of field 'SubtitleTooltip_lang'.
---@param value string
---@return dbc.row.v1215.UIEventToast self
function row:SetSubtitleTooltip_lang(value) end

---Gets the value of field 'EventToastID'.
---@return integer value
function row:GetEventToastID() end

---Sets the value of field 'EventToastID'.
---@param value integer
---@return dbc.row.v1215.UIEventToast self
function row:SetEventToastID(value) end

---Navigates foreign relationship to 'EventToast' via 'EventToastID'.
---@return dbc.row.v1215.EventToast|nil
function row:GetEventToast() end

---Creates a related 'EventToast' row and automatically links 'EventToastID'.
---@param data? table
---@return dbc.row.v1215.EventToast
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.UIEventToast self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'UiTextureAtlasMemberID'.
---@return integer value
function row:GetUiTextureAtlasMemberID() end

---Sets the value of field 'UiTextureAtlasMemberID'.
---@param value integer
---@return dbc.row.v1215.UIEventToast self
function row:SetUiTextureAtlasMemberID(value) end

---Navigates foreign relationship to 'UiTextureAtlasMember' via 'UiTextureAtlasMemberID'.
---@return dbc.row.v1215.UiTextureAtlasMember|nil
function row:GetUiTextureAtlasMember() end

---Creates a related 'UiTextureAtlasMember' row and automatically links 'UiTextureAtlasMemberID'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasMember
function row:CreateRelated(data) end

---Gets the value of field 'UiTextureKitID'.
---@return integer value
function row:GetUiTextureKitID() end

---Sets the value of field 'UiTextureKitID'.
---@param value integer
---@return dbc.row.v1215.UIEventToast self
function row:SetUiTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'UiTextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetUiTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'UiTextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'EventType'.
---@return integer value
function row:GetEventType() end

---Sets the value of field 'EventType'.
---@param value integer
---@return dbc.row.v1215.UIEventToast self
function row:SetEventType(value) end

---Gets the value of field 'DisplayType'.
---@return integer value
function row:GetDisplayType() end

---Sets the value of field 'DisplayType'.
---@param value integer
---@return dbc.row.v1215.UIEventToast self
function row:SetDisplayType(value) end

---Gets the value of field 'EventAsset'.
---@return integer value
function row:GetEventAsset() end

---Sets the value of field 'EventAsset'.
---@param value integer
---@return dbc.row.v1215.UIEventToast self
function row:SetEventAsset(value) end

---Gets the value of field 'Field_9_1_0_38312_011'.
---@return integer value
function row:GetField_9_1_0_38312_011() end

---Sets the value of field 'Field_9_1_0_38312_011'.
---@param value integer
---@return dbc.row.v1215.UIEventToast self
function row:SetField_9_1_0_38312_011(value) end

---Gets the value of field 'IconFileID'.
---@return integer value
function row:GetIconFileID() end

---Sets the value of field 'IconFileID'.
---@param value integer
---@return dbc.row.v1215.UIEventToast self
function row:SetIconFileID(value) end

---Navigates foreign relationship to 'FileData' via 'IconFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetIconFile() end

---Creates a related 'FileData' row and automatically links 'IconFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'UiWidgetSetID'.
---@return integer value
function row:GetUiWidgetSetID() end

---Sets the value of field 'UiWidgetSetID'.
---@param value integer
---@return dbc.row.v1215.UIEventToast self
function row:SetUiWidgetSetID(value) end

---Navigates foreign relationship to 'UiWidgetSet' via 'UiWidgetSetID'.
---@return dbc.row.v1215.UiWidgetSet|nil
function row:GetUiWidgetSet() end

---Creates a related 'UiWidgetSet' row and automatically links 'UiWidgetSetID'.
---@param data? table
---@return dbc.row.v1215.UiWidgetSet
function row:CreateRelated(data) end

---Gets the value of field 'ExtraUiWidgetSetID'.
---@return integer value
function row:GetExtraUiWidgetSetID() end

---Sets the value of field 'ExtraUiWidgetSetID'.
---@param value integer
---@return dbc.row.v1215.UIEventToast self
function row:SetExtraUiWidgetSetID(value) end

---Navigates foreign relationship to 'UiWidgetSet' via 'ExtraUiWidgetSetID'.
---@return dbc.row.v1215.UiWidgetSet|nil
function row:GetExtraUiWidgetSet() end

---Creates a related 'UiWidgetSet' row and automatically links 'ExtraUiWidgetSetID'.
---@param data? table
---@return dbc.row.v1215.UiWidgetSet
function row:CreateRelated(data) end

---Gets the value of field 'TitleTooltipUiWidgetSetID'.
---@return integer value
function row:GetTitleTooltipUiWidgetSetID() end

---Sets the value of field 'TitleTooltipUiWidgetSetID'.
---@param value integer
---@return dbc.row.v1215.UIEventToast self
function row:SetTitleTooltipUiWidgetSetID(value) end

---Navigates foreign relationship to 'TitleTooltipUiWidgetSet' via 'TitleTooltipUiWidgetSetID'.
---@return dbc.row.v1215.TitleTooltipUiWidgetSet|nil
function row:GetTitleTooltipUiWidgetSet() end

---Creates a related 'TitleTooltipUiWidgetSet' row and automatically links 'TitleTooltipUiWidgetSetID'.
---@param data? table
---@return dbc.row.v1215.TitleTooltipUiWidgetSet
function row:CreateRelated(data) end

---Gets the value of field 'SubtitleTooltipUiWidgetSetID'.
---@return integer value
function row:GetSubtitleTooltipUiWidgetSetID() end

---Sets the value of field 'SubtitleTooltipUiWidgetSetID'.
---@param value integer
---@return dbc.row.v1215.UIEventToast self
function row:SetSubtitleTooltipUiWidgetSetID(value) end

---Navigates foreign relationship to 'SubtitleTooltipUiWidgetSet' via 'SubtitleTooltipUiWidgetSetID'.
---@return dbc.row.v1215.SubtitleTooltipUiWidgetSet|nil
function row:GetSubtitleTooltipUiWidgetSet() end

---Creates a related 'SubtitleTooltipUiWidgetSet' row and automatically links 'SubtitleTooltipUiWidgetSetID'.
---@param data? table
---@return dbc.row.v1215.SubtitleTooltipUiWidgetSet
function row:CreateRelated(data) end

---Gets the value of field 'ShowSoundKitID'.
---@return integer value
function row:GetShowSoundKitID() end

---Sets the value of field 'ShowSoundKitID'.
---@param value integer
---@return dbc.row.v1215.UIEventToast self
function row:SetShowSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'ShowSoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetShowSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'ShowSoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'HideSoundKitID'.
---@return integer value
function row:GetHideSoundKitID() end

---Sets the value of field 'HideSoundKitID'.
---@param value integer
---@return dbc.row.v1215.UIEventToast self
function row:SetHideSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'HideSoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetHideSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'HideSoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_2_5_52554_021'.
---@return integer value
function row:GetField_10_2_5_52554_021() end

---Sets the value of field 'Field_10_2_5_52554_021'.
---@param value integer
---@return dbc.row.v1215.UIEventToast self
function row:SetField_10_2_5_52554_021(value) end

---Table container for UIEventToast (Build 12.1.5.69594).
---@class dbc.Table.v1215.UIEventToast : DbcTable
---@field [integer] dbc.row.v1215.UIEventToast
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UIEventToast
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UIEventToast|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UIEventToast
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UIEventToast>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UIEventToast[]
function tbl:GetByRelation(foreign_id) end

return {}
