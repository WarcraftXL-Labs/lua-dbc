---@meta
-- Generated LuaLS annotations for QuestLineXQuest (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of QuestLineXQuest in build 12.1.5.69594.
---@class dbc.row.v1215.QuestLineXQuest : RowProxy
---@field ID integer
---@field QuestLineID integer
---@field QuestID integer
---@field OrderIndex integer
---@field Flags integer
---@field Field_11_1_0_58221_004 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.QuestLineXQuest self
function row:SetID(value) end

---Gets the value of field 'QuestLineID'.
---@return integer value
function row:GetQuestLineID() end

---Sets the value of field 'QuestLineID'.
---@param value integer
---@return dbc.row.v1215.QuestLineXQuest self
function row:SetQuestLineID(value) end

---Navigates foreign relationship to 'QuestLine' via 'QuestLineID'.
---@return dbc.row.v1215.QuestLine|nil
function row:GetQuestLine() end

---Creates a related 'QuestLine' row and automatically links 'QuestLineID'.
---@param data? table
---@return dbc.row.v1215.QuestLine
function row:CreateRelated(data) end

---Gets the value of field 'QuestID'.
---@return integer value
function row:GetQuestID() end

---Sets the value of field 'QuestID'.
---@param value integer
---@return dbc.row.v1215.QuestLineXQuest self
function row:SetQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'QuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetQuest() end

---Creates a related 'QuestV2' row and automatically links 'QuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.QuestLineXQuest self
function row:SetOrderIndex(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.QuestLineXQuest self
function row:SetFlags(value) end

---Gets the value of field 'Field_11_1_0_58221_004'.
---@return integer value
function row:GetField_11_1_0_58221_004() end

---Sets the value of field 'Field_11_1_0_58221_004'.
---@param value integer
---@return dbc.row.v1215.QuestLineXQuest self
function row:SetField_11_1_0_58221_004(value) end

---Table container for QuestLineXQuest (Build 12.1.5.69594).
---@class dbc.Table.v1215.QuestLineXQuest : DbcTable
---@field [integer] dbc.row.v1215.QuestLineXQuest
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.QuestLineXQuest
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.QuestLineXQuest|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.QuestLineXQuest
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.QuestLineXQuest>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.QuestLineXQuest[]
function tbl:GetByRelation(foreign_id) end

return {}
