---@meta
-- Generated LuaLS annotations for CreatureModelData (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of CreatureModelData in build 3.3.5.12340.
---@class dbc.row.v335.CreatureModelData : RowProxy
---@field ID integer
---@field Flags integer
---@field ModelName string
---@field SizeClass integer
---@field ModelScale number
---@field BloodID integer
---@field FootprintTextureID integer
---@field FootprintTextureLength number
---@field FootprintTextureWidth number
---@field FootprintParticleScale number
---@field FoleyMaterialID integer
---@field FootstepShakeSize integer
---@field DeathThudShakeSize integer
---@field SoundID integer
---@field CollisionWidth number
---@field CollisionHeight number
---@field MountHeight number
---@field GeoBoxMinX number
---@field GeoBoxMinY number
---@field GeoBoxMinZ number
---@field GeoBoxMaxX number
---@field GeoBoxMaxY number
---@field GeoBoxMaxZ number
---@field WorldEffectScale number
---@field AttachedEffectScale number
---@field MissileCollisionRadius number
---@field MissileCollisionPush number
---@field MissileCollisionRaise number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.CreatureModelData self
function row:SetID(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.CreatureModelData self
function row:SetFlags(value) end

---Gets the value of field 'ModelName'.
---@return string value
function row:GetModelName() end

---Sets the value of field 'ModelName'.
---@param value string
---@return dbc.row.v335.CreatureModelData self
function row:SetModelName(value) end

---Gets the value of field 'SizeClass'.
---@return integer value
function row:GetSizeClass() end

---Sets the value of field 'SizeClass'.
---@param value integer
---@return dbc.row.v335.CreatureModelData self
function row:SetSizeClass(value) end

---Gets the value of field 'ModelScale'.
---@return number value
function row:GetModelScale() end

---Sets the value of field 'ModelScale'.
---@param value number
---@return dbc.row.v335.CreatureModelData self
function row:SetModelScale(value) end

---Gets the value of field 'BloodID'.
---@return integer value
function row:GetBloodID() end

---Sets the value of field 'BloodID'.
---@param value integer
---@return dbc.row.v335.CreatureModelData self
function row:SetBloodID(value) end

---Navigates foreign relationship to 'UnitBlood' via 'BloodID'.
---@return dbc.row.v335.UnitBlood|nil
function row:GetBlood() end

---Creates a related 'UnitBlood' row and automatically links 'BloodID'.
---@param data? table
---@return dbc.row.v335.UnitBlood
function row:CreateRelated(data) end

---Gets the value of field 'FootprintTextureID'.
---@return integer value
function row:GetFootprintTextureID() end

---Sets the value of field 'FootprintTextureID'.
---@param value integer
---@return dbc.row.v335.CreatureModelData self
function row:SetFootprintTextureID(value) end

---Navigates foreign relationship to 'FootprintTextures' via 'FootprintTextureID'.
---@return dbc.row.v335.FootprintTextures|nil
function row:GetFootprintTexture() end

---Creates a related 'FootprintTextures' row and automatically links 'FootprintTextureID'.
---@param data? table
---@return dbc.row.v335.FootprintTextures
function row:CreateRelated(data) end

---Gets the value of field 'FootprintTextureLength'.
---@return number value
function row:GetFootprintTextureLength() end

---Sets the value of field 'FootprintTextureLength'.
---@param value number
---@return dbc.row.v335.CreatureModelData self
function row:SetFootprintTextureLength(value) end

---Gets the value of field 'FootprintTextureWidth'.
---@return number value
function row:GetFootprintTextureWidth() end

---Sets the value of field 'FootprintTextureWidth'.
---@param value number
---@return dbc.row.v335.CreatureModelData self
function row:SetFootprintTextureWidth(value) end

---Gets the value of field 'FootprintParticleScale'.
---@return number value
function row:GetFootprintParticleScale() end

---Sets the value of field 'FootprintParticleScale'.
---@param value number
---@return dbc.row.v335.CreatureModelData self
function row:SetFootprintParticleScale(value) end

---Gets the value of field 'FoleyMaterialID'.
---@return integer value
function row:GetFoleyMaterialID() end

---Sets the value of field 'FoleyMaterialID'.
---@param value integer
---@return dbc.row.v335.CreatureModelData self
function row:SetFoleyMaterialID(value) end

---Navigates foreign relationship to 'Material' via 'FoleyMaterialID'.
---@return dbc.row.v335.Material|nil
function row:GetFoleyMaterial() end

---Creates a related 'Material' row and automatically links 'FoleyMaterialID'.
---@param data? table
---@return dbc.row.v335.Material
function row:CreateRelated(data) end

---Gets the value of field 'FootstepShakeSize'.
---@return integer value
function row:GetFootstepShakeSize() end

---Sets the value of field 'FootstepShakeSize'.
---@param value integer
---@return dbc.row.v335.CreatureModelData self
function row:SetFootstepShakeSize(value) end

---Gets the value of field 'DeathThudShakeSize'.
---@return integer value
function row:GetDeathThudShakeSize() end

---Sets the value of field 'DeathThudShakeSize'.
---@param value integer
---@return dbc.row.v335.CreatureModelData self
function row:SetDeathThudShakeSize(value) end

---Gets the value of field 'SoundID'.
---@return integer value
function row:GetSoundID() end

---Sets the value of field 'SoundID'.
---@param value integer
---@return dbc.row.v335.CreatureModelData self
function row:SetSoundID(value) end

---Navigates foreign relationship to 'CreatureSoundData' via 'SoundID'.
---@return dbc.row.v335.CreatureSoundData|nil
function row:GetSound() end

---Creates a related 'CreatureSoundData' row and automatically links 'SoundID'.
---@param data? table
---@return dbc.row.v335.CreatureSoundData
function row:CreateRelated(data) end

---Gets the value of field 'CollisionWidth'.
---@return number value
function row:GetCollisionWidth() end

---Sets the value of field 'CollisionWidth'.
---@param value number
---@return dbc.row.v335.CreatureModelData self
function row:SetCollisionWidth(value) end

---Gets the value of field 'CollisionHeight'.
---@return number value
function row:GetCollisionHeight() end

---Sets the value of field 'CollisionHeight'.
---@param value number
---@return dbc.row.v335.CreatureModelData self
function row:SetCollisionHeight(value) end

---Gets the value of field 'MountHeight'.
---@return number value
function row:GetMountHeight() end

---Sets the value of field 'MountHeight'.
---@param value number
---@return dbc.row.v335.CreatureModelData self
function row:SetMountHeight(value) end

---Gets the value of field 'GeoBoxMinX'.
---@return number value
function row:GetGeoBoxMinX() end

---Sets the value of field 'GeoBoxMinX'.
---@param value number
---@return dbc.row.v335.CreatureModelData self
function row:SetGeoBoxMinX(value) end

---Gets the value of field 'GeoBoxMinY'.
---@return number value
function row:GetGeoBoxMinY() end

---Sets the value of field 'GeoBoxMinY'.
---@param value number
---@return dbc.row.v335.CreatureModelData self
function row:SetGeoBoxMinY(value) end

---Gets the value of field 'GeoBoxMinZ'.
---@return number value
function row:GetGeoBoxMinZ() end

---Sets the value of field 'GeoBoxMinZ'.
---@param value number
---@return dbc.row.v335.CreatureModelData self
function row:SetGeoBoxMinZ(value) end

---Gets the value of field 'GeoBoxMaxX'.
---@return number value
function row:GetGeoBoxMaxX() end

---Sets the value of field 'GeoBoxMaxX'.
---@param value number
---@return dbc.row.v335.CreatureModelData self
function row:SetGeoBoxMaxX(value) end

---Gets the value of field 'GeoBoxMaxY'.
---@return number value
function row:GetGeoBoxMaxY() end

---Sets the value of field 'GeoBoxMaxY'.
---@param value number
---@return dbc.row.v335.CreatureModelData self
function row:SetGeoBoxMaxY(value) end

---Gets the value of field 'GeoBoxMaxZ'.
---@return number value
function row:GetGeoBoxMaxZ() end

---Sets the value of field 'GeoBoxMaxZ'.
---@param value number
---@return dbc.row.v335.CreatureModelData self
function row:SetGeoBoxMaxZ(value) end

---Gets the value of field 'WorldEffectScale'.
---@return number value
function row:GetWorldEffectScale() end

---Sets the value of field 'WorldEffectScale'.
---@param value number
---@return dbc.row.v335.CreatureModelData self
function row:SetWorldEffectScale(value) end

---Gets the value of field 'AttachedEffectScale'.
---@return number value
function row:GetAttachedEffectScale() end

---Sets the value of field 'AttachedEffectScale'.
---@param value number
---@return dbc.row.v335.CreatureModelData self
function row:SetAttachedEffectScale(value) end

---Gets the value of field 'MissileCollisionRadius'.
---@return number value
function row:GetMissileCollisionRadius() end

---Sets the value of field 'MissileCollisionRadius'.
---@param value number
---@return dbc.row.v335.CreatureModelData self
function row:SetMissileCollisionRadius(value) end

---Gets the value of field 'MissileCollisionPush'.
---@return number value
function row:GetMissileCollisionPush() end

---Sets the value of field 'MissileCollisionPush'.
---@param value number
---@return dbc.row.v335.CreatureModelData self
function row:SetMissileCollisionPush(value) end

---Gets the value of field 'MissileCollisionRaise'.
---@return number value
function row:GetMissileCollisionRaise() end

---Sets the value of field 'MissileCollisionRaise'.
---@param value number
---@return dbc.row.v335.CreatureModelData self
function row:SetMissileCollisionRaise(value) end

---Table container for CreatureModelData (Build 3.3.5.12340).
---@class dbc.Table.v335.CreatureModelData : DbcTable
---@field [integer] dbc.row.v335.CreatureModelData
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.CreatureModelData
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.CreatureModelData|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.CreatureModelData
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.CreatureModelData>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.CreatureModelData[]
function tbl:GetByRelation(foreign_id) end

return {}
