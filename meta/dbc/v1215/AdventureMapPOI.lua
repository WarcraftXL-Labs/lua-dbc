---@meta
-- Generated LuaLS annotations for AdventureMapPOI (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AdventureMapPOI in build 12.1.5.69594.
---@class dbc.row.v1215.AdventureMapPOI : RowProxy
---@field ID integer
---@field Title_lang string
---@field Description_lang string
---@field WorldPosition number[]
---@field Type integer
---@field PlayerConditionID integer
---@field QuestID integer
---@field LfgDungeonID integer
---@field RewardItemID integer
---@field UiTextureAtlasMemberID integer
---@field UiTextureKitID integer
---@field MapID integer
---@field AreaTableID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AdventureMapPOI self
function row:SetID(value) end

---Gets the value of field 'Title_lang'.
---@return string value
function row:GetTitle_lang() end

---Sets the value of field 'Title_lang'.
---@param value string
---@return dbc.row.v1215.AdventureMapPOI self
function row:SetTitle_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.AdventureMapPOI self
function row:SetDescription_lang(value) end

---Gets the value of field 'WorldPosition'.
---@return number[] value
function row:GetWorldPosition() end

---Sets the value of field 'WorldPosition'.
---@param value number[]
---@return dbc.row.v1215.AdventureMapPOI self
function row:SetWorldPosition(value) end

---Gets element at 1-based index in 'WorldPosition'.
---@param index integer
---@return number value
function row:GetWorldPositionItem(index) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.AdventureMapPOI self
function row:SetType(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.AdventureMapPOI self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'QuestID'.
---@return integer value
function row:GetQuestID() end

---Sets the value of field 'QuestID'.
---@param value integer
---@return dbc.row.v1215.AdventureMapPOI self
function row:SetQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'QuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetQuest() end

---Creates a related 'QuestV2' row and automatically links 'QuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'LfgDungeonID'.
---@return integer value
function row:GetLfgDungeonID() end

---Sets the value of field 'LfgDungeonID'.
---@param value integer
---@return dbc.row.v1215.AdventureMapPOI self
function row:SetLfgDungeonID(value) end

---Navigates foreign relationship to 'LFGDungeons' via 'LfgDungeonID'.
---@return dbc.row.v1215.LFGDungeons|nil
function row:GetLfgDungeon() end

---Creates a related 'LFGDungeons' row and automatically links 'LfgDungeonID'.
---@param data? table
---@return dbc.row.v1215.LFGDungeons
function row:CreateRelated(data) end

---Gets the value of field 'RewardItemID'.
---@return integer value
function row:GetRewardItemID() end

---Sets the value of field 'RewardItemID'.
---@param value integer
---@return dbc.row.v1215.AdventureMapPOI self
function row:SetRewardItemID(value) end

---Navigates foreign relationship to 'Item' via 'RewardItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetRewardItem() end

---Creates a related 'Item' row and automatically links 'RewardItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'UiTextureAtlasMemberID'.
---@return integer value
function row:GetUiTextureAtlasMemberID() end

---Sets the value of field 'UiTextureAtlasMemberID'.
---@param value integer
---@return dbc.row.v1215.AdventureMapPOI self
function row:SetUiTextureAtlasMemberID(value) end

---Navigates foreign relationship to 'UiTextureAtlasMember' via 'UiTextureAtlasMemberID'.
---@return dbc.row.v1215.UiTextureAtlasMember|nil
function row:GetUiTextureAtlasMember() end

---Creates a related 'UiTextureAtlasMember' row and automatically links 'UiTextureAtlasMemberID'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasMember
function row:CreateRelated(data) end

---Gets the value of field 'UiTextureKitID'.
---@return integer value
function row:GetUiTextureKitID() end

---Sets the value of field 'UiTextureKitID'.
---@param value integer
---@return dbc.row.v1215.AdventureMapPOI self
function row:SetUiTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'UiTextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetUiTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'UiTextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.AdventureMapPOI self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'AreaTableID'.
---@return integer value
function row:GetAreaTableID() end

---Sets the value of field 'AreaTableID'.
---@param value integer
---@return dbc.row.v1215.AdventureMapPOI self
function row:SetAreaTableID(value) end

---Navigates foreign relationship to 'AreaTable' via 'AreaTableID'.
---@return dbc.row.v1215.AreaTable|nil
function row:GetAreaTable() end

---Creates a related 'AreaTable' row and automatically links 'AreaTableID'.
---@param data? table
---@return dbc.row.v1215.AreaTable
function row:CreateRelated(data) end

---Table container for AdventureMapPOI (Build 12.1.5.69594).
---@class dbc.Table.v1215.AdventureMapPOI : DbcTable
---@field [integer] dbc.row.v1215.AdventureMapPOI
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AdventureMapPOI
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AdventureMapPOI|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AdventureMapPOI
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AdventureMapPOI>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AdventureMapPOI[]
function tbl:GetByRelation(foreign_id) end

return {}
