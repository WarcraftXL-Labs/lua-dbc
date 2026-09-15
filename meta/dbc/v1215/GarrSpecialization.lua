---@meta
-- Generated LuaLS annotations for GarrSpecialization (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrSpecialization in build 12.1.5.69594.
---@class dbc.row.v1215.GarrSpecialization : RowProxy
---@field ID integer
---@field Name_lang string
---@field Tooltip_lang string
---@field BuildingType integer
---@field SpecType integer
---@field RequiredUpgradeLevel integer
---@field IconFileDataID integer
---@field Param number[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrSpecialization self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.GarrSpecialization self
function row:SetName_lang(value) end

---Gets the value of field 'Tooltip_lang'.
---@return string value
function row:GetTooltip_lang() end

---Sets the value of field 'Tooltip_lang'.
---@param value string
---@return dbc.row.v1215.GarrSpecialization self
function row:SetTooltip_lang(value) end

---Gets the value of field 'BuildingType'.
---@return integer value
function row:GetBuildingType() end

---Sets the value of field 'BuildingType'.
---@param value integer
---@return dbc.row.v1215.GarrSpecialization self
function row:SetBuildingType(value) end

---Gets the value of field 'SpecType'.
---@return integer value
function row:GetSpecType() end

---Sets the value of field 'SpecType'.
---@param value integer
---@return dbc.row.v1215.GarrSpecialization self
function row:SetSpecType(value) end

---Gets the value of field 'RequiredUpgradeLevel'.
---@return integer value
function row:GetRequiredUpgradeLevel() end

---Sets the value of field 'RequiredUpgradeLevel'.
---@param value integer
---@return dbc.row.v1215.GarrSpecialization self
function row:SetRequiredUpgradeLevel(value) end

---Gets the value of field 'IconFileDataID'.
---@return integer value
function row:GetIconFileDataID() end

---Sets the value of field 'IconFileDataID'.
---@param value integer
---@return dbc.row.v1215.GarrSpecialization self
function row:SetIconFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'IconFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetIconFileData() end

---Creates a related 'FileData' row and automatically links 'IconFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Param'.
---@return number[] value
function row:GetParam() end

---Sets the value of field 'Param'.
---@param value number[]
---@return dbc.row.v1215.GarrSpecialization self
function row:SetParam(value) end

---Gets element at 1-based index in 'Param'.
---@param index integer
---@return number value
function row:GetParamItem(index) end

---Table container for GarrSpecialization (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrSpecialization : DbcTable
---@field [integer] dbc.row.v1215.GarrSpecialization
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrSpecialization
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrSpecialization|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrSpecialization
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrSpecialization>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrSpecialization[]
function tbl:GetByRelation(foreign_id) end

return {}
