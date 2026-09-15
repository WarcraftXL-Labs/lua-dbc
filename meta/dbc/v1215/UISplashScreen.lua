---@meta
-- Generated LuaLS annotations for UISplashScreen (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UISplashScreen in build 12.1.5.69594.
---@class dbc.row.v1215.UISplashScreen : RowProxy
---@field ID integer
---@field Header_lang string
---@field TopLeftFeatureTitle_lang string
---@field TopLeftFeatureDesc_lang string
---@field BottomLeftFeatureTitle_lang string
---@field BottomLeftFeatureDesc_lang string
---@field RightFeatureTitle_lang string
---@field RightFeatureDesc_lang string
---@field AllianceQuestID integer
---@field HordeQuestID integer
---@field ScreenType integer 0: WhatsNew, 1: SeasonRollOver
---@field TextureKitID integer
---@field SoundKitID integer
---@field PlayerConditionID integer Whether to show quest, not the splash screen.
---@field CharLevelConditionID integer
---@field RequiredTimeEventPassed integer serverside TimeEvent table, same as Asset for ModifierTree Type 289 (TIME_EVENT_PASSED)

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UISplashScreen self
function row:SetID(value) end

---Gets the value of field 'Header_lang'.
---@return string value
function row:GetHeader_lang() end

---Sets the value of field 'Header_lang'.
---@param value string
---@return dbc.row.v1215.UISplashScreen self
function row:SetHeader_lang(value) end

---Gets the value of field 'TopLeftFeatureTitle_lang'.
---@return string value
function row:GetTopLeftFeatureTitle_lang() end

---Sets the value of field 'TopLeftFeatureTitle_lang'.
---@param value string
---@return dbc.row.v1215.UISplashScreen self
function row:SetTopLeftFeatureTitle_lang(value) end

---Gets the value of field 'TopLeftFeatureDesc_lang'.
---@return string value
function row:GetTopLeftFeatureDesc_lang() end

---Sets the value of field 'TopLeftFeatureDesc_lang'.
---@param value string
---@return dbc.row.v1215.UISplashScreen self
function row:SetTopLeftFeatureDesc_lang(value) end

---Gets the value of field 'BottomLeftFeatureTitle_lang'.
---@return string value
function row:GetBottomLeftFeatureTitle_lang() end

---Sets the value of field 'BottomLeftFeatureTitle_lang'.
---@param value string
---@return dbc.row.v1215.UISplashScreen self
function row:SetBottomLeftFeatureTitle_lang(value) end

---Gets the value of field 'BottomLeftFeatureDesc_lang'.
---@return string value
function row:GetBottomLeftFeatureDesc_lang() end

---Sets the value of field 'BottomLeftFeatureDesc_lang'.
---@param value string
---@return dbc.row.v1215.UISplashScreen self
function row:SetBottomLeftFeatureDesc_lang(value) end

---Gets the value of field 'RightFeatureTitle_lang'.
---@return string value
function row:GetRightFeatureTitle_lang() end

---Sets the value of field 'RightFeatureTitle_lang'.
---@param value string
---@return dbc.row.v1215.UISplashScreen self
function row:SetRightFeatureTitle_lang(value) end

---Gets the value of field 'RightFeatureDesc_lang'.
---@return string value
function row:GetRightFeatureDesc_lang() end

---Sets the value of field 'RightFeatureDesc_lang'.
---@param value string
---@return dbc.row.v1215.UISplashScreen self
function row:SetRightFeatureDesc_lang(value) end

---Gets the value of field 'AllianceQuestID'.
---@return integer value
function row:GetAllianceQuestID() end

---Sets the value of field 'AllianceQuestID'.
---@param value integer
---@return dbc.row.v1215.UISplashScreen self
function row:SetAllianceQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'AllianceQuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetAllianceQuest() end

---Creates a related 'QuestV2' row and automatically links 'AllianceQuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'HordeQuestID'.
---@return integer value
function row:GetHordeQuestID() end

---Sets the value of field 'HordeQuestID'.
---@param value integer
---@return dbc.row.v1215.UISplashScreen self
function row:SetHordeQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'HordeQuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetHordeQuest() end

---Creates a related 'QuestV2' row and automatically links 'HordeQuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'ScreenType'.
---@return integer value
function row:GetScreenType() end

---Sets the value of field 'ScreenType'.
---@param value integer
---@return dbc.row.v1215.UISplashScreen self
function row:SetScreenType(value) end

---Gets the value of field 'TextureKitID'.
---@return integer value
function row:GetTextureKitID() end

---Sets the value of field 'TextureKitID'.
---@param value integer
---@return dbc.row.v1215.UISplashScreen self
function row:SetTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'TextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'TextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'SoundKitID'.
---@return integer value
function row:GetSoundKitID() end

---Sets the value of field 'SoundKitID'.
---@param value integer
---@return dbc.row.v1215.UISplashScreen self
function row:SetSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'SoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'SoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.UISplashScreen self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'CharLevelConditionID'.
---@return integer value
function row:GetCharLevelConditionID() end

---Sets the value of field 'CharLevelConditionID'.
---@param value integer
---@return dbc.row.v1215.UISplashScreen self
function row:SetCharLevelConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'CharLevelConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetCharLevelCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'CharLevelConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'RequiredTimeEventPassed'.
---@return integer value
function row:GetRequiredTimeEventPassed() end

---Sets the value of field 'RequiredTimeEventPassed'.
---@param value integer
---@return dbc.row.v1215.UISplashScreen self
function row:SetRequiredTimeEventPassed(value) end

---Table container for UISplashScreen (Build 12.1.5.69594).
---@class dbc.Table.v1215.UISplashScreen : DbcTable
---@field [integer] dbc.row.v1215.UISplashScreen
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UISplashScreen
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UISplashScreen|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UISplashScreen
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UISplashScreen>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UISplashScreen[]
function tbl:GetByRelation(foreign_id) end

return {}
