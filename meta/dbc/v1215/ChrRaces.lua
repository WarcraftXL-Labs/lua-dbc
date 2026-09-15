---@meta
-- Generated LuaLS annotations for ChrRaces (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrRaces in build 12.1.5.69594.
---@class dbc.row.v1215.ChrRaces : RowProxy
---@field ID integer
---@field ClientPrefix string
---@field ClientFileString string
---@field Name_lang string quest text $R
---@field Name_female_lang string quest text $R
---@field Name_lowercase_lang string quest text $r
---@field Name_female_lowercase_lang string quest text $r
---@field Lore_name_lang string quest text $RL
---@field Lore_name_female_lang string quest text $RL
---@field Lore_name_lower_lang string quest text $rl
---@field Lore_name_lower_female_lang string quest text $rl
---@field LoreDescription_lang string
---@field Short_name_lang string quest text $RS
---@field Short_name_female_lang string quest text $RS
---@field Short_name_lower_lang string quest text $rs
---@field Short_name_lower_female_lang string quest text $rs
---@field Flags integer
---@field FactionID integer
---@field CinematicSequenceID integer
---@field ResSicknessSpellID integer
---@field SplashSoundID integer
---@field CreateScreenFileDataID integer
---@field SelectScreenFileDataID integer
---@field LowResScreenFileDataID integer
---@field AlteredFormStartVisualKitID integer[]
---@field AlteredFormFinishVisualKitID integer[]
---@field HeritageArmorAchievementID integer
---@field StartingLevel integer
---@field UiDisplayOrder integer
---@field PlayableRaceBit integer
---@field TransmogrifyDisabledSlotMask integer
---@field AlteredFormCustomizeOffsetFallback number[] fallback for CharStartKit::AlteredFormCustomizeOffset
---@field AlteredFormCustomizeRotationFallback number fallback for CharStartKit::AlteredFormCustomizeRotation
---@field Field_9_1_0_38312_030 number[]
---@field Field_9_1_0_38312_031 number[]
---@field BaseLanguage integer
---@field CreatureType integer
---@field Alliance integer
---@field Race_related integer
---@field UnalteredVisualRaceID integer
---@field DefaultClassID integer
---@field NeutralRaceID integer
---@field MaleModelFallbackRaceID integer
---@field MaleModelFallbackSex integer
---@field FemaleModelFallbackRaceID integer
---@field FemaleModelFallbackSex integer
---@field MaleTextureFallbackRaceID integer
---@field MaleTextureFallbackSex integer
---@field FemaleTextureFallbackRaceID integer
---@field FemaleTextureFallbackSex integer
---@field HelmetAnimScalingRaceID integer
---@field UnalteredVisualCustomizationRaceID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetID(value) end

---Gets the value of field 'ClientPrefix'.
---@return string value
function row:GetClientPrefix() end

---Sets the value of field 'ClientPrefix'.
---@param value string
---@return dbc.row.v1215.ChrRaces self
function row:SetClientPrefix(value) end

---Gets the value of field 'ClientFileString'.
---@return string value
function row:GetClientFileString() end

---Sets the value of field 'ClientFileString'.
---@param value string
---@return dbc.row.v1215.ChrRaces self
function row:SetClientFileString(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.ChrRaces self
function row:SetName_lang(value) end

---Gets the value of field 'Name_female_lang'.
---@return string value
function row:GetName_female_lang() end

---Sets the value of field 'Name_female_lang'.
---@param value string
---@return dbc.row.v1215.ChrRaces self
function row:SetName_female_lang(value) end

---Gets the value of field 'Name_lowercase_lang'.
---@return string value
function row:GetName_lowercase_lang() end

---Sets the value of field 'Name_lowercase_lang'.
---@param value string
---@return dbc.row.v1215.ChrRaces self
function row:SetName_lowercase_lang(value) end

---Gets the value of field 'Name_female_lowercase_lang'.
---@return string value
function row:GetName_female_lowercase_lang() end

---Sets the value of field 'Name_female_lowercase_lang'.
---@param value string
---@return dbc.row.v1215.ChrRaces self
function row:SetName_female_lowercase_lang(value) end

---Gets the value of field 'Lore_name_lang'.
---@return string value
function row:GetLore_name_lang() end

---Sets the value of field 'Lore_name_lang'.
---@param value string
---@return dbc.row.v1215.ChrRaces self
function row:SetLore_name_lang(value) end

---Gets the value of field 'Lore_name_female_lang'.
---@return string value
function row:GetLore_name_female_lang() end

---Sets the value of field 'Lore_name_female_lang'.
---@param value string
---@return dbc.row.v1215.ChrRaces self
function row:SetLore_name_female_lang(value) end

---Gets the value of field 'Lore_name_lower_lang'.
---@return string value
function row:GetLore_name_lower_lang() end

---Sets the value of field 'Lore_name_lower_lang'.
---@param value string
---@return dbc.row.v1215.ChrRaces self
function row:SetLore_name_lower_lang(value) end

---Gets the value of field 'Lore_name_lower_female_lang'.
---@return string value
function row:GetLore_name_lower_female_lang() end

---Sets the value of field 'Lore_name_lower_female_lang'.
---@param value string
---@return dbc.row.v1215.ChrRaces self
function row:SetLore_name_lower_female_lang(value) end

---Gets the value of field 'LoreDescription_lang'.
---@return string value
function row:GetLoreDescription_lang() end

---Sets the value of field 'LoreDescription_lang'.
---@param value string
---@return dbc.row.v1215.ChrRaces self
function row:SetLoreDescription_lang(value) end

---Gets the value of field 'Short_name_lang'.
---@return string value
function row:GetShort_name_lang() end

---Sets the value of field 'Short_name_lang'.
---@param value string
---@return dbc.row.v1215.ChrRaces self
function row:SetShort_name_lang(value) end

---Gets the value of field 'Short_name_female_lang'.
---@return string value
function row:GetShort_name_female_lang() end

---Sets the value of field 'Short_name_female_lang'.
---@param value string
---@return dbc.row.v1215.ChrRaces self
function row:SetShort_name_female_lang(value) end

---Gets the value of field 'Short_name_lower_lang'.
---@return string value
function row:GetShort_name_lower_lang() end

---Sets the value of field 'Short_name_lower_lang'.
---@param value string
---@return dbc.row.v1215.ChrRaces self
function row:SetShort_name_lower_lang(value) end

---Gets the value of field 'Short_name_lower_female_lang'.
---@return string value
function row:GetShort_name_lower_female_lang() end

---Sets the value of field 'Short_name_lower_female_lang'.
---@param value string
---@return dbc.row.v1215.ChrRaces self
function row:SetShort_name_lower_female_lang(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetFlags(value) end

---Gets the value of field 'FactionID'.
---@return integer value
function row:GetFactionID() end

---Sets the value of field 'FactionID'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetFactionID(value) end

---Navigates foreign relationship to 'FactionTemplate' via 'FactionID'.
---@return dbc.row.v1215.FactionTemplate|nil
function row:GetFaction() end

---Creates a related 'FactionTemplate' row and automatically links 'FactionID'.
---@param data? table
---@return dbc.row.v1215.FactionTemplate
function row:CreateRelated(data) end

---Gets the value of field 'CinematicSequenceID'.
---@return integer value
function row:GetCinematicSequenceID() end

---Sets the value of field 'CinematicSequenceID'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetCinematicSequenceID(value) end

---Navigates foreign relationship to 'CinematicSequences' via 'CinematicSequenceID'.
---@return dbc.row.v1215.CinematicSequences|nil
function row:GetCinematicSequence() end

---Creates a related 'CinematicSequences' row and automatically links 'CinematicSequenceID'.
---@param data? table
---@return dbc.row.v1215.CinematicSequences
function row:CreateRelated(data) end

---Gets the value of field 'ResSicknessSpellID'.
---@return integer value
function row:GetResSicknessSpellID() end

---Sets the value of field 'ResSicknessSpellID'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetResSicknessSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'ResSicknessSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetResSicknessSpell() end

---Creates a related 'Spell' row and automatically links 'ResSicknessSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'SplashSoundID'.
---@return integer value
function row:GetSplashSoundID() end

---Sets the value of field 'SplashSoundID'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetSplashSoundID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SplashSoundID'.
---@return dbc.row.v1215.SoundEntries|nil
function row:GetSplashSound() end

---Creates a related 'SoundEntries' row and automatically links 'SplashSoundID'.
---@param data? table
---@return dbc.row.v1215.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'CreateScreenFileDataID'.
---@return integer value
function row:GetCreateScreenFileDataID() end

---Sets the value of field 'CreateScreenFileDataID'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetCreateScreenFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'CreateScreenFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetCreateScreenFileData() end

---Creates a related 'FileData' row and automatically links 'CreateScreenFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'SelectScreenFileDataID'.
---@return integer value
function row:GetSelectScreenFileDataID() end

---Sets the value of field 'SelectScreenFileDataID'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetSelectScreenFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'SelectScreenFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetSelectScreenFileData() end

---Creates a related 'FileData' row and automatically links 'SelectScreenFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'LowResScreenFileDataID'.
---@return integer value
function row:GetLowResScreenFileDataID() end

---Sets the value of field 'LowResScreenFileDataID'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetLowResScreenFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'LowResScreenFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetLowResScreenFileData() end

---Creates a related 'FileData' row and automatically links 'LowResScreenFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'AlteredFormStartVisualKitID'.
---@return integer[] value
function row:GetAlteredFormStartVisualKitID() end

---Sets the value of field 'AlteredFormStartVisualKitID'.
---@param value integer[]
---@return dbc.row.v1215.ChrRaces self
function row:SetAlteredFormStartVisualKitID(value) end

---Gets element at 1-based index in 'AlteredFormStartVisualKitID'.
---@param index integer
---@return integer value
function row:GetAlteredFormStartVisualKitIDItem(index) end

---Navigates foreign relationship to 'SpellVisualKit' via 'AlteredFormStartVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetAlteredFormStartVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'AlteredFormStartVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'AlteredFormFinishVisualKitID'.
---@return integer[] value
function row:GetAlteredFormFinishVisualKitID() end

---Sets the value of field 'AlteredFormFinishVisualKitID'.
---@param value integer[]
---@return dbc.row.v1215.ChrRaces self
function row:SetAlteredFormFinishVisualKitID(value) end

---Gets element at 1-based index in 'AlteredFormFinishVisualKitID'.
---@param index integer
---@return integer value
function row:GetAlteredFormFinishVisualKitIDItem(index) end

---Navigates foreign relationship to 'SpellVisualKit' via 'AlteredFormFinishVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetAlteredFormFinishVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'AlteredFormFinishVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'HeritageArmorAchievementID'.
---@return integer value
function row:GetHeritageArmorAchievementID() end

---Sets the value of field 'HeritageArmorAchievementID'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetHeritageArmorAchievementID(value) end

---Navigates foreign relationship to 'Achievement' via 'HeritageArmorAchievementID'.
---@return dbc.row.v1215.Achievement|nil
function row:GetHeritageArmorAchievement() end

---Creates a related 'Achievement' row and automatically links 'HeritageArmorAchievementID'.
---@param data? table
---@return dbc.row.v1215.Achievement
function row:CreateRelated(data) end

---Gets the value of field 'StartingLevel'.
---@return integer value
function row:GetStartingLevel() end

---Sets the value of field 'StartingLevel'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetStartingLevel(value) end

---Gets the value of field 'UiDisplayOrder'.
---@return integer value
function row:GetUiDisplayOrder() end

---Sets the value of field 'UiDisplayOrder'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetUiDisplayOrder(value) end

---Gets the value of field 'PlayableRaceBit'.
---@return integer value
function row:GetPlayableRaceBit() end

---Sets the value of field 'PlayableRaceBit'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetPlayableRaceBit(value) end

---Gets the value of field 'TransmogrifyDisabledSlotMask'.
---@return integer value
function row:GetTransmogrifyDisabledSlotMask() end

---Sets the value of field 'TransmogrifyDisabledSlotMask'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetTransmogrifyDisabledSlotMask(value) end

---Gets the value of field 'AlteredFormCustomizeOffsetFallback'.
---@return number[] value
function row:GetAlteredFormCustomizeOffsetFallback() end

---Sets the value of field 'AlteredFormCustomizeOffsetFallback'.
---@param value number[]
---@return dbc.row.v1215.ChrRaces self
function row:SetAlteredFormCustomizeOffsetFallback(value) end

---Gets element at 1-based index in 'AlteredFormCustomizeOffsetFallback'.
---@param index integer
---@return number value
function row:GetAlteredFormCustomizeOffsetFallbackItem(index) end

---Gets the value of field 'AlteredFormCustomizeRotationFallback'.
---@return number value
function row:GetAlteredFormCustomizeRotationFallback() end

---Sets the value of field 'AlteredFormCustomizeRotationFallback'.
---@param value number
---@return dbc.row.v1215.ChrRaces self
function row:SetAlteredFormCustomizeRotationFallback(value) end

---Gets the value of field 'Field_9_1_0_38312_030'.
---@return number[] value
function row:GetField_9_1_0_38312_030() end

---Sets the value of field 'Field_9_1_0_38312_030'.
---@param value number[]
---@return dbc.row.v1215.ChrRaces self
function row:SetField_9_1_0_38312_030(value) end

---Gets element at 1-based index in 'Field_9_1_0_38312_030'.
---@param index integer
---@return number value
function row:GetField_9_1_0_38312_030Item(index) end

---Gets the value of field 'Field_9_1_0_38312_031'.
---@return number[] value
function row:GetField_9_1_0_38312_031() end

---Sets the value of field 'Field_9_1_0_38312_031'.
---@param value number[]
---@return dbc.row.v1215.ChrRaces self
function row:SetField_9_1_0_38312_031(value) end

---Gets element at 1-based index in 'Field_9_1_0_38312_031'.
---@param index integer
---@return number value
function row:GetField_9_1_0_38312_031Item(index) end

---Gets the value of field 'BaseLanguage'.
---@return integer value
function row:GetBaseLanguage() end

---Sets the value of field 'BaseLanguage'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetBaseLanguage(value) end

---Navigates foreign relationship to 'Languages' via 'BaseLanguage'.
---@return dbc.row.v1215.Languages|nil
function row:GetBaseLanguage() end

---Creates a related 'Languages' row and automatically links 'BaseLanguage'.
---@param data? table
---@return dbc.row.v1215.Languages
function row:CreateRelated(data) end

---Gets the value of field 'CreatureType'.
---@return integer value
function row:GetCreatureType() end

---Sets the value of field 'CreatureType'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetCreatureType(value) end

---Navigates foreign relationship to 'CreatureType' via 'CreatureType'.
---@return dbc.row.v1215.CreatureType|nil
function row:GetCreatureType() end

---Creates a related 'CreatureType' row and automatically links 'CreatureType'.
---@param data? table
---@return dbc.row.v1215.CreatureType
function row:CreateRelated(data) end

---Gets the value of field 'Alliance'.
---@return integer value
function row:GetAlliance() end

---Sets the value of field 'Alliance'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetAlliance(value) end

---Gets the value of field 'Race_related'.
---@return integer value
function row:GetRace_related() end

---Sets the value of field 'Race_related'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetRace_related(value) end

---Navigates foreign relationship to 'ChrRaces' via 'Race_related'.
---@return dbc.row.v1215.ChrRaces|nil
function row:GetRace_related() end

---Creates a related 'ChrRaces' row and automatically links 'Race_related'.
---@param data? table
---@return dbc.row.v1215.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'UnalteredVisualRaceID'.
---@return integer value
function row:GetUnalteredVisualRaceID() end

---Sets the value of field 'UnalteredVisualRaceID'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetUnalteredVisualRaceID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'UnalteredVisualRaceID'.
---@return dbc.row.v1215.ChrRaces|nil
function row:GetUnalteredVisualRace() end

---Creates a related 'ChrRaces' row and automatically links 'UnalteredVisualRaceID'.
---@param data? table
---@return dbc.row.v1215.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'DefaultClassID'.
---@return integer value
function row:GetDefaultClassID() end

---Sets the value of field 'DefaultClassID'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetDefaultClassID(value) end

---Navigates foreign relationship to 'ChrClasses' via 'DefaultClassID'.
---@return dbc.row.v1215.ChrClasses|nil
function row:GetDefaultClass() end

---Creates a related 'ChrClasses' row and automatically links 'DefaultClassID'.
---@param data? table
---@return dbc.row.v1215.ChrClasses
function row:CreateRelated(data) end

---Gets the value of field 'NeutralRaceID'.
---@return integer value
function row:GetNeutralRaceID() end

---Sets the value of field 'NeutralRaceID'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetNeutralRaceID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'NeutralRaceID'.
---@return dbc.row.v1215.ChrRaces|nil
function row:GetNeutralRace() end

---Creates a related 'ChrRaces' row and automatically links 'NeutralRaceID'.
---@param data? table
---@return dbc.row.v1215.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'MaleModelFallbackRaceID'.
---@return integer value
function row:GetMaleModelFallbackRaceID() end

---Sets the value of field 'MaleModelFallbackRaceID'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetMaleModelFallbackRaceID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'MaleModelFallbackRaceID'.
---@return dbc.row.v1215.ChrRaces|nil
function row:GetMaleModelFallbackRace() end

---Creates a related 'ChrRaces' row and automatically links 'MaleModelFallbackRaceID'.
---@param data? table
---@return dbc.row.v1215.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'MaleModelFallbackSex'.
---@return integer value
function row:GetMaleModelFallbackSex() end

---Sets the value of field 'MaleModelFallbackSex'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetMaleModelFallbackSex(value) end

---Gets the value of field 'FemaleModelFallbackRaceID'.
---@return integer value
function row:GetFemaleModelFallbackRaceID() end

---Sets the value of field 'FemaleModelFallbackRaceID'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetFemaleModelFallbackRaceID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'FemaleModelFallbackRaceID'.
---@return dbc.row.v1215.ChrRaces|nil
function row:GetFemaleModelFallbackRace() end

---Creates a related 'ChrRaces' row and automatically links 'FemaleModelFallbackRaceID'.
---@param data? table
---@return dbc.row.v1215.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'FemaleModelFallbackSex'.
---@return integer value
function row:GetFemaleModelFallbackSex() end

---Sets the value of field 'FemaleModelFallbackSex'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetFemaleModelFallbackSex(value) end

---Gets the value of field 'MaleTextureFallbackRaceID'.
---@return integer value
function row:GetMaleTextureFallbackRaceID() end

---Sets the value of field 'MaleTextureFallbackRaceID'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetMaleTextureFallbackRaceID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'MaleTextureFallbackRaceID'.
---@return dbc.row.v1215.ChrRaces|nil
function row:GetMaleTextureFallbackRace() end

---Creates a related 'ChrRaces' row and automatically links 'MaleTextureFallbackRaceID'.
---@param data? table
---@return dbc.row.v1215.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'MaleTextureFallbackSex'.
---@return integer value
function row:GetMaleTextureFallbackSex() end

---Sets the value of field 'MaleTextureFallbackSex'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetMaleTextureFallbackSex(value) end

---Gets the value of field 'FemaleTextureFallbackRaceID'.
---@return integer value
function row:GetFemaleTextureFallbackRaceID() end

---Sets the value of field 'FemaleTextureFallbackRaceID'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetFemaleTextureFallbackRaceID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'FemaleTextureFallbackRaceID'.
---@return dbc.row.v1215.ChrRaces|nil
function row:GetFemaleTextureFallbackRace() end

---Creates a related 'ChrRaces' row and automatically links 'FemaleTextureFallbackRaceID'.
---@param data? table
---@return dbc.row.v1215.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'FemaleTextureFallbackSex'.
---@return integer value
function row:GetFemaleTextureFallbackSex() end

---Sets the value of field 'FemaleTextureFallbackSex'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetFemaleTextureFallbackSex(value) end

---Gets the value of field 'HelmetAnimScalingRaceID'.
---@return integer value
function row:GetHelmetAnimScalingRaceID() end

---Sets the value of field 'HelmetAnimScalingRaceID'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetHelmetAnimScalingRaceID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'HelmetAnimScalingRaceID'.
---@return dbc.row.v1215.ChrRaces|nil
function row:GetHelmetAnimScalingRace() end

---Creates a related 'ChrRaces' row and automatically links 'HelmetAnimScalingRaceID'.
---@param data? table
---@return dbc.row.v1215.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'UnalteredVisualCustomizationRaceID'.
---@return integer value
function row:GetUnalteredVisualCustomizationRaceID() end

---Sets the value of field 'UnalteredVisualCustomizationRaceID'.
---@param value integer
---@return dbc.row.v1215.ChrRaces self
function row:SetUnalteredVisualCustomizationRaceID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'UnalteredVisualCustomizationRaceID'.
---@return dbc.row.v1215.ChrRaces|nil
function row:GetUnalteredVisualCustomizationRace() end

---Creates a related 'ChrRaces' row and automatically links 'UnalteredVisualCustomizationRaceID'.
---@param data? table
---@return dbc.row.v1215.ChrRaces
function row:CreateRelated(data) end

---Table container for ChrRaces (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrRaces : DbcTable
---@field [integer] dbc.row.v1215.ChrRaces
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrRaces
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrRaces|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrRaces
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrRaces>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrRaces[]
function tbl:GetByRelation(foreign_id) end

return {}
