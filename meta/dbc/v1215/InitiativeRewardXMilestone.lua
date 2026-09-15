---@meta
-- Generated LuaLS annotations for InitiativeRewardXMilestone (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of InitiativeRewardXMilestone in build 12.1.5.69594.
---@class dbc.row.v1215.InitiativeRewardXMilestone : RowProxy
---@field ID integer
---@field InitiativeRewardID integer
---@field InitiativeMilestoneID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.InitiativeRewardXMilestone self
function row:SetID(value) end

---Gets the value of field 'InitiativeRewardID'.
---@return integer value
function row:GetInitiativeRewardID() end

---Sets the value of field 'InitiativeRewardID'.
---@param value integer
---@return dbc.row.v1215.InitiativeRewardXMilestone self
function row:SetInitiativeRewardID(value) end

---Navigates foreign relationship to 'InitiativeReward' via 'InitiativeRewardID'.
---@return dbc.row.v1215.InitiativeReward|nil
function row:GetInitiativeReward() end

---Creates a related 'InitiativeReward' row and automatically links 'InitiativeRewardID'.
---@param data? table
---@return dbc.row.v1215.InitiativeReward
function row:CreateRelated(data) end

---Gets the value of field 'InitiativeMilestoneID'.
---@return integer value
function row:GetInitiativeMilestoneID() end

---Sets the value of field 'InitiativeMilestoneID'.
---@param value integer
---@return dbc.row.v1215.InitiativeRewardXMilestone self
function row:SetInitiativeMilestoneID(value) end

---Navigates foreign relationship to 'InitiativeMilestone' via 'InitiativeMilestoneID'.
---@return dbc.row.v1215.InitiativeMilestone|nil
function row:GetInitiativeMilestone() end

---Creates a related 'InitiativeMilestone' row and automatically links 'InitiativeMilestoneID'.
---@param data? table
---@return dbc.row.v1215.InitiativeMilestone
function row:CreateRelated(data) end

---Table container for InitiativeRewardXMilestone (Build 12.1.5.69594).
---@class dbc.Table.v1215.InitiativeRewardXMilestone : DbcTable
---@field [integer] dbc.row.v1215.InitiativeRewardXMilestone
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.InitiativeRewardXMilestone
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.InitiativeRewardXMilestone|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.InitiativeRewardXMilestone
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.InitiativeRewardXMilestone>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.InitiativeRewardXMilestone[]
function tbl:GetByRelation(foreign_id) end

return {}
