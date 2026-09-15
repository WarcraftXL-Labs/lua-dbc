---@meta
-- Generated LuaLS annotations for LightParams (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of LightParams in build 12.1.5.69594.
---@class dbc.row.v1215.LightParams : RowProxy
---@field ID integer
---@field OverrideCelestialSphere number[]
---@field OverrideSunPosition number[]
---@field HighlightSky integer
---@field LightSkyboxID integer
---@field CloudTypeID integer
---@field Glow number
---@field WaterShallowAlpha number
---@field WaterDeepAlpha number
---@field OceanShallowAlpha number
---@field OceanDeepAlpha number
---@field Flags integer
---@field SsaoSettingsID integer
---@field SunPolar number
---@field SunAzimuth number
---@field SunAttenuationStart number
---@field SunAttenuationEnd number
---@field Field_12_0_0_63534_016 number
---@field Field_12_0_0_63534_017 number
---@field Field_12_0_0_63534_018 number
---@field Field_12_0_0_63534_019 number
---@field Field_12_0_0_63534_020 number
---@field Field_12_0_0_63534_021 number
---@field Field_12_0_0_63534_022 number
---@field Field_12_0_0_63534_023 number
---@field Field_12_0_0_63534_024 number
---@field Field_12_0_0_63534_025 number
---@field Field_12_0_0_63534_026 number
---@field Field_12_0_0_63534_027 integer
---@field Field_12_0_0_63534_028 number
---@field Field_12_0_0_63534_029 number
---@field Field_12_0_1_65617_030 number
---@field Field_12_0_1_65617_031 number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.LightParams self
function row:SetID(value) end

---Gets the value of field 'OverrideCelestialSphere'.
---@return number[] value
function row:GetOverrideCelestialSphere() end

---Sets the value of field 'OverrideCelestialSphere'.
---@param value number[]
---@return dbc.row.v1215.LightParams self
function row:SetOverrideCelestialSphere(value) end

---Gets element at 1-based index in 'OverrideCelestialSphere'.
---@param index integer
---@return number value
function row:GetOverrideCelestialSphereItem(index) end

---Gets the value of field 'OverrideSunPosition'.
---@return number[] value
function row:GetOverrideSunPosition() end

---Sets the value of field 'OverrideSunPosition'.
---@param value number[]
---@return dbc.row.v1215.LightParams self
function row:SetOverrideSunPosition(value) end

---Gets element at 1-based index in 'OverrideSunPosition'.
---@param index integer
---@return number value
function row:GetOverrideSunPositionItem(index) end

---Gets the value of field 'HighlightSky'.
---@return integer value
function row:GetHighlightSky() end

---Sets the value of field 'HighlightSky'.
---@param value integer
---@return dbc.row.v1215.LightParams self
function row:SetHighlightSky(value) end

---Gets the value of field 'LightSkyboxID'.
---@return integer value
function row:GetLightSkyboxID() end

---Sets the value of field 'LightSkyboxID'.
---@param value integer
---@return dbc.row.v1215.LightParams self
function row:SetLightSkyboxID(value) end

---Navigates foreign relationship to 'LightSkybox' via 'LightSkyboxID'.
---@return dbc.row.v1215.LightSkybox|nil
function row:GetLightSkybox() end

---Creates a related 'LightSkybox' row and automatically links 'LightSkyboxID'.
---@param data? table
---@return dbc.row.v1215.LightSkybox
function row:CreateRelated(data) end

---Gets the value of field 'CloudTypeID'.
---@return integer value
function row:GetCloudTypeID() end

---Sets the value of field 'CloudTypeID'.
---@param value integer
---@return dbc.row.v1215.LightParams self
function row:SetCloudTypeID(value) end

---Navigates foreign relationship to 'CloudType' via 'CloudTypeID'.
---@return dbc.row.v1215.CloudType|nil
function row:GetCloudType() end

---Creates a related 'CloudType' row and automatically links 'CloudTypeID'.
---@param data? table
---@return dbc.row.v1215.CloudType
function row:CreateRelated(data) end

---Gets the value of field 'Glow'.
---@return number value
function row:GetGlow() end

---Sets the value of field 'Glow'.
---@param value number
---@return dbc.row.v1215.LightParams self
function row:SetGlow(value) end

---Gets the value of field 'WaterShallowAlpha'.
---@return number value
function row:GetWaterShallowAlpha() end

---Sets the value of field 'WaterShallowAlpha'.
---@param value number
---@return dbc.row.v1215.LightParams self
function row:SetWaterShallowAlpha(value) end

---Gets the value of field 'WaterDeepAlpha'.
---@return number value
function row:GetWaterDeepAlpha() end

---Sets the value of field 'WaterDeepAlpha'.
---@param value number
---@return dbc.row.v1215.LightParams self
function row:SetWaterDeepAlpha(value) end

---Gets the value of field 'OceanShallowAlpha'.
---@return number value
function row:GetOceanShallowAlpha() end

---Sets the value of field 'OceanShallowAlpha'.
---@param value number
---@return dbc.row.v1215.LightParams self
function row:SetOceanShallowAlpha(value) end

---Gets the value of field 'OceanDeepAlpha'.
---@return number value
function row:GetOceanDeepAlpha() end

---Sets the value of field 'OceanDeepAlpha'.
---@param value number
---@return dbc.row.v1215.LightParams self
function row:SetOceanDeepAlpha(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.LightParams self
function row:SetFlags(value) end

---Gets the value of field 'SsaoSettingsID'.
---@return integer value
function row:GetSsaoSettingsID() end

---Sets the value of field 'SsaoSettingsID'.
---@param value integer
---@return dbc.row.v1215.LightParams self
function row:SetSsaoSettingsID(value) end

---Navigates foreign relationship to 'SSAOSettings' via 'SsaoSettingsID'.
---@return dbc.row.v1215.SSAOSettings|nil
function row:GetSsaoSettings() end

---Creates a related 'SSAOSettings' row and automatically links 'SsaoSettingsID'.
---@param data? table
---@return dbc.row.v1215.SSAOSettings
function row:CreateRelated(data) end

---Gets the value of field 'SunPolar'.
---@return number value
function row:GetSunPolar() end

---Sets the value of field 'SunPolar'.
---@param value number
---@return dbc.row.v1215.LightParams self
function row:SetSunPolar(value) end

---Gets the value of field 'SunAzimuth'.
---@return number value
function row:GetSunAzimuth() end

---Sets the value of field 'SunAzimuth'.
---@param value number
---@return dbc.row.v1215.LightParams self
function row:SetSunAzimuth(value) end

---Gets the value of field 'SunAttenuationStart'.
---@return number value
function row:GetSunAttenuationStart() end

---Sets the value of field 'SunAttenuationStart'.
---@param value number
---@return dbc.row.v1215.LightParams self
function row:SetSunAttenuationStart(value) end

---Gets the value of field 'SunAttenuationEnd'.
---@return number value
function row:GetSunAttenuationEnd() end

---Sets the value of field 'SunAttenuationEnd'.
---@param value number
---@return dbc.row.v1215.LightParams self
function row:SetSunAttenuationEnd(value) end

---Gets the value of field 'Field_12_0_0_63534_016'.
---@return number value
function row:GetField_12_0_0_63534_016() end

---Sets the value of field 'Field_12_0_0_63534_016'.
---@param value number
---@return dbc.row.v1215.LightParams self
function row:SetField_12_0_0_63534_016(value) end

---Gets the value of field 'Field_12_0_0_63534_017'.
---@return number value
function row:GetField_12_0_0_63534_017() end

---Sets the value of field 'Field_12_0_0_63534_017'.
---@param value number
---@return dbc.row.v1215.LightParams self
function row:SetField_12_0_0_63534_017(value) end

---Gets the value of field 'Field_12_0_0_63534_018'.
---@return number value
function row:GetField_12_0_0_63534_018() end

---Sets the value of field 'Field_12_0_0_63534_018'.
---@param value number
---@return dbc.row.v1215.LightParams self
function row:SetField_12_0_0_63534_018(value) end

---Gets the value of field 'Field_12_0_0_63534_019'.
---@return number value
function row:GetField_12_0_0_63534_019() end

---Sets the value of field 'Field_12_0_0_63534_019'.
---@param value number
---@return dbc.row.v1215.LightParams self
function row:SetField_12_0_0_63534_019(value) end

---Gets the value of field 'Field_12_0_0_63534_020'.
---@return number value
function row:GetField_12_0_0_63534_020() end

---Sets the value of field 'Field_12_0_0_63534_020'.
---@param value number
---@return dbc.row.v1215.LightParams self
function row:SetField_12_0_0_63534_020(value) end

---Gets the value of field 'Field_12_0_0_63534_021'.
---@return number value
function row:GetField_12_0_0_63534_021() end

---Sets the value of field 'Field_12_0_0_63534_021'.
---@param value number
---@return dbc.row.v1215.LightParams self
function row:SetField_12_0_0_63534_021(value) end

---Gets the value of field 'Field_12_0_0_63534_022'.
---@return number value
function row:GetField_12_0_0_63534_022() end

---Sets the value of field 'Field_12_0_0_63534_022'.
---@param value number
---@return dbc.row.v1215.LightParams self
function row:SetField_12_0_0_63534_022(value) end

---Gets the value of field 'Field_12_0_0_63534_023'.
---@return number value
function row:GetField_12_0_0_63534_023() end

---Sets the value of field 'Field_12_0_0_63534_023'.
---@param value number
---@return dbc.row.v1215.LightParams self
function row:SetField_12_0_0_63534_023(value) end

---Gets the value of field 'Field_12_0_0_63534_024'.
---@return number value
function row:GetField_12_0_0_63534_024() end

---Sets the value of field 'Field_12_0_0_63534_024'.
---@param value number
---@return dbc.row.v1215.LightParams self
function row:SetField_12_0_0_63534_024(value) end

---Gets the value of field 'Field_12_0_0_63534_025'.
---@return number value
function row:GetField_12_0_0_63534_025() end

---Sets the value of field 'Field_12_0_0_63534_025'.
---@param value number
---@return dbc.row.v1215.LightParams self
function row:SetField_12_0_0_63534_025(value) end

---Gets the value of field 'Field_12_0_0_63534_026'.
---@return number value
function row:GetField_12_0_0_63534_026() end

---Sets the value of field 'Field_12_0_0_63534_026'.
---@param value number
---@return dbc.row.v1215.LightParams self
function row:SetField_12_0_0_63534_026(value) end

---Gets the value of field 'Field_12_0_0_63534_027'.
---@return integer value
function row:GetField_12_0_0_63534_027() end

---Sets the value of field 'Field_12_0_0_63534_027'.
---@param value integer
---@return dbc.row.v1215.LightParams self
function row:SetField_12_0_0_63534_027(value) end

---Gets the value of field 'Field_12_0_0_63534_028'.
---@return number value
function row:GetField_12_0_0_63534_028() end

---Sets the value of field 'Field_12_0_0_63534_028'.
---@param value number
---@return dbc.row.v1215.LightParams self
function row:SetField_12_0_0_63534_028(value) end

---Gets the value of field 'Field_12_0_0_63534_029'.
---@return number value
function row:GetField_12_0_0_63534_029() end

---Sets the value of field 'Field_12_0_0_63534_029'.
---@param value number
---@return dbc.row.v1215.LightParams self
function row:SetField_12_0_0_63534_029(value) end

---Gets the value of field 'Field_12_0_1_65617_030'.
---@return number value
function row:GetField_12_0_1_65617_030() end

---Sets the value of field 'Field_12_0_1_65617_030'.
---@param value number
---@return dbc.row.v1215.LightParams self
function row:SetField_12_0_1_65617_030(value) end

---Gets the value of field 'Field_12_0_1_65617_031'.
---@return number value
function row:GetField_12_0_1_65617_031() end

---Sets the value of field 'Field_12_0_1_65617_031'.
---@param value number
---@return dbc.row.v1215.LightParams self
function row:SetField_12_0_1_65617_031(value) end

---Table container for LightParams (Build 12.1.5.69594).
---@class dbc.Table.v1215.LightParams : DbcTable
---@field [integer] dbc.row.v1215.LightParams
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.LightParams
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.LightParams|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.LightParams
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.LightParams>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.LightParams[]
function tbl:GetByRelation(foreign_id) end

return {}
