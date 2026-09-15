---@meta
-- Generated LuaLS annotations for CreatureDisplayInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CreatureDisplayInfo in build 12.1.5.69594.
---@class dbc.row.v1215.CreatureDisplayInfo : RowProxy
---@field ID integer
---@field ModelID integer
---@field SoundID integer
---@field SizeClass integer
---@field CreatureModelScale number
---@field CreatureModelAlpha integer
---@field BloodID integer
---@field ExtendedDisplayInfoID integer
---@field NPCSoundID integer
---@field ParticleColorID integer
---@field PortraitCreatureDisplayInfoID integer
---@field PortraitTextureFileDataID integer
---@field ObjectEffectPackageID integer
---@field AnimReplacementSetID integer
---@field Flags integer
---@field StateSpellVisualKitID integer
---@field PlayerOverrideScale number
---@field PetInstanceScale number
---@field UnarmedWeaponType integer
---@field MountPoofSpellVisualKitID integer
---@field DissolveEffectID integer
---@field Gender integer
---@field DissolveOutEffectID integer
---@field CreatureModelMinLod integer
---@field ConditionalCreatureModelID integer
---@field MountMaxBankingAngle number
---@field Field_11_0_0_54210_026 integer
---@field TextureVariationFileDataID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfo self
function row:SetID(value) end

---Gets the value of field 'ModelID'.
---@return integer value
function row:GetModelID() end

---Sets the value of field 'ModelID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfo self
function row:SetModelID(value) end

---Navigates foreign relationship to 'CreatureModelData' via 'ModelID'.
---@return dbc.row.v1215.CreatureModelData|nil
function row:GetModel() end

---Creates a related 'CreatureModelData' row and automatically links 'ModelID'.
---@param data? table
---@return dbc.row.v1215.CreatureModelData
function row:CreateRelated(data) end

---Gets the value of field 'SoundID'.
---@return integer value
function row:GetSoundID() end

---Sets the value of field 'SoundID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfo self
function row:SetSoundID(value) end

---Navigates foreign relationship to 'CreatureSoundData' via 'SoundID'.
---@return dbc.row.v1215.CreatureSoundData|nil
function row:GetSound() end

---Creates a related 'CreatureSoundData' row and automatically links 'SoundID'.
---@param data? table
---@return dbc.row.v1215.CreatureSoundData
function row:CreateRelated(data) end

---Gets the value of field 'SizeClass'.
---@return integer value
function row:GetSizeClass() end

---Sets the value of field 'SizeClass'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfo self
function row:SetSizeClass(value) end

---Gets the value of field 'CreatureModelScale'.
---@return number value
function row:GetCreatureModelScale() end

---Sets the value of field 'CreatureModelScale'.
---@param value number
---@return dbc.row.v1215.CreatureDisplayInfo self
function row:SetCreatureModelScale(value) end

---Gets the value of field 'CreatureModelAlpha'.
---@return integer value
function row:GetCreatureModelAlpha() end

---Sets the value of field 'CreatureModelAlpha'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfo self
function row:SetCreatureModelAlpha(value) end

---Gets the value of field 'BloodID'.
---@return integer value
function row:GetBloodID() end

---Sets the value of field 'BloodID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfo self
function row:SetBloodID(value) end

---Navigates foreign relationship to 'UnitBlood' via 'BloodID'.
---@return dbc.row.v1215.UnitBlood|nil
function row:GetBlood() end

---Creates a related 'UnitBlood' row and automatically links 'BloodID'.
---@param data? table
---@return dbc.row.v1215.UnitBlood
function row:CreateRelated(data) end

---Gets the value of field 'ExtendedDisplayInfoID'.
---@return integer value
function row:GetExtendedDisplayInfoID() end

---Sets the value of field 'ExtendedDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfo self
function row:SetExtendedDisplayInfoID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfoExtra' via 'ExtendedDisplayInfoID'.
---@return dbc.row.v1215.CreatureDisplayInfoExtra|nil
function row:GetExtendedDisplayInfo() end

---Creates a related 'CreatureDisplayInfoExtra' row and automatically links 'ExtendedDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfoExtra
function row:CreateRelated(data) end

---Gets the value of field 'NPCSoundID'.
---@return integer value
function row:GetNPCSoundID() end

---Sets the value of field 'NPCSoundID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfo self
function row:SetNPCSoundID(value) end

---Navigates foreign relationship to 'NPCSounds' via 'NPCSoundID'.
---@return dbc.row.v1215.NPCSounds|nil
function row:GetNPCSound() end

---Creates a related 'NPCSounds' row and automatically links 'NPCSoundID'.
---@param data? table
---@return dbc.row.v1215.NPCSounds
function row:CreateRelated(data) end

---Gets the value of field 'ParticleColorID'.
---@return integer value
function row:GetParticleColorID() end

---Sets the value of field 'ParticleColorID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfo self
function row:SetParticleColorID(value) end

---Navigates foreign relationship to 'ParticleColor' via 'ParticleColorID'.
---@return dbc.row.v1215.ParticleColor|nil
function row:GetParticleColor() end

---Creates a related 'ParticleColor' row and automatically links 'ParticleColorID'.
---@param data? table
---@return dbc.row.v1215.ParticleColor
function row:CreateRelated(data) end

---Gets the value of field 'PortraitCreatureDisplayInfoID'.
---@return integer value
function row:GetPortraitCreatureDisplayInfoID() end

---Sets the value of field 'PortraitCreatureDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfo self
function row:SetPortraitCreatureDisplayInfoID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'PortraitCreatureDisplayInfoID'.
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function row:GetPortraitCreatureDisplayInfo() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'PortraitCreatureDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'PortraitTextureFileDataID'.
---@return integer value
function row:GetPortraitTextureFileDataID() end

---Sets the value of field 'PortraitTextureFileDataID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfo self
function row:SetPortraitTextureFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'PortraitTextureFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetPortraitTextureFileData() end

---Creates a related 'FileData' row and automatically links 'PortraitTextureFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'ObjectEffectPackageID'.
---@return integer value
function row:GetObjectEffectPackageID() end

---Sets the value of field 'ObjectEffectPackageID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfo self
function row:SetObjectEffectPackageID(value) end

---Navigates foreign relationship to 'ObjectEffectPackage' via 'ObjectEffectPackageID'.
---@return dbc.row.v1215.ObjectEffectPackage|nil
function row:GetObjectEffectPackage() end

---Creates a related 'ObjectEffectPackage' row and automatically links 'ObjectEffectPackageID'.
---@param data? table
---@return dbc.row.v1215.ObjectEffectPackage
function row:CreateRelated(data) end

---Gets the value of field 'AnimReplacementSetID'.
---@return integer value
function row:GetAnimReplacementSetID() end

---Sets the value of field 'AnimReplacementSetID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfo self
function row:SetAnimReplacementSetID(value) end

---Navigates foreign relationship to 'AnimReplacementSet' via 'AnimReplacementSetID'.
---@return dbc.row.v1215.AnimReplacementSet|nil
function row:GetAnimReplacementSet() end

---Creates a related 'AnimReplacementSet' row and automatically links 'AnimReplacementSetID'.
---@param data? table
---@return dbc.row.v1215.AnimReplacementSet
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfo self
function row:SetFlags(value) end

---Gets the value of field 'StateSpellVisualKitID'.
---@return integer value
function row:GetStateSpellVisualKitID() end

---Sets the value of field 'StateSpellVisualKitID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfo self
function row:SetStateSpellVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'StateSpellVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetStateSpellVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'StateSpellVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'PlayerOverrideScale'.
---@return number value
function row:GetPlayerOverrideScale() end

---Sets the value of field 'PlayerOverrideScale'.
---@param value number
---@return dbc.row.v1215.CreatureDisplayInfo self
function row:SetPlayerOverrideScale(value) end

---Gets the value of field 'PetInstanceScale'.
---@return number value
function row:GetPetInstanceScale() end

---Sets the value of field 'PetInstanceScale'.
---@param value number
---@return dbc.row.v1215.CreatureDisplayInfo self
function row:SetPetInstanceScale(value) end

---Gets the value of field 'UnarmedWeaponType'.
---@return integer value
function row:GetUnarmedWeaponType() end

---Sets the value of field 'UnarmedWeaponType'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfo self
function row:SetUnarmedWeaponType(value) end

---Gets the value of field 'MountPoofSpellVisualKitID'.
---@return integer value
function row:GetMountPoofSpellVisualKitID() end

---Sets the value of field 'MountPoofSpellVisualKitID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfo self
function row:SetMountPoofSpellVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'MountPoofSpellVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetMountPoofSpellVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'MountPoofSpellVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'DissolveEffectID'.
---@return integer value
function row:GetDissolveEffectID() end

---Sets the value of field 'DissolveEffectID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfo self
function row:SetDissolveEffectID(value) end

---Navigates foreign relationship to 'DissolveEffect' via 'DissolveEffectID'.
---@return dbc.row.v1215.DissolveEffect|nil
function row:GetDissolveEffect() end

---Creates a related 'DissolveEffect' row and automatically links 'DissolveEffectID'.
---@param data? table
---@return dbc.row.v1215.DissolveEffect
function row:CreateRelated(data) end

---Gets the value of field 'Gender'.
---@return integer value
function row:GetGender() end

---Sets the value of field 'Gender'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfo self
function row:SetGender(value) end

---Gets the value of field 'DissolveOutEffectID'.
---@return integer value
function row:GetDissolveOutEffectID() end

---Sets the value of field 'DissolveOutEffectID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfo self
function row:SetDissolveOutEffectID(value) end

---Navigates foreign relationship to 'DissolveEffect' via 'DissolveOutEffectID'.
---@return dbc.row.v1215.DissolveEffect|nil
function row:GetDissolveOutEffect() end

---Creates a related 'DissolveEffect' row and automatically links 'DissolveOutEffectID'.
---@param data? table
---@return dbc.row.v1215.DissolveEffect
function row:CreateRelated(data) end

---Gets the value of field 'CreatureModelMinLod'.
---@return integer value
function row:GetCreatureModelMinLod() end

---Sets the value of field 'CreatureModelMinLod'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfo self
function row:SetCreatureModelMinLod(value) end

---Gets the value of field 'ConditionalCreatureModelID'.
---@return integer value
function row:GetConditionalCreatureModelID() end

---Sets the value of field 'ConditionalCreatureModelID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfo self
function row:SetConditionalCreatureModelID(value) end

---Navigates foreign relationship to 'ConditionalCreatureModelData' via 'ConditionalCreatureModelID'.
---@return dbc.row.v1215.ConditionalCreatureModelData|nil
function row:GetConditionalCreatureModel() end

---Creates a related 'ConditionalCreatureModelData' row and automatically links 'ConditionalCreatureModelID'.
---@param data? table
---@return dbc.row.v1215.ConditionalCreatureModelData
function row:CreateRelated(data) end

---Gets the value of field 'MountMaxBankingAngle'.
---@return number value
function row:GetMountMaxBankingAngle() end

---Sets the value of field 'MountMaxBankingAngle'.
---@param value number
---@return dbc.row.v1215.CreatureDisplayInfo self
function row:SetMountMaxBankingAngle(value) end

---Gets the value of field 'Field_11_0_0_54210_026'.
---@return integer value
function row:GetField_11_0_0_54210_026() end

---Sets the value of field 'Field_11_0_0_54210_026'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfo self
function row:SetField_11_0_0_54210_026(value) end

---Gets the value of field 'TextureVariationFileDataID'.
---@return integer[] value
function row:GetTextureVariationFileDataID() end

---Sets the value of field 'TextureVariationFileDataID'.
---@param value integer[]
---@return dbc.row.v1215.CreatureDisplayInfo self
function row:SetTextureVariationFileDataID(value) end

---Gets element at 1-based index in 'TextureVariationFileDataID'.
---@param index integer
---@return integer value
function row:GetTextureVariationFileDataIDItem(index) end

---Navigates foreign relationship to 'FileData' via 'TextureVariationFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetTextureVariationFileData() end

---Creates a related 'FileData' row and automatically links 'TextureVariationFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Table container for CreatureDisplayInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.CreatureDisplayInfo : DbcTable
---@field [integer] dbc.row.v1215.CreatureDisplayInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CreatureDisplayInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CreatureDisplayInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CreatureDisplayInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CreatureDisplayInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
