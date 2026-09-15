---@meta
-- Generated LuaLS annotations for InitiativeXTask (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of InitiativeXTask in build 12.1.5.69594.
---@class dbc.row.v1215.InitiativeXTask : RowProxy
---@field ID integer
---@field InitiativeTaskID integer
---@field OrderIndex integer
---@field NeighborhoodInitiativeID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.InitiativeXTask self
function row:SetID(value) end

---Gets the value of field 'InitiativeTaskID'.
---@return integer value
function row:GetInitiativeTaskID() end

---Sets the value of field 'InitiativeTaskID'.
---@param value integer
---@return dbc.row.v1215.InitiativeXTask self
function row:SetInitiativeTaskID(value) end

---Navigates foreign relationship to 'InitiativeTask' via 'InitiativeTaskID'.
---@return dbc.row.v1215.InitiativeTask|nil
function row:GetInitiativeTask() end

---Creates a related 'InitiativeTask' row and automatically links 'InitiativeTaskID'.
---@param data? table
---@return dbc.row.v1215.InitiativeTask
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.InitiativeXTask self
function row:SetOrderIndex(value) end

---Gets the value of field 'NeighborhoodInitiativeID'.
---@return integer value
function row:GetNeighborhoodInitiativeID() end

---Sets the value of field 'NeighborhoodInitiativeID'.
---@param value integer
---@return dbc.row.v1215.InitiativeXTask self
function row:SetNeighborhoodInitiativeID(value) end

---Navigates foreign relationship to 'NeighborhoodInitiative' via 'NeighborhoodInitiativeID'.
---@return dbc.row.v1215.NeighborhoodInitiative|nil
function row:GetNeighborhoodInitiative() end

---Creates a related 'NeighborhoodInitiative' row and automatically links 'NeighborhoodInitiativeID'.
---@param data? table
---@return dbc.row.v1215.NeighborhoodInitiative
function row:CreateRelated(data) end

---Table container for InitiativeXTask (Build 12.1.5.69594).
---@class dbc.Table.v1215.InitiativeXTask : DbcTable
---@field [integer] dbc.row.v1215.InitiativeXTask
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.InitiativeXTask
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.InitiativeXTask|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.InitiativeXTask
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.InitiativeXTask>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.InitiativeXTask[]
function tbl:GetByRelation(foreign_id) end

return {}
