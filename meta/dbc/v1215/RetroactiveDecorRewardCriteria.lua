---@meta
-- Generated LuaLS annotations for RetroactiveDecorRewardCriteria (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of RetroactiveDecorRewardCriteria in build 12.1.5.69594.
---@class dbc.row.v1215.RetroactiveDecorRewardCriteria : RowProxy
---@field ID integer
---@field AchievementID integer
---@field QuestID integer
---@field RetroactiveDecorRewardID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.RetroactiveDecorRewardCriteria self
function row:SetID(value) end

---Gets the value of field 'AchievementID'.
---@return integer value
function row:GetAchievementID() end

---Sets the value of field 'AchievementID'.
---@param value integer
---@return dbc.row.v1215.RetroactiveDecorRewardCriteria self
function row:SetAchievementID(value) end

---Navigates foreign relationship to 'Achievement' via 'AchievementID'.
---@return dbc.row.v1215.Achievement|nil
function row:GetAchievement() end

---Creates a related 'Achievement' row and automatically links 'AchievementID'.
---@param data? table
---@return dbc.row.v1215.Achievement
function row:CreateRelated(data) end

---Gets the value of field 'QuestID'.
---@return integer value
function row:GetQuestID() end

---Sets the value of field 'QuestID'.
---@param value integer
---@return dbc.row.v1215.RetroactiveDecorRewardCriteria self
function row:SetQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'QuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetQuest() end

---Creates a related 'QuestV2' row and automatically links 'QuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'RetroactiveDecorRewardID'.
---@return integer value
function row:GetRetroactiveDecorRewardID() end

---Sets the value of field 'RetroactiveDecorRewardID'.
---@param value integer
---@return dbc.row.v1215.RetroactiveDecorRewardCriteria self
function row:SetRetroactiveDecorRewardID(value) end

---Navigates foreign relationship to 'RetroactiveDecorReward' via 'RetroactiveDecorRewardID'.
---@return dbc.row.v1215.RetroactiveDecorReward|nil
function row:GetRetroactiveDecorReward() end

---Creates a related 'RetroactiveDecorReward' row and automatically links 'RetroactiveDecorRewardID'.
---@param data? table
---@return dbc.row.v1215.RetroactiveDecorReward
function row:CreateRelated(data) end

---Table container for RetroactiveDecorRewardCriteria (Build 12.1.5.69594).
---@class dbc.Table.v1215.RetroactiveDecorRewardCriteria : DbcTable
---@field [integer] dbc.row.v1215.RetroactiveDecorRewardCriteria
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.RetroactiveDecorRewardCriteria
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.RetroactiveDecorRewardCriteria|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.RetroactiveDecorRewardCriteria
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.RetroactiveDecorRewardCriteria>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.RetroactiveDecorRewardCriteria[]
function tbl:GetByRelation(foreign_id) end

return {}
