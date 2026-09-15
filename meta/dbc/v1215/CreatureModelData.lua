---@meta
-- Generated LuaLS annotations for CreatureModelData (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CreatureModelData in build 12.1.5.69594.
---@class dbc.row.v1215.CreatureModelData : RowProxy
---@field ID integer
---@field GeoBox number[]
---@field Flags integer
---@field FileDataID integer
---@field WalkSpeed number
---@field RunSpeed number
---@field BloodID integer
---@field FootprintTextureID integer
---@field FootprintTextureLength number
---@field FootprintTextureWidth number
---@field FootprintParticleScale number
---@field FoleyMaterialID integer
---@field FootstepCameraEffectID integer
---@field DeathThudCameraEffectID integer
---@field SoundID integer
---@field SizeClass integer
---@field CollisionWidth number
---@field CollisionHeight number
---@field WorldEffectScale number
---@field CreatureGeosetDataID integer unshipped, used as indicator to scan CreatureDisplayInfoGeosetData for this model
---@field HoverHeight number
---@field AttachedEffectScale number
---@field ModelScale number
---@field MissileCollisionRadius number
---@field MissileCollisionPush number
---@field MissileCollisionRaise number
---@field MountHeight number
---@field OverrideLootEffectScale number
---@field OverrideNameScale number
---@field OverrideSelectionRadius number
---@field TamedPetBaseScale number
---@field MountScaleOtherIndex integer self.CDI.scale * self.MountScaleSelf * otherCMD.MountScaleOther[MountScaleOtherIndex]
---@field MountScaleSelf number
---@field Field_11_0_0_54210_032 integer
---@field MountScaleOther number[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CreatureModelData self
function row:SetID(value) end

---Gets the value of field 'GeoBox'.
---@return number[] value
function row:GetGeoBox() end

---Sets the value of field 'GeoBox'.
---@param value number[]
---@return dbc.row.v1215.CreatureModelData self
function row:SetGeoBox(value) end

---Gets element at 1-based index in 'GeoBox'.
---@param index integer
---@return number value
function row:GetGeoBoxItem(index) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.CreatureModelData self
function row:SetFlags(value) end

---Gets the value of field 'FileDataID'.
---@return integer value
function row:GetFileDataID() end

---Sets the value of field 'FileDataID'.
---@param value integer
---@return dbc.row.v1215.CreatureModelData self
function row:SetFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'FileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFileData() end

---Creates a related 'FileData' row and automatically links 'FileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'WalkSpeed'.
---@return number value
function row:GetWalkSpeed() end

---Sets the value of field 'WalkSpeed'.
---@param value number
---@return dbc.row.v1215.CreatureModelData self
function row:SetWalkSpeed(value) end

---Gets the value of field 'RunSpeed'.
---@return number value
function row:GetRunSpeed() end

---Sets the value of field 'RunSpeed'.
---@param value number
---@return dbc.row.v1215.CreatureModelData self
function row:SetRunSpeed(value) end

---Gets the value of field 'BloodID'.
---@return integer value
function row:GetBloodID() end

---Sets the value of field 'BloodID'.
---@param value integer
---@return dbc.row.v1215.CreatureModelData self
function row:SetBloodID(value) end

---Navigates foreign relationship to 'UnitBlood' via 'BloodID'.
---@return dbc.row.v1215.UnitBlood|nil
function row:GetBlood() end

---Creates a related 'UnitBlood' row and automatically links 'BloodID'.
---@param data? table
---@return dbc.row.v1215.UnitBlood
function row:CreateRelated(data) end

---Gets the value of field 'FootprintTextureID'.
---@return integer value
function row:GetFootprintTextureID() end

---Sets the value of field 'FootprintTextureID'.
---@param value integer
---@return dbc.row.v1215.CreatureModelData self
function row:SetFootprintTextureID(value) end

---Navigates foreign relationship to 'FootprintTextures' via 'FootprintTextureID'.
---@return dbc.row.v1215.FootprintTextures|nil
function row:GetFootprintTexture() end

---Creates a related 'FootprintTextures' row and automatically links 'FootprintTextureID'.
---@param data? table
---@return dbc.row.v1215.FootprintTextures
function row:CreateRelated(data) end

---Gets the value of field 'FootprintTextureLength'.
---@return number value
function row:GetFootprintTextureLength() end

---Sets the value of field 'FootprintTextureLength'.
---@param value number
---@return dbc.row.v1215.CreatureModelData self
function row:SetFootprintTextureLength(value) end

---Gets the value of field 'FootprintTextureWidth'.
---@return number value
function row:GetFootprintTextureWidth() end

---Sets the value of field 'FootprintTextureWidth'.
---@param value number
---@return dbc.row.v1215.CreatureModelData self
function row:SetFootprintTextureWidth(value) end

---Gets the value of field 'FootprintParticleScale'.
---@return number value
function row:GetFootprintParticleScale() end

---Sets the value of field 'FootprintParticleScale'.
---@param value number
---@return dbc.row.v1215.CreatureModelData self
function row:SetFootprintParticleScale(value) end

---Gets the value of field 'FoleyMaterialID'.
---@return integer value
function row:GetFoleyMaterialID() end

---Sets the value of field 'FoleyMaterialID'.
---@param value integer
---@return dbc.row.v1215.CreatureModelData self
function row:SetFoleyMaterialID(value) end

---Navigates foreign relationship to 'Material' via 'FoleyMaterialID'.
---@return dbc.row.v1215.Material|nil
function row:GetFoleyMaterial() end

---Creates a related 'Material' row and automatically links 'FoleyMaterialID'.
---@param data? table
---@return dbc.row.v1215.Material
function row:CreateRelated(data) end

---Gets the value of field 'FootstepCameraEffectID'.
---@return integer value
function row:GetFootstepCameraEffectID() end

---Sets the value of field 'FootstepCameraEffectID'.
---@param value integer
---@return dbc.row.v1215.CreatureModelData self
function row:SetFootstepCameraEffectID(value) end

---Navigates foreign relationship to 'CameraEffect' via 'FootstepCameraEffectID'.
---@return dbc.row.v1215.CameraEffect|nil
function row:GetFootstepCameraEffect() end

---Creates a related 'CameraEffect' row and automatically links 'FootstepCameraEffectID'.
---@param data? table
---@return dbc.row.v1215.CameraEffect
function row:CreateRelated(data) end

---Gets the value of field 'DeathThudCameraEffectID'.
---@return integer value
function row:GetDeathThudCameraEffectID() end

---Sets the value of field 'DeathThudCameraEffectID'.
---@param value integer
---@return dbc.row.v1215.CreatureModelData self
function row:SetDeathThudCameraEffectID(value) end

---Navigates foreign relationship to 'CameraEffect' via 'DeathThudCameraEffectID'.
---@return dbc.row.v1215.CameraEffect|nil
function row:GetDeathThudCameraEffect() end

---Creates a related 'CameraEffect' row and automatically links 'DeathThudCameraEffectID'.
---@param data? table
---@return dbc.row.v1215.CameraEffect
function row:CreateRelated(data) end

---Gets the value of field 'SoundID'.
---@return integer value
function row:GetSoundID() end

---Sets the value of field 'SoundID'.
---@param value integer
---@return dbc.row.v1215.CreatureModelData self
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
---@return dbc.row.v1215.CreatureModelData self
function row:SetSizeClass(value) end

---Gets the value of field 'CollisionWidth'.
---@return number value
function row:GetCollisionWidth() end

---Sets the value of field 'CollisionWidth'.
---@param value number
---@return dbc.row.v1215.CreatureModelData self
function row:SetCollisionWidth(value) end

---Gets the value of field 'CollisionHeight'.
---@return number value
function row:GetCollisionHeight() end

---Sets the value of field 'CollisionHeight'.
---@param value number
---@return dbc.row.v1215.CreatureModelData self
function row:SetCollisionHeight(value) end

---Gets the value of field 'WorldEffectScale'.
---@return number value
function row:GetWorldEffectScale() end

---Sets the value of field 'WorldEffectScale'.
---@param value number
---@return dbc.row.v1215.CreatureModelData self
function row:SetWorldEffectScale(value) end

---Gets the value of field 'CreatureGeosetDataID'.
---@return integer value
function row:GetCreatureGeosetDataID() end

---Sets the value of field 'CreatureGeosetDataID'.
---@param value integer
---@return dbc.row.v1215.CreatureModelData self
function row:SetCreatureGeosetDataID(value) end

---Navigates foreign relationship to 'CreatureGeosetData' via 'CreatureGeosetDataID'.
---@return dbc.row.v1215.CreatureGeosetData|nil
function row:GetCreatureGeosetData() end

---Creates a related 'CreatureGeosetData' row and automatically links 'CreatureGeosetDataID'.
---@param data? table
---@return dbc.row.v1215.CreatureGeosetData
function row:CreateRelated(data) end

---Gets the value of field 'HoverHeight'.
---@return number value
function row:GetHoverHeight() end

---Sets the value of field 'HoverHeight'.
---@param value number
---@return dbc.row.v1215.CreatureModelData self
function row:SetHoverHeight(value) end

---Gets the value of field 'AttachedEffectScale'.
---@return number value
function row:GetAttachedEffectScale() end

---Sets the value of field 'AttachedEffectScale'.
---@param value number
---@return dbc.row.v1215.CreatureModelData self
function row:SetAttachedEffectScale(value) end

---Gets the value of field 'ModelScale'.
---@return number value
function row:GetModelScale() end

---Sets the value of field 'ModelScale'.
---@param value number
---@return dbc.row.v1215.CreatureModelData self
function row:SetModelScale(value) end

---Gets the value of field 'MissileCollisionRadius'.
---@return number value
function row:GetMissileCollisionRadius() end

---Sets the value of field 'MissileCollisionRadius'.
---@param value number
---@return dbc.row.v1215.CreatureModelData self
function row:SetMissileCollisionRadius(value) end

---Gets the value of field 'MissileCollisionPush'.
---@return number value
function row:GetMissileCollisionPush() end

---Sets the value of field 'MissileCollisionPush'.
---@param value number
---@return dbc.row.v1215.CreatureModelData self
function row:SetMissileCollisionPush(value) end

---Gets the value of field 'MissileCollisionRaise'.
---@return number value
function row:GetMissileCollisionRaise() end

---Sets the value of field 'MissileCollisionRaise'.
---@param value number
---@return dbc.row.v1215.CreatureModelData self
function row:SetMissileCollisionRaise(value) end

---Gets the value of field 'MountHeight'.
---@return number value
function row:GetMountHeight() end

---Sets the value of field 'MountHeight'.
---@param value number
---@return dbc.row.v1215.CreatureModelData self
function row:SetMountHeight(value) end

---Gets the value of field 'OverrideLootEffectScale'.
---@return number value
function row:GetOverrideLootEffectScale() end

---Sets the value of field 'OverrideLootEffectScale'.
---@param value number
---@return dbc.row.v1215.CreatureModelData self
function row:SetOverrideLootEffectScale(value) end

---Gets the value of field 'OverrideNameScale'.
---@return number value
function row:GetOverrideNameScale() end

---Sets the value of field 'OverrideNameScale'.
---@param value number
---@return dbc.row.v1215.CreatureModelData self
function row:SetOverrideNameScale(value) end

---Gets the value of field 'OverrideSelectionRadius'.
---@return number value
function row:GetOverrideSelectionRadius() end

---Sets the value of field 'OverrideSelectionRadius'.
---@param value number
---@return dbc.row.v1215.CreatureModelData self
function row:SetOverrideSelectionRadius(value) end

---Gets the value of field 'TamedPetBaseScale'.
---@return number value
function row:GetTamedPetBaseScale() end

---Sets the value of field 'TamedPetBaseScale'.
---@param value number
---@return dbc.row.v1215.CreatureModelData self
function row:SetTamedPetBaseScale(value) end

---Gets the value of field 'MountScaleOtherIndex'.
---@return integer value
function row:GetMountScaleOtherIndex() end

---Sets the value of field 'MountScaleOtherIndex'.
---@param value integer
---@return dbc.row.v1215.CreatureModelData self
function row:SetMountScaleOtherIndex(value) end

---Gets the value of field 'MountScaleSelf'.
---@return number value
function row:GetMountScaleSelf() end

---Sets the value of field 'MountScaleSelf'.
---@param value number
---@return dbc.row.v1215.CreatureModelData self
function row:SetMountScaleSelf(value) end

---Gets the value of field 'Field_11_0_0_54210_032'.
---@return integer value
function row:GetField_11_0_0_54210_032() end

---Sets the value of field 'Field_11_0_0_54210_032'.
---@param value integer
---@return dbc.row.v1215.CreatureModelData self
function row:SetField_11_0_0_54210_032(value) end

---Gets the value of field 'MountScaleOther'.
---@return number[] value
function row:GetMountScaleOther() end

---Sets the value of field 'MountScaleOther'.
---@param value number[]
---@return dbc.row.v1215.CreatureModelData self
function row:SetMountScaleOther(value) end

---Gets element at 1-based index in 'MountScaleOther'.
---@param index integer
---@return number value
function row:GetMountScaleOtherItem(index) end

---Table container for CreatureModelData (Build 12.1.5.69594).
---@class dbc.Table.v1215.CreatureModelData : DbcTable
---@field [integer] dbc.row.v1215.CreatureModelData
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CreatureModelData
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CreatureModelData|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CreatureModelData
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CreatureModelData>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CreatureModelData[]
function tbl:GetByRelation(foreign_id) end

return {}
