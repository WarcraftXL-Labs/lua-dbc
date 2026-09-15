---@meta
-- Generated LuaLS annotations for LFGRoleRequirement (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of LFGRoleRequirement in build 12.1.5.69594.
---@class dbc.row.v1215.LFGRoleRequirement : RowProxy
---@field ID integer
---@field RoleType integer
---@field PlayerConditionID integer
---@field LfgDungeonsID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.LFGRoleRequirement self
function row:SetID(value) end

---Gets the value of field 'RoleType'.
---@return integer value
function row:GetRoleType() end

---Sets the value of field 'RoleType'.
---@param value integer
---@return dbc.row.v1215.LFGRoleRequirement self
function row:SetRoleType(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.LFGRoleRequirement self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'LfgDungeonsID'.
---@return integer value
function row:GetLfgDungeonsID() end

---Sets the value of field 'LfgDungeonsID'.
---@param value integer
---@return dbc.row.v1215.LFGRoleRequirement self
function row:SetLfgDungeonsID(value) end

---Navigates foreign relationship to 'LFGDungeons' via 'LfgDungeonsID'.
---@return dbc.row.v1215.LFGDungeons|nil
function row:GetLfgDungeons() end

---Creates a related 'LFGDungeons' row and automatically links 'LfgDungeonsID'.
---@param data? table
---@return dbc.row.v1215.LFGDungeons
function row:CreateRelated(data) end

---Table container for LFGRoleRequirement (Build 12.1.5.69594).
---@class dbc.Table.v1215.LFGRoleRequirement : DbcTable
---@field [integer] dbc.row.v1215.LFGRoleRequirement
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.LFGRoleRequirement
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.LFGRoleRequirement|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.LFGRoleRequirement
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.LFGRoleRequirement>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.LFGRoleRequirement[]
function tbl:GetByRelation(foreign_id) end

return {}
