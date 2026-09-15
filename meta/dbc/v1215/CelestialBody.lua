---@meta
-- Generated LuaLS annotations for CelestialBody (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CelestialBody in build 12.1.5.69594.
---@class dbc.row.v1215.CelestialBody : RowProxy
---@field ID integer
---@field Position number[]
---@field BaseFileDataID integer
---@field BodyBaseScale number
---@field AtmosphericMaskFileDataID integer
---@field AtmosphericModifiedFileDataID integer
---@field RotateRate number
---@field AtmosphericMaskScale number
---@field SkyArrayBand integer
---@field LightMaskFileDataID integer
---@field GlowMaskFileDataID integer[]
---@field GlowMaskScale number[]
---@field GlowModifiedFileDataID integer[]
---@field ScrollURate number[]
---@field ScrollVRate number[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CelestialBody self
function row:SetID(value) end

---Gets the value of field 'Position'.
---@return number[] value
function row:GetPosition() end

---Sets the value of field 'Position'.
---@param value number[]
---@return dbc.row.v1215.CelestialBody self
function row:SetPosition(value) end

---Gets element at 1-based index in 'Position'.
---@param index integer
---@return number value
function row:GetPositionItem(index) end

---Gets the value of field 'BaseFileDataID'.
---@return integer value
function row:GetBaseFileDataID() end

---Sets the value of field 'BaseFileDataID'.
---@param value integer
---@return dbc.row.v1215.CelestialBody self
function row:SetBaseFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'BaseFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetBaseFileData() end

---Creates a related 'FileData' row and automatically links 'BaseFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'BodyBaseScale'.
---@return number value
function row:GetBodyBaseScale() end

---Sets the value of field 'BodyBaseScale'.
---@param value number
---@return dbc.row.v1215.CelestialBody self
function row:SetBodyBaseScale(value) end

---Gets the value of field 'AtmosphericMaskFileDataID'.
---@return integer value
function row:GetAtmosphericMaskFileDataID() end

---Sets the value of field 'AtmosphericMaskFileDataID'.
---@param value integer
---@return dbc.row.v1215.CelestialBody self
function row:SetAtmosphericMaskFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'AtmosphericMaskFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetAtmosphericMaskFileData() end

---Creates a related 'FileData' row and automatically links 'AtmosphericMaskFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'AtmosphericModifiedFileDataID'.
---@return integer value
function row:GetAtmosphericModifiedFileDataID() end

---Sets the value of field 'AtmosphericModifiedFileDataID'.
---@param value integer
---@return dbc.row.v1215.CelestialBody self
function row:SetAtmosphericModifiedFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'AtmosphericModifiedFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetAtmosphericModifiedFileData() end

---Creates a related 'FileData' row and automatically links 'AtmosphericModifiedFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'RotateRate'.
---@return number value
function row:GetRotateRate() end

---Sets the value of field 'RotateRate'.
---@param value number
---@return dbc.row.v1215.CelestialBody self
function row:SetRotateRate(value) end

---Gets the value of field 'AtmosphericMaskScale'.
---@return number value
function row:GetAtmosphericMaskScale() end

---Sets the value of field 'AtmosphericMaskScale'.
---@param value number
---@return dbc.row.v1215.CelestialBody self
function row:SetAtmosphericMaskScale(value) end

---Gets the value of field 'SkyArrayBand'.
---@return integer value
function row:GetSkyArrayBand() end

---Sets the value of field 'SkyArrayBand'.
---@param value integer
---@return dbc.row.v1215.CelestialBody self
function row:SetSkyArrayBand(value) end

---Gets the value of field 'LightMaskFileDataID'.
---@return integer value
function row:GetLightMaskFileDataID() end

---Sets the value of field 'LightMaskFileDataID'.
---@param value integer
---@return dbc.row.v1215.CelestialBody self
function row:SetLightMaskFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'LightMaskFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetLightMaskFileData() end

---Creates a related 'FileData' row and automatically links 'LightMaskFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'GlowMaskFileDataID'.
---@return integer[] value
function row:GetGlowMaskFileDataID() end

---Sets the value of field 'GlowMaskFileDataID'.
---@param value integer[]
---@return dbc.row.v1215.CelestialBody self
function row:SetGlowMaskFileDataID(value) end

---Gets element at 1-based index in 'GlowMaskFileDataID'.
---@param index integer
---@return integer value
function row:GetGlowMaskFileDataIDItem(index) end

---Navigates foreign relationship to 'FileData' via 'GlowMaskFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetGlowMaskFileData() end

---Creates a related 'FileData' row and automatically links 'GlowMaskFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'GlowMaskScale'.
---@return number[] value
function row:GetGlowMaskScale() end

---Sets the value of field 'GlowMaskScale'.
---@param value number[]
---@return dbc.row.v1215.CelestialBody self
function row:SetGlowMaskScale(value) end

---Gets element at 1-based index in 'GlowMaskScale'.
---@param index integer
---@return number value
function row:GetGlowMaskScaleItem(index) end

---Gets the value of field 'GlowModifiedFileDataID'.
---@return integer[] value
function row:GetGlowModifiedFileDataID() end

---Sets the value of field 'GlowModifiedFileDataID'.
---@param value integer[]
---@return dbc.row.v1215.CelestialBody self
function row:SetGlowModifiedFileDataID(value) end

---Gets element at 1-based index in 'GlowModifiedFileDataID'.
---@param index integer
---@return integer value
function row:GetGlowModifiedFileDataIDItem(index) end

---Navigates foreign relationship to 'FileData' via 'GlowModifiedFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetGlowModifiedFileData() end

---Creates a related 'FileData' row and automatically links 'GlowModifiedFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'ScrollURate'.
---@return number[] value
function row:GetScrollURate() end

---Sets the value of field 'ScrollURate'.
---@param value number[]
---@return dbc.row.v1215.CelestialBody self
function row:SetScrollURate(value) end

---Gets element at 1-based index in 'ScrollURate'.
---@param index integer
---@return number value
function row:GetScrollURateItem(index) end

---Gets the value of field 'ScrollVRate'.
---@return number[] value
function row:GetScrollVRate() end

---Sets the value of field 'ScrollVRate'.
---@param value number[]
---@return dbc.row.v1215.CelestialBody self
function row:SetScrollVRate(value) end

---Gets element at 1-based index in 'ScrollVRate'.
---@param index integer
---@return number value
function row:GetScrollVRateItem(index) end

---Table container for CelestialBody (Build 12.1.5.69594).
---@class dbc.Table.v1215.CelestialBody : DbcTable
---@field [integer] dbc.row.v1215.CelestialBody
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CelestialBody
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CelestialBody|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CelestialBody
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CelestialBody>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CelestialBody[]
function tbl:GetByRelation(foreign_id) end

return {}
