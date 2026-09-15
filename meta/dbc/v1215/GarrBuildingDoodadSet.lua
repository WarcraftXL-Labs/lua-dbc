---@meta
-- Generated LuaLS annotations for GarrBuildingDoodadSet (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrBuildingDoodadSet in build 12.1.5.69594.
---@class dbc.row.v1215.GarrBuildingDoodadSet : RowProxy
---@field ID integer
---@field GarrBuildingID integer
---@field Type integer
---@field HordeDoodadSet integer
---@field AllianceDoodadSet integer
---@field SpecializationID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrBuildingDoodadSet self
function row:SetID(value) end

---Gets the value of field 'GarrBuildingID'.
---@return integer value
function row:GetGarrBuildingID() end

---Sets the value of field 'GarrBuildingID'.
---@param value integer
---@return dbc.row.v1215.GarrBuildingDoodadSet self
function row:SetGarrBuildingID(value) end

---Navigates foreign relationship to 'GarrBuilding' via 'GarrBuildingID'.
---@return dbc.row.v1215.GarrBuilding|nil
function row:GetGarrBuilding() end

---Creates a related 'GarrBuilding' row and automatically links 'GarrBuildingID'.
---@param data? table
---@return dbc.row.v1215.GarrBuilding
function row:CreateRelated(data) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.GarrBuildingDoodadSet self
function row:SetType(value) end

---Gets the value of field 'HordeDoodadSet'.
---@return integer value
function row:GetHordeDoodadSet() end

---Sets the value of field 'HordeDoodadSet'.
---@param value integer
---@return dbc.row.v1215.GarrBuildingDoodadSet self
function row:SetHordeDoodadSet(value) end

---Gets the value of field 'AllianceDoodadSet'.
---@return integer value
function row:GetAllianceDoodadSet() end

---Sets the value of field 'AllianceDoodadSet'.
---@param value integer
---@return dbc.row.v1215.GarrBuildingDoodadSet self
function row:SetAllianceDoodadSet(value) end

---Gets the value of field 'SpecializationID'.
---@return integer value
function row:GetSpecializationID() end

---Sets the value of field 'SpecializationID'.
---@param value integer
---@return dbc.row.v1215.GarrBuildingDoodadSet self
function row:SetSpecializationID(value) end

---Navigates foreign relationship to 'Specialization' via 'SpecializationID'.
---@return dbc.row.v1215.Specialization|nil
function row:GetSpecialization() end

---Creates a related 'Specialization' row and automatically links 'SpecializationID'.
---@param data? table
---@return dbc.row.v1215.Specialization
function row:CreateRelated(data) end

---Table container for GarrBuildingDoodadSet (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrBuildingDoodadSet : DbcTable
---@field [integer] dbc.row.v1215.GarrBuildingDoodadSet
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrBuildingDoodadSet
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrBuildingDoodadSet|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrBuildingDoodadSet
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrBuildingDoodadSet>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrBuildingDoodadSet[]
function tbl:GetByRelation(foreign_id) end

return {}
