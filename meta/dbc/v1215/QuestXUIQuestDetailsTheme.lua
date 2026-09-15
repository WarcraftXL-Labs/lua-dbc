---@meta
-- Generated LuaLS annotations for QuestXUIQuestDetailsTheme (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of QuestXUIQuestDetailsTheme in build 12.1.5.69594.
---@class dbc.row.v1215.QuestXUIQuestDetailsTheme : RowProxy
---@field ID integer
---@field QuestID integer
---@field UiQuestDetailsThemeID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.QuestXUIQuestDetailsTheme self
function row:SetID(value) end

---Gets the value of field 'QuestID'.
---@return integer value
function row:GetQuestID() end

---Sets the value of field 'QuestID'.
---@param value integer
---@return dbc.row.v1215.QuestXUIQuestDetailsTheme self
function row:SetQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'QuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetQuest() end

---Creates a related 'QuestV2' row and automatically links 'QuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'UiQuestDetailsThemeID'.
---@return integer value
function row:GetUiQuestDetailsThemeID() end

---Sets the value of field 'UiQuestDetailsThemeID'.
---@param value integer
---@return dbc.row.v1215.QuestXUIQuestDetailsTheme self
function row:SetUiQuestDetailsThemeID(value) end

---Navigates foreign relationship to 'UiQuestDetailsTheme' via 'UiQuestDetailsThemeID'.
---@return dbc.row.v1215.UiQuestDetailsTheme|nil
function row:GetUiQuestDetailsTheme() end

---Creates a related 'UiQuestDetailsTheme' row and automatically links 'UiQuestDetailsThemeID'.
---@param data? table
---@return dbc.row.v1215.UiQuestDetailsTheme
function row:CreateRelated(data) end

---Table container for QuestXUIQuestDetailsTheme (Build 12.1.5.69594).
---@class dbc.Table.v1215.QuestXUIQuestDetailsTheme : DbcTable
---@field [integer] dbc.row.v1215.QuestXUIQuestDetailsTheme
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.QuestXUIQuestDetailsTheme
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.QuestXUIQuestDetailsTheme|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.QuestXUIQuestDetailsTheme
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.QuestXUIQuestDetailsTheme>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.QuestXUIQuestDetailsTheme[]
function tbl:GetByRelation(foreign_id) end

return {}
