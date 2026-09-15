---@meta
-- Generated LuaLS annotations for ScenarioStep (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ScenarioStep in build 12.1.5.69594.
---@class dbc.row.v1215.ScenarioStep : RowProxy
---@field Description_lang string
---@field Title_lang string
---@field ID integer
---@field ScenarioID integer
---@field CriteriatreeID integer
---@field RewardQuestID integer
---@field RelatedStep integer
---@field Supersedes integer
---@field OrderIndex integer
---@field Flags integer
---@field VisibilityPlayerConditionID integer
---@field WidgetSetID integer

local row = {}

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.ScenarioStep self
function row:SetDescription_lang(value) end

---Gets the value of field 'Title_lang'.
---@return string value
function row:GetTitle_lang() end

---Sets the value of field 'Title_lang'.
---@param value string
---@return dbc.row.v1215.ScenarioStep self
function row:SetTitle_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ScenarioStep self
function row:SetID(value) end

---Gets the value of field 'ScenarioID'.
---@return integer value
function row:GetScenarioID() end

---Sets the value of field 'ScenarioID'.
---@param value integer
---@return dbc.row.v1215.ScenarioStep self
function row:SetScenarioID(value) end

---Navigates foreign relationship to 'Scenario' via 'ScenarioID'.
---@return dbc.row.v1215.Scenario|nil
function row:GetScenario() end

---Creates a related 'Scenario' row and automatically links 'ScenarioID'.
---@param data? table
---@return dbc.row.v1215.Scenario
function row:CreateRelated(data) end

---Gets the value of field 'CriteriatreeID'.
---@return integer value
function row:GetCriteriatreeID() end

---Sets the value of field 'CriteriatreeID'.
---@param value integer
---@return dbc.row.v1215.ScenarioStep self
function row:SetCriteriatreeID(value) end

---Navigates foreign relationship to 'CriteriaTree' via 'CriteriatreeID'.
---@return dbc.row.v1215.CriteriaTree|nil
function row:GetCriteriatree() end

---Creates a related 'CriteriaTree' row and automatically links 'CriteriatreeID'.
---@param data? table
---@return dbc.row.v1215.CriteriaTree
function row:CreateRelated(data) end

---Gets the value of field 'RewardQuestID'.
---@return integer value
function row:GetRewardQuestID() end

---Sets the value of field 'RewardQuestID'.
---@param value integer
---@return dbc.row.v1215.ScenarioStep self
function row:SetRewardQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'RewardQuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetRewardQuest() end

---Creates a related 'QuestV2' row and automatically links 'RewardQuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'RelatedStep'.
---@return integer value
function row:GetRelatedStep() end

---Sets the value of field 'RelatedStep'.
---@param value integer
---@return dbc.row.v1215.ScenarioStep self
function row:SetRelatedStep(value) end

---Navigates foreign relationship to 'ScenarioStep' via 'RelatedStep'.
---@return dbc.row.v1215.ScenarioStep|nil
function row:GetRelatedStep() end

---Creates a related 'ScenarioStep' row and automatically links 'RelatedStep'.
---@param data? table
---@return dbc.row.v1215.ScenarioStep
function row:CreateRelated(data) end

---Gets the value of field 'Supersedes'.
---@return integer value
function row:GetSupersedes() end

---Sets the value of field 'Supersedes'.
---@param value integer
---@return dbc.row.v1215.ScenarioStep self
function row:SetSupersedes(value) end

---Navigates foreign relationship to 'ScenarioStep' via 'Supersedes'.
---@return dbc.row.v1215.ScenarioStep|nil
function row:GetSupersedes() end

---Creates a related 'ScenarioStep' row and automatically links 'Supersedes'.
---@param data? table
---@return dbc.row.v1215.ScenarioStep
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.ScenarioStep self
function row:SetOrderIndex(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ScenarioStep self
function row:SetFlags(value) end

---Gets the value of field 'VisibilityPlayerConditionID'.
---@return integer value
function row:GetVisibilityPlayerConditionID() end

---Sets the value of field 'VisibilityPlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.ScenarioStep self
function row:SetVisibilityPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'VisibilityPlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetVisibilityPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'VisibilityPlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'WidgetSetID'.
---@return integer value
function row:GetWidgetSetID() end

---Sets the value of field 'WidgetSetID'.
---@param value integer
---@return dbc.row.v1215.ScenarioStep self
function row:SetWidgetSetID(value) end

---Navigates foreign relationship to 'WidgetSet' via 'WidgetSetID'.
---@return dbc.row.v1215.WidgetSet|nil
function row:GetWidgetSet() end

---Creates a related 'WidgetSet' row and automatically links 'WidgetSetID'.
---@param data? table
---@return dbc.row.v1215.WidgetSet
function row:CreateRelated(data) end

---Table container for ScenarioStep (Build 12.1.5.69594).
---@class dbc.Table.v1215.ScenarioStep : DbcTable
---@field [integer] dbc.row.v1215.ScenarioStep
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ScenarioStep
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ScenarioStep|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ScenarioStep
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ScenarioStep>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ScenarioStep[]
function tbl:GetByRelation(foreign_id) end

return {}
