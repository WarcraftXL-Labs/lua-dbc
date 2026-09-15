---@meta
-- Generated LuaLS annotations for VideoHardware (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of VideoHardware in build 3.3.5.12340.
---@class dbc.row.v335.VideoHardware : RowProxy
---@field ID integer
---@field VendorID integer
---@field DeviceID integer
---@field FarclipIdx integer
---@field TerrainLODDistIdx integer
---@field TerrainShadowLOD integer
---@field DetailDoodadDensityIdx integer
---@field DetailDoodadAlpha integer
---@field AnimatingDoodadIdx integer
---@field Trilinear integer
---@field NumLights integer
---@field Specularity integer
---@field WaterLODIdx integer
---@field ParticleDensityIdx integer
---@field UnitDrawDistIdx integer
---@field SmallCullDistIdx integer
---@field ResolutionIdx integer
---@field BaseMipLevel integer
---@field OglOverrides string
---@field D3dOverrides string
---@field FixLag integer
---@field Multisample integer
---@field Atlasdisable integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.VideoHardware self
function row:SetID(value) end

---Gets the value of field 'VendorID'.
---@return integer value
function row:GetVendorID() end

---Sets the value of field 'VendorID'.
---@param value integer
---@return dbc.row.v335.VideoHardware self
function row:SetVendorID(value) end

---Navigates foreign relationship to 'Vendor' via 'VendorID'.
---@return dbc.row.v335.Vendor|nil
function row:GetVendor() end

---Creates a related 'Vendor' row and automatically links 'VendorID'.
---@param data? table
---@return dbc.row.v335.Vendor
function row:CreateRelated(data) end

---Gets the value of field 'DeviceID'.
---@return integer value
function row:GetDeviceID() end

---Sets the value of field 'DeviceID'.
---@param value integer
---@return dbc.row.v335.VideoHardware self
function row:SetDeviceID(value) end

---Navigates foreign relationship to 'Device' via 'DeviceID'.
---@return dbc.row.v335.Device|nil
function row:GetDevice() end

---Creates a related 'Device' row and automatically links 'DeviceID'.
---@param data? table
---@return dbc.row.v335.Device
function row:CreateRelated(data) end

---Gets the value of field 'FarclipIdx'.
---@return integer value
function row:GetFarclipIdx() end

---Sets the value of field 'FarclipIdx'.
---@param value integer
---@return dbc.row.v335.VideoHardware self
function row:SetFarclipIdx(value) end

---Gets the value of field 'TerrainLODDistIdx'.
---@return integer value
function row:GetTerrainLODDistIdx() end

---Sets the value of field 'TerrainLODDistIdx'.
---@param value integer
---@return dbc.row.v335.VideoHardware self
function row:SetTerrainLODDistIdx(value) end

---Gets the value of field 'TerrainShadowLOD'.
---@return integer value
function row:GetTerrainShadowLOD() end

---Sets the value of field 'TerrainShadowLOD'.
---@param value integer
---@return dbc.row.v335.VideoHardware self
function row:SetTerrainShadowLOD(value) end

---Gets the value of field 'DetailDoodadDensityIdx'.
---@return integer value
function row:GetDetailDoodadDensityIdx() end

---Sets the value of field 'DetailDoodadDensityIdx'.
---@param value integer
---@return dbc.row.v335.VideoHardware self
function row:SetDetailDoodadDensityIdx(value) end

---Gets the value of field 'DetailDoodadAlpha'.
---@return integer value
function row:GetDetailDoodadAlpha() end

---Sets the value of field 'DetailDoodadAlpha'.
---@param value integer
---@return dbc.row.v335.VideoHardware self
function row:SetDetailDoodadAlpha(value) end

---Gets the value of field 'AnimatingDoodadIdx'.
---@return integer value
function row:GetAnimatingDoodadIdx() end

---Sets the value of field 'AnimatingDoodadIdx'.
---@param value integer
---@return dbc.row.v335.VideoHardware self
function row:SetAnimatingDoodadIdx(value) end

---Gets the value of field 'Trilinear'.
---@return integer value
function row:GetTrilinear() end

---Sets the value of field 'Trilinear'.
---@param value integer
---@return dbc.row.v335.VideoHardware self
function row:SetTrilinear(value) end

---Gets the value of field 'NumLights'.
---@return integer value
function row:GetNumLights() end

---Sets the value of field 'NumLights'.
---@param value integer
---@return dbc.row.v335.VideoHardware self
function row:SetNumLights(value) end

---Gets the value of field 'Specularity'.
---@return integer value
function row:GetSpecularity() end

---Sets the value of field 'Specularity'.
---@param value integer
---@return dbc.row.v335.VideoHardware self
function row:SetSpecularity(value) end

---Gets the value of field 'WaterLODIdx'.
---@return integer value
function row:GetWaterLODIdx() end

---Sets the value of field 'WaterLODIdx'.
---@param value integer
---@return dbc.row.v335.VideoHardware self
function row:SetWaterLODIdx(value) end

---Gets the value of field 'ParticleDensityIdx'.
---@return integer value
function row:GetParticleDensityIdx() end

---Sets the value of field 'ParticleDensityIdx'.
---@param value integer
---@return dbc.row.v335.VideoHardware self
function row:SetParticleDensityIdx(value) end

---Gets the value of field 'UnitDrawDistIdx'.
---@return integer value
function row:GetUnitDrawDistIdx() end

---Sets the value of field 'UnitDrawDistIdx'.
---@param value integer
---@return dbc.row.v335.VideoHardware self
function row:SetUnitDrawDistIdx(value) end

---Gets the value of field 'SmallCullDistIdx'.
---@return integer value
function row:GetSmallCullDistIdx() end

---Sets the value of field 'SmallCullDistIdx'.
---@param value integer
---@return dbc.row.v335.VideoHardware self
function row:SetSmallCullDistIdx(value) end

---Gets the value of field 'ResolutionIdx'.
---@return integer value
function row:GetResolutionIdx() end

---Sets the value of field 'ResolutionIdx'.
---@param value integer
---@return dbc.row.v335.VideoHardware self
function row:SetResolutionIdx(value) end

---Gets the value of field 'BaseMipLevel'.
---@return integer value
function row:GetBaseMipLevel() end

---Sets the value of field 'BaseMipLevel'.
---@param value integer
---@return dbc.row.v335.VideoHardware self
function row:SetBaseMipLevel(value) end

---Gets the value of field 'OglOverrides'.
---@return string value
function row:GetOglOverrides() end

---Sets the value of field 'OglOverrides'.
---@param value string
---@return dbc.row.v335.VideoHardware self
function row:SetOglOverrides(value) end

---Gets the value of field 'D3dOverrides'.
---@return string value
function row:GetD3dOverrides() end

---Sets the value of field 'D3dOverrides'.
---@param value string
---@return dbc.row.v335.VideoHardware self
function row:SetD3dOverrides(value) end

---Gets the value of field 'FixLag'.
---@return integer value
function row:GetFixLag() end

---Sets the value of field 'FixLag'.
---@param value integer
---@return dbc.row.v335.VideoHardware self
function row:SetFixLag(value) end

---Gets the value of field 'Multisample'.
---@return integer value
function row:GetMultisample() end

---Sets the value of field 'Multisample'.
---@param value integer
---@return dbc.row.v335.VideoHardware self
function row:SetMultisample(value) end

---Gets the value of field 'Atlasdisable'.
---@return integer value
function row:GetAtlasdisable() end

---Sets the value of field 'Atlasdisable'.
---@param value integer
---@return dbc.row.v335.VideoHardware self
function row:SetAtlasdisable(value) end

---Table container for VideoHardware (Build 3.3.5.12340).
---@class dbc.Table.v335.VideoHardware : DbcTable
---@field [integer] dbc.row.v335.VideoHardware
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.VideoHardware
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.VideoHardware|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.VideoHardware
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.VideoHardware>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.VideoHardware[]
function tbl:GetByRelation(foreign_id) end

return {}
