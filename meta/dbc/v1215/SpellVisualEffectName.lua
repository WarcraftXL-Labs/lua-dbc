---@meta
-- Generated LuaLS annotations for SpellVisualEffectName (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellVisualEffectName in build 12.1.5.69594.
---@class dbc.row.v1215.SpellVisualEffectName : RowProxy
---@field ID integer
---@field ModelFileDataID integer
---@field BaseMissileSpeed number
---@field Scale number
---@field MinAllowedScale number
---@field MaxAllowedScale number
---@field Alpha number
---@field Flags integer
---@field TextureFileDataID integer
---@field EffectRadius number
---@field Type integer
---@field GenericID integer
---@field RibbonQualityID integer
---@field DissolveEffectID integer
---@field ModelPosition integer
---@field Field_9_1_0_38549_014 integer
---@field Field_11_0_0_54210_015 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualEffectName self
function row:SetID(value) end

---Gets the value of field 'ModelFileDataID'.
---@return integer value
function row:GetModelFileDataID() end

---Sets the value of field 'ModelFileDataID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualEffectName self
function row:SetModelFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'ModelFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetModelFileData() end

---Creates a related 'FileData' row and automatically links 'ModelFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'BaseMissileSpeed'.
---@return number value
function row:GetBaseMissileSpeed() end

---Sets the value of field 'BaseMissileSpeed'.
---@param value number
---@return dbc.row.v1215.SpellVisualEffectName self
function row:SetBaseMissileSpeed(value) end

---Gets the value of field 'Scale'.
---@return number value
function row:GetScale() end

---Sets the value of field 'Scale'.
---@param value number
---@return dbc.row.v1215.SpellVisualEffectName self
function row:SetScale(value) end

---Gets the value of field 'MinAllowedScale'.
---@return number value
function row:GetMinAllowedScale() end

---Sets the value of field 'MinAllowedScale'.
---@param value number
---@return dbc.row.v1215.SpellVisualEffectName self
function row:SetMinAllowedScale(value) end

---Gets the value of field 'MaxAllowedScale'.
---@return number value
function row:GetMaxAllowedScale() end

---Sets the value of field 'MaxAllowedScale'.
---@param value number
---@return dbc.row.v1215.SpellVisualEffectName self
function row:SetMaxAllowedScale(value) end

---Gets the value of field 'Alpha'.
---@return number value
function row:GetAlpha() end

---Sets the value of field 'Alpha'.
---@param value number
---@return dbc.row.v1215.SpellVisualEffectName self
function row:SetAlpha(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.SpellVisualEffectName self
function row:SetFlags(value) end

---Gets the value of field 'TextureFileDataID'.
---@return integer value
function row:GetTextureFileDataID() end

---Sets the value of field 'TextureFileDataID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualEffectName self
function row:SetTextureFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'TextureFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetTextureFileData() end

---Creates a related 'FileData' row and automatically links 'TextureFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'EffectRadius'.
---@return number value
function row:GetEffectRadius() end

---Sets the value of field 'EffectRadius'.
---@param value number
---@return dbc.row.v1215.SpellVisualEffectName self
function row:SetEffectRadius(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.SpellVisualEffectName self
function row:SetType(value) end

---Gets the value of field 'GenericID'.
---@return integer value
function row:GetGenericID() end

---Sets the value of field 'GenericID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualEffectName self
function row:SetGenericID(value) end

---Navigates foreign relationship to 'Generic' via 'GenericID'.
---@return dbc.row.v1215.Generic|nil
function row:GetGeneric() end

---Creates a related 'Generic' row and automatically links 'GenericID'.
---@param data? table
---@return dbc.row.v1215.Generic
function row:CreateRelated(data) end

---Gets the value of field 'RibbonQualityID'.
---@return integer value
function row:GetRibbonQualityID() end

---Sets the value of field 'RibbonQualityID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualEffectName self
function row:SetRibbonQualityID(value) end

---Navigates foreign relationship to 'RibbonQuality' via 'RibbonQualityID'.
---@return dbc.row.v1215.RibbonQuality|nil
function row:GetRibbonQuality() end

---Creates a related 'RibbonQuality' row and automatically links 'RibbonQualityID'.
---@param data? table
---@return dbc.row.v1215.RibbonQuality
function row:CreateRelated(data) end

---Gets the value of field 'DissolveEffectID'.
---@return integer value
function row:GetDissolveEffectID() end

---Sets the value of field 'DissolveEffectID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualEffectName self
function row:SetDissolveEffectID(value) end

---Navigates foreign relationship to 'DissolveEffect' via 'DissolveEffectID'.
---@return dbc.row.v1215.DissolveEffect|nil
function row:GetDissolveEffect() end

---Creates a related 'DissolveEffect' row and automatically links 'DissolveEffectID'.
---@param data? table
---@return dbc.row.v1215.DissolveEffect
function row:CreateRelated(data) end

---Gets the value of field 'ModelPosition'.
---@return integer value
function row:GetModelPosition() end

---Sets the value of field 'ModelPosition'.
---@param value integer
---@return dbc.row.v1215.SpellVisualEffectName self
function row:SetModelPosition(value) end

---Gets the value of field 'Field_9_1_0_38549_014'.
---@return integer value
function row:GetField_9_1_0_38549_014() end

---Sets the value of field 'Field_9_1_0_38549_014'.
---@param value integer
---@return dbc.row.v1215.SpellVisualEffectName self
function row:SetField_9_1_0_38549_014(value) end

---Gets the value of field 'Field_11_0_0_54210_015'.
---@return integer value
function row:GetField_11_0_0_54210_015() end

---Sets the value of field 'Field_11_0_0_54210_015'.
---@param value integer
---@return dbc.row.v1215.SpellVisualEffectName self
function row:SetField_11_0_0_54210_015(value) end

---Table container for SpellVisualEffectName (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellVisualEffectName : DbcTable
---@field [integer] dbc.row.v1215.SpellVisualEffectName
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellVisualEffectName
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellVisualEffectName|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellVisualEffectName
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellVisualEffectName>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellVisualEffectName[]
function tbl:GetByRelation(foreign_id) end

return {}
