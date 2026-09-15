---@meta
-- Generated LuaLS annotations for QuestXGroupActivity (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of QuestXGroupActivity in build 12.1.5.69594.
---@class dbc.row.v1215.QuestXGroupActivity : RowProxy
---@field ID integer
---@field QuestID integer
---@field GroupFinderActivityID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.QuestXGroupActivity self
function row:SetID(value) end

---Gets the value of field 'QuestID'.
---@return integer value
function row:GetQuestID() end

---Sets the value of field 'QuestID'.
---@param value integer
---@return dbc.row.v1215.QuestXGroupActivity self
function row:SetQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'QuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetQuest() end

---Creates a related 'QuestV2' row and automatically links 'QuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'GroupFinderActivityID'.
---@return integer value
function row:GetGroupFinderActivityID() end

---Sets the value of field 'GroupFinderActivityID'.
---@param value integer
---@return dbc.row.v1215.QuestXGroupActivity self
function row:SetGroupFinderActivityID(value) end

---Navigates foreign relationship to 'GroupFinderActivity' via 'GroupFinderActivityID'.
---@return dbc.row.v1215.GroupFinderActivity|nil
function row:GetGroupFinderActivity() end

---Creates a related 'GroupFinderActivity' row and automatically links 'GroupFinderActivityID'.
---@param data? table
---@return dbc.row.v1215.GroupFinderActivity
function row:CreateRelated(data) end

---Table container for QuestXGroupActivity (Build 12.1.5.69594).
---@class dbc.Table.v1215.QuestXGroupActivity : DbcTable
---@field [integer] dbc.row.v1215.QuestXGroupActivity
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.QuestXGroupActivity
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.QuestXGroupActivity|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.QuestXGroupActivity
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.QuestXGroupActivity>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.QuestXGroupActivity[]
function tbl:GetByRelation(foreign_id) end

return {}
