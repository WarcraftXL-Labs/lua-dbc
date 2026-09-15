---@meta
-- Generated LuaLS annotations for InitiativeCyclePriority (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of InitiativeCyclePriority in build 12.1.5.69594.
---@class dbc.row.v1215.InitiativeCyclePriority : RowProxy
---@field ID integer
---@field CycleID integer
---@field Priority integer
---@field Field_12_0_0_63534_003 integer
---@field InitiativeID integer Complete guesswork

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.InitiativeCyclePriority self
function row:SetID(value) end

---Gets the value of field 'CycleID'.
---@return integer value
function row:GetCycleID() end

---Sets the value of field 'CycleID'.
---@param value integer
---@return dbc.row.v1215.InitiativeCyclePriority self
function row:SetCycleID(value) end

---Navigates foreign relationship to 'InitiativeCycle' via 'CycleID'.
---@return dbc.row.v1215.InitiativeCycle|nil
function row:GetCycle() end

---Creates a related 'InitiativeCycle' row and automatically links 'CycleID'.
---@param data? table
---@return dbc.row.v1215.InitiativeCycle
function row:CreateRelated(data) end

---Gets the value of field 'Priority'.
---@return integer value
function row:GetPriority() end

---Sets the value of field 'Priority'.
---@param value integer
---@return dbc.row.v1215.InitiativeCyclePriority self
function row:SetPriority(value) end

---Gets the value of field 'Field_12_0_0_63534_003'.
---@return integer value
function row:GetField_12_0_0_63534_003() end

---Sets the value of field 'Field_12_0_0_63534_003'.
---@param value integer
---@return dbc.row.v1215.InitiativeCyclePriority self
function row:SetField_12_0_0_63534_003(value) end

---Gets the value of field 'InitiativeID'.
---@return integer value
function row:GetInitiativeID() end

---Sets the value of field 'InitiativeID'.
---@param value integer
---@return dbc.row.v1215.InitiativeCyclePriority self
function row:SetInitiativeID(value) end

---Navigates foreign relationship to 'NeighborhoodInitiative' via 'InitiativeID'.
---@return dbc.row.v1215.NeighborhoodInitiative|nil
function row:GetInitiative() end

---Creates a related 'NeighborhoodInitiative' row and automatically links 'InitiativeID'.
---@param data? table
---@return dbc.row.v1215.NeighborhoodInitiative
function row:CreateRelated(data) end

---Table container for InitiativeCyclePriority (Build 12.1.5.69594).
---@class dbc.Table.v1215.InitiativeCyclePriority : DbcTable
---@field [integer] dbc.row.v1215.InitiativeCyclePriority
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.InitiativeCyclePriority
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.InitiativeCyclePriority|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.InitiativeCyclePriority
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.InitiativeCyclePriority>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.InitiativeCyclePriority[]
function tbl:GetByRelation(foreign_id) end

return {}
