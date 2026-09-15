---@meta
-- Generated LuaLS annotations for ChrClasses (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrClasses in build 12.1.5.69594.
---@class dbc.row.v1215.ChrClasses : RowProxy
---@field Name_lang string
---@field Filename string
---@field Name_male_lang string
---@field Name_female_lang string
---@field PetNameToken string
---@field Description_lang string
---@field RoleInfoString_lang string
---@field DisabledString_lang string
---@field Hyphenated_name_male_lang string same as Name_x_lang, but with dashes and newlines for very long words
---@field Hyphenated_name_female_lang string
---@field CreateScreenFileDataID integer
---@field SelectScreenFileDataID integer
---@field IconFileDataID integer
---@field LowResScreenFileDataID integer
---@field Flags integer &0x10: Mail, &0x20: Plate, &0x800: !allowBoost, &0x2000: earlyFactionChoice
---@field StartingLevel integer
---@field SpellTextureBlobFileDataID integer
---@field ArmorTypeMask integer 1 << ItemSubClass::SubClassID where ItemSubClass::ClassID == 4
---@field Field_9_0_1_34490_018 integer
---@field MaleCharacterCreationVisualFallback integer
---@field MaleCharacterCreationIdleVisualFallback integer
---@field FemaleCharacterCreationVisualFallback integer fall back to MaleCharacterCreationVisualFallback if not set
---@field FemaleCharacterCreationIdleVisualFallback integer fall back to MaleCharacterCreationIdleVisualFallback if not set
---@field CharacterCreationIdleGroundVisualFallback integer
---@field CharacterCreationGroundVisualFallback integer
---@field AlteredFormCharacterCreationIdleVisualFallback integer
---@field CharacterCreationAnimLoopWaitTimeMsFallback integer
---@field CinematicSequenceID integer
---@field DefaultSpec integer
---@field ID integer
---@field HasStrengthAttackBonus integer
---@field PrimaryStatPriority integer
---@field DisplayPower integer Not really an FK since that table does not exist in all versions, but that enum is still common across all versions.
---@field RangedAttackPowerPerAgility integer
---@field AttackPowerPerAgility integer
---@field AttackPowerPerStrength integer
---@field SpellClassSet integer
---@field ClassColorR integer
---@field ClassColorG integer
---@field ClassColorB integer
---@field RolesMask integer (&1: group leader), &2: tank, &4: heal, &8: dps
---@field DamageBonusStat integer
---@field HasRelicSlot integer

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.ChrClasses self
function row:SetName_lang(value) end

---Gets the value of field 'Filename'.
---@return string value
function row:GetFilename() end

---Sets the value of field 'Filename'.
---@param value string
---@return dbc.row.v1215.ChrClasses self
function row:SetFilename(value) end

---Gets the value of field 'Name_male_lang'.
---@return string value
function row:GetName_male_lang() end

---Sets the value of field 'Name_male_lang'.
---@param value string
---@return dbc.row.v1215.ChrClasses self
function row:SetName_male_lang(value) end

---Gets the value of field 'Name_female_lang'.
---@return string value
function row:GetName_female_lang() end

---Sets the value of field 'Name_female_lang'.
---@param value string
---@return dbc.row.v1215.ChrClasses self
function row:SetName_female_lang(value) end

---Gets the value of field 'PetNameToken'.
---@return string value
function row:GetPetNameToken() end

---Sets the value of field 'PetNameToken'.
---@param value string
---@return dbc.row.v1215.ChrClasses self
function row:SetPetNameToken(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.ChrClasses self
function row:SetDescription_lang(value) end

---Gets the value of field 'RoleInfoString_lang'.
---@return string value
function row:GetRoleInfoString_lang() end

---Sets the value of field 'RoleInfoString_lang'.
---@param value string
---@return dbc.row.v1215.ChrClasses self
function row:SetRoleInfoString_lang(value) end

---Gets the value of field 'DisabledString_lang'.
---@return string value
function row:GetDisabledString_lang() end

---Sets the value of field 'DisabledString_lang'.
---@param value string
---@return dbc.row.v1215.ChrClasses self
function row:SetDisabledString_lang(value) end

---Gets the value of field 'Hyphenated_name_male_lang'.
---@return string value
function row:GetHyphenated_name_male_lang() end

---Sets the value of field 'Hyphenated_name_male_lang'.
---@param value string
---@return dbc.row.v1215.ChrClasses self
function row:SetHyphenated_name_male_lang(value) end

---Gets the value of field 'Hyphenated_name_female_lang'.
---@return string value
function row:GetHyphenated_name_female_lang() end

---Sets the value of field 'Hyphenated_name_female_lang'.
---@param value string
---@return dbc.row.v1215.ChrClasses self
function row:SetHyphenated_name_female_lang(value) end

---Gets the value of field 'CreateScreenFileDataID'.
---@return integer value
function row:GetCreateScreenFileDataID() end

---Sets the value of field 'CreateScreenFileDataID'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
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
---@return dbc.row.v1215.ChrClasses self
function row:SetSelectScreenFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'SelectScreenFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetSelectScreenFileData() end

---Creates a related 'FileData' row and automatically links 'SelectScreenFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'IconFileDataID'.
---@return integer value
function row:GetIconFileDataID() end

---Sets the value of field 'IconFileDataID'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetIconFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'IconFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetIconFileData() end

---Creates a related 'FileData' row and automatically links 'IconFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'LowResScreenFileDataID'.
---@return integer value
function row:GetLowResScreenFileDataID() end

---Sets the value of field 'LowResScreenFileDataID'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetLowResScreenFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'LowResScreenFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetLowResScreenFileData() end

---Creates a related 'FileData' row and automatically links 'LowResScreenFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetFlags(value) end

---Gets the value of field 'StartingLevel'.
---@return integer value
function row:GetStartingLevel() end

---Sets the value of field 'StartingLevel'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetStartingLevel(value) end

---Gets the value of field 'SpellTextureBlobFileDataID'.
---@return integer value
function row:GetSpellTextureBlobFileDataID() end

---Sets the value of field 'SpellTextureBlobFileDataID'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetSpellTextureBlobFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'SpellTextureBlobFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetSpellTextureBlobFileData() end

---Creates a related 'FileData' row and automatically links 'SpellTextureBlobFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'ArmorTypeMask'.
---@return integer value
function row:GetArmorTypeMask() end

---Sets the value of field 'ArmorTypeMask'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetArmorTypeMask(value) end

---Gets the value of field 'Field_9_0_1_34490_018'.
---@return integer value
function row:GetField_9_0_1_34490_018() end

---Sets the value of field 'Field_9_0_1_34490_018'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetField_9_0_1_34490_018(value) end

---Gets the value of field 'MaleCharacterCreationVisualFallback'.
---@return integer value
function row:GetMaleCharacterCreationVisualFallback() end

---Sets the value of field 'MaleCharacterCreationVisualFallback'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetMaleCharacterCreationVisualFallback(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'MaleCharacterCreationVisualFallback'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetMaleCharacterCreationVisualFallback() end

---Creates a related 'SpellVisualKit' row and automatically links 'MaleCharacterCreationVisualFallback'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'MaleCharacterCreationIdleVisualFallback'.
---@return integer value
function row:GetMaleCharacterCreationIdleVisualFallback() end

---Sets the value of field 'MaleCharacterCreationIdleVisualFallback'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetMaleCharacterCreationIdleVisualFallback(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'MaleCharacterCreationIdleVisualFallback'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetMaleCharacterCreationIdleVisualFallback() end

---Creates a related 'SpellVisualKit' row and automatically links 'MaleCharacterCreationIdleVisualFallback'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'FemaleCharacterCreationVisualFallback'.
---@return integer value
function row:GetFemaleCharacterCreationVisualFallback() end

---Sets the value of field 'FemaleCharacterCreationVisualFallback'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetFemaleCharacterCreationVisualFallback(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'FemaleCharacterCreationVisualFallback'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetFemaleCharacterCreationVisualFallback() end

---Creates a related 'SpellVisualKit' row and automatically links 'FemaleCharacterCreationVisualFallback'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'FemaleCharacterCreationIdleVisualFallback'.
---@return integer value
function row:GetFemaleCharacterCreationIdleVisualFallback() end

---Sets the value of field 'FemaleCharacterCreationIdleVisualFallback'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetFemaleCharacterCreationIdleVisualFallback(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'FemaleCharacterCreationIdleVisualFallback'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetFemaleCharacterCreationIdleVisualFallback() end

---Creates a related 'SpellVisualKit' row and automatically links 'FemaleCharacterCreationIdleVisualFallback'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'CharacterCreationIdleGroundVisualFallback'.
---@return integer value
function row:GetCharacterCreationIdleGroundVisualFallback() end

---Sets the value of field 'CharacterCreationIdleGroundVisualFallback'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetCharacterCreationIdleGroundVisualFallback(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'CharacterCreationIdleGroundVisualFallback'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetCharacterCreationIdleGroundVisualFallback() end

---Creates a related 'SpellVisualKit' row and automatically links 'CharacterCreationIdleGroundVisualFallback'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'CharacterCreationGroundVisualFallback'.
---@return integer value
function row:GetCharacterCreationGroundVisualFallback() end

---Sets the value of field 'CharacterCreationGroundVisualFallback'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetCharacterCreationGroundVisualFallback(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'CharacterCreationGroundVisualFallback'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetCharacterCreationGroundVisualFallback() end

---Creates a related 'SpellVisualKit' row and automatically links 'CharacterCreationGroundVisualFallback'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'AlteredFormCharacterCreationIdleVisualFallback'.
---@return integer value
function row:GetAlteredFormCharacterCreationIdleVisualFallback() end

---Sets the value of field 'AlteredFormCharacterCreationIdleVisualFallback'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetAlteredFormCharacterCreationIdleVisualFallback(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'AlteredFormCharacterCreationIdleVisualFallback'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetAlteredFormCharacterCreationIdleVisualFallback() end

---Creates a related 'SpellVisualKit' row and automatically links 'AlteredFormCharacterCreationIdleVisualFallback'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'CharacterCreationAnimLoopWaitTimeMsFallback'.
---@return integer value
function row:GetCharacterCreationAnimLoopWaitTimeMsFallback() end

---Sets the value of field 'CharacterCreationAnimLoopWaitTimeMsFallback'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetCharacterCreationAnimLoopWaitTimeMsFallback(value) end

---Gets the value of field 'CinematicSequenceID'.
---@return integer value
function row:GetCinematicSequenceID() end

---Sets the value of field 'CinematicSequenceID'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetCinematicSequenceID(value) end

---Navigates foreign relationship to 'CinematicSequences' via 'CinematicSequenceID'.
---@return dbc.row.v1215.CinematicSequences|nil
function row:GetCinematicSequence() end

---Creates a related 'CinematicSequences' row and automatically links 'CinematicSequenceID'.
---@param data? table
---@return dbc.row.v1215.CinematicSequences
function row:CreateRelated(data) end

---Gets the value of field 'DefaultSpec'.
---@return integer value
function row:GetDefaultSpec() end

---Sets the value of field 'DefaultSpec'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetDefaultSpec(value) end

---Navigates foreign relationship to 'ChrSpecialization' via 'DefaultSpec'.
---@return dbc.row.v1215.ChrSpecialization|nil
function row:GetDefaultSpec() end

---Creates a related 'ChrSpecialization' row and automatically links 'DefaultSpec'.
---@param data? table
---@return dbc.row.v1215.ChrSpecialization
function row:CreateRelated(data) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetID(value) end

---Gets the value of field 'HasStrengthAttackBonus'.
---@return integer value
function row:GetHasStrengthAttackBonus() end

---Sets the value of field 'HasStrengthAttackBonus'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetHasStrengthAttackBonus(value) end

---Gets the value of field 'PrimaryStatPriority'.
---@return integer value
function row:GetPrimaryStatPriority() end

---Sets the value of field 'PrimaryStatPriority'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetPrimaryStatPriority(value) end

---Gets the value of field 'DisplayPower'.
---@return integer value
function row:GetDisplayPower() end

---Sets the value of field 'DisplayPower'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetDisplayPower(value) end

---Navigates foreign relationship to 'PowerType' via 'DisplayPower'.
---@return dbc.row.v1215.PowerType|nil
function row:GetDisplayPower() end

---Creates a related 'PowerType' row and automatically links 'DisplayPower'.
---@param data? table
---@return dbc.row.v1215.PowerType
function row:CreateRelated(data) end

---Gets the value of field 'RangedAttackPowerPerAgility'.
---@return integer value
function row:GetRangedAttackPowerPerAgility() end

---Sets the value of field 'RangedAttackPowerPerAgility'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetRangedAttackPowerPerAgility(value) end

---Gets the value of field 'AttackPowerPerAgility'.
---@return integer value
function row:GetAttackPowerPerAgility() end

---Sets the value of field 'AttackPowerPerAgility'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetAttackPowerPerAgility(value) end

---Gets the value of field 'AttackPowerPerStrength'.
---@return integer value
function row:GetAttackPowerPerStrength() end

---Sets the value of field 'AttackPowerPerStrength'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetAttackPowerPerStrength(value) end

---Gets the value of field 'SpellClassSet'.
---@return integer value
function row:GetSpellClassSet() end

---Sets the value of field 'SpellClassSet'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetSpellClassSet(value) end

---Gets the value of field 'ClassColorR'.
---@return integer value
function row:GetClassColorR() end

---Sets the value of field 'ClassColorR'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetClassColorR(value) end

---Gets the value of field 'ClassColorG'.
---@return integer value
function row:GetClassColorG() end

---Sets the value of field 'ClassColorG'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetClassColorG(value) end

---Gets the value of field 'ClassColorB'.
---@return integer value
function row:GetClassColorB() end

---Sets the value of field 'ClassColorB'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetClassColorB(value) end

---Gets the value of field 'RolesMask'.
---@return integer value
function row:GetRolesMask() end

---Sets the value of field 'RolesMask'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetRolesMask(value) end

---Gets the value of field 'DamageBonusStat'.
---@return integer value
function row:GetDamageBonusStat() end

---Sets the value of field 'DamageBonusStat'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetDamageBonusStat(value) end

---Gets the value of field 'HasRelicSlot'.
---@return integer value
function row:GetHasRelicSlot() end

---Sets the value of field 'HasRelicSlot'.
---@param value integer
---@return dbc.row.v1215.ChrClasses self
function row:SetHasRelicSlot(value) end

---Table container for ChrClasses (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrClasses : DbcTable
---@field [integer] dbc.row.v1215.ChrClasses
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrClasses
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrClasses|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrClasses
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrClasses>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrClasses[]
function tbl:GetByRelation(foreign_id) end

return {}
