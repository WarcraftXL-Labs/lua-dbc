---@meta
-- Generated LuaLS annotations for InitiativeTask (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of InitiativeTask in build 12.1.5.69594.
---@class dbc.row.v1215.InitiativeTask : RowProxy
---@field TaskName_lang string
---@field Description_lang string
---@field ID integer
---@field CriteriaTreeID integer
---@field QuestID integer
---@field ProgressContributionAmount integer
---@field RepetitionContributionDampeningCurve integer ParameterCurve; if present, amount * curve
---@field Supersedes integer
---@field Field_12_0_0_63534_008 integer

local row = {}

---Gets the value of field 'TaskName_lang'.
---@return string value
function row:GetTaskName_lang() end

---Sets the value of field 'TaskName_lang'.
---@param value string
---@return dbc.row.v1215.InitiativeTask self
function row:SetTaskName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.InitiativeTask self
function row:SetDescription_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.InitiativeTask self
function row:SetID(value) end

---Gets the value of field 'CriteriaTreeID'.
---@return integer value
function row:GetCriteriaTreeID() end

---Sets the value of field 'CriteriaTreeID'.
---@param value integer
---@return dbc.row.v1215.InitiativeTask self
function row:SetCriteriaTreeID(value) end

---Navigates foreign relationship to 'CriteriaTree' via 'CriteriaTreeID'.
---@return dbc.row.v1215.CriteriaTree|nil
function row:GetCriteriaTree() end

---Creates a related 'CriteriaTree' row and automatically links 'CriteriaTreeID'.
---@param data? table
---@return dbc.row.v1215.CriteriaTree
function row:CreateRelated(data) end

---Gets the value of field 'QuestID'.
---@return integer value
function row:GetQuestID() end

---Sets the value of field 'QuestID'.
---@param value integer
---@return dbc.row.v1215.InitiativeTask self
function row:SetQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'QuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetQuest() end

---Creates a related 'QuestV2' row and automatically links 'QuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'ProgressContributionAmount'.
---@return integer value
function row:GetProgressContributionAmount() end

---Sets the value of field 'ProgressContributionAmount'.
---@param value integer
---@return dbc.row.v1215.InitiativeTask self
function row:SetProgressContributionAmount(value) end

---Gets the value of field 'RepetitionContributionDampeningCurve'.
---@return integer value
function row:GetRepetitionContributionDampeningCurve() end

---Sets the value of field 'RepetitionContributionDampeningCurve'.
---@param value integer
---@return dbc.row.v1215.InitiativeTask self
function row:SetRepetitionContributionDampeningCurve(value) end

---Navigates foreign relationship to 'Curve' via 'RepetitionContributionDampeningCurve'.
---@return dbc.row.v1215.Curve|nil
function row:GetRepetitionContributionDampeningCurve() end

---Creates a related 'Curve' row and automatically links 'RepetitionContributionDampeningCurve'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'Supersedes'.
---@return integer value
function row:GetSupersedes() end

---Sets the value of field 'Supersedes'.
---@param value integer
---@return dbc.row.v1215.InitiativeTask self
function row:SetSupersedes(value) end

---Navigates foreign relationship to 'InitiativeTask' via 'Supersedes'.
---@return dbc.row.v1215.InitiativeTask|nil
function row:GetSupersedes() end

---Creates a related 'InitiativeTask' row and automatically links 'Supersedes'.
---@param data? table
---@return dbc.row.v1215.InitiativeTask
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_0_0_63534_008'.
---@return integer value
function row:GetField_12_0_0_63534_008() end

---Sets the value of field 'Field_12_0_0_63534_008'.
---@param value integer
---@return dbc.row.v1215.InitiativeTask self
function row:SetField_12_0_0_63534_008(value) end

---Table container for InitiativeTask (Build 12.1.5.69594).
---@class dbc.Table.v1215.InitiativeTask : DbcTable
---@field [integer] dbc.row.v1215.InitiativeTask
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.InitiativeTask
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.InitiativeTask|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.InitiativeTask
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.InitiativeTask>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.InitiativeTask[]
function tbl:GetByRelation(foreign_id) end

return {}
