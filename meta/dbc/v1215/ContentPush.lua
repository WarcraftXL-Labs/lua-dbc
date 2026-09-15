---@meta
-- Generated LuaLS annotations for ContentPush (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ContentPush in build 12.1.5.69594.
---@class dbc.row.v1215.ContentPush : RowProxy
---@field ID integer
---@field PlayerConditionID integer
---@field AreaTableID integer
---@field QuestID integer
---@field Field_10_2_7_54171_003 integer
---@field Field_10_2_7_54171_004 integer
---@field Type integer 0: Quest -> QuestID, 1: unk -> Field_10_2_7_54171_003
---@field Field_10_2_7_54171_006 integer
---@field Field_10_2_7_54171_007 integer
---@field Field_10_2_7_54171_008 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ContentPush self
function row:SetID(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.ContentPush self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'AreaTableID'.
---@return integer value
function row:GetAreaTableID() end

---Sets the value of field 'AreaTableID'.
---@param value integer
---@return dbc.row.v1215.ContentPush self
function row:SetAreaTableID(value) end

---Navigates foreign relationship to 'AreaTable' via 'AreaTableID'.
---@return dbc.row.v1215.AreaTable|nil
function row:GetAreaTable() end

---Creates a related 'AreaTable' row and automatically links 'AreaTableID'.
---@param data? table
---@return dbc.row.v1215.AreaTable
function row:CreateRelated(data) end

---Gets the value of field 'QuestID'.
---@return integer value
function row:GetQuestID() end

---Sets the value of field 'QuestID'.
---@param value integer
---@return dbc.row.v1215.ContentPush self
function row:SetQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'QuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetQuest() end

---Creates a related 'QuestV2' row and automatically links 'QuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_2_7_54171_003'.
---@return integer value
function row:GetField_10_2_7_54171_003() end

---Sets the value of field 'Field_10_2_7_54171_003'.
---@param value integer
---@return dbc.row.v1215.ContentPush self
function row:SetField_10_2_7_54171_003(value) end

---Gets the value of field 'Field_10_2_7_54171_004'.
---@return integer value
function row:GetField_10_2_7_54171_004() end

---Sets the value of field 'Field_10_2_7_54171_004'.
---@param value integer
---@return dbc.row.v1215.ContentPush self
function row:SetField_10_2_7_54171_004(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.ContentPush self
function row:SetType(value) end

---Gets the value of field 'Field_10_2_7_54171_006'.
---@return integer value
function row:GetField_10_2_7_54171_006() end

---Sets the value of field 'Field_10_2_7_54171_006'.
---@param value integer
---@return dbc.row.v1215.ContentPush self
function row:SetField_10_2_7_54171_006(value) end

---Gets the value of field 'Field_10_2_7_54171_007'.
---@return integer value
function row:GetField_10_2_7_54171_007() end

---Sets the value of field 'Field_10_2_7_54171_007'.
---@param value integer
---@return dbc.row.v1215.ContentPush self
function row:SetField_10_2_7_54171_007(value) end

---Gets the value of field 'Field_10_2_7_54171_008'.
---@return integer value
function row:GetField_10_2_7_54171_008() end

---Sets the value of field 'Field_10_2_7_54171_008'.
---@param value integer
---@return dbc.row.v1215.ContentPush self
function row:SetField_10_2_7_54171_008(value) end

---Table container for ContentPush (Build 12.1.5.69594).
---@class dbc.Table.v1215.ContentPush : DbcTable
---@field [integer] dbc.row.v1215.ContentPush
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ContentPush
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ContentPush|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ContentPush
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ContentPush>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ContentPush[]
function tbl:GetByRelation(foreign_id) end

return {}
