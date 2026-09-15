---@meta
-- Generated LuaLS annotations for RetroactiveDecorReward (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of RetroactiveDecorReward in build 12.1.5.69594.
---@class dbc.row.v1215.RetroactiveDecorReward : RowProxy
---@field ID integer
---@field Field_12_0_0_63534_002 integer
---@field AchievementID integer
---@field QuestID integer
---@field Field_12_0_0_63967_005 integer
---@field HouseDecorID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.RetroactiveDecorReward self
function row:SetID(value) end

---Gets the value of field 'Field_12_0_0_63534_002'.
---@return integer value
function row:GetField_12_0_0_63534_002() end

---Sets the value of field 'Field_12_0_0_63534_002'.
---@param value integer
---@return dbc.row.v1215.RetroactiveDecorReward self
function row:SetField_12_0_0_63534_002(value) end

---Gets the value of field 'AchievementID'.
---@return integer value
function row:GetAchievementID() end

---Sets the value of field 'AchievementID'.
---@param value integer
---@return dbc.row.v1215.RetroactiveDecorReward self
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
---@return dbc.row.v1215.RetroactiveDecorReward self
function row:SetQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'QuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetQuest() end

---Creates a related 'QuestV2' row and automatically links 'QuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_0_0_63967_005'.
---@return integer value
function row:GetField_12_0_0_63967_005() end

---Sets the value of field 'Field_12_0_0_63967_005'.
---@param value integer
---@return dbc.row.v1215.RetroactiveDecorReward self
function row:SetField_12_0_0_63967_005(value) end

---Gets the value of field 'HouseDecorID'.
---@return integer value
function row:GetHouseDecorID() end

---Sets the value of field 'HouseDecorID'.
---@param value integer
---@return dbc.row.v1215.RetroactiveDecorReward self
function row:SetHouseDecorID(value) end

---Navigates foreign relationship to 'HouseDecor' via 'HouseDecorID'.
---@return dbc.row.v1215.HouseDecor|nil
function row:GetHouseDecor() end

---Creates a related 'HouseDecor' row and automatically links 'HouseDecorID'.
---@param data? table
---@return dbc.row.v1215.HouseDecor
function row:CreateRelated(data) end

---Table container for RetroactiveDecorReward (Build 12.1.5.69594).
---@class dbc.Table.v1215.RetroactiveDecorReward : DbcTable
---@field [integer] dbc.row.v1215.RetroactiveDecorReward
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.RetroactiveDecorReward
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.RetroactiveDecorReward|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.RetroactiveDecorReward
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.RetroactiveDecorReward>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.RetroactiveDecorReward[]
function tbl:GetByRelation(foreign_id) end

return {}
