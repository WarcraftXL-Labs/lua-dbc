---@meta
-- Generated LuaLS annotations for PhaseXPhaseGroup (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PhaseXPhaseGroup in build 12.1.5.69594.
---@class dbc.row.v1215.PhaseXPhaseGroup : RowProxy
---@field ID integer
---@field PhaseID integer
---@field PhaseGroupID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PhaseXPhaseGroup self
function row:SetID(value) end

---Gets the value of field 'PhaseID'.
---@return integer value
function row:GetPhaseID() end

---Sets the value of field 'PhaseID'.
---@param value integer
---@return dbc.row.v1215.PhaseXPhaseGroup self
function row:SetPhaseID(value) end

---Navigates foreign relationship to 'Phase' via 'PhaseID'.
---@return dbc.row.v1215.Phase|nil
function row:GetPhase() end

---Creates a related 'Phase' row and automatically links 'PhaseID'.
---@param data? table
---@return dbc.row.v1215.Phase
function row:CreateRelated(data) end

---Gets the value of field 'PhaseGroupID'.
---@return integer value
function row:GetPhaseGroupID() end

---Sets the value of field 'PhaseGroupID'.
---@param value integer
---@return dbc.row.v1215.PhaseXPhaseGroup self
function row:SetPhaseGroupID(value) end

---Navigates foreign relationship to 'PhaseGroup' via 'PhaseGroupID'.
---@return dbc.row.v1215.PhaseGroup|nil
function row:GetPhaseGroup() end

---Creates a related 'PhaseGroup' row and automatically links 'PhaseGroupID'.
---@param data? table
---@return dbc.row.v1215.PhaseGroup
function row:CreateRelated(data) end

---Table container for PhaseXPhaseGroup (Build 12.1.5.69594).
---@class dbc.Table.v1215.PhaseXPhaseGroup : DbcTable
---@field [integer] dbc.row.v1215.PhaseXPhaseGroup
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PhaseXPhaseGroup
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PhaseXPhaseGroup|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PhaseXPhaseGroup
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PhaseXPhaseGroup>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PhaseXPhaseGroup[]
function tbl:GetByRelation(foreign_id) end

return {}
