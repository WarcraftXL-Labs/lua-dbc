---@meta
-- Generated LuaLS annotations for QuestV2CliTask (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of QuestV2CliTask in build 12.1.5.69594.
---@class dbc.row.v1215.QuestV2CliTask : RowProxy
---@field ID integer
---@field QuestTitle_lang string
---@field BulletText_lang string
---@field UniqueBitFlag integer
---@field ConditionID integer
---@field FiltActiveQuest integer
---@field FiltClasses integer ChrClasses mask
---@field FiltCompletedQuestLogic integer &0x1: ???, &0x2: one of, &0x4: ???, &0x20000: ???
---@field FiltMaxFactionID integer
---@field FiltMaxFactionValue integer
---@field FiltMinFactionID integer
---@field FiltMinFactionValue integer
---@field FiltMinSkillID integer
---@field FiltMinSkillValue integer
---@field FiltNonActiveQuest integer
---@field BreadCrumbID integer
---@field StartItem integer
---@field WorldStateExpressionID integer
---@field QuestInfoID integer
---@field ContentTuningID integer
---@field CovenantID integer
---@field Field_9_0_2_36206_022 integer
---@field Flags integer[] [2].9 = isQuestStart; [2].13 = don't return anything in lua GetTaskInfo; ([0].12 || [0].15 || [1].15) = isDaily
---@field FiltCompletedQuest integer[]
---@field FiltRaceMasks integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.QuestV2CliTask self
function row:SetID(value) end

---Navigates foreign relationship to 'QuestV2' via 'ID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetID() end

---Creates a related 'QuestV2' row and automatically links 'ID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'QuestTitle_lang'.
---@return string value
function row:GetQuestTitle_lang() end

---Sets the value of field 'QuestTitle_lang'.
---@param value string
---@return dbc.row.v1215.QuestV2CliTask self
function row:SetQuestTitle_lang(value) end

---Gets the value of field 'BulletText_lang'.
---@return string value
function row:GetBulletText_lang() end

---Sets the value of field 'BulletText_lang'.
---@param value string
---@return dbc.row.v1215.QuestV2CliTask self
function row:SetBulletText_lang(value) end

---Gets the value of field 'UniqueBitFlag'.
---@return integer value
function row:GetUniqueBitFlag() end

---Sets the value of field 'UniqueBitFlag'.
---@param value integer
---@return dbc.row.v1215.QuestV2CliTask self
function row:SetUniqueBitFlag(value) end

---Gets the value of field 'ConditionID'.
---@return integer value
function row:GetConditionID() end

---Sets the value of field 'ConditionID'.
---@param value integer
---@return dbc.row.v1215.QuestV2CliTask self
function row:SetConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'ConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'ConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'FiltActiveQuest'.
---@return integer value
function row:GetFiltActiveQuest() end

---Sets the value of field 'FiltActiveQuest'.
---@param value integer
---@return dbc.row.v1215.QuestV2CliTask self
function row:SetFiltActiveQuest(value) end

---Navigates foreign relationship to 'QuestV2' via 'FiltActiveQuest'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetFiltActiveQuest() end

---Creates a related 'QuestV2' row and automatically links 'FiltActiveQuest'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'FiltClasses'.
---@return integer value
function row:GetFiltClasses() end

---Sets the value of field 'FiltClasses'.
---@param value integer
---@return dbc.row.v1215.QuestV2CliTask self
function row:SetFiltClasses(value) end

---Gets the value of field 'FiltCompletedQuestLogic'.
---@return integer value
function row:GetFiltCompletedQuestLogic() end

---Sets the value of field 'FiltCompletedQuestLogic'.
---@param value integer
---@return dbc.row.v1215.QuestV2CliTask self
function row:SetFiltCompletedQuestLogic(value) end

---Gets the value of field 'FiltMaxFactionID'.
---@return integer value
function row:GetFiltMaxFactionID() end

---Sets the value of field 'FiltMaxFactionID'.
---@param value integer
---@return dbc.row.v1215.QuestV2CliTask self
function row:SetFiltMaxFactionID(value) end

---Navigates foreign relationship to 'FiltMaxFaction' via 'FiltMaxFactionID'.
---@return dbc.row.v1215.FiltMaxFaction|nil
function row:GetFiltMaxFaction() end

---Creates a related 'FiltMaxFaction' row and automatically links 'FiltMaxFactionID'.
---@param data? table
---@return dbc.row.v1215.FiltMaxFaction
function row:CreateRelated(data) end

---Gets the value of field 'FiltMaxFactionValue'.
---@return integer value
function row:GetFiltMaxFactionValue() end

---Sets the value of field 'FiltMaxFactionValue'.
---@param value integer
---@return dbc.row.v1215.QuestV2CliTask self
function row:SetFiltMaxFactionValue(value) end

---Gets the value of field 'FiltMinFactionID'.
---@return integer value
function row:GetFiltMinFactionID() end

---Sets the value of field 'FiltMinFactionID'.
---@param value integer
---@return dbc.row.v1215.QuestV2CliTask self
function row:SetFiltMinFactionID(value) end

---Navigates foreign relationship to 'FiltMinFaction' via 'FiltMinFactionID'.
---@return dbc.row.v1215.FiltMinFaction|nil
function row:GetFiltMinFaction() end

---Creates a related 'FiltMinFaction' row and automatically links 'FiltMinFactionID'.
---@param data? table
---@return dbc.row.v1215.FiltMinFaction
function row:CreateRelated(data) end

---Gets the value of field 'FiltMinFactionValue'.
---@return integer value
function row:GetFiltMinFactionValue() end

---Sets the value of field 'FiltMinFactionValue'.
---@param value integer
---@return dbc.row.v1215.QuestV2CliTask self
function row:SetFiltMinFactionValue(value) end

---Gets the value of field 'FiltMinSkillID'.
---@return integer value
function row:GetFiltMinSkillID() end

---Sets the value of field 'FiltMinSkillID'.
---@param value integer
---@return dbc.row.v1215.QuestV2CliTask self
function row:SetFiltMinSkillID(value) end

---Navigates foreign relationship to 'SkillLine' via 'FiltMinSkillID'.
---@return dbc.row.v1215.SkillLine|nil
function row:GetFiltMinSkill() end

---Creates a related 'SkillLine' row and automatically links 'FiltMinSkillID'.
---@param data? table
---@return dbc.row.v1215.SkillLine
function row:CreateRelated(data) end

---Gets the value of field 'FiltMinSkillValue'.
---@return integer value
function row:GetFiltMinSkillValue() end

---Sets the value of field 'FiltMinSkillValue'.
---@param value integer
---@return dbc.row.v1215.QuestV2CliTask self
function row:SetFiltMinSkillValue(value) end

---Gets the value of field 'FiltNonActiveQuest'.
---@return integer value
function row:GetFiltNonActiveQuest() end

---Sets the value of field 'FiltNonActiveQuest'.
---@param value integer
---@return dbc.row.v1215.QuestV2CliTask self
function row:SetFiltNonActiveQuest(value) end

---Navigates foreign relationship to 'QuestV2' via 'FiltNonActiveQuest'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetFiltNonActiveQuest() end

---Creates a related 'QuestV2' row and automatically links 'FiltNonActiveQuest'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'BreadCrumbID'.
---@return integer value
function row:GetBreadCrumbID() end

---Sets the value of field 'BreadCrumbID'.
---@param value integer
---@return dbc.row.v1215.QuestV2CliTask self
function row:SetBreadCrumbID(value) end

---Navigates foreign relationship to 'BreadCrumb' via 'BreadCrumbID'.
---@return dbc.row.v1215.BreadCrumb|nil
function row:GetBreadCrumb() end

---Creates a related 'BreadCrumb' row and automatically links 'BreadCrumbID'.
---@param data? table
---@return dbc.row.v1215.BreadCrumb
function row:CreateRelated(data) end

---Gets the value of field 'StartItem'.
---@return integer value
function row:GetStartItem() end

---Sets the value of field 'StartItem'.
---@param value integer
---@return dbc.row.v1215.QuestV2CliTask self
function row:SetStartItem(value) end

---Navigates foreign relationship to 'Item' via 'StartItem'.
---@return dbc.row.v1215.Item|nil
function row:GetStartItem() end

---Creates a related 'Item' row and automatically links 'StartItem'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'WorldStateExpressionID'.
---@return integer value
function row:GetWorldStateExpressionID() end

---Sets the value of field 'WorldStateExpressionID'.
---@param value integer
---@return dbc.row.v1215.QuestV2CliTask self
function row:SetWorldStateExpressionID(value) end

---Navigates foreign relationship to 'WorldStateExpression' via 'WorldStateExpressionID'.
---@return dbc.row.v1215.WorldStateExpression|nil
function row:GetWorldStateExpression() end

---Creates a related 'WorldStateExpression' row and automatically links 'WorldStateExpressionID'.
---@param data? table
---@return dbc.row.v1215.WorldStateExpression
function row:CreateRelated(data) end

---Gets the value of field 'QuestInfoID'.
---@return integer value
function row:GetQuestInfoID() end

---Sets the value of field 'QuestInfoID'.
---@param value integer
---@return dbc.row.v1215.QuestV2CliTask self
function row:SetQuestInfoID(value) end

---Navigates foreign relationship to 'QuestInfo' via 'QuestInfoID'.
---@return dbc.row.v1215.QuestInfo|nil
function row:GetQuestInfo() end

---Creates a related 'QuestInfo' row and automatically links 'QuestInfoID'.
---@param data? table
---@return dbc.row.v1215.QuestInfo
function row:CreateRelated(data) end

---Gets the value of field 'ContentTuningID'.
---@return integer value
function row:GetContentTuningID() end

---Sets the value of field 'ContentTuningID'.
---@param value integer
---@return dbc.row.v1215.QuestV2CliTask self
function row:SetContentTuningID(value) end

---Navigates foreign relationship to 'ContentTuning' via 'ContentTuningID'.
---@return dbc.row.v1215.ContentTuning|nil
function row:GetContentTuning() end

---Creates a related 'ContentTuning' row and automatically links 'ContentTuningID'.
---@param data? table
---@return dbc.row.v1215.ContentTuning
function row:CreateRelated(data) end

---Gets the value of field 'CovenantID'.
---@return integer value
function row:GetCovenantID() end

---Sets the value of field 'CovenantID'.
---@param value integer
---@return dbc.row.v1215.QuestV2CliTask self
function row:SetCovenantID(value) end

---Navigates foreign relationship to 'Covenant' via 'CovenantID'.
---@return dbc.row.v1215.Covenant|nil
function row:GetCovenant() end

---Creates a related 'Covenant' row and automatically links 'CovenantID'.
---@param data? table
---@return dbc.row.v1215.Covenant
function row:CreateRelated(data) end

---Gets the value of field 'Field_9_0_2_36206_022'.
---@return integer value
function row:GetField_9_0_2_36206_022() end

---Sets the value of field 'Field_9_0_2_36206_022'.
---@param value integer
---@return dbc.row.v1215.QuestV2CliTask self
function row:SetField_9_0_2_36206_022(value) end

---Gets the value of field 'Flags'.
---@return integer[] value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer[]
---@return dbc.row.v1215.QuestV2CliTask self
function row:SetFlags(value) end

---Gets element at 1-based index in 'Flags'.
---@param index integer
---@return integer value
function row:GetFlagsItem(index) end

---Gets the value of field 'FiltCompletedQuest'.
---@return integer[] value
function row:GetFiltCompletedQuest() end

---Sets the value of field 'FiltCompletedQuest'.
---@param value integer[]
---@return dbc.row.v1215.QuestV2CliTask self
function row:SetFiltCompletedQuest(value) end

---Gets element at 1-based index in 'FiltCompletedQuest'.
---@param index integer
---@return integer value
function row:GetFiltCompletedQuestItem(index) end

---Navigates foreign relationship to 'QuestV2' via 'FiltCompletedQuest'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetFiltCompletedQuest() end

---Creates a related 'QuestV2' row and automatically links 'FiltCompletedQuest'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'FiltRaceMasks'.
---@return integer[] value
function row:GetFiltRaceMasks() end

---Sets the value of field 'FiltRaceMasks'.
---@param value integer[]
---@return dbc.row.v1215.QuestV2CliTask self
function row:SetFiltRaceMasks(value) end

---Gets element at 1-based index in 'FiltRaceMasks'.
---@param index integer
---@return integer value
function row:GetFiltRaceMasksItem(index) end

---Table container for QuestV2CliTask (Build 12.1.5.69594).
---@class dbc.Table.v1215.QuestV2CliTask : DbcTable
---@field [integer] dbc.row.v1215.QuestV2CliTask
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.QuestV2CliTask
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.QuestV2CliTask|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.QuestV2CliTask
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.QuestV2CliTask>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.QuestV2CliTask[]
function tbl:GetByRelation(foreign_id) end

return {}
