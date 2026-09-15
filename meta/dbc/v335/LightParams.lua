---@meta
-- Generated LuaLS annotations for LightParams (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of LightParams in build 3.3.5.12340.
---@class dbc.row.v335.LightParams : RowProxy
---@field ID integer
---@field HighlightSky integer
---@field LightSkyboxID integer
---@field Glow number
---@field WaterShallowAlpha number
---@field WaterDeepAlpha number
---@field OceanShallowAlpha number
---@field OceanDeepAlpha number
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.LightParams self
function row:SetID(value) end

---Gets the value of field 'HighlightSky'.
---@return integer value
function row:GetHighlightSky() end

---Sets the value of field 'HighlightSky'.
---@param value integer
---@return dbc.row.v335.LightParams self
function row:SetHighlightSky(value) end

---Gets the value of field 'LightSkyboxID'.
---@return integer value
function row:GetLightSkyboxID() end

---Sets the value of field 'LightSkyboxID'.
---@param value integer
---@return dbc.row.v335.LightParams self
function row:SetLightSkyboxID(value) end

---Navigates foreign relationship to 'LightSkybox' via 'LightSkyboxID'.
---@return dbc.row.v335.LightSkybox|nil
function row:GetLightSkybox() end

---Creates a related 'LightSkybox' row and automatically links 'LightSkyboxID'.
---@param data? table
---@return dbc.row.v335.LightSkybox
function row:CreateRelated(data) end

---Gets the value of field 'Glow'.
---@return number value
function row:GetGlow() end

---Sets the value of field 'Glow'.
---@param value number
---@return dbc.row.v335.LightParams self
function row:SetGlow(value) end

---Gets the value of field 'WaterShallowAlpha'.
---@return number value
function row:GetWaterShallowAlpha() end

---Sets the value of field 'WaterShallowAlpha'.
---@param value number
---@return dbc.row.v335.LightParams self
function row:SetWaterShallowAlpha(value) end

---Gets the value of field 'WaterDeepAlpha'.
---@return number value
function row:GetWaterDeepAlpha() end

---Sets the value of field 'WaterDeepAlpha'.
---@param value number
---@return dbc.row.v335.LightParams self
function row:SetWaterDeepAlpha(value) end

---Gets the value of field 'OceanShallowAlpha'.
---@return number value
function row:GetOceanShallowAlpha() end

---Sets the value of field 'OceanShallowAlpha'.
---@param value number
---@return dbc.row.v335.LightParams self
function row:SetOceanShallowAlpha(value) end

---Gets the value of field 'OceanDeepAlpha'.
---@return number value
function row:GetOceanDeepAlpha() end

---Sets the value of field 'OceanDeepAlpha'.
---@param value number
---@return dbc.row.v335.LightParams self
function row:SetOceanDeepAlpha(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.LightParams self
function row:SetFlags(value) end

---Table container for LightParams (Build 3.3.5.12340).
---@class dbc.Table.v335.LightParams : DbcTable
---@field [integer] dbc.row.v335.LightParams
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.LightParams
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.LightParams|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.LightParams
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.LightParams>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.LightParams[]
function tbl:GetByRelation(foreign_id) end

return {}
