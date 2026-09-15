---@meta
-- Generated LuaLS annotations for GarrEncounterXMechanic (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrEncounterXMechanic in build 12.1.5.69594.
---@class dbc.row.v1215.GarrEncounterXMechanic : RowProxy
---@field ID integer
---@field GarrMechanicID integer
---@field GarrMechanicSetID integer
---@field GarrEncounterID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrEncounterXMechanic self
function row:SetID(value) end

---Gets the value of field 'GarrMechanicID'.
---@return integer value
function row:GetGarrMechanicID() end

---Sets the value of field 'GarrMechanicID'.
---@param value integer
---@return dbc.row.v1215.GarrEncounterXMechanic self
function row:SetGarrMechanicID(value) end

---Navigates foreign relationship to 'GarrMechanic' via 'GarrMechanicID'.
---@return dbc.row.v1215.GarrMechanic|nil
function row:GetGarrMechanic() end

---Creates a related 'GarrMechanic' row and automatically links 'GarrMechanicID'.
---@param data? table
---@return dbc.row.v1215.GarrMechanic
function row:CreateRelated(data) end

---Gets the value of field 'GarrMechanicSetID'.
---@return integer value
function row:GetGarrMechanicSetID() end

---Sets the value of field 'GarrMechanicSetID'.
---@param value integer
---@return dbc.row.v1215.GarrEncounterXMechanic self
function row:SetGarrMechanicSetID(value) end

---Navigates foreign relationship to 'GarrMechanicSet' via 'GarrMechanicSetID'.
---@return dbc.row.v1215.GarrMechanicSet|nil
function row:GetGarrMechanicSet() end

---Creates a related 'GarrMechanicSet' row and automatically links 'GarrMechanicSetID'.
---@param data? table
---@return dbc.row.v1215.GarrMechanicSet
function row:CreateRelated(data) end

---Gets the value of field 'GarrEncounterID'.
---@return integer value
function row:GetGarrEncounterID() end

---Sets the value of field 'GarrEncounterID'.
---@param value integer
---@return dbc.row.v1215.GarrEncounterXMechanic self
function row:SetGarrEncounterID(value) end

---Navigates foreign relationship to 'GarrEncounter' via 'GarrEncounterID'.
---@return dbc.row.v1215.GarrEncounter|nil
function row:GetGarrEncounter() end

---Creates a related 'GarrEncounter' row and automatically links 'GarrEncounterID'.
---@param data? table
---@return dbc.row.v1215.GarrEncounter
function row:CreateRelated(data) end

---Table container for GarrEncounterXMechanic (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrEncounterXMechanic : DbcTable
---@field [integer] dbc.row.v1215.GarrEncounterXMechanic
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrEncounterXMechanic
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrEncounterXMechanic|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrEncounterXMechanic
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrEncounterXMechanic>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrEncounterXMechanic[]
function tbl:GetByRelation(foreign_id) end

return {}
