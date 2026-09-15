---@meta
-- Generated LuaLS annotations for ParagonReputation (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ParagonReputation in build 12.1.5.69594.
---@class dbc.row.v1215.ParagonReputation : RowProxy
---@field ID integer
---@field FactionID integer
---@field LevelThreshold integer
---@field QuestID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ParagonReputation self
function row:SetID(value) end

---Gets the value of field 'FactionID'.
---@return integer value
function row:GetFactionID() end

---Sets the value of field 'FactionID'.
---@param value integer
---@return dbc.row.v1215.ParagonReputation self
function row:SetFactionID(value) end

---Navigates foreign relationship to 'Faction' via 'FactionID'.
---@return dbc.row.v1215.Faction|nil
function row:GetFaction() end

---Creates a related 'Faction' row and automatically links 'FactionID'.
---@param data? table
---@return dbc.row.v1215.Faction
function row:CreateRelated(data) end

---Gets the value of field 'LevelThreshold'.
---@return integer value
function row:GetLevelThreshold() end

---Sets the value of field 'LevelThreshold'.
---@param value integer
---@return dbc.row.v1215.ParagonReputation self
function row:SetLevelThreshold(value) end

---Gets the value of field 'QuestID'.
---@return integer value
function row:GetQuestID() end

---Sets the value of field 'QuestID'.
---@param value integer
---@return dbc.row.v1215.ParagonReputation self
function row:SetQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'QuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetQuest() end

---Creates a related 'QuestV2' row and automatically links 'QuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Table container for ParagonReputation (Build 12.1.5.69594).
---@class dbc.Table.v1215.ParagonReputation : DbcTable
---@field [integer] dbc.row.v1215.ParagonReputation
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ParagonReputation
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ParagonReputation|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ParagonReputation
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ParagonReputation>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ParagonReputation[]
function tbl:GetByRelation(foreign_id) end

return {}
