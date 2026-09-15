---@meta
-- Generated LuaLS annotations for CraftingData (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CraftingData in build 12.1.5.69594.
---@class dbc.row.v1215.CraftingData : RowProxy
---@field ID integer
---@field Type integer
---@field CraftingDifficultyID integer
---@field CraftedItemID integer
---@field ItemBonusTreeID integer
---@field CraftingDifficulty integer
---@field Field_10_0_0_44649_005 number
---@field CraftSkillBonusPercent number if set, overrides CraftingDifficulty::CraftSkillBonusPercent
---@field ReCraftSkillBonusPercent number if set, overrides CraftingDifficulty::ReCraftSkillBonusPercent
---@field InspirationSkillBonusPercent number if set, overrides CraftingDifficulty::InspirationSkillBonusPercent
---@field Field_10_0_0_44649_009 number
---@field Field_10_0_0_45141_011 number
---@field FirstCraftFlagQuestID integer
---@field FirstCraftTreasureID integer
---@field FirstCraftPlayerDataFlagCharacterID integer
---@field CraftedTreasureID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CraftingData self
function row:SetID(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.CraftingData self
function row:SetType(value) end

---Gets the value of field 'CraftingDifficultyID'.
---@return integer value
function row:GetCraftingDifficultyID() end

---Sets the value of field 'CraftingDifficultyID'.
---@param value integer
---@return dbc.row.v1215.CraftingData self
function row:SetCraftingDifficultyID(value) end

---Navigates foreign relationship to 'CraftingDifficulty' via 'CraftingDifficultyID'.
---@return dbc.row.v1215.CraftingDifficulty|nil
function row:GetCraftingDifficulty() end

---Creates a related 'CraftingDifficulty' row and automatically links 'CraftingDifficultyID'.
---@param data? table
---@return dbc.row.v1215.CraftingDifficulty
function row:CreateRelated(data) end

---Gets the value of field 'CraftedItemID'.
---@return integer value
function row:GetCraftedItemID() end

---Sets the value of field 'CraftedItemID'.
---@param value integer
---@return dbc.row.v1215.CraftingData self
function row:SetCraftedItemID(value) end

---Navigates foreign relationship to 'Item' via 'CraftedItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetCraftedItem() end

---Creates a related 'Item' row and automatically links 'CraftedItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'ItemBonusTreeID'.
---@return integer value
function row:GetItemBonusTreeID() end

---Sets the value of field 'ItemBonusTreeID'.
---@param value integer
---@return dbc.row.v1215.CraftingData self
function row:SetItemBonusTreeID(value) end

---Navigates foreign relationship to 'ItemBonusTree' via 'ItemBonusTreeID'.
---@return dbc.row.v1215.ItemBonusTree|nil
function row:GetItemBonusTree() end

---Creates a related 'ItemBonusTree' row and automatically links 'ItemBonusTreeID'.
---@param data? table
---@return dbc.row.v1215.ItemBonusTree
function row:CreateRelated(data) end

---Gets the value of field 'CraftingDifficulty'.
---@return integer value
function row:GetCraftingDifficulty() end

---Sets the value of field 'CraftingDifficulty'.
---@param value integer
---@return dbc.row.v1215.CraftingData self
function row:SetCraftingDifficulty(value) end

---Gets the value of field 'Field_10_0_0_44649_005'.
---@return number value
function row:GetField_10_0_0_44649_005() end

---Sets the value of field 'Field_10_0_0_44649_005'.
---@param value number
---@return dbc.row.v1215.CraftingData self
function row:SetField_10_0_0_44649_005(value) end

---Gets the value of field 'CraftSkillBonusPercent'.
---@return number value
function row:GetCraftSkillBonusPercent() end

---Sets the value of field 'CraftSkillBonusPercent'.
---@param value number
---@return dbc.row.v1215.CraftingData self
function row:SetCraftSkillBonusPercent(value) end

---Gets the value of field 'ReCraftSkillBonusPercent'.
---@return number value
function row:GetReCraftSkillBonusPercent() end

---Sets the value of field 'ReCraftSkillBonusPercent'.
---@param value number
---@return dbc.row.v1215.CraftingData self
function row:SetReCraftSkillBonusPercent(value) end

---Gets the value of field 'InspirationSkillBonusPercent'.
---@return number value
function row:GetInspirationSkillBonusPercent() end

---Sets the value of field 'InspirationSkillBonusPercent'.
---@param value number
---@return dbc.row.v1215.CraftingData self
function row:SetInspirationSkillBonusPercent(value) end

---Gets the value of field 'Field_10_0_0_44649_009'.
---@return number value
function row:GetField_10_0_0_44649_009() end

---Sets the value of field 'Field_10_0_0_44649_009'.
---@param value number
---@return dbc.row.v1215.CraftingData self
function row:SetField_10_0_0_44649_009(value) end

---Gets the value of field 'Field_10_0_0_45141_011'.
---@return number value
function row:GetField_10_0_0_45141_011() end

---Sets the value of field 'Field_10_0_0_45141_011'.
---@param value number
---@return dbc.row.v1215.CraftingData self
function row:SetField_10_0_0_45141_011(value) end

---Gets the value of field 'FirstCraftFlagQuestID'.
---@return integer value
function row:GetFirstCraftFlagQuestID() end

---Sets the value of field 'FirstCraftFlagQuestID'.
---@param value integer
---@return dbc.row.v1215.CraftingData self
function row:SetFirstCraftFlagQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'FirstCraftFlagQuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetFirstCraftFlagQuest() end

---Creates a related 'QuestV2' row and automatically links 'FirstCraftFlagQuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'FirstCraftTreasureID'.
---@return integer value
function row:GetFirstCraftTreasureID() end

---Sets the value of field 'FirstCraftTreasureID'.
---@param value integer
---@return dbc.row.v1215.CraftingData self
function row:SetFirstCraftTreasureID(value) end

---Navigates foreign relationship to 'FirstCraftTreasure' via 'FirstCraftTreasureID'.
---@return dbc.row.v1215.FirstCraftTreasure|nil
function row:GetFirstCraftTreasure() end

---Creates a related 'FirstCraftTreasure' row and automatically links 'FirstCraftTreasureID'.
---@param data? table
---@return dbc.row.v1215.FirstCraftTreasure
function row:CreateRelated(data) end

---Gets the value of field 'FirstCraftPlayerDataFlagCharacterID'.
---@return integer value
function row:GetFirstCraftPlayerDataFlagCharacterID() end

---Sets the value of field 'FirstCraftPlayerDataFlagCharacterID'.
---@param value integer
---@return dbc.row.v1215.CraftingData self
function row:SetFirstCraftPlayerDataFlagCharacterID(value) end

---Navigates foreign relationship to 'PlayerDataFlagCharacter' via 'FirstCraftPlayerDataFlagCharacterID'.
---@return dbc.row.v1215.PlayerDataFlagCharacter|nil
function row:GetFirstCraftPlayerDataFlagCharacter() end

---Creates a related 'PlayerDataFlagCharacter' row and automatically links 'FirstCraftPlayerDataFlagCharacterID'.
---@param data? table
---@return dbc.row.v1215.PlayerDataFlagCharacter
function row:CreateRelated(data) end

---Gets the value of field 'CraftedTreasureID'.
---@return integer value
function row:GetCraftedTreasureID() end

---Sets the value of field 'CraftedTreasureID'.
---@param value integer
---@return dbc.row.v1215.CraftingData self
function row:SetCraftedTreasureID(value) end

---Navigates foreign relationship to 'CraftedTreasure' via 'CraftedTreasureID'.
---@return dbc.row.v1215.CraftedTreasure|nil
function row:GetCraftedTreasure() end

---Creates a related 'CraftedTreasure' row and automatically links 'CraftedTreasureID'.
---@param data? table
---@return dbc.row.v1215.CraftedTreasure
function row:CreateRelated(data) end

---Table container for CraftingData (Build 12.1.5.69594).
---@class dbc.Table.v1215.CraftingData : DbcTable
---@field [integer] dbc.row.v1215.CraftingData
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CraftingData
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CraftingData|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CraftingData
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CraftingData>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CraftingData[]
function tbl:GetByRelation(foreign_id) end

return {}
