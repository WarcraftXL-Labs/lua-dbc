---@meta
-- Generated LuaLS annotations for MapChallengeMode (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MapChallengeMode in build 12.1.5.69594.
---@class dbc.row.v1215.MapChallengeMode : RowProxy
---@field Name_lang string
---@field ID integer
---@field MapID integer
---@field Flags integer
---@field Field_12_0_0_63854_004 integer
---@field ExpansionLevel integer
---@field RequiredWorldStateID integer
---@field CriteriaCount integer[]
---@field FirstRewardQuestID integer[]
---@field RewardQuestID integer[]

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.MapChallengeMode self
function row:SetName_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MapChallengeMode self
function row:SetID(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.MapChallengeMode self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.MapChallengeMode self
function row:SetFlags(value) end

---Gets the value of field 'Field_12_0_0_63854_004'.
---@return integer value
function row:GetField_12_0_0_63854_004() end

---Sets the value of field 'Field_12_0_0_63854_004'.
---@param value integer
---@return dbc.row.v1215.MapChallengeMode self
function row:SetField_12_0_0_63854_004(value) end

---Gets the value of field 'ExpansionLevel'.
---@return integer value
function row:GetExpansionLevel() end

---Sets the value of field 'ExpansionLevel'.
---@param value integer
---@return dbc.row.v1215.MapChallengeMode self
function row:SetExpansionLevel(value) end

---Gets the value of field 'RequiredWorldStateID'.
---@return integer value
function row:GetRequiredWorldStateID() end

---Sets the value of field 'RequiredWorldStateID'.
---@param value integer
---@return dbc.row.v1215.MapChallengeMode self
function row:SetRequiredWorldStateID(value) end

---Navigates foreign relationship to 'RequiredWorldState' via 'RequiredWorldStateID'.
---@return dbc.row.v1215.RequiredWorldState|nil
function row:GetRequiredWorldState() end

---Creates a related 'RequiredWorldState' row and automatically links 'RequiredWorldStateID'.
---@param data? table
---@return dbc.row.v1215.RequiredWorldState
function row:CreateRelated(data) end

---Gets the value of field 'CriteriaCount'.
---@return integer[] value
function row:GetCriteriaCount() end

---Sets the value of field 'CriteriaCount'.
---@param value integer[]
---@return dbc.row.v1215.MapChallengeMode self
function row:SetCriteriaCount(value) end

---Gets element at 1-based index in 'CriteriaCount'.
---@param index integer
---@return integer value
function row:GetCriteriaCountItem(index) end

---Gets the value of field 'FirstRewardQuestID'.
---@return integer[] value
function row:GetFirstRewardQuestID() end

---Sets the value of field 'FirstRewardQuestID'.
---@param value integer[]
---@return dbc.row.v1215.MapChallengeMode self
function row:SetFirstRewardQuestID(value) end

---Gets element at 1-based index in 'FirstRewardQuestID'.
---@param index integer
---@return integer value
function row:GetFirstRewardQuestIDItem(index) end

---Navigates foreign relationship to 'QuestV2' via 'FirstRewardQuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetFirstRewardQuest() end

---Creates a related 'QuestV2' row and automatically links 'FirstRewardQuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'RewardQuestID'.
---@return integer[] value
function row:GetRewardQuestID() end

---Sets the value of field 'RewardQuestID'.
---@param value integer[]
---@return dbc.row.v1215.MapChallengeMode self
function row:SetRewardQuestID(value) end

---Gets element at 1-based index in 'RewardQuestID'.
---@param index integer
---@return integer value
function row:GetRewardQuestIDItem(index) end

---Navigates foreign relationship to 'QuestV2' via 'RewardQuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetRewardQuest() end

---Creates a related 'QuestV2' row and automatically links 'RewardQuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Table container for MapChallengeMode (Build 12.1.5.69594).
---@class dbc.Table.v1215.MapChallengeMode : DbcTable
---@field [integer] dbc.row.v1215.MapChallengeMode
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MapChallengeMode
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MapChallengeMode|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MapChallengeMode
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MapChallengeMode>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MapChallengeMode[]
function tbl:GetByRelation(foreign_id) end

return {}
