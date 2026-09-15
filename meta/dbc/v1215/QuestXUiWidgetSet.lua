---@meta
-- Generated LuaLS annotations for QuestXUiWidgetSet (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of QuestXUiWidgetSet in build 12.1.5.69594.
---@class dbc.row.v1215.QuestXUiWidgetSet : RowProxy
---@field ID integer
---@field QuestID integer
---@field UiWidgetSetID integer
---@field GlowAnimType integer Enum.WidgetGlowAnimType: 0: None, 1: Pulse

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.QuestXUiWidgetSet self
function row:SetID(value) end

---Gets the value of field 'QuestID'.
---@return integer value
function row:GetQuestID() end

---Sets the value of field 'QuestID'.
---@param value integer
---@return dbc.row.v1215.QuestXUiWidgetSet self
function row:SetQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'QuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetQuest() end

---Creates a related 'QuestV2' row and automatically links 'QuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'UiWidgetSetID'.
---@return integer value
function row:GetUiWidgetSetID() end

---Sets the value of field 'UiWidgetSetID'.
---@param value integer
---@return dbc.row.v1215.QuestXUiWidgetSet self
function row:SetUiWidgetSetID(value) end

---Navigates foreign relationship to 'UiWidgetSet' via 'UiWidgetSetID'.
---@return dbc.row.v1215.UiWidgetSet|nil
function row:GetUiWidgetSet() end

---Creates a related 'UiWidgetSet' row and automatically links 'UiWidgetSetID'.
---@param data? table
---@return dbc.row.v1215.UiWidgetSet
function row:CreateRelated(data) end

---Gets the value of field 'GlowAnimType'.
---@return integer value
function row:GetGlowAnimType() end

---Sets the value of field 'GlowAnimType'.
---@param value integer
---@return dbc.row.v1215.QuestXUiWidgetSet self
function row:SetGlowAnimType(value) end

---Table container for QuestXUiWidgetSet (Build 12.1.5.69594).
---@class dbc.Table.v1215.QuestXUiWidgetSet : DbcTable
---@field [integer] dbc.row.v1215.QuestXUiWidgetSet
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.QuestXUiWidgetSet
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.QuestXUiWidgetSet|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.QuestXUiWidgetSet
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.QuestXUiWidgetSet>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.QuestXUiWidgetSet[]
function tbl:GetByRelation(foreign_id) end

return {}
