---@meta
-- Generated LuaLS annotations for QuestDrivenScenario (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of QuestDrivenScenario in build 12.1.5.69594.
---@class dbc.row.v1215.QuestDrivenScenario : RowProxy
---@field ID integer
---@field QuestID integer
---@field ScenarioID integer
---@field Field_11_0_0_55087_002 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.QuestDrivenScenario self
function row:SetID(value) end

---Gets the value of field 'QuestID'.
---@return integer value
function row:GetQuestID() end

---Sets the value of field 'QuestID'.
---@param value integer
---@return dbc.row.v1215.QuestDrivenScenario self
function row:SetQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'QuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetQuest() end

---Creates a related 'QuestV2' row and automatically links 'QuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'ScenarioID'.
---@return integer value
function row:GetScenarioID() end

---Sets the value of field 'ScenarioID'.
---@param value integer
---@return dbc.row.v1215.QuestDrivenScenario self
function row:SetScenarioID(value) end

---Navigates foreign relationship to 'Scenario' via 'ScenarioID'.
---@return dbc.row.v1215.Scenario|nil
function row:GetScenario() end

---Creates a related 'Scenario' row and automatically links 'ScenarioID'.
---@param data? table
---@return dbc.row.v1215.Scenario
function row:CreateRelated(data) end

---Gets the value of field 'Field_11_0_0_55087_002'.
---@return integer value
function row:GetField_11_0_0_55087_002() end

---Sets the value of field 'Field_11_0_0_55087_002'.
---@param value integer
---@return dbc.row.v1215.QuestDrivenScenario self
function row:SetField_11_0_0_55087_002(value) end

---Table container for QuestDrivenScenario (Build 12.1.5.69594).
---@class dbc.Table.v1215.QuestDrivenScenario : DbcTable
---@field [integer] dbc.row.v1215.QuestDrivenScenario
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.QuestDrivenScenario
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.QuestDrivenScenario|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.QuestDrivenScenario
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.QuestDrivenScenario>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.QuestDrivenScenario[]
function tbl:GetByRelation(foreign_id) end

return {}
