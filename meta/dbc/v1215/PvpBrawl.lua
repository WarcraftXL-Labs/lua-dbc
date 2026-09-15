---@meta
-- Generated LuaLS annotations for PvpBrawl (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PvpBrawl in build 12.1.5.69594.
---@class dbc.row.v1215.PvpBrawl : RowProxy
---@field Name_lang string
---@field Description_lang string
---@field Objective_lang string
---@field ID integer
---@field BattlemasterListID integer
---@field LFGDungeonsID integer
---@field RewardsQuestID integer

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.PvpBrawl self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.PvpBrawl self
function row:SetDescription_lang(value) end

---Gets the value of field 'Objective_lang'.
---@return string value
function row:GetObjective_lang() end

---Sets the value of field 'Objective_lang'.
---@param value string
---@return dbc.row.v1215.PvpBrawl self
function row:SetObjective_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PvpBrawl self
function row:SetID(value) end

---Gets the value of field 'BattlemasterListID'.
---@return integer value
function row:GetBattlemasterListID() end

---Sets the value of field 'BattlemasterListID'.
---@param value integer
---@return dbc.row.v1215.PvpBrawl self
function row:SetBattlemasterListID(value) end

---Navigates foreign relationship to 'BattlemasterList' via 'BattlemasterListID'.
---@return dbc.row.v1215.BattlemasterList|nil
function row:GetBattlemasterList() end

---Creates a related 'BattlemasterList' row and automatically links 'BattlemasterListID'.
---@param data? table
---@return dbc.row.v1215.BattlemasterList
function row:CreateRelated(data) end

---Gets the value of field 'LFGDungeonsID'.
---@return integer value
function row:GetLFGDungeonsID() end

---Sets the value of field 'LFGDungeonsID'.
---@param value integer
---@return dbc.row.v1215.PvpBrawl self
function row:SetLFGDungeonsID(value) end

---Navigates foreign relationship to 'LFGDungeons' via 'LFGDungeonsID'.
---@return dbc.row.v1215.LFGDungeons|nil
function row:GetLFGDungeons() end

---Creates a related 'LFGDungeons' row and automatically links 'LFGDungeonsID'.
---@param data? table
---@return dbc.row.v1215.LFGDungeons
function row:CreateRelated(data) end

---Gets the value of field 'RewardsQuestID'.
---@return integer value
function row:GetRewardsQuestID() end

---Sets the value of field 'RewardsQuestID'.
---@param value integer
---@return dbc.row.v1215.PvpBrawl self
function row:SetRewardsQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'RewardsQuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetRewardsQuest() end

---Creates a related 'QuestV2' row and automatically links 'RewardsQuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Table container for PvpBrawl (Build 12.1.5.69594).
---@class dbc.Table.v1215.PvpBrawl : DbcTable
---@field [integer] dbc.row.v1215.PvpBrawl
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PvpBrawl
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PvpBrawl|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PvpBrawl
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PvpBrawl>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PvpBrawl[]
function tbl:GetByRelation(foreign_id) end

return {}
