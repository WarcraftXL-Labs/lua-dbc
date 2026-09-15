---@meta
-- Generated LuaLS annotations for PlayerCondition (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PlayerCondition in build 12.1.5.69594.
---@class dbc.row.v1215.PlayerCondition : RowProxy
---@field ID integer
---@field Failure_description_lang string
---@field MinLevel integer
---@field MaxLevel integer
---@field ClassMask integer
---@field SkillLogic integer
---@field LanguageID integer
---@field MinLanguage integer
---@field MaxLanguage integer
---@field MaxFactionID integer
---@field MaxReputation integer
---@field ReputationLogic integer
---@field CurrentPvpFaction integer
---@field PvpMedal integer
---@field PrevQuestLogic integer
---@field CurrQuestLogic integer
---@field CurrentCompletedQuestLogic integer
---@field SpellLogic integer
---@field ItemLogic integer
---@field ItemFlags integer
---@field AuraSpellLogic integer
---@field WorldStateExpressionID integer
---@field WeatherID integer
---@field PartyStatus integer
---@field LifetimeMaxPVPRank integer
---@field AchievementLogic integer for all Logics: 1) bits 16 and up: invert whether criteria 0..count completed. 2) in two bit steps, combine criteria 1..count, bits 0 and up: &1: and, &2: or, neither: ignore. ex: 0x00 = #0. 0x01 = #0 and #1. 0x02 = #0 or #1. 0x10000 = not #0. 0x10001 = (not #0) and #1. 0x30002 = (not #0) or (not #1).
---@field Gender integer
---@field NativeGender integer
---@field AreaLogic integer
---@field LfgLogic integer
---@field CurrencyLogic integer
---@field QuestKillID integer
---@field QuestKillLogic integer
---@field MinExpansionLevel integer
---@field MaxExpansionLevel integer
---@field MinAvgItemLevel integer
---@field MaxAvgItemLevel integer
---@field MinAvgEquippedItemLevel integer
---@field MaxAvgEquippedItemLevel integer
---@field PhaseUseFlags integer
---@field PhaseID integer
---@field PhaseGroupID integer
---@field Flags integer
---@field ChrSpecializationIndex integer
---@field ChrSpecializationRole integer
---@field ModifierTreeID integer
---@field PowerType integer
---@field PowerTypeComp integer
---@field PowerTypeValue integer
---@field MovementFlags integer
---@field WeaponSubclassMask integer
---@field MaxGuildLevel integer
---@field MinGuildLevel integer
---@field MaxExpansionTier integer
---@field MinExpansionTier integer
---@field MinPVPRank integer
---@field MaxPVPRank integer
---@field ContentTuningID integer
---@field CovenantID integer
---@field TraitNodeEntryLogic integer
---@field SkillID integer[]
---@field MinSkill integer[]
---@field MaxSkill integer[]
---@field MinFactionID integer[]
---@field MinReputation integer[]
---@field PrevQuestID integer[]
---@field CurrQuestID integer[]
---@field CurrentCompletedQuestID integer[]
---@field SpellID integer[]
---@field ItemID integer[]
---@field ItemCount integer[]
---@field Explored integer[]
---@field Time integer[]
---@field AuraSpellID integer[]
---@field AuraStacks integer[]
---@field Achievement integer[]
---@field AreaID integer[]
---@field LfgStatus integer[]
---@field LfgCompare integer[]
---@field LfgValue integer[]
---@field CurrencyID integer[]
---@field CurrencyCount integer[]
---@field QuestKillMonster integer[]
---@field RaceMasks integer[]
---@field TraitNodeEntryID integer[]
---@field TraitNodeEntryMinRank integer[]
---@field TraitNodeEntryMaxRank integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetID(value) end

---Gets the value of field 'Failure_description_lang'.
---@return string value
function row:GetFailure_description_lang() end

---Sets the value of field 'Failure_description_lang'.
---@param value string
---@return dbc.row.v1215.PlayerCondition self
function row:SetFailure_description_lang(value) end

---Gets the value of field 'MinLevel'.
---@return integer value
function row:GetMinLevel() end

---Sets the value of field 'MinLevel'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetMinLevel(value) end

---Gets the value of field 'MaxLevel'.
---@return integer value
function row:GetMaxLevel() end

---Sets the value of field 'MaxLevel'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetMaxLevel(value) end

---Gets the value of field 'ClassMask'.
---@return integer value
function row:GetClassMask() end

---Sets the value of field 'ClassMask'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetClassMask(value) end

---Gets the value of field 'SkillLogic'.
---@return integer value
function row:GetSkillLogic() end

---Sets the value of field 'SkillLogic'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetSkillLogic(value) end

---Gets the value of field 'LanguageID'.
---@return integer value
function row:GetLanguageID() end

---Sets the value of field 'LanguageID'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetLanguageID(value) end

---Navigates foreign relationship to 'Languages' via 'LanguageID'.
---@return dbc.row.v1215.Languages|nil
function row:GetLanguage() end

---Creates a related 'Languages' row and automatically links 'LanguageID'.
---@param data? table
---@return dbc.row.v1215.Languages
function row:CreateRelated(data) end

---Gets the value of field 'MinLanguage'.
---@return integer value
function row:GetMinLanguage() end

---Sets the value of field 'MinLanguage'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetMinLanguage(value) end

---Gets the value of field 'MaxLanguage'.
---@return integer value
function row:GetMaxLanguage() end

---Sets the value of field 'MaxLanguage'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetMaxLanguage(value) end

---Gets the value of field 'MaxFactionID'.
---@return integer value
function row:GetMaxFactionID() end

---Sets the value of field 'MaxFactionID'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetMaxFactionID(value) end

---Navigates foreign relationship to 'Faction' via 'MaxFactionID'.
---@return dbc.row.v1215.Faction|nil
function row:GetMaxFaction() end

---Creates a related 'Faction' row and automatically links 'MaxFactionID'.
---@param data? table
---@return dbc.row.v1215.Faction
function row:CreateRelated(data) end

---Gets the value of field 'MaxReputation'.
---@return integer value
function row:GetMaxReputation() end

---Sets the value of field 'MaxReputation'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetMaxReputation(value) end

---Gets the value of field 'ReputationLogic'.
---@return integer value
function row:GetReputationLogic() end

---Sets the value of field 'ReputationLogic'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetReputationLogic(value) end

---Gets the value of field 'CurrentPvpFaction'.
---@return integer value
function row:GetCurrentPvpFaction() end

---Sets the value of field 'CurrentPvpFaction'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetCurrentPvpFaction(value) end

---Gets the value of field 'PvpMedal'.
---@return integer value
function row:GetPvpMedal() end

---Sets the value of field 'PvpMedal'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetPvpMedal(value) end

---Gets the value of field 'PrevQuestLogic'.
---@return integer value
function row:GetPrevQuestLogic() end

---Sets the value of field 'PrevQuestLogic'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetPrevQuestLogic(value) end

---Gets the value of field 'CurrQuestLogic'.
---@return integer value
function row:GetCurrQuestLogic() end

---Sets the value of field 'CurrQuestLogic'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetCurrQuestLogic(value) end

---Gets the value of field 'CurrentCompletedQuestLogic'.
---@return integer value
function row:GetCurrentCompletedQuestLogic() end

---Sets the value of field 'CurrentCompletedQuestLogic'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetCurrentCompletedQuestLogic(value) end

---Gets the value of field 'SpellLogic'.
---@return integer value
function row:GetSpellLogic() end

---Sets the value of field 'SpellLogic'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetSpellLogic(value) end

---Gets the value of field 'ItemLogic'.
---@return integer value
function row:GetItemLogic() end

---Sets the value of field 'ItemLogic'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetItemLogic(value) end

---Gets the value of field 'ItemFlags'.
---@return integer value
function row:GetItemFlags() end

---Sets the value of field 'ItemFlags'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetItemFlags(value) end

---Gets the value of field 'AuraSpellLogic'.
---@return integer value
function row:GetAuraSpellLogic() end

---Sets the value of field 'AuraSpellLogic'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetAuraSpellLogic(value) end

---Gets the value of field 'WorldStateExpressionID'.
---@return integer value
function row:GetWorldStateExpressionID() end

---Sets the value of field 'WorldStateExpressionID'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetWorldStateExpressionID(value) end

---Navigates foreign relationship to 'WorldStateExpression' via 'WorldStateExpressionID'.
---@return dbc.row.v1215.WorldStateExpression|nil
function row:GetWorldStateExpression() end

---Creates a related 'WorldStateExpression' row and automatically links 'WorldStateExpressionID'.
---@param data? table
---@return dbc.row.v1215.WorldStateExpression
function row:CreateRelated(data) end

---Gets the value of field 'WeatherID'.
---@return integer value
function row:GetWeatherID() end

---Sets the value of field 'WeatherID'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetWeatherID(value) end

---Navigates foreign relationship to 'Weather' via 'WeatherID'.
---@return dbc.row.v1215.Weather|nil
function row:GetWeather() end

---Creates a related 'Weather' row and automatically links 'WeatherID'.
---@param data? table
---@return dbc.row.v1215.Weather
function row:CreateRelated(data) end

---Gets the value of field 'PartyStatus'.
---@return integer value
function row:GetPartyStatus() end

---Sets the value of field 'PartyStatus'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetPartyStatus(value) end

---Gets the value of field 'LifetimeMaxPVPRank'.
---@return integer value
function row:GetLifetimeMaxPVPRank() end

---Sets the value of field 'LifetimeMaxPVPRank'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetLifetimeMaxPVPRank(value) end

---Gets the value of field 'AchievementLogic'.
---@return integer value
function row:GetAchievementLogic() end

---Sets the value of field 'AchievementLogic'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetAchievementLogic(value) end

---Gets the value of field 'Gender'.
---@return integer value
function row:GetGender() end

---Sets the value of field 'Gender'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetGender(value) end

---Gets the value of field 'NativeGender'.
---@return integer value
function row:GetNativeGender() end

---Sets the value of field 'NativeGender'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetNativeGender(value) end

---Gets the value of field 'AreaLogic'.
---@return integer value
function row:GetAreaLogic() end

---Sets the value of field 'AreaLogic'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetAreaLogic(value) end

---Gets the value of field 'LfgLogic'.
---@return integer value
function row:GetLfgLogic() end

---Sets the value of field 'LfgLogic'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetLfgLogic(value) end

---Gets the value of field 'CurrencyLogic'.
---@return integer value
function row:GetCurrencyLogic() end

---Sets the value of field 'CurrencyLogic'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetCurrencyLogic(value) end

---Gets the value of field 'QuestKillID'.
---@return integer value
function row:GetQuestKillID() end

---Sets the value of field 'QuestKillID'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetQuestKillID(value) end

---Navigates foreign relationship to 'QuestKill' via 'QuestKillID'.
---@return dbc.row.v1215.QuestKill|nil
function row:GetQuestKill() end

---Creates a related 'QuestKill' row and automatically links 'QuestKillID'.
---@param data? table
---@return dbc.row.v1215.QuestKill
function row:CreateRelated(data) end

---Gets the value of field 'QuestKillLogic'.
---@return integer value
function row:GetQuestKillLogic() end

---Sets the value of field 'QuestKillLogic'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetQuestKillLogic(value) end

---Gets the value of field 'MinExpansionLevel'.
---@return integer value
function row:GetMinExpansionLevel() end

---Sets the value of field 'MinExpansionLevel'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetMinExpansionLevel(value) end

---Gets the value of field 'MaxExpansionLevel'.
---@return integer value
function row:GetMaxExpansionLevel() end

---Sets the value of field 'MaxExpansionLevel'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetMaxExpansionLevel(value) end

---Gets the value of field 'MinAvgItemLevel'.
---@return integer value
function row:GetMinAvgItemLevel() end

---Sets the value of field 'MinAvgItemLevel'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetMinAvgItemLevel(value) end

---Gets the value of field 'MaxAvgItemLevel'.
---@return integer value
function row:GetMaxAvgItemLevel() end

---Sets the value of field 'MaxAvgItemLevel'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetMaxAvgItemLevel(value) end

---Gets the value of field 'MinAvgEquippedItemLevel'.
---@return integer value
function row:GetMinAvgEquippedItemLevel() end

---Sets the value of field 'MinAvgEquippedItemLevel'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetMinAvgEquippedItemLevel(value) end

---Gets the value of field 'MaxAvgEquippedItemLevel'.
---@return integer value
function row:GetMaxAvgEquippedItemLevel() end

---Sets the value of field 'MaxAvgEquippedItemLevel'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetMaxAvgEquippedItemLevel(value) end

---Gets the value of field 'PhaseUseFlags'.
---@return integer value
function row:GetPhaseUseFlags() end

---Sets the value of field 'PhaseUseFlags'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetPhaseUseFlags(value) end

---Gets the value of field 'PhaseID'.
---@return integer value
function row:GetPhaseID() end

---Sets the value of field 'PhaseID'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetPhaseID(value) end

---Navigates foreign relationship to 'Phase' via 'PhaseID'.
---@return dbc.row.v1215.Phase|nil
function row:GetPhase() end

---Creates a related 'Phase' row and automatically links 'PhaseID'.
---@param data? table
---@return dbc.row.v1215.Phase
function row:CreateRelated(data) end

---Gets the value of field 'PhaseGroupID'.
---@return integer value
function row:GetPhaseGroupID() end

---Sets the value of field 'PhaseGroupID'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetPhaseGroupID(value) end

---Navigates foreign relationship to 'PhaseGroup' via 'PhaseGroupID'.
---@return dbc.row.v1215.PhaseGroup|nil
function row:GetPhaseGroup() end

---Creates a related 'PhaseGroup' row and automatically links 'PhaseGroupID'.
---@param data? table
---@return dbc.row.v1215.PhaseGroup
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetFlags(value) end

---Gets the value of field 'ChrSpecializationIndex'.
---@return integer value
function row:GetChrSpecializationIndex() end

---Sets the value of field 'ChrSpecializationIndex'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetChrSpecializationIndex(value) end

---Gets the value of field 'ChrSpecializationRole'.
---@return integer value
function row:GetChrSpecializationRole() end

---Sets the value of field 'ChrSpecializationRole'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetChrSpecializationRole(value) end

---Gets the value of field 'ModifierTreeID'.
---@return integer value
function row:GetModifierTreeID() end

---Sets the value of field 'ModifierTreeID'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetModifierTreeID(value) end

---Navigates foreign relationship to 'ModifierTree' via 'ModifierTreeID'.
---@return dbc.row.v1215.ModifierTree|nil
function row:GetModifierTree() end

---Creates a related 'ModifierTree' row and automatically links 'ModifierTreeID'.
---@param data? table
---@return dbc.row.v1215.ModifierTree
function row:CreateRelated(data) end

---Gets the value of field 'PowerType'.
---@return integer value
function row:GetPowerType() end

---Sets the value of field 'PowerType'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetPowerType(value) end

---Navigates foreign relationship to 'PowerType' via 'PowerType'.
---@return dbc.row.v1215.PowerType|nil
function row:GetPowerType() end

---Creates a related 'PowerType' row and automatically links 'PowerType'.
---@param data? table
---@return dbc.row.v1215.PowerType
function row:CreateRelated(data) end

---Gets the value of field 'PowerTypeComp'.
---@return integer value
function row:GetPowerTypeComp() end

---Sets the value of field 'PowerTypeComp'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetPowerTypeComp(value) end

---Gets the value of field 'PowerTypeValue'.
---@return integer value
function row:GetPowerTypeValue() end

---Sets the value of field 'PowerTypeValue'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetPowerTypeValue(value) end

---Gets the value of field 'MovementFlags'.
---@return integer value
function row:GetMovementFlags() end

---Sets the value of field 'MovementFlags'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetMovementFlags(value) end

---Gets the value of field 'WeaponSubclassMask'.
---@return integer value
function row:GetWeaponSubclassMask() end

---Sets the value of field 'WeaponSubclassMask'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetWeaponSubclassMask(value) end

---Gets the value of field 'MaxGuildLevel'.
---@return integer value
function row:GetMaxGuildLevel() end

---Sets the value of field 'MaxGuildLevel'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetMaxGuildLevel(value) end

---Gets the value of field 'MinGuildLevel'.
---@return integer value
function row:GetMinGuildLevel() end

---Sets the value of field 'MinGuildLevel'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetMinGuildLevel(value) end

---Gets the value of field 'MaxExpansionTier'.
---@return integer value
function row:GetMaxExpansionTier() end

---Sets the value of field 'MaxExpansionTier'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetMaxExpansionTier(value) end

---Gets the value of field 'MinExpansionTier'.
---@return integer value
function row:GetMinExpansionTier() end

---Sets the value of field 'MinExpansionTier'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetMinExpansionTier(value) end

---Gets the value of field 'MinPVPRank'.
---@return integer value
function row:GetMinPVPRank() end

---Sets the value of field 'MinPVPRank'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetMinPVPRank(value) end

---Gets the value of field 'MaxPVPRank'.
---@return integer value
function row:GetMaxPVPRank() end

---Sets the value of field 'MaxPVPRank'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetMaxPVPRank(value) end

---Gets the value of field 'ContentTuningID'.
---@return integer value
function row:GetContentTuningID() end

---Sets the value of field 'ContentTuningID'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetContentTuningID(value) end

---Navigates foreign relationship to 'ContentTuning' via 'ContentTuningID'.
---@return dbc.row.v1215.ContentTuning|nil
function row:GetContentTuning() end

---Creates a related 'ContentTuning' row and automatically links 'ContentTuningID'.
---@param data? table
---@return dbc.row.v1215.ContentTuning
function row:CreateRelated(data) end

---Gets the value of field 'CovenantID'.
---@return integer value
function row:GetCovenantID() end

---Sets the value of field 'CovenantID'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetCovenantID(value) end

---Navigates foreign relationship to 'Covenant' via 'CovenantID'.
---@return dbc.row.v1215.Covenant|nil
function row:GetCovenant() end

---Creates a related 'Covenant' row and automatically links 'CovenantID'.
---@param data? table
---@return dbc.row.v1215.Covenant
function row:CreateRelated(data) end

---Gets the value of field 'TraitNodeEntryLogic'.
---@return integer value
function row:GetTraitNodeEntryLogic() end

---Sets the value of field 'TraitNodeEntryLogic'.
---@param value integer
---@return dbc.row.v1215.PlayerCondition self
function row:SetTraitNodeEntryLogic(value) end

---Gets the value of field 'SkillID'.
---@return integer[] value
function row:GetSkillID() end

---Sets the value of field 'SkillID'.
---@param value integer[]
---@return dbc.row.v1215.PlayerCondition self
function row:SetSkillID(value) end

---Gets element at 1-based index in 'SkillID'.
---@param index integer
---@return integer value
function row:GetSkillIDItem(index) end

---Navigates foreign relationship to 'SkillLine' via 'SkillID'.
---@return dbc.row.v1215.SkillLine|nil
function row:GetSkill() end

---Creates a related 'SkillLine' row and automatically links 'SkillID'.
---@param data? table
---@return dbc.row.v1215.SkillLine
function row:CreateRelated(data) end

---Gets the value of field 'MinSkill'.
---@return integer[] value
function row:GetMinSkill() end

---Sets the value of field 'MinSkill'.
---@param value integer[]
---@return dbc.row.v1215.PlayerCondition self
function row:SetMinSkill(value) end

---Gets element at 1-based index in 'MinSkill'.
---@param index integer
---@return integer value
function row:GetMinSkillItem(index) end

---Gets the value of field 'MaxSkill'.
---@return integer[] value
function row:GetMaxSkill() end

---Sets the value of field 'MaxSkill'.
---@param value integer[]
---@return dbc.row.v1215.PlayerCondition self
function row:SetMaxSkill(value) end

---Gets element at 1-based index in 'MaxSkill'.
---@param index integer
---@return integer value
function row:GetMaxSkillItem(index) end

---Gets the value of field 'MinFactionID'.
---@return integer[] value
function row:GetMinFactionID() end

---Sets the value of field 'MinFactionID'.
---@param value integer[]
---@return dbc.row.v1215.PlayerCondition self
function row:SetMinFactionID(value) end

---Gets element at 1-based index in 'MinFactionID'.
---@param index integer
---@return integer value
function row:GetMinFactionIDItem(index) end

---Navigates foreign relationship to 'Faction' via 'MinFactionID'.
---@return dbc.row.v1215.Faction|nil
function row:GetMinFaction() end

---Creates a related 'Faction' row and automatically links 'MinFactionID'.
---@param data? table
---@return dbc.row.v1215.Faction
function row:CreateRelated(data) end

---Gets the value of field 'MinReputation'.
---@return integer[] value
function row:GetMinReputation() end

---Sets the value of field 'MinReputation'.
---@param value integer[]
---@return dbc.row.v1215.PlayerCondition self
function row:SetMinReputation(value) end

---Gets element at 1-based index in 'MinReputation'.
---@param index integer
---@return integer value
function row:GetMinReputationItem(index) end

---Gets the value of field 'PrevQuestID'.
---@return integer[] value
function row:GetPrevQuestID() end

---Sets the value of field 'PrevQuestID'.
---@param value integer[]
---@return dbc.row.v1215.PlayerCondition self
function row:SetPrevQuestID(value) end

---Gets element at 1-based index in 'PrevQuestID'.
---@param index integer
---@return integer value
function row:GetPrevQuestIDItem(index) end

---Navigates foreign relationship to 'QuestV2' via 'PrevQuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetPrevQuest() end

---Creates a related 'QuestV2' row and automatically links 'PrevQuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'CurrQuestID'.
---@return integer[] value
function row:GetCurrQuestID() end

---Sets the value of field 'CurrQuestID'.
---@param value integer[]
---@return dbc.row.v1215.PlayerCondition self
function row:SetCurrQuestID(value) end

---Gets element at 1-based index in 'CurrQuestID'.
---@param index integer
---@return integer value
function row:GetCurrQuestIDItem(index) end

---Navigates foreign relationship to 'QuestV2' via 'CurrQuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetCurrQuest() end

---Creates a related 'QuestV2' row and automatically links 'CurrQuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'CurrentCompletedQuestID'.
---@return integer[] value
function row:GetCurrentCompletedQuestID() end

---Sets the value of field 'CurrentCompletedQuestID'.
---@param value integer[]
---@return dbc.row.v1215.PlayerCondition self
function row:SetCurrentCompletedQuestID(value) end

---Gets element at 1-based index in 'CurrentCompletedQuestID'.
---@param index integer
---@return integer value
function row:GetCurrentCompletedQuestIDItem(index) end

---Navigates foreign relationship to 'QuestV2' via 'CurrentCompletedQuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetCurrentCompletedQuest() end

---Creates a related 'QuestV2' row and automatically links 'CurrentCompletedQuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'SpellID'.
---@return integer[] value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer[]
---@return dbc.row.v1215.PlayerCondition self
function row:SetSpellID(value) end

---Gets element at 1-based index in 'SpellID'.
---@param index integer
---@return integer value
function row:GetSpellIDItem(index) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'ItemID'.
---@return integer[] value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer[]
---@return dbc.row.v1215.PlayerCondition self
function row:SetItemID(value) end

---Gets element at 1-based index in 'ItemID'.
---@param index integer
---@return integer value
function row:GetItemIDItem(index) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'ItemCount'.
---@return integer[] value
function row:GetItemCount() end

---Sets the value of field 'ItemCount'.
---@param value integer[]
---@return dbc.row.v1215.PlayerCondition self
function row:SetItemCount(value) end

---Gets element at 1-based index in 'ItemCount'.
---@param index integer
---@return integer value
function row:GetItemCountItem(index) end

---Gets the value of field 'Explored'.
---@return integer[] value
function row:GetExplored() end

---Sets the value of field 'Explored'.
---@param value integer[]
---@return dbc.row.v1215.PlayerCondition self
function row:SetExplored(value) end

---Gets element at 1-based index in 'Explored'.
---@param index integer
---@return integer value
function row:GetExploredItem(index) end

---Navigates foreign relationship to 'AreaTable' via 'Explored'.
---@return dbc.row.v1215.AreaTable|nil
function row:GetExplored() end

---Creates a related 'AreaTable' row and automatically links 'Explored'.
---@param data? table
---@return dbc.row.v1215.AreaTable
function row:CreateRelated(data) end

---Gets the value of field 'Time'.
---@return integer[] value
function row:GetTime() end

---Sets the value of field 'Time'.
---@param value integer[]
---@return dbc.row.v1215.PlayerCondition self
function row:SetTime(value) end

---Gets element at 1-based index in 'Time'.
---@param index integer
---@return integer value
function row:GetTimeItem(index) end

---Gets the value of field 'AuraSpellID'.
---@return integer[] value
function row:GetAuraSpellID() end

---Sets the value of field 'AuraSpellID'.
---@param value integer[]
---@return dbc.row.v1215.PlayerCondition self
function row:SetAuraSpellID(value) end

---Gets element at 1-based index in 'AuraSpellID'.
---@param index integer
---@return integer value
function row:GetAuraSpellIDItem(index) end

---Navigates foreign relationship to 'Spell' via 'AuraSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetAuraSpell() end

---Creates a related 'Spell' row and automatically links 'AuraSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'AuraStacks'.
---@return integer[] value
function row:GetAuraStacks() end

---Sets the value of field 'AuraStacks'.
---@param value integer[]
---@return dbc.row.v1215.PlayerCondition self
function row:SetAuraStacks(value) end

---Gets element at 1-based index in 'AuraStacks'.
---@param index integer
---@return integer value
function row:GetAuraStacksItem(index) end

---Gets the value of field 'Achievement'.
---@return integer[] value
function row:GetAchievement() end

---Sets the value of field 'Achievement'.
---@param value integer[]
---@return dbc.row.v1215.PlayerCondition self
function row:SetAchievement(value) end

---Gets element at 1-based index in 'Achievement'.
---@param index integer
---@return integer value
function row:GetAchievementItem(index) end

---Navigates foreign relationship to 'Achievement' via 'Achievement'.
---@return dbc.row.v1215.Achievement|nil
function row:GetAchievement() end

---Creates a related 'Achievement' row and automatically links 'Achievement'.
---@param data? table
---@return dbc.row.v1215.Achievement
function row:CreateRelated(data) end

---Gets the value of field 'AreaID'.
---@return integer[] value
function row:GetAreaID() end

---Sets the value of field 'AreaID'.
---@param value integer[]
---@return dbc.row.v1215.PlayerCondition self
function row:SetAreaID(value) end

---Gets element at 1-based index in 'AreaID'.
---@param index integer
---@return integer value
function row:GetAreaIDItem(index) end

---Navigates foreign relationship to 'Area' via 'AreaID'.
---@return dbc.row.v1215.Area|nil
function row:GetArea() end

---Creates a related 'Area' row and automatically links 'AreaID'.
---@param data? table
---@return dbc.row.v1215.Area
function row:CreateRelated(data) end

---Gets the value of field 'LfgStatus'.
---@return integer[] value
function row:GetLfgStatus() end

---Sets the value of field 'LfgStatus'.
---@param value integer[]
---@return dbc.row.v1215.PlayerCondition self
function row:SetLfgStatus(value) end

---Gets element at 1-based index in 'LfgStatus'.
---@param index integer
---@return integer value
function row:GetLfgStatusItem(index) end

---Gets the value of field 'LfgCompare'.
---@return integer[] value
function row:GetLfgCompare() end

---Sets the value of field 'LfgCompare'.
---@param value integer[]
---@return dbc.row.v1215.PlayerCondition self
function row:SetLfgCompare(value) end

---Gets element at 1-based index in 'LfgCompare'.
---@param index integer
---@return integer value
function row:GetLfgCompareItem(index) end

---Gets the value of field 'LfgValue'.
---@return integer[] value
function row:GetLfgValue() end

---Sets the value of field 'LfgValue'.
---@param value integer[]
---@return dbc.row.v1215.PlayerCondition self
function row:SetLfgValue(value) end

---Gets element at 1-based index in 'LfgValue'.
---@param index integer
---@return integer value
function row:GetLfgValueItem(index) end

---Gets the value of field 'CurrencyID'.
---@return integer[] value
function row:GetCurrencyID() end

---Sets the value of field 'CurrencyID'.
---@param value integer[]
---@return dbc.row.v1215.PlayerCondition self
function row:SetCurrencyID(value) end

---Gets element at 1-based index in 'CurrencyID'.
---@param index integer
---@return integer value
function row:GetCurrencyIDItem(index) end

---Navigates foreign relationship to 'CurrencyTypes' via 'CurrencyID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetCurrency() end

---Creates a related 'CurrencyTypes' row and automatically links 'CurrencyID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'CurrencyCount'.
---@return integer[] value
function row:GetCurrencyCount() end

---Sets the value of field 'CurrencyCount'.
---@param value integer[]
---@return dbc.row.v1215.PlayerCondition self
function row:SetCurrencyCount(value) end

---Gets element at 1-based index in 'CurrencyCount'.
---@param index integer
---@return integer value
function row:GetCurrencyCountItem(index) end

---Gets the value of field 'QuestKillMonster'.
---@return integer[] value
function row:GetQuestKillMonster() end

---Sets the value of field 'QuestKillMonster'.
---@param value integer[]
---@return dbc.row.v1215.PlayerCondition self
function row:SetQuestKillMonster(value) end

---Gets element at 1-based index in 'QuestKillMonster'.
---@param index integer
---@return integer value
function row:GetQuestKillMonsterItem(index) end

---Navigates foreign relationship to 'Creature' via 'QuestKillMonster'.
---@return dbc.row.v1215.Creature|nil
function row:GetQuestKillMonster() end

---Creates a related 'Creature' row and automatically links 'QuestKillMonster'.
---@param data? table
---@return dbc.row.v1215.Creature
function row:CreateRelated(data) end

---Gets the value of field 'RaceMasks'.
---@return integer[] value
function row:GetRaceMasks() end

---Sets the value of field 'RaceMasks'.
---@param value integer[]
---@return dbc.row.v1215.PlayerCondition self
function row:SetRaceMasks(value) end

---Gets element at 1-based index in 'RaceMasks'.
---@param index integer
---@return integer value
function row:GetRaceMasksItem(index) end

---Gets the value of field 'TraitNodeEntryID'.
---@return integer[] value
function row:GetTraitNodeEntryID() end

---Sets the value of field 'TraitNodeEntryID'.
---@param value integer[]
---@return dbc.row.v1215.PlayerCondition self
function row:SetTraitNodeEntryID(value) end

---Gets element at 1-based index in 'TraitNodeEntryID'.
---@param index integer
---@return integer value
function row:GetTraitNodeEntryIDItem(index) end

---Navigates foreign relationship to 'TraitNodeEntry' via 'TraitNodeEntryID'.
---@return dbc.row.v1215.TraitNodeEntry|nil
function row:GetTraitNodeEntry() end

---Creates a related 'TraitNodeEntry' row and automatically links 'TraitNodeEntryID'.
---@param data? table
---@return dbc.row.v1215.TraitNodeEntry
function row:CreateRelated(data) end

---Gets the value of field 'TraitNodeEntryMinRank'.
---@return integer[] value
function row:GetTraitNodeEntryMinRank() end

---Sets the value of field 'TraitNodeEntryMinRank'.
---@param value integer[]
---@return dbc.row.v1215.PlayerCondition self
function row:SetTraitNodeEntryMinRank(value) end

---Gets element at 1-based index in 'TraitNodeEntryMinRank'.
---@param index integer
---@return integer value
function row:GetTraitNodeEntryMinRankItem(index) end

---Gets the value of field 'TraitNodeEntryMaxRank'.
---@return integer[] value
function row:GetTraitNodeEntryMaxRank() end

---Sets the value of field 'TraitNodeEntryMaxRank'.
---@param value integer[]
---@return dbc.row.v1215.PlayerCondition self
function row:SetTraitNodeEntryMaxRank(value) end

---Gets element at 1-based index in 'TraitNodeEntryMaxRank'.
---@param index integer
---@return integer value
function row:GetTraitNodeEntryMaxRankItem(index) end

---Table container for PlayerCondition (Build 12.1.5.69594).
---@class dbc.Table.v1215.PlayerCondition : DbcTable
---@field [integer] dbc.row.v1215.PlayerCondition
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PlayerCondition
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PlayerCondition|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PlayerCondition
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PlayerCondition>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PlayerCondition[]
function tbl:GetByRelation(foreign_id) end

return {}
