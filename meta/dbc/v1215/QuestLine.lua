---@meta
-- Generated LuaLS annotations for QuestLine (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of QuestLine in build 12.1.5.69594.
---@class dbc.row.v1215.QuestLine : RowProxy
---@field ID integer
---@field Name_lang string
---@field Description_lang string
---@field CompletionPlayerConditionID integer Appears to be used (when available) instead of looking up completion status for each quest in this questline.
---@field Flags integer
---@field QuestID integer
---@field PlayerConditionID integer
---@field Field_10_2_7_54171_005 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.QuestLine self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.QuestLine self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.QuestLine self
function row:SetDescription_lang(value) end

---Gets the value of field 'CompletionPlayerConditionID'.
---@return integer value
function row:GetCompletionPlayerConditionID() end

---Sets the value of field 'CompletionPlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.QuestLine self
function row:SetCompletionPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'CompletionPlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetCompletionPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'CompletionPlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.QuestLine self
function row:SetFlags(value) end

---Gets the value of field 'QuestID'.
---@return integer value
function row:GetQuestID() end

---Sets the value of field 'QuestID'.
---@param value integer
---@return dbc.row.v1215.QuestLine self
function row:SetQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'QuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetQuest() end

---Creates a related 'QuestV2' row and automatically links 'QuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.QuestLine self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_2_7_54171_005'.
---@return integer value
function row:GetField_10_2_7_54171_005() end

---Sets the value of field 'Field_10_2_7_54171_005'.
---@param value integer
---@return dbc.row.v1215.QuestLine self
function row:SetField_10_2_7_54171_005(value) end

---Table container for QuestLine (Build 12.1.5.69594).
---@class dbc.Table.v1215.QuestLine : DbcTable
---@field [integer] dbc.row.v1215.QuestLine
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.QuestLine
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.QuestLine|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.QuestLine
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.QuestLine>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.QuestLine[]
function tbl:GetByRelation(foreign_id) end

return {}
