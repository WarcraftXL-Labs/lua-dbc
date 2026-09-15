---@meta
-- Generated LuaLS annotations for GarrEncounterSetXEncounter (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrEncounterSetXEncounter in build 12.1.5.69594.
---@class dbc.row.v1215.GarrEncounterSetXEncounter : RowProxy
---@field ID integer
---@field GarrEncounterID integer
---@field GarrEncounterSetID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrEncounterSetXEncounter self
function row:SetID(value) end

---Gets the value of field 'GarrEncounterID'.
---@return integer value
function row:GetGarrEncounterID() end

---Sets the value of field 'GarrEncounterID'.
---@param value integer
---@return dbc.row.v1215.GarrEncounterSetXEncounter self
function row:SetGarrEncounterID(value) end

---Navigates foreign relationship to 'GarrEncounter' via 'GarrEncounterID'.
---@return dbc.row.v1215.GarrEncounter|nil
function row:GetGarrEncounter() end

---Creates a related 'GarrEncounter' row and automatically links 'GarrEncounterID'.
---@param data? table
---@return dbc.row.v1215.GarrEncounter
function row:CreateRelated(data) end

---Gets the value of field 'GarrEncounterSetID'.
---@return integer value
function row:GetGarrEncounterSetID() end

---Sets the value of field 'GarrEncounterSetID'.
---@param value integer
---@return dbc.row.v1215.GarrEncounterSetXEncounter self
function row:SetGarrEncounterSetID(value) end

---Navigates foreign relationship to 'GarrEncounterSet' via 'GarrEncounterSetID'.
---@return dbc.row.v1215.GarrEncounterSet|nil
function row:GetGarrEncounterSet() end

---Creates a related 'GarrEncounterSet' row and automatically links 'GarrEncounterSetID'.
---@param data? table
---@return dbc.row.v1215.GarrEncounterSet
function row:CreateRelated(data) end

---Table container for GarrEncounterSetXEncounter (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrEncounterSetXEncounter : DbcTable
---@field [integer] dbc.row.v1215.GarrEncounterSetXEncounter
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrEncounterSetXEncounter
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrEncounterSetXEncounter|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrEncounterSetXEncounter
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrEncounterSetXEncounter>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrEncounterSetXEncounter[]
function tbl:GetByRelation(foreign_id) end

return {}
