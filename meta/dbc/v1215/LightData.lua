---@meta
-- Generated LuaLS annotations for LightData (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of LightData in build 12.1.5.69594.
---@class dbc.row.v1215.LightData : RowProxy
---@field ID integer
---@field LightParamID integer
---@field Time integer
---@field DirectColor integer
---@field AmbientColor integer
---@field SkyTopColor integer
---@field SkyMiddleColor integer
---@field SkyBand1Color integer
---@field SkyBand2Color integer
---@field SkySmogColor integer
---@field SkyFogColor integer
---@field SunColor integer
---@field CloudSunColor integer
---@field CloudEmissiveColor integer
---@field CloudLayer1AmbientColor integer
---@field CloudLayer2AmbientColor integer
---@field OceanCloseColor integer
---@field OceanFarColor integer
---@field RiverCloseColor integer
---@field RiverFarColor integer
---@field ShadowOpacity integer
---@field FogEnd number
---@field FogScaler number
---@field FogDensity number
---@field FogHeight number
---@field FogHeightScaler number
---@field FogHeightDensity number
---@field FogZScalar number
---@field MainFogStartDist number
---@field MainFogEndDist number
---@field SunFogAngle number
---@field CloudDensity number
---@field ColorGradingFileDataID integer
---@field DarkerColorGradingFileDataID integer
---@field HorizonAmbientColor integer
---@field GroundAmbientColor integer
---@field EndFogColor integer
---@field EndFogColorDistance number
---@field FogStartOffset number
---@field SunFogColor integer
---@field SunFogStrength number
---@field FogHeightColor integer
---@field EndFogHeightColor integer
---@field Field_10_0_0_44649_042 integer
---@field Field_12_0_0_63854_043 number
---@field FogHeightCoefficients number[]
---@field MainFogCoefficients number[]
---@field HeightDensityFogCoeff number[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetID(value) end

---Gets the value of field 'LightParamID'.
---@return integer value
function row:GetLightParamID() end

---Sets the value of field 'LightParamID'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetLightParamID(value) end

---Navigates foreign relationship to 'LightParams' via 'LightParamID'.
---@return dbc.row.v1215.LightParams|nil
function row:GetLightParam() end

---Creates a related 'LightParams' row and automatically links 'LightParamID'.
---@param data? table
---@return dbc.row.v1215.LightParams
function row:CreateRelated(data) end

---Gets the value of field 'Time'.
---@return integer value
function row:GetTime() end

---Sets the value of field 'Time'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetTime(value) end

---Gets the value of field 'DirectColor'.
---@return integer value
function row:GetDirectColor() end

---Sets the value of field 'DirectColor'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetDirectColor(value) end

---Gets the value of field 'AmbientColor'.
---@return integer value
function row:GetAmbientColor() end

---Sets the value of field 'AmbientColor'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetAmbientColor(value) end

---Gets the value of field 'SkyTopColor'.
---@return integer value
function row:GetSkyTopColor() end

---Sets the value of field 'SkyTopColor'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetSkyTopColor(value) end

---Gets the value of field 'SkyMiddleColor'.
---@return integer value
function row:GetSkyMiddleColor() end

---Sets the value of field 'SkyMiddleColor'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetSkyMiddleColor(value) end

---Gets the value of field 'SkyBand1Color'.
---@return integer value
function row:GetSkyBand1Color() end

---Sets the value of field 'SkyBand1Color'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetSkyBand1Color(value) end

---Gets the value of field 'SkyBand2Color'.
---@return integer value
function row:GetSkyBand2Color() end

---Sets the value of field 'SkyBand2Color'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetSkyBand2Color(value) end

---Gets the value of field 'SkySmogColor'.
---@return integer value
function row:GetSkySmogColor() end

---Sets the value of field 'SkySmogColor'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetSkySmogColor(value) end

---Gets the value of field 'SkyFogColor'.
---@return integer value
function row:GetSkyFogColor() end

---Sets the value of field 'SkyFogColor'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetSkyFogColor(value) end

---Gets the value of field 'SunColor'.
---@return integer value
function row:GetSunColor() end

---Sets the value of field 'SunColor'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetSunColor(value) end

---Gets the value of field 'CloudSunColor'.
---@return integer value
function row:GetCloudSunColor() end

---Sets the value of field 'CloudSunColor'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetCloudSunColor(value) end

---Gets the value of field 'CloudEmissiveColor'.
---@return integer value
function row:GetCloudEmissiveColor() end

---Sets the value of field 'CloudEmissiveColor'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetCloudEmissiveColor(value) end

---Gets the value of field 'CloudLayer1AmbientColor'.
---@return integer value
function row:GetCloudLayer1AmbientColor() end

---Sets the value of field 'CloudLayer1AmbientColor'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetCloudLayer1AmbientColor(value) end

---Gets the value of field 'CloudLayer2AmbientColor'.
---@return integer value
function row:GetCloudLayer2AmbientColor() end

---Sets the value of field 'CloudLayer2AmbientColor'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetCloudLayer2AmbientColor(value) end

---Gets the value of field 'OceanCloseColor'.
---@return integer value
function row:GetOceanCloseColor() end

---Sets the value of field 'OceanCloseColor'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetOceanCloseColor(value) end

---Gets the value of field 'OceanFarColor'.
---@return integer value
function row:GetOceanFarColor() end

---Sets the value of field 'OceanFarColor'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetOceanFarColor(value) end

---Gets the value of field 'RiverCloseColor'.
---@return integer value
function row:GetRiverCloseColor() end

---Sets the value of field 'RiverCloseColor'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetRiverCloseColor(value) end

---Gets the value of field 'RiverFarColor'.
---@return integer value
function row:GetRiverFarColor() end

---Sets the value of field 'RiverFarColor'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetRiverFarColor(value) end

---Gets the value of field 'ShadowOpacity'.
---@return integer value
function row:GetShadowOpacity() end

---Sets the value of field 'ShadowOpacity'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetShadowOpacity(value) end

---Gets the value of field 'FogEnd'.
---@return number value
function row:GetFogEnd() end

---Sets the value of field 'FogEnd'.
---@param value number
---@return dbc.row.v1215.LightData self
function row:SetFogEnd(value) end

---Gets the value of field 'FogScaler'.
---@return number value
function row:GetFogScaler() end

---Sets the value of field 'FogScaler'.
---@param value number
---@return dbc.row.v1215.LightData self
function row:SetFogScaler(value) end

---Gets the value of field 'FogDensity'.
---@return number value
function row:GetFogDensity() end

---Sets the value of field 'FogDensity'.
---@param value number
---@return dbc.row.v1215.LightData self
function row:SetFogDensity(value) end

---Gets the value of field 'FogHeight'.
---@return number value
function row:GetFogHeight() end

---Sets the value of field 'FogHeight'.
---@param value number
---@return dbc.row.v1215.LightData self
function row:SetFogHeight(value) end

---Gets the value of field 'FogHeightScaler'.
---@return number value
function row:GetFogHeightScaler() end

---Sets the value of field 'FogHeightScaler'.
---@param value number
---@return dbc.row.v1215.LightData self
function row:SetFogHeightScaler(value) end

---Gets the value of field 'FogHeightDensity'.
---@return number value
function row:GetFogHeightDensity() end

---Sets the value of field 'FogHeightDensity'.
---@param value number
---@return dbc.row.v1215.LightData self
function row:SetFogHeightDensity(value) end

---Gets the value of field 'FogZScalar'.
---@return number value
function row:GetFogZScalar() end

---Sets the value of field 'FogZScalar'.
---@param value number
---@return dbc.row.v1215.LightData self
function row:SetFogZScalar(value) end

---Gets the value of field 'MainFogStartDist'.
---@return number value
function row:GetMainFogStartDist() end

---Sets the value of field 'MainFogStartDist'.
---@param value number
---@return dbc.row.v1215.LightData self
function row:SetMainFogStartDist(value) end

---Gets the value of field 'MainFogEndDist'.
---@return number value
function row:GetMainFogEndDist() end

---Sets the value of field 'MainFogEndDist'.
---@param value number
---@return dbc.row.v1215.LightData self
function row:SetMainFogEndDist(value) end

---Gets the value of field 'SunFogAngle'.
---@return number value
function row:GetSunFogAngle() end

---Sets the value of field 'SunFogAngle'.
---@param value number
---@return dbc.row.v1215.LightData self
function row:SetSunFogAngle(value) end

---Gets the value of field 'CloudDensity'.
---@return number value
function row:GetCloudDensity() end

---Sets the value of field 'CloudDensity'.
---@param value number
---@return dbc.row.v1215.LightData self
function row:SetCloudDensity(value) end

---Gets the value of field 'ColorGradingFileDataID'.
---@return integer value
function row:GetColorGradingFileDataID() end

---Sets the value of field 'ColorGradingFileDataID'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetColorGradingFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'ColorGradingFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetColorGradingFileData() end

---Creates a related 'FileData' row and automatically links 'ColorGradingFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'DarkerColorGradingFileDataID'.
---@return integer value
function row:GetDarkerColorGradingFileDataID() end

---Sets the value of field 'DarkerColorGradingFileDataID'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetDarkerColorGradingFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'DarkerColorGradingFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetDarkerColorGradingFileData() end

---Creates a related 'FileData' row and automatically links 'DarkerColorGradingFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'HorizonAmbientColor'.
---@return integer value
function row:GetHorizonAmbientColor() end

---Sets the value of field 'HorizonAmbientColor'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetHorizonAmbientColor(value) end

---Gets the value of field 'GroundAmbientColor'.
---@return integer value
function row:GetGroundAmbientColor() end

---Sets the value of field 'GroundAmbientColor'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetGroundAmbientColor(value) end

---Gets the value of field 'EndFogColor'.
---@return integer value
function row:GetEndFogColor() end

---Sets the value of field 'EndFogColor'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetEndFogColor(value) end

---Gets the value of field 'EndFogColorDistance'.
---@return number value
function row:GetEndFogColorDistance() end

---Sets the value of field 'EndFogColorDistance'.
---@param value number
---@return dbc.row.v1215.LightData self
function row:SetEndFogColorDistance(value) end

---Gets the value of field 'FogStartOffset'.
---@return number value
function row:GetFogStartOffset() end

---Sets the value of field 'FogStartOffset'.
---@param value number
---@return dbc.row.v1215.LightData self
function row:SetFogStartOffset(value) end

---Gets the value of field 'SunFogColor'.
---@return integer value
function row:GetSunFogColor() end

---Sets the value of field 'SunFogColor'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetSunFogColor(value) end

---Gets the value of field 'SunFogStrength'.
---@return number value
function row:GetSunFogStrength() end

---Sets the value of field 'SunFogStrength'.
---@param value number
---@return dbc.row.v1215.LightData self
function row:SetSunFogStrength(value) end

---Gets the value of field 'FogHeightColor'.
---@return integer value
function row:GetFogHeightColor() end

---Sets the value of field 'FogHeightColor'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetFogHeightColor(value) end

---Gets the value of field 'EndFogHeightColor'.
---@return integer value
function row:GetEndFogHeightColor() end

---Sets the value of field 'EndFogHeightColor'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetEndFogHeightColor(value) end

---Gets the value of field 'Field_10_0_0_44649_042'.
---@return integer value
function row:GetField_10_0_0_44649_042() end

---Sets the value of field 'Field_10_0_0_44649_042'.
---@param value integer
---@return dbc.row.v1215.LightData self
function row:SetField_10_0_0_44649_042(value) end

---Gets the value of field 'Field_12_0_0_63854_043'.
---@return number value
function row:GetField_12_0_0_63854_043() end

---Sets the value of field 'Field_12_0_0_63854_043'.
---@param value number
---@return dbc.row.v1215.LightData self
function row:SetField_12_0_0_63854_043(value) end

---Gets the value of field 'FogHeightCoefficients'.
---@return number[] value
function row:GetFogHeightCoefficients() end

---Sets the value of field 'FogHeightCoefficients'.
---@param value number[]
---@return dbc.row.v1215.LightData self
function row:SetFogHeightCoefficients(value) end

---Gets element at 1-based index in 'FogHeightCoefficients'.
---@param index integer
---@return number value
function row:GetFogHeightCoefficientsItem(index) end

---Gets the value of field 'MainFogCoefficients'.
---@return number[] value
function row:GetMainFogCoefficients() end

---Sets the value of field 'MainFogCoefficients'.
---@param value number[]
---@return dbc.row.v1215.LightData self
function row:SetMainFogCoefficients(value) end

---Gets element at 1-based index in 'MainFogCoefficients'.
---@param index integer
---@return number value
function row:GetMainFogCoefficientsItem(index) end

---Gets the value of field 'HeightDensityFogCoeff'.
---@return number[] value
function row:GetHeightDensityFogCoeff() end

---Sets the value of field 'HeightDensityFogCoeff'.
---@param value number[]
---@return dbc.row.v1215.LightData self
function row:SetHeightDensityFogCoeff(value) end

---Gets element at 1-based index in 'HeightDensityFogCoeff'.
---@param index integer
---@return number value
function row:GetHeightDensityFogCoeffItem(index) end

---Table container for LightData (Build 12.1.5.69594).
---@class dbc.Table.v1215.LightData : DbcTable
---@field [integer] dbc.row.v1215.LightData
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.LightData
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.LightData|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.LightData
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.LightData>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.LightData[]
function tbl:GetByRelation(foreign_id) end

return {}
