---@meta
-- Generated LuaLS annotations for Vignette (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Vignette in build 12.1.5.69594.
---@class dbc.row.v1215.Vignette : RowProxy
---@field ID integer
---@field Name_lang string
---@field PlayerConditionID integer
---@field VisibleTrackingQuestID integer
---@field QuestFeedbackEffectID integer
---@field Flags integer
---@field MaxHeight number
---@field MinHeight number
---@field VignetteType integer 0 = Normal, 1 = PvpBounty, 2 = Torghast, 3 = Treasure
---@field RewardQuestID integer
---@field UiWidgetSetID integer
---@field UiMapPinInfoID integer
---@field ObjectiveType integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Vignette self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.Vignette self
function row:SetName_lang(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.Vignette self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'VisibleTrackingQuestID'.
---@return integer value
function row:GetVisibleTrackingQuestID() end

---Sets the value of field 'VisibleTrackingQuestID'.
---@param value integer
---@return dbc.row.v1215.Vignette self
function row:SetVisibleTrackingQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'VisibleTrackingQuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetVisibleTrackingQuest() end

---Creates a related 'QuestV2' row and automatically links 'VisibleTrackingQuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'QuestFeedbackEffectID'.
---@return integer value
function row:GetQuestFeedbackEffectID() end

---Sets the value of field 'QuestFeedbackEffectID'.
---@param value integer
---@return dbc.row.v1215.Vignette self
function row:SetQuestFeedbackEffectID(value) end

---Navigates foreign relationship to 'QuestFeedbackEffect' via 'QuestFeedbackEffectID'.
---@return dbc.row.v1215.QuestFeedbackEffect|nil
function row:GetQuestFeedbackEffect() end

---Creates a related 'QuestFeedbackEffect' row and automatically links 'QuestFeedbackEffectID'.
---@param data? table
---@return dbc.row.v1215.QuestFeedbackEffect
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.Vignette self
function row:SetFlags(value) end

---Gets the value of field 'MaxHeight'.
---@return number value
function row:GetMaxHeight() end

---Sets the value of field 'MaxHeight'.
---@param value number
---@return dbc.row.v1215.Vignette self
function row:SetMaxHeight(value) end

---Gets the value of field 'MinHeight'.
---@return number value
function row:GetMinHeight() end

---Sets the value of field 'MinHeight'.
---@param value number
---@return dbc.row.v1215.Vignette self
function row:SetMinHeight(value) end

---Gets the value of field 'VignetteType'.
---@return integer value
function row:GetVignetteType() end

---Sets the value of field 'VignetteType'.
---@param value integer
---@return dbc.row.v1215.Vignette self
function row:SetVignetteType(value) end

---Gets the value of field 'RewardQuestID'.
---@return integer value
function row:GetRewardQuestID() end

---Sets the value of field 'RewardQuestID'.
---@param value integer
---@return dbc.row.v1215.Vignette self
function row:SetRewardQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'RewardQuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetRewardQuest() end

---Creates a related 'QuestV2' row and automatically links 'RewardQuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'UiWidgetSetID'.
---@return integer value
function row:GetUiWidgetSetID() end

---Sets the value of field 'UiWidgetSetID'.
---@param value integer
---@return dbc.row.v1215.Vignette self
function row:SetUiWidgetSetID(value) end

---Navigates foreign relationship to 'UiWidgetSet' via 'UiWidgetSetID'.
---@return dbc.row.v1215.UiWidgetSet|nil
function row:GetUiWidgetSet() end

---Creates a related 'UiWidgetSet' row and automatically links 'UiWidgetSetID'.
---@param data? table
---@return dbc.row.v1215.UiWidgetSet
function row:CreateRelated(data) end

---Gets the value of field 'UiMapPinInfoID'.
---@return integer value
function row:GetUiMapPinInfoID() end

---Sets the value of field 'UiMapPinInfoID'.
---@param value integer
---@return dbc.row.v1215.Vignette self
function row:SetUiMapPinInfoID(value) end

---Navigates foreign relationship to 'UIMapPinInfo' via 'UiMapPinInfoID'.
---@return dbc.row.v1215.UIMapPinInfo|nil
function row:GetUiMapPinInfo() end

---Creates a related 'UIMapPinInfo' row and automatically links 'UiMapPinInfoID'.
---@param data? table
---@return dbc.row.v1215.UIMapPinInfo
function row:CreateRelated(data) end

---Gets the value of field 'ObjectiveType'.
---@return integer value
function row:GetObjectiveType() end

---Sets the value of field 'ObjectiveType'.
---@param value integer
---@return dbc.row.v1215.Vignette self
function row:SetObjectiveType(value) end

---Table container for Vignette (Build 12.1.5.69594).
---@class dbc.Table.v1215.Vignette : DbcTable
---@field [integer] dbc.row.v1215.Vignette
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Vignette
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Vignette|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Vignette
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Vignette>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Vignette[]
function tbl:GetByRelation(foreign_id) end

return {}
