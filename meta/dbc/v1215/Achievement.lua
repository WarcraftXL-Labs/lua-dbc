---@meta
-- Generated LuaLS annotations for Achievement (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Achievement in build 12.1.5.69594.
---@class dbc.row.v1215.Achievement : RowProxy
---@field Description_lang string
---@field Title_lang string
---@field Reward_lang string
---@field ID integer
---@field Instance_ID integer
---@field Faction integer
---@field Supercedes integer
---@field Category integer
---@field Minimum_criteria integer
---@field Points integer
---@field Flags integer
---@field Ui_order integer
---@field IconFileID integer
---@field RewardItemID integer
---@field Criteria_tree integer
---@field Shares_criteria integer
---@field CovenantID integer
---@field HiddenBeforeDisplaySeason integer hidden in UI before this DisplaySeason is active
---@field LegacyAfterTimeEvent integer category changes clientside to Legacy (15234) after this TimeEvent is passed

local row = {}

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.Achievement self
function row:SetDescription_lang(value) end

---Gets the value of field 'Title_lang'.
---@return string value
function row:GetTitle_lang() end

---Sets the value of field 'Title_lang'.
---@param value string
---@return dbc.row.v1215.Achievement self
function row:SetTitle_lang(value) end

---Gets the value of field 'Reward_lang'.
---@return string value
function row:GetReward_lang() end

---Sets the value of field 'Reward_lang'.
---@param value string
---@return dbc.row.v1215.Achievement self
function row:SetReward_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Achievement self
function row:SetID(value) end

---Gets the value of field 'Instance_ID'.
---@return integer value
function row:GetInstance_ID() end

---Sets the value of field 'Instance_ID'.
---@param value integer
---@return dbc.row.v1215.Achievement self
function row:SetInstance_ID(value) end

---Navigates foreign relationship to 'Map' via 'Instance_ID'.
---@return dbc.row.v1215.Map|nil
function row:GetInstance_() end

---Creates a related 'Map' row and automatically links 'Instance_ID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'Faction'.
---@return integer value
function row:GetFaction() end

---Sets the value of field 'Faction'.
---@param value integer
---@return dbc.row.v1215.Achievement self
function row:SetFaction(value) end

---Gets the value of field 'Supercedes'.
---@return integer value
function row:GetSupercedes() end

---Sets the value of field 'Supercedes'.
---@param value integer
---@return dbc.row.v1215.Achievement self
function row:SetSupercedes(value) end

---Navigates foreign relationship to 'Achievement' via 'Supercedes'.
---@return dbc.row.v1215.Achievement|nil
function row:GetSupercedes() end

---Creates a related 'Achievement' row and automatically links 'Supercedes'.
---@param data? table
---@return dbc.row.v1215.Achievement
function row:CreateRelated(data) end

---Gets the value of field 'Category'.
---@return integer value
function row:GetCategory() end

---Sets the value of field 'Category'.
---@param value integer
---@return dbc.row.v1215.Achievement self
function row:SetCategory(value) end

---Navigates foreign relationship to 'Achievement_Category' via 'Category'.
---@return dbc.row.v1215.Achievement_Category|nil
function row:GetCategory() end

---Creates a related 'Achievement_Category' row and automatically links 'Category'.
---@param data? table
---@return dbc.row.v1215.Achievement_Category
function row:CreateRelated(data) end

---Gets the value of field 'Minimum_criteria'.
---@return integer value
function row:GetMinimum_criteria() end

---Sets the value of field 'Minimum_criteria'.
---@param value integer
---@return dbc.row.v1215.Achievement self
function row:SetMinimum_criteria(value) end

---Gets the value of field 'Points'.
---@return integer value
function row:GetPoints() end

---Sets the value of field 'Points'.
---@param value integer
---@return dbc.row.v1215.Achievement self
function row:SetPoints(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.Achievement self
function row:SetFlags(value) end

---Gets the value of field 'Ui_order'.
---@return integer value
function row:GetUi_order() end

---Sets the value of field 'Ui_order'.
---@param value integer
---@return dbc.row.v1215.Achievement self
function row:SetUi_order(value) end

---Gets the value of field 'IconFileID'.
---@return integer value
function row:GetIconFileID() end

---Sets the value of field 'IconFileID'.
---@param value integer
---@return dbc.row.v1215.Achievement self
function row:SetIconFileID(value) end

---Navigates foreign relationship to 'FileData' via 'IconFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetIconFile() end

---Creates a related 'FileData' row and automatically links 'IconFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'RewardItemID'.
---@return integer value
function row:GetRewardItemID() end

---Sets the value of field 'RewardItemID'.
---@param value integer
---@return dbc.row.v1215.Achievement self
function row:SetRewardItemID(value) end

---Navigates foreign relationship to 'Item' via 'RewardItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetRewardItem() end

---Creates a related 'Item' row and automatically links 'RewardItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'Criteria_tree'.
---@return integer value
function row:GetCriteria_tree() end

---Sets the value of field 'Criteria_tree'.
---@param value integer
---@return dbc.row.v1215.Achievement self
function row:SetCriteria_tree(value) end

---Navigates foreign relationship to 'CriteriaTree' via 'Criteria_tree'.
---@return dbc.row.v1215.CriteriaTree|nil
function row:GetCriteria_tree() end

---Creates a related 'CriteriaTree' row and automatically links 'Criteria_tree'.
---@param data? table
---@return dbc.row.v1215.CriteriaTree
function row:CreateRelated(data) end

---Gets the value of field 'Shares_criteria'.
---@return integer value
function row:GetShares_criteria() end

---Sets the value of field 'Shares_criteria'.
---@param value integer
---@return dbc.row.v1215.Achievement self
function row:SetShares_criteria(value) end

---Navigates foreign relationship to 'Achievement' via 'Shares_criteria'.
---@return dbc.row.v1215.Achievement|nil
function row:GetShares_criteria() end

---Creates a related 'Achievement' row and automatically links 'Shares_criteria'.
---@param data? table
---@return dbc.row.v1215.Achievement
function row:CreateRelated(data) end

---Gets the value of field 'CovenantID'.
---@return integer value
function row:GetCovenantID() end

---Sets the value of field 'CovenantID'.
---@param value integer
---@return dbc.row.v1215.Achievement self
function row:SetCovenantID(value) end

---Navigates foreign relationship to 'Covenant' via 'CovenantID'.
---@return dbc.row.v1215.Covenant|nil
function row:GetCovenant() end

---Creates a related 'Covenant' row and automatically links 'CovenantID'.
---@param data? table
---@return dbc.row.v1215.Covenant
function row:CreateRelated(data) end

---Gets the value of field 'HiddenBeforeDisplaySeason'.
---@return integer value
function row:GetHiddenBeforeDisplaySeason() end

---Sets the value of field 'HiddenBeforeDisplaySeason'.
---@param value integer
---@return dbc.row.v1215.Achievement self
function row:SetHiddenBeforeDisplaySeason(value) end

---Navigates foreign relationship to 'DisplaySeason' via 'HiddenBeforeDisplaySeason'.
---@return dbc.row.v1215.DisplaySeason|nil
function row:GetHiddenBeforeDisplaySeason() end

---Creates a related 'DisplaySeason' row and automatically links 'HiddenBeforeDisplaySeason'.
---@param data? table
---@return dbc.row.v1215.DisplaySeason
function row:CreateRelated(data) end

---Gets the value of field 'LegacyAfterTimeEvent'.
---@return integer value
function row:GetLegacyAfterTimeEvent() end

---Sets the value of field 'LegacyAfterTimeEvent'.
---@param value integer
---@return dbc.row.v1215.Achievement self
function row:SetLegacyAfterTimeEvent(value) end

---Table container for Achievement (Build 12.1.5.69594).
---@class dbc.Table.v1215.Achievement : DbcTable
---@field [integer] dbc.row.v1215.Achievement
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Achievement
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Achievement|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Achievement
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Achievement>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Achievement[]
function tbl:GetByRelation(foreign_id) end

return {}
