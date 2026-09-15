---@meta
-- Generated LuaLS annotations for BountySet (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of BountySet in build 12.1.5.69594.
---@class dbc.row.v1215.BountySet : RowProxy
---@field ID integer
---@field VisiblePlayerConditionID integer
---@field LockedQuestID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.BountySet self
function row:SetID(value) end

---Gets the value of field 'VisiblePlayerConditionID'.
---@return integer value
function row:GetVisiblePlayerConditionID() end

---Sets the value of field 'VisiblePlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.BountySet self
function row:SetVisiblePlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'VisiblePlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetVisiblePlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'VisiblePlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'LockedQuestID'.
---@return integer value
function row:GetLockedQuestID() end

---Sets the value of field 'LockedQuestID'.
---@param value integer
---@return dbc.row.v1215.BountySet self
function row:SetLockedQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'LockedQuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetLockedQuest() end

---Creates a related 'QuestV2' row and automatically links 'LockedQuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Table container for BountySet (Build 12.1.5.69594).
---@class dbc.Table.v1215.BountySet : DbcTable
---@field [integer] dbc.row.v1215.BountySet
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.BountySet
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.BountySet|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.BountySet
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.BountySet>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.BountySet[]
function tbl:GetByRelation(foreign_id) end

return {}
