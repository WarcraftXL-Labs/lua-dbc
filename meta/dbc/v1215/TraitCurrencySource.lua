---@meta
-- Generated LuaLS annotations for TraitCurrencySource (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TraitCurrencySource in build 12.1.5.69594.
---@class dbc.row.v1215.TraitCurrencySource : RowProxy
---@field Requirement_lang string
---@field ID integer
---@field TraitCurrencyID integer
---@field Amount integer
---@field QuestID integer
---@field AchievementID integer
---@field PlayerLevel integer
---@field TraitNodeEntryID integer
---@field OrderIndex integer not sure what group, but the achievement-unlocked sources are increasing in level

local row = {}

---Gets the value of field 'Requirement_lang'.
---@return string value
function row:GetRequirement_lang() end

---Sets the value of field 'Requirement_lang'.
---@param value string
---@return dbc.row.v1215.TraitCurrencySource self
function row:SetRequirement_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TraitCurrencySource self
function row:SetID(value) end

---Gets the value of field 'TraitCurrencyID'.
---@return integer value
function row:GetTraitCurrencyID() end

---Sets the value of field 'TraitCurrencyID'.
---@param value integer
---@return dbc.row.v1215.TraitCurrencySource self
function row:SetTraitCurrencyID(value) end

---Navigates foreign relationship to 'TraitCurrency' via 'TraitCurrencyID'.
---@return dbc.row.v1215.TraitCurrency|nil
function row:GetTraitCurrency() end

---Creates a related 'TraitCurrency' row and automatically links 'TraitCurrencyID'.
---@param data? table
---@return dbc.row.v1215.TraitCurrency
function row:CreateRelated(data) end

---Gets the value of field 'Amount'.
---@return integer value
function row:GetAmount() end

---Sets the value of field 'Amount'.
---@param value integer
---@return dbc.row.v1215.TraitCurrencySource self
function row:SetAmount(value) end

---Gets the value of field 'QuestID'.
---@return integer value
function row:GetQuestID() end

---Sets the value of field 'QuestID'.
---@param value integer
---@return dbc.row.v1215.TraitCurrencySource self
function row:SetQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'QuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetQuest() end

---Creates a related 'QuestV2' row and automatically links 'QuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'AchievementID'.
---@return integer value
function row:GetAchievementID() end

---Sets the value of field 'AchievementID'.
---@param value integer
---@return dbc.row.v1215.TraitCurrencySource self
function row:SetAchievementID(value) end

---Navigates foreign relationship to 'Achievement' via 'AchievementID'.
---@return dbc.row.v1215.Achievement|nil
function row:GetAchievement() end

---Creates a related 'Achievement' row and automatically links 'AchievementID'.
---@param data? table
---@return dbc.row.v1215.Achievement
function row:CreateRelated(data) end

---Gets the value of field 'PlayerLevel'.
---@return integer value
function row:GetPlayerLevel() end

---Sets the value of field 'PlayerLevel'.
---@param value integer
---@return dbc.row.v1215.TraitCurrencySource self
function row:SetPlayerLevel(value) end

---Gets the value of field 'TraitNodeEntryID'.
---@return integer value
function row:GetTraitNodeEntryID() end

---Sets the value of field 'TraitNodeEntryID'.
---@param value integer
---@return dbc.row.v1215.TraitCurrencySource self
function row:SetTraitNodeEntryID(value) end

---Navigates foreign relationship to 'TraitNodeEntry' via 'TraitNodeEntryID'.
---@return dbc.row.v1215.TraitNodeEntry|nil
function row:GetTraitNodeEntry() end

---Creates a related 'TraitNodeEntry' row and automatically links 'TraitNodeEntryID'.
---@param data? table
---@return dbc.row.v1215.TraitNodeEntry
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.TraitCurrencySource self
function row:SetOrderIndex(value) end

---Table container for TraitCurrencySource (Build 12.1.5.69594).
---@class dbc.Table.v1215.TraitCurrencySource : DbcTable
---@field [integer] dbc.row.v1215.TraitCurrencySource
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TraitCurrencySource
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TraitCurrencySource|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TraitCurrencySource
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TraitCurrencySource>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TraitCurrencySource[]
function tbl:GetByRelation(foreign_id) end

return {}
