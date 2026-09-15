---@meta
-- Generated LuaLS annotations for GroundEffectDoodad (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GroundEffectDoodad in build 12.1.5.69594.
---@class dbc.row.v1215.GroundEffectDoodad : RowProxy
---@field ID integer
---@field ModelFileID integer
---@field Flags integer
---@field Animscale number
---@field Pushscale number
---@field Size_variation_min number
---@field Size_variation_max number
---@field Rotation_variation_min number in degrees
---@field Rotation_variation_max number in degrees
---@field TerrainColorGradingRampID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GroundEffectDoodad self
function row:SetID(value) end

---Gets the value of field 'ModelFileID'.
---@return integer value
function row:GetModelFileID() end

---Sets the value of field 'ModelFileID'.
---@param value integer
---@return dbc.row.v1215.GroundEffectDoodad self
function row:SetModelFileID(value) end

---Navigates foreign relationship to 'FileData' via 'ModelFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetModelFile() end

---Creates a related 'FileData' row and automatically links 'ModelFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.GroundEffectDoodad self
function row:SetFlags(value) end

---Gets the value of field 'Animscale'.
---@return number value
function row:GetAnimscale() end

---Sets the value of field 'Animscale'.
---@param value number
---@return dbc.row.v1215.GroundEffectDoodad self
function row:SetAnimscale(value) end

---Gets the value of field 'Pushscale'.
---@return number value
function row:GetPushscale() end

---Sets the value of field 'Pushscale'.
---@param value number
---@return dbc.row.v1215.GroundEffectDoodad self
function row:SetPushscale(value) end

---Gets the value of field 'Size_variation_min'.
---@return number value
function row:GetSize_variation_min() end

---Sets the value of field 'Size_variation_min'.
---@param value number
---@return dbc.row.v1215.GroundEffectDoodad self
function row:SetSize_variation_min(value) end

---Gets the value of field 'Size_variation_max'.
---@return number value
function row:GetSize_variation_max() end

---Sets the value of field 'Size_variation_max'.
---@param value number
---@return dbc.row.v1215.GroundEffectDoodad self
function row:SetSize_variation_max(value) end

---Gets the value of field 'Rotation_variation_min'.
---@return number value
function row:GetRotation_variation_min() end

---Sets the value of field 'Rotation_variation_min'.
---@param value number
---@return dbc.row.v1215.GroundEffectDoodad self
function row:SetRotation_variation_min(value) end

---Gets the value of field 'Rotation_variation_max'.
---@return number value
function row:GetRotation_variation_max() end

---Sets the value of field 'Rotation_variation_max'.
---@param value number
---@return dbc.row.v1215.GroundEffectDoodad self
function row:SetRotation_variation_max(value) end

---Gets the value of field 'TerrainColorGradingRampID'.
---@return integer value
function row:GetTerrainColorGradingRampID() end

---Sets the value of field 'TerrainColorGradingRampID'.
---@param value integer
---@return dbc.row.v1215.GroundEffectDoodad self
function row:SetTerrainColorGradingRampID(value) end

---Navigates foreign relationship to 'TerrainColorGradingRamp' via 'TerrainColorGradingRampID'.
---@return dbc.row.v1215.TerrainColorGradingRamp|nil
function row:GetTerrainColorGradingRamp() end

---Creates a related 'TerrainColorGradingRamp' row and automatically links 'TerrainColorGradingRampID'.
---@param data? table
---@return dbc.row.v1215.TerrainColorGradingRamp
function row:CreateRelated(data) end

---Table container for GroundEffectDoodad (Build 12.1.5.69594).
---@class dbc.Table.v1215.GroundEffectDoodad : DbcTable
---@field [integer] dbc.row.v1215.GroundEffectDoodad
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GroundEffectDoodad
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GroundEffectDoodad|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GroundEffectDoodad
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GroundEffectDoodad>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GroundEffectDoodad[]
function tbl:GetByRelation(foreign_id) end

return {}
