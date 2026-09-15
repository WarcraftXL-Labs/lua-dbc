---@meta
-- Generated LuaLS annotations for CollectableSourceQuestSparse (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CollectableSourceQuestSparse in build 12.1.5.69594.
---@class dbc.row.v1215.CollectableSourceQuestSparse : RowProxy
---@field ID integer
---@field QuestID integer
---@field QuestGiverCreatureID integer
---@field QuestMapID integer
---@field QuestPosition number[]
---@field CollectableSourceInfoID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CollectableSourceQuestSparse self
function row:SetID(value) end

---Gets the value of field 'QuestID'.
---@return integer value
function row:GetQuestID() end

---Sets the value of field 'QuestID'.
---@param value integer
---@return dbc.row.v1215.CollectableSourceQuestSparse self
function row:SetQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'QuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetQuest() end

---Creates a related 'QuestV2' row and automatically links 'QuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'QuestGiverCreatureID'.
---@return integer value
function row:GetQuestGiverCreatureID() end

---Sets the value of field 'QuestGiverCreatureID'.
---@param value integer
---@return dbc.row.v1215.CollectableSourceQuestSparse self
function row:SetQuestGiverCreatureID(value) end

---Navigates foreign relationship to 'Creature' via 'QuestGiverCreatureID'.
---@return dbc.row.v1215.Creature|nil
function row:GetQuestGiverCreature() end

---Creates a related 'Creature' row and automatically links 'QuestGiverCreatureID'.
---@param data? table
---@return dbc.row.v1215.Creature
function row:CreateRelated(data) end

---Gets the value of field 'QuestMapID'.
---@return integer value
function row:GetQuestMapID() end

---Sets the value of field 'QuestMapID'.
---@param value integer
---@return dbc.row.v1215.CollectableSourceQuestSparse self
function row:SetQuestMapID(value) end

---Navigates foreign relationship to 'Map' via 'QuestMapID'.
---@return dbc.row.v1215.Map|nil
function row:GetQuestMap() end

---Creates a related 'Map' row and automatically links 'QuestMapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'QuestPosition'.
---@return number[] value
function row:GetQuestPosition() end

---Sets the value of field 'QuestPosition'.
---@param value number[]
---@return dbc.row.v1215.CollectableSourceQuestSparse self
function row:SetQuestPosition(value) end

---Gets element at 1-based index in 'QuestPosition'.
---@param index integer
---@return number value
function row:GetQuestPositionItem(index) end

---Gets the value of field 'CollectableSourceInfoID'.
---@return integer value
function row:GetCollectableSourceInfoID() end

---Sets the value of field 'CollectableSourceInfoID'.
---@param value integer
---@return dbc.row.v1215.CollectableSourceQuestSparse self
function row:SetCollectableSourceInfoID(value) end

---Navigates foreign relationship to 'CollectableSourceInfo' via 'CollectableSourceInfoID'.
---@return dbc.row.v1215.CollectableSourceInfo|nil
function row:GetCollectableSourceInfo() end

---Creates a related 'CollectableSourceInfo' row and automatically links 'CollectableSourceInfoID'.
---@param data? table
---@return dbc.row.v1215.CollectableSourceInfo
function row:CreateRelated(data) end

---Table container for CollectableSourceQuestSparse (Build 12.1.5.69594).
---@class dbc.Table.v1215.CollectableSourceQuestSparse : DbcTable
---@field [integer] dbc.row.v1215.CollectableSourceQuestSparse
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CollectableSourceQuestSparse
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CollectableSourceQuestSparse|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CollectableSourceQuestSparse
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CollectableSourceQuestSparse>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CollectableSourceQuestSparse[]
function tbl:GetByRelation(foreign_id) end

return {}
