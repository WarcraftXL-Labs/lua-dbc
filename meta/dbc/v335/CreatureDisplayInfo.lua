---@meta
-- Generated LuaLS annotations for CreatureDisplayInfo (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of CreatureDisplayInfo in build 3.3.5.12340.
---@class dbc.row.v335.CreatureDisplayInfo : RowProxy
---@field ID integer
---@field ModelID integer
---@field SoundID integer
---@field ExtendedDisplayInfoID integer
---@field CreatureModelScale number
---@field CreatureModelAlpha integer
---@field TextureVariation string[]
---@field PortraitTextureName string
---@field SizeClass integer
---@field BloodID integer
---@field NPCSoundID integer
---@field ParticleColorID integer
---@field CreatureGeosetData integer
---@field ObjectEffectPackageID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.CreatureDisplayInfo self
function row:SetID(value) end

---Gets the value of field 'ModelID'.
---@return integer value
function row:GetModelID() end

---Sets the value of field 'ModelID'.
---@param value integer
---@return dbc.row.v335.CreatureDisplayInfo self
function row:SetModelID(value) end

---Navigates foreign relationship to 'CreatureModelData' via 'ModelID'.
---@return dbc.row.v335.CreatureModelData|nil
function row:GetModel() end

---Creates a related 'CreatureModelData' row and automatically links 'ModelID'.
---@param data? table
---@return dbc.row.v335.CreatureModelData
function row:CreateRelated(data) end

---Gets the value of field 'SoundID'.
---@return integer value
function row:GetSoundID() end

---Sets the value of field 'SoundID'.
---@param value integer
---@return dbc.row.v335.CreatureDisplayInfo self
function row:SetSoundID(value) end

---Navigates foreign relationship to 'CreatureSoundData' via 'SoundID'.
---@return dbc.row.v335.CreatureSoundData|nil
function row:GetSound() end

---Creates a related 'CreatureSoundData' row and automatically links 'SoundID'.
---@param data? table
---@return dbc.row.v335.CreatureSoundData
function row:CreateRelated(data) end

---Gets the value of field 'ExtendedDisplayInfoID'.
---@return integer value
function row:GetExtendedDisplayInfoID() end

---Sets the value of field 'ExtendedDisplayInfoID'.
---@param value integer
---@return dbc.row.v335.CreatureDisplayInfo self
function row:SetExtendedDisplayInfoID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfoExtra' via 'ExtendedDisplayInfoID'.
---@return dbc.row.v335.CreatureDisplayInfoExtra|nil
function row:GetExtendedDisplayInfo() end

---Creates a related 'CreatureDisplayInfoExtra' row and automatically links 'ExtendedDisplayInfoID'.
---@param data? table
---@return dbc.row.v335.CreatureDisplayInfoExtra
function row:CreateRelated(data) end

---Gets the value of field 'CreatureModelScale'.
---@return number value
function row:GetCreatureModelScale() end

---Sets the value of field 'CreatureModelScale'.
---@param value number
---@return dbc.row.v335.CreatureDisplayInfo self
function row:SetCreatureModelScale(value) end

---Gets the value of field 'CreatureModelAlpha'.
---@return integer value
function row:GetCreatureModelAlpha() end

---Sets the value of field 'CreatureModelAlpha'.
---@param value integer
---@return dbc.row.v335.CreatureDisplayInfo self
function row:SetCreatureModelAlpha(value) end

---Gets the value of field 'TextureVariation'.
---@return string[] value
function row:GetTextureVariation() end

---Sets the value of field 'TextureVariation'.
---@param value string[]
---@return dbc.row.v335.CreatureDisplayInfo self
function row:SetTextureVariation(value) end

---Gets element at 1-based index in 'TextureVariation'.
---@param index integer
---@return string value
function row:GetTextureVariationItem(index) end

---Gets the value of field 'PortraitTextureName'.
---@return string value
function row:GetPortraitTextureName() end

---Sets the value of field 'PortraitTextureName'.
---@param value string
---@return dbc.row.v335.CreatureDisplayInfo self
function row:SetPortraitTextureName(value) end

---Gets the value of field 'SizeClass'.
---@return integer value
function row:GetSizeClass() end

---Sets the value of field 'SizeClass'.
---@param value integer
---@return dbc.row.v335.CreatureDisplayInfo self
function row:SetSizeClass(value) end

---Gets the value of field 'BloodID'.
---@return integer value
function row:GetBloodID() end

---Sets the value of field 'BloodID'.
---@param value integer
---@return dbc.row.v335.CreatureDisplayInfo self
function row:SetBloodID(value) end

---Navigates foreign relationship to 'UnitBlood' via 'BloodID'.
---@return dbc.row.v335.UnitBlood|nil
function row:GetBlood() end

---Creates a related 'UnitBlood' row and automatically links 'BloodID'.
---@param data? table
---@return dbc.row.v335.UnitBlood
function row:CreateRelated(data) end

---Gets the value of field 'NPCSoundID'.
---@return integer value
function row:GetNPCSoundID() end

---Sets the value of field 'NPCSoundID'.
---@param value integer
---@return dbc.row.v335.CreatureDisplayInfo self
function row:SetNPCSoundID(value) end

---Navigates foreign relationship to 'NPCSounds' via 'NPCSoundID'.
---@return dbc.row.v335.NPCSounds|nil
function row:GetNPCSound() end

---Creates a related 'NPCSounds' row and automatically links 'NPCSoundID'.
---@param data? table
---@return dbc.row.v335.NPCSounds
function row:CreateRelated(data) end

---Gets the value of field 'ParticleColorID'.
---@return integer value
function row:GetParticleColorID() end

---Sets the value of field 'ParticleColorID'.
---@param value integer
---@return dbc.row.v335.CreatureDisplayInfo self
function row:SetParticleColorID(value) end

---Navigates foreign relationship to 'ParticleColor' via 'ParticleColorID'.
---@return dbc.row.v335.ParticleColor|nil
function row:GetParticleColor() end

---Creates a related 'ParticleColor' row and automatically links 'ParticleColorID'.
---@param data? table
---@return dbc.row.v335.ParticleColor
function row:CreateRelated(data) end

---Gets the value of field 'CreatureGeosetData'.
---@return integer value
function row:GetCreatureGeosetData() end

---Sets the value of field 'CreatureGeosetData'.
---@param value integer
---@return dbc.row.v335.CreatureDisplayInfo self
function row:SetCreatureGeosetData(value) end

---Gets the value of field 'ObjectEffectPackageID'.
---@return integer value
function row:GetObjectEffectPackageID() end

---Sets the value of field 'ObjectEffectPackageID'.
---@param value integer
---@return dbc.row.v335.CreatureDisplayInfo self
function row:SetObjectEffectPackageID(value) end

---Navigates foreign relationship to 'ObjectEffectPackage' via 'ObjectEffectPackageID'.
---@return dbc.row.v335.ObjectEffectPackage|nil
function row:GetObjectEffectPackage() end

---Creates a related 'ObjectEffectPackage' row and automatically links 'ObjectEffectPackageID'.
---@param data? table
---@return dbc.row.v335.ObjectEffectPackage
function row:CreateRelated(data) end

---Table container for CreatureDisplayInfo (Build 3.3.5.12340).
---@class dbc.Table.v335.CreatureDisplayInfo : DbcTable
---@field [integer] dbc.row.v335.CreatureDisplayInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.CreatureDisplayInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.CreatureDisplayInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.CreatureDisplayInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.CreatureDisplayInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.CreatureDisplayInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
