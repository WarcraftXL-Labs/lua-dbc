---@meta
-- Generated LuaLS annotations for Campaign (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Campaign in build 12.1.5.69594.
---@class dbc.row.v1215.Campaign : RowProxy
---@field ID integer
---@field Title_lang string
---@field Description_lang string
---@field UiTextureKitID integer
---@field RewardQuestID integer
---@field Prerequisite integer
---@field Stalled integer
---@field Completed integer
---@field OnlyStallIf integer if given and evals to false, don't mark as stalled.
---@field UiQuestDetailsThemeID integer
---@field Flags integer &0x01: useNormalQuestIcons
---@field DisplayPriority integer
---@field SortAsNormalQuest integer
---@field UseMinimalHeader integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Campaign self
function row:SetID(value) end

---Gets the value of field 'Title_lang'.
---@return string value
function row:GetTitle_lang() end

---Sets the value of field 'Title_lang'.
---@param value string
---@return dbc.row.v1215.Campaign self
function row:SetTitle_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.Campaign self
function row:SetDescription_lang(value) end

---Gets the value of field 'UiTextureKitID'.
---@return integer value
function row:GetUiTextureKitID() end

---Sets the value of field 'UiTextureKitID'.
---@param value integer
---@return dbc.row.v1215.Campaign self
function row:SetUiTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'UiTextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetUiTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'UiTextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'RewardQuestID'.
---@return integer value
function row:GetRewardQuestID() end

---Sets the value of field 'RewardQuestID'.
---@param value integer
---@return dbc.row.v1215.Campaign self
function row:SetRewardQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'RewardQuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetRewardQuest() end

---Creates a related 'QuestV2' row and automatically links 'RewardQuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'Prerequisite'.
---@return integer value
function row:GetPrerequisite() end

---Sets the value of field 'Prerequisite'.
---@param value integer
---@return dbc.row.v1215.Campaign self
function row:SetPrerequisite(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'Prerequisite'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPrerequisite() end

---Creates a related 'PlayerCondition' row and automatically links 'Prerequisite'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'Stalled'.
---@return integer value
function row:GetStalled() end

---Sets the value of field 'Stalled'.
---@param value integer
---@return dbc.row.v1215.Campaign self
function row:SetStalled(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'Stalled'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetStalled() end

---Creates a related 'PlayerCondition' row and automatically links 'Stalled'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'Completed'.
---@return integer value
function row:GetCompleted() end

---Sets the value of field 'Completed'.
---@param value integer
---@return dbc.row.v1215.Campaign self
function row:SetCompleted(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'Completed'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetCompleted() end

---Creates a related 'PlayerCondition' row and automatically links 'Completed'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'OnlyStallIf'.
---@return integer value
function row:GetOnlyStallIf() end

---Sets the value of field 'OnlyStallIf'.
---@param value integer
---@return dbc.row.v1215.Campaign self
function row:SetOnlyStallIf(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'OnlyStallIf'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetOnlyStallIf() end

---Creates a related 'PlayerCondition' row and automatically links 'OnlyStallIf'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'UiQuestDetailsThemeID'.
---@return integer value
function row:GetUiQuestDetailsThemeID() end

---Sets the value of field 'UiQuestDetailsThemeID'.
---@param value integer
---@return dbc.row.v1215.Campaign self
function row:SetUiQuestDetailsThemeID(value) end

---Navigates foreign relationship to 'UiQuestDetailsTheme' via 'UiQuestDetailsThemeID'.
---@return dbc.row.v1215.UiQuestDetailsTheme|nil
function row:GetUiQuestDetailsTheme() end

---Creates a related 'UiQuestDetailsTheme' row and automatically links 'UiQuestDetailsThemeID'.
---@param data? table
---@return dbc.row.v1215.UiQuestDetailsTheme
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.Campaign self
function row:SetFlags(value) end

---Gets the value of field 'DisplayPriority'.
---@return integer value
function row:GetDisplayPriority() end

---Sets the value of field 'DisplayPriority'.
---@param value integer
---@return dbc.row.v1215.Campaign self
function row:SetDisplayPriority(value) end

---Gets the value of field 'SortAsNormalQuest'.
---@return integer value
function row:GetSortAsNormalQuest() end

---Sets the value of field 'SortAsNormalQuest'.
---@param value integer
---@return dbc.row.v1215.Campaign self
function row:SetSortAsNormalQuest(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'SortAsNormalQuest'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetSortAsNormalQuest() end

---Creates a related 'PlayerCondition' row and automatically links 'SortAsNormalQuest'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'UseMinimalHeader'.
---@return integer value
function row:GetUseMinimalHeader() end

---Sets the value of field 'UseMinimalHeader'.
---@param value integer
---@return dbc.row.v1215.Campaign self
function row:SetUseMinimalHeader(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'UseMinimalHeader'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetUseMinimalHeader() end

---Creates a related 'PlayerCondition' row and automatically links 'UseMinimalHeader'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Table container for Campaign (Build 12.1.5.69594).
---@class dbc.Table.v1215.Campaign : DbcTable
---@field [integer] dbc.row.v1215.Campaign
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Campaign
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Campaign|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Campaign
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Campaign>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Campaign[]
function tbl:GetByRelation(foreign_id) end

return {}
