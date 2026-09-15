---@meta
-- Generated LuaLS annotations for Weather (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Weather in build 12.1.5.69594.
---@class dbc.row.v1215.Weather : RowProxy
---@field ID integer
---@field Type integer
---@field Field_9_0_1_33978_001 integer if 1: set TransitionSkyBox to 1.0f
---@field TransitionSkyBox number
---@field AmbienceID integer
---@field SoundAmbienceID integer
---@field EffectType integer
---@field EffectTextureFileDataID integer
---@field WindSettingsID integer
---@field Scale number
---@field Volatility number
---@field TwinkleIntensity number
---@field FallModifier number
---@field RotationalSpeed number
---@field ParticulateFileDataID integer
---@field VolumeEdgeFadeStart number
---@field OverrideColor integer
---@field OverrideColorIntensity number
---@field OverrideCount number
---@field OverrideOpacity number
---@field VolumeFlags integer
---@field LightningID integer
---@field Intensity number[]
---@field EffectColor number[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Weather self
function row:SetID(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.Weather self
function row:SetType(value) end

---Gets the value of field 'Field_9_0_1_33978_001'.
---@return integer value
function row:GetField_9_0_1_33978_001() end

---Sets the value of field 'Field_9_0_1_33978_001'.
---@param value integer
---@return dbc.row.v1215.Weather self
function row:SetField_9_0_1_33978_001(value) end

---Gets the value of field 'TransitionSkyBox'.
---@return number value
function row:GetTransitionSkyBox() end

---Sets the value of field 'TransitionSkyBox'.
---@param value number
---@return dbc.row.v1215.Weather self
function row:SetTransitionSkyBox(value) end

---Gets the value of field 'AmbienceID'.
---@return integer value
function row:GetAmbienceID() end

---Sets the value of field 'AmbienceID'.
---@param value integer
---@return dbc.row.v1215.Weather self
function row:SetAmbienceID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'AmbienceID'.
---@return dbc.row.v1215.SoundEntries|nil
function row:GetAmbience() end

---Creates a related 'SoundEntries' row and automatically links 'AmbienceID'.
---@param data? table
---@return dbc.row.v1215.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'SoundAmbienceID'.
---@return integer value
function row:GetSoundAmbienceID() end

---Sets the value of field 'SoundAmbienceID'.
---@param value integer
---@return dbc.row.v1215.Weather self
function row:SetSoundAmbienceID(value) end

---Navigates foreign relationship to 'SoundAmbience' via 'SoundAmbienceID'.
---@return dbc.row.v1215.SoundAmbience|nil
function row:GetSoundAmbience() end

---Creates a related 'SoundAmbience' row and automatically links 'SoundAmbienceID'.
---@param data? table
---@return dbc.row.v1215.SoundAmbience
function row:CreateRelated(data) end

---Gets the value of field 'EffectType'.
---@return integer value
function row:GetEffectType() end

---Sets the value of field 'EffectType'.
---@param value integer
---@return dbc.row.v1215.Weather self
function row:SetEffectType(value) end

---Gets the value of field 'EffectTextureFileDataID'.
---@return integer value
function row:GetEffectTextureFileDataID() end

---Sets the value of field 'EffectTextureFileDataID'.
---@param value integer
---@return dbc.row.v1215.Weather self
function row:SetEffectTextureFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'EffectTextureFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetEffectTextureFileData() end

---Creates a related 'FileData' row and automatically links 'EffectTextureFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'WindSettingsID'.
---@return integer value
function row:GetWindSettingsID() end

---Sets the value of field 'WindSettingsID'.
---@param value integer
---@return dbc.row.v1215.Weather self
function row:SetWindSettingsID(value) end

---Navigates foreign relationship to 'WindSettings' via 'WindSettingsID'.
---@return dbc.row.v1215.WindSettings|nil
function row:GetWindSettings() end

---Creates a related 'WindSettings' row and automatically links 'WindSettingsID'.
---@param data? table
---@return dbc.row.v1215.WindSettings
function row:CreateRelated(data) end

---Gets the value of field 'Scale'.
---@return number value
function row:GetScale() end

---Sets the value of field 'Scale'.
---@param value number
---@return dbc.row.v1215.Weather self
function row:SetScale(value) end

---Gets the value of field 'Volatility'.
---@return number value
function row:GetVolatility() end

---Sets the value of field 'Volatility'.
---@param value number
---@return dbc.row.v1215.Weather self
function row:SetVolatility(value) end

---Gets the value of field 'TwinkleIntensity'.
---@return number value
function row:GetTwinkleIntensity() end

---Sets the value of field 'TwinkleIntensity'.
---@param value number
---@return dbc.row.v1215.Weather self
function row:SetTwinkleIntensity(value) end

---Gets the value of field 'FallModifier'.
---@return number value
function row:GetFallModifier() end

---Sets the value of field 'FallModifier'.
---@param value number
---@return dbc.row.v1215.Weather self
function row:SetFallModifier(value) end

---Gets the value of field 'RotationalSpeed'.
---@return number value
function row:GetRotationalSpeed() end

---Sets the value of field 'RotationalSpeed'.
---@param value number
---@return dbc.row.v1215.Weather self
function row:SetRotationalSpeed(value) end

---Gets the value of field 'ParticulateFileDataID'.
---@return integer value
function row:GetParticulateFileDataID() end

---Sets the value of field 'ParticulateFileDataID'.
---@param value integer
---@return dbc.row.v1215.Weather self
function row:SetParticulateFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'ParticulateFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetParticulateFileData() end

---Creates a related 'FileData' row and automatically links 'ParticulateFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'VolumeEdgeFadeStart'.
---@return number value
function row:GetVolumeEdgeFadeStart() end

---Sets the value of field 'VolumeEdgeFadeStart'.
---@param value number
---@return dbc.row.v1215.Weather self
function row:SetVolumeEdgeFadeStart(value) end

---Gets the value of field 'OverrideColor'.
---@return integer value
function row:GetOverrideColor() end

---Sets the value of field 'OverrideColor'.
---@param value integer
---@return dbc.row.v1215.Weather self
function row:SetOverrideColor(value) end

---Gets the value of field 'OverrideColorIntensity'.
---@return number value
function row:GetOverrideColorIntensity() end

---Sets the value of field 'OverrideColorIntensity'.
---@param value number
---@return dbc.row.v1215.Weather self
function row:SetOverrideColorIntensity(value) end

---Gets the value of field 'OverrideCount'.
---@return number value
function row:GetOverrideCount() end

---Sets the value of field 'OverrideCount'.
---@param value number
---@return dbc.row.v1215.Weather self
function row:SetOverrideCount(value) end

---Gets the value of field 'OverrideOpacity'.
---@return number value
function row:GetOverrideOpacity() end

---Sets the value of field 'OverrideOpacity'.
---@param value number
---@return dbc.row.v1215.Weather self
function row:SetOverrideOpacity(value) end

---Gets the value of field 'VolumeFlags'.
---@return integer value
function row:GetVolumeFlags() end

---Sets the value of field 'VolumeFlags'.
---@param value integer
---@return dbc.row.v1215.Weather self
function row:SetVolumeFlags(value) end

---Gets the value of field 'LightningID'.
---@return integer value
function row:GetLightningID() end

---Sets the value of field 'LightningID'.
---@param value integer
---@return dbc.row.v1215.Weather self
function row:SetLightningID(value) end

---Navigates foreign relationship to 'Lightning' via 'LightningID'.
---@return dbc.row.v1215.Lightning|nil
function row:GetLightning() end

---Creates a related 'Lightning' row and automatically links 'LightningID'.
---@param data? table
---@return dbc.row.v1215.Lightning
function row:CreateRelated(data) end

---Gets the value of field 'Intensity'.
---@return number[] value
function row:GetIntensity() end

---Sets the value of field 'Intensity'.
---@param value number[]
---@return dbc.row.v1215.Weather self
function row:SetIntensity(value) end

---Gets element at 1-based index in 'Intensity'.
---@param index integer
---@return number value
function row:GetIntensityItem(index) end

---Gets the value of field 'EffectColor'.
---@return number[] value
function row:GetEffectColor() end

---Sets the value of field 'EffectColor'.
---@param value number[]
---@return dbc.row.v1215.Weather self
function row:SetEffectColor(value) end

---Gets element at 1-based index in 'EffectColor'.
---@param index integer
---@return number value
function row:GetEffectColorItem(index) end

---Table container for Weather (Build 12.1.5.69594).
---@class dbc.Table.v1215.Weather : DbcTable
---@field [integer] dbc.row.v1215.Weather
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Weather
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Weather|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Weather
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Weather>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Weather[]
function tbl:GetByRelation(foreign_id) end

return {}
