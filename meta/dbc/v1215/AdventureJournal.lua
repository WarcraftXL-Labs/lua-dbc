---@meta
-- Generated LuaLS annotations for AdventureJournal (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AdventureJournal in build 12.1.5.69594.
---@class dbc.row.v1215.AdventureJournal : RowProxy
---@field ID integer
---@field Name_lang string
---@field Description_lang string
---@field ButtonText_lang string
---@field RewardDescription_lang string
---@field ContinueDescription_lang string
---@field Type integer
---@field PlayerConditionID integer
---@field Flags integer
---@field ButtonActionType integer
---@field TextureFileDataID integer
---@field LfgDungeonID integer
---@field QuestID integer
---@field BattleMasterListID integer
---@field PriorityMin integer
---@field PriorityMax integer
---@field CurrencyType integer
---@field CurrencyQuantity integer
---@field UIMapID integer
---@field BonusPlayerConditionID integer[]
---@field BonusValue integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AdventureJournal self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.AdventureJournal self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.AdventureJournal self
function row:SetDescription_lang(value) end

---Gets the value of field 'ButtonText_lang'.
---@return string value
function row:GetButtonText_lang() end

---Sets the value of field 'ButtonText_lang'.
---@param value string
---@return dbc.row.v1215.AdventureJournal self
function row:SetButtonText_lang(value) end

---Gets the value of field 'RewardDescription_lang'.
---@return string value
function row:GetRewardDescription_lang() end

---Sets the value of field 'RewardDescription_lang'.
---@param value string
---@return dbc.row.v1215.AdventureJournal self
function row:SetRewardDescription_lang(value) end

---Gets the value of field 'ContinueDescription_lang'.
---@return string value
function row:GetContinueDescription_lang() end

---Sets the value of field 'ContinueDescription_lang'.
---@param value string
---@return dbc.row.v1215.AdventureJournal self
function row:SetContinueDescription_lang(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.AdventureJournal self
function row:SetType(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.AdventureJournal self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.AdventureJournal self
function row:SetFlags(value) end

---Gets the value of field 'ButtonActionType'.
---@return integer value
function row:GetButtonActionType() end

---Sets the value of field 'ButtonActionType'.
---@param value integer
---@return dbc.row.v1215.AdventureJournal self
function row:SetButtonActionType(value) end

---Gets the value of field 'TextureFileDataID'.
---@return integer value
function row:GetTextureFileDataID() end

---Sets the value of field 'TextureFileDataID'.
---@param value integer
---@return dbc.row.v1215.AdventureJournal self
function row:SetTextureFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'TextureFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetTextureFileData() end

---Creates a related 'FileData' row and automatically links 'TextureFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'LfgDungeonID'.
---@return integer value
function row:GetLfgDungeonID() end

---Sets the value of field 'LfgDungeonID'.
---@param value integer
---@return dbc.row.v1215.AdventureJournal self
function row:SetLfgDungeonID(value) end

---Navigates foreign relationship to 'LFGDungeons' via 'LfgDungeonID'.
---@return dbc.row.v1215.LFGDungeons|nil
function row:GetLfgDungeon() end

---Creates a related 'LFGDungeons' row and automatically links 'LfgDungeonID'.
---@param data? table
---@return dbc.row.v1215.LFGDungeons
function row:CreateRelated(data) end

---Gets the value of field 'QuestID'.
---@return integer value
function row:GetQuestID() end

---Sets the value of field 'QuestID'.
---@param value integer
---@return dbc.row.v1215.AdventureJournal self
function row:SetQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'QuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetQuest() end

---Creates a related 'QuestV2' row and automatically links 'QuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'BattleMasterListID'.
---@return integer value
function row:GetBattleMasterListID() end

---Sets the value of field 'BattleMasterListID'.
---@param value integer
---@return dbc.row.v1215.AdventureJournal self
function row:SetBattleMasterListID(value) end

---Navigates foreign relationship to 'BattlemasterList' via 'BattleMasterListID'.
---@return dbc.row.v1215.BattlemasterList|nil
function row:GetBattleMasterList() end

---Creates a related 'BattlemasterList' row and automatically links 'BattleMasterListID'.
---@param data? table
---@return dbc.row.v1215.BattlemasterList
function row:CreateRelated(data) end

---Gets the value of field 'PriorityMin'.
---@return integer value
function row:GetPriorityMin() end

---Sets the value of field 'PriorityMin'.
---@param value integer
---@return dbc.row.v1215.AdventureJournal self
function row:SetPriorityMin(value) end

---Gets the value of field 'PriorityMax'.
---@return integer value
function row:GetPriorityMax() end

---Sets the value of field 'PriorityMax'.
---@param value integer
---@return dbc.row.v1215.AdventureJournal self
function row:SetPriorityMax(value) end

---Gets the value of field 'CurrencyType'.
---@return integer value
function row:GetCurrencyType() end

---Sets the value of field 'CurrencyType'.
---@param value integer
---@return dbc.row.v1215.AdventureJournal self
function row:SetCurrencyType(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'CurrencyType'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetCurrencyType() end

---Creates a related 'CurrencyTypes' row and automatically links 'CurrencyType'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'CurrencyQuantity'.
---@return integer value
function row:GetCurrencyQuantity() end

---Sets the value of field 'CurrencyQuantity'.
---@param value integer
---@return dbc.row.v1215.AdventureJournal self
function row:SetCurrencyQuantity(value) end

---Gets the value of field 'UIMapID'.
---@return integer value
function row:GetUIMapID() end

---Sets the value of field 'UIMapID'.
---@param value integer
---@return dbc.row.v1215.AdventureJournal self
function row:SetUIMapID(value) end

---Navigates foreign relationship to 'UiMap' via 'UIMapID'.
---@return dbc.row.v1215.UiMap|nil
function row:GetUIMap() end

---Creates a related 'UiMap' row and automatically links 'UIMapID'.
---@param data? table
---@return dbc.row.v1215.UiMap
function row:CreateRelated(data) end

---Gets the value of field 'BonusPlayerConditionID'.
---@return integer[] value
function row:GetBonusPlayerConditionID() end

---Sets the value of field 'BonusPlayerConditionID'.
---@param value integer[]
---@return dbc.row.v1215.AdventureJournal self
function row:SetBonusPlayerConditionID(value) end

---Gets element at 1-based index in 'BonusPlayerConditionID'.
---@param index integer
---@return integer value
function row:GetBonusPlayerConditionIDItem(index) end

---Navigates foreign relationship to 'PlayerCondition' via 'BonusPlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetBonusPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'BonusPlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'BonusValue'.
---@return integer[] value
function row:GetBonusValue() end

---Sets the value of field 'BonusValue'.
---@param value integer[]
---@return dbc.row.v1215.AdventureJournal self
function row:SetBonusValue(value) end

---Gets element at 1-based index in 'BonusValue'.
---@param index integer
---@return integer value
function row:GetBonusValueItem(index) end

---Table container for AdventureJournal (Build 12.1.5.69594).
---@class dbc.Table.v1215.AdventureJournal : DbcTable
---@field [integer] dbc.row.v1215.AdventureJournal
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AdventureJournal
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AdventureJournal|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AdventureJournal
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AdventureJournal>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AdventureJournal[]
function tbl:GetByRelation(foreign_id) end

return {}
