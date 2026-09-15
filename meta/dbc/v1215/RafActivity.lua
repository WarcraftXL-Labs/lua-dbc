---@meta
-- Generated LuaLS annotations for RafActivity (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of RafActivity in build 12.1.5.69594.
---@class dbc.row.v1215.RafActivity : RowProxy
---@field ID integer
---@field CriteriaTreeID integer
---@field RewardQuestID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.RafActivity self
function row:SetID(value) end

---Gets the value of field 'CriteriaTreeID'.
---@return integer value
function row:GetCriteriaTreeID() end

---Sets the value of field 'CriteriaTreeID'.
---@param value integer
---@return dbc.row.v1215.RafActivity self
function row:SetCriteriaTreeID(value) end

---Navigates foreign relationship to 'CriteriaTree' via 'CriteriaTreeID'.
---@return dbc.row.v1215.CriteriaTree|nil
function row:GetCriteriaTree() end

---Creates a related 'CriteriaTree' row and automatically links 'CriteriaTreeID'.
---@param data? table
---@return dbc.row.v1215.CriteriaTree
function row:CreateRelated(data) end

---Gets the value of field 'RewardQuestID'.
---@return integer value
function row:GetRewardQuestID() end

---Sets the value of field 'RewardQuestID'.
---@param value integer
---@return dbc.row.v1215.RafActivity self
function row:SetRewardQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'RewardQuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetRewardQuest() end

---Creates a related 'QuestV2' row and automatically links 'RewardQuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Table container for RafActivity (Build 12.1.5.69594).
---@class dbc.Table.v1215.RafActivity : DbcTable
---@field [integer] dbc.row.v1215.RafActivity
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.RafActivity
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.RafActivity|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.RafActivity
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.RafActivity>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.RafActivity[]
function tbl:GetByRelation(foreign_id) end

return {}
