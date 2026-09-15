---@meta
-- Generated LuaLS annotations for PVPBracketTypes (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PVPBracketTypes in build 12.1.5.69594.
---@class dbc.row.v1215.PVPBracketTypes : RowProxy
---@field ID integer
---@field BracketID integer
---@field WeeklyQuestID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PVPBracketTypes self
function row:SetID(value) end

---Gets the value of field 'BracketID'.
---@return integer value
function row:GetBracketID() end

---Sets the value of field 'BracketID'.
---@param value integer
---@return dbc.row.v1215.PVPBracketTypes self
function row:SetBracketID(value) end

---Navigates foreign relationship to 'Bracket' via 'BracketID'.
---@return dbc.row.v1215.Bracket|nil
function row:GetBracket() end

---Creates a related 'Bracket' row and automatically links 'BracketID'.
---@param data? table
---@return dbc.row.v1215.Bracket
function row:CreateRelated(data) end

---Gets the value of field 'WeeklyQuestID'.
---@return integer[] value
function row:GetWeeklyQuestID() end

---Sets the value of field 'WeeklyQuestID'.
---@param value integer[]
---@return dbc.row.v1215.PVPBracketTypes self
function row:SetWeeklyQuestID(value) end

---Gets element at 1-based index in 'WeeklyQuestID'.
---@param index integer
---@return integer value
function row:GetWeeklyQuestIDItem(index) end

---Navigates foreign relationship to 'QuestV2' via 'WeeklyQuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetWeeklyQuest() end

---Creates a related 'QuestV2' row and automatically links 'WeeklyQuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Table container for PVPBracketTypes (Build 12.1.5.69594).
---@class dbc.Table.v1215.PVPBracketTypes : DbcTable
---@field [integer] dbc.row.v1215.PVPBracketTypes
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PVPBracketTypes
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PVPBracketTypes|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PVPBracketTypes
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PVPBracketTypes>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PVPBracketTypes[]
function tbl:GetByRelation(foreign_id) end

return {}
