---@meta
-- Generated LuaLS annotations for ManagedWorldStateInput (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ManagedWorldStateInput in build 12.1.5.69594.
---@class dbc.row.v1215.ManagedWorldStateInput : RowProxy
---@field ID integer
---@field ManagedWorldStateID integer
---@field QuestID integer
---@field ValidInputConditionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ManagedWorldStateInput self
function row:SetID(value) end

---Gets the value of field 'ManagedWorldStateID'.
---@return integer value
function row:GetManagedWorldStateID() end

---Sets the value of field 'ManagedWorldStateID'.
---@param value integer
---@return dbc.row.v1215.ManagedWorldStateInput self
function row:SetManagedWorldStateID(value) end

---Navigates foreign relationship to 'ManagedWorldState' via 'ManagedWorldStateID'.
---@return dbc.row.v1215.ManagedWorldState|nil
function row:GetManagedWorldState() end

---Creates a related 'ManagedWorldState' row and automatically links 'ManagedWorldStateID'.
---@param data? table
---@return dbc.row.v1215.ManagedWorldState
function row:CreateRelated(data) end

---Gets the value of field 'QuestID'.
---@return integer value
function row:GetQuestID() end

---Sets the value of field 'QuestID'.
---@param value integer
---@return dbc.row.v1215.ManagedWorldStateInput self
function row:SetQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'QuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetQuest() end

---Creates a related 'QuestV2' row and automatically links 'QuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'ValidInputConditionID'.
---@return integer value
function row:GetValidInputConditionID() end

---Sets the value of field 'ValidInputConditionID'.
---@param value integer
---@return dbc.row.v1215.ManagedWorldStateInput self
function row:SetValidInputConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'ValidInputConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetValidInputCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'ValidInputConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Table container for ManagedWorldStateInput (Build 12.1.5.69594).
---@class dbc.Table.v1215.ManagedWorldStateInput : DbcTable
---@field [integer] dbc.row.v1215.ManagedWorldStateInput
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ManagedWorldStateInput
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ManagedWorldStateInput|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ManagedWorldStateInput
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ManagedWorldStateInput>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ManagedWorldStateInput[]
function tbl:GetByRelation(foreign_id) end

return {}
