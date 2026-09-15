---@meta
-- Generated LuaLS annotations for InitiativeMilestone (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of InitiativeMilestone in build 12.1.5.69594.
---@class dbc.row.v1215.InitiativeMilestone : RowProxy
---@field ID integer
---@field MilestoneOrderIndex integer
---@field RequiredContributionAmount number
---@field Field_12_0_0_63534_003 integer 1: Main reward (100% one)
---@field NeighborhoodInitiativeID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.InitiativeMilestone self
function row:SetID(value) end

---Gets the value of field 'MilestoneOrderIndex'.
---@return integer value
function row:GetMilestoneOrderIndex() end

---Sets the value of field 'MilestoneOrderIndex'.
---@param value integer
---@return dbc.row.v1215.InitiativeMilestone self
function row:SetMilestoneOrderIndex(value) end

---Gets the value of field 'RequiredContributionAmount'.
---@return number value
function row:GetRequiredContributionAmount() end

---Sets the value of field 'RequiredContributionAmount'.
---@param value number
---@return dbc.row.v1215.InitiativeMilestone self
function row:SetRequiredContributionAmount(value) end

---Gets the value of field 'Field_12_0_0_63534_003'.
---@return integer value
function row:GetField_12_0_0_63534_003() end

---Sets the value of field 'Field_12_0_0_63534_003'.
---@param value integer
---@return dbc.row.v1215.InitiativeMilestone self
function row:SetField_12_0_0_63534_003(value) end

---Gets the value of field 'NeighborhoodInitiativeID'.
---@return integer value
function row:GetNeighborhoodInitiativeID() end

---Sets the value of field 'NeighborhoodInitiativeID'.
---@param value integer
---@return dbc.row.v1215.InitiativeMilestone self
function row:SetNeighborhoodInitiativeID(value) end

---Navigates foreign relationship to 'NeighborhoodInitiative' via 'NeighborhoodInitiativeID'.
---@return dbc.row.v1215.NeighborhoodInitiative|nil
function row:GetNeighborhoodInitiative() end

---Creates a related 'NeighborhoodInitiative' row and automatically links 'NeighborhoodInitiativeID'.
---@param data? table
---@return dbc.row.v1215.NeighborhoodInitiative
function row:CreateRelated(data) end

---Table container for InitiativeMilestone (Build 12.1.5.69594).
---@class dbc.Table.v1215.InitiativeMilestone : DbcTable
---@field [integer] dbc.row.v1215.InitiativeMilestone
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.InitiativeMilestone
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.InitiativeMilestone|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.InitiativeMilestone
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.InitiativeMilestone>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.InitiativeMilestone[]
function tbl:GetByRelation(foreign_id) end

return {}
