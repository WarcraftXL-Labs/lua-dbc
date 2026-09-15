---@meta
-- Generated LuaLS annotations for WorldEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of WorldEffect in build 12.1.5.69594.
---@class dbc.row.v1215.WorldEffect : RowProxy
---@field ID integer
---@field QuestFeedbackEffectID integer
---@field WhenToDisplay integer bitmask: &0x1: is_quest_objective_completeable, &0x2: is_quest_objective_complete, &0x4: ???, &0x8: ???, &0x10: ???
---@field TargetType integer
---@field TargetAsset integer depending on TargetType: 1: CreatureID, 2: GameObjectID
---@field PlayerConditionID integer
---@field CombatConditionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.WorldEffect self
function row:SetID(value) end

---Gets the value of field 'QuestFeedbackEffectID'.
---@return integer value
function row:GetQuestFeedbackEffectID() end

---Sets the value of field 'QuestFeedbackEffectID'.
---@param value integer
---@return dbc.row.v1215.WorldEffect self
function row:SetQuestFeedbackEffectID(value) end

---Navigates foreign relationship to 'QuestFeedbackEffect' via 'QuestFeedbackEffectID'.
---@return dbc.row.v1215.QuestFeedbackEffect|nil
function row:GetQuestFeedbackEffect() end

---Creates a related 'QuestFeedbackEffect' row and automatically links 'QuestFeedbackEffectID'.
---@param data? table
---@return dbc.row.v1215.QuestFeedbackEffect
function row:CreateRelated(data) end

---Gets the value of field 'WhenToDisplay'.
---@return integer value
function row:GetWhenToDisplay() end

---Sets the value of field 'WhenToDisplay'.
---@param value integer
---@return dbc.row.v1215.WorldEffect self
function row:SetWhenToDisplay(value) end

---Gets the value of field 'TargetType'.
---@return integer value
function row:GetTargetType() end

---Sets the value of field 'TargetType'.
---@param value integer
---@return dbc.row.v1215.WorldEffect self
function row:SetTargetType(value) end

---Gets the value of field 'TargetAsset'.
---@return integer value
function row:GetTargetAsset() end

---Sets the value of field 'TargetAsset'.
---@param value integer
---@return dbc.row.v1215.WorldEffect self
function row:SetTargetAsset(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.WorldEffect self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'CombatConditionID'.
---@return integer value
function row:GetCombatConditionID() end

---Sets the value of field 'CombatConditionID'.
---@param value integer
---@return dbc.row.v1215.WorldEffect self
function row:SetCombatConditionID(value) end

---Navigates foreign relationship to 'CombatCondition' via 'CombatConditionID'.
---@return dbc.row.v1215.CombatCondition|nil
function row:GetCombatCondition() end

---Creates a related 'CombatCondition' row and automatically links 'CombatConditionID'.
---@param data? table
---@return dbc.row.v1215.CombatCondition
function row:CreateRelated(data) end

---Table container for WorldEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.WorldEffect : DbcTable
---@field [integer] dbc.row.v1215.WorldEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.WorldEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.WorldEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.WorldEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.WorldEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.WorldEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
