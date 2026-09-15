---@meta
-- Generated LuaLS annotations for BroadcastText (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of BroadcastText in build 12.1.5.69594.
---@class dbc.row.v1215.BroadcastText : RowProxy
---@field Text_lang string
---@field Text1_lang string
---@field ID integer
---@field LanguageID integer
---@field ConditionID integer
---@field EmotesID integer
---@field Flags integer
---@field ChatBubbleDurationMs integer
---@field VoiceOverPriorityID integer Client defaults to 4 if this is 0, probably sound system related
---@field SoundKitID integer[]
---@field EmoteID integer[]
---@field EmoteDelay integer[]

local row = {}

---Gets the value of field 'Text_lang'.
---@return string value
function row:GetText_lang() end

---Sets the value of field 'Text_lang'.
---@param value string
---@return dbc.row.v1215.BroadcastText self
function row:SetText_lang(value) end

---Gets the value of field 'Text1_lang'.
---@return string value
function row:GetText1_lang() end

---Sets the value of field 'Text1_lang'.
---@param value string
---@return dbc.row.v1215.BroadcastText self
function row:SetText1_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.BroadcastText self
function row:SetID(value) end

---Gets the value of field 'LanguageID'.
---@return integer value
function row:GetLanguageID() end

---Sets the value of field 'LanguageID'.
---@param value integer
---@return dbc.row.v1215.BroadcastText self
function row:SetLanguageID(value) end

---Navigates foreign relationship to 'Languages' via 'LanguageID'.
---@return dbc.row.v1215.Languages|nil
function row:GetLanguage() end

---Creates a related 'Languages' row and automatically links 'LanguageID'.
---@param data? table
---@return dbc.row.v1215.Languages
function row:CreateRelated(data) end

---Gets the value of field 'ConditionID'.
---@return integer value
function row:GetConditionID() end

---Sets the value of field 'ConditionID'.
---@param value integer
---@return dbc.row.v1215.BroadcastText self
function row:SetConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'ConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'ConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'EmotesID'.
---@return integer value
function row:GetEmotesID() end

---Sets the value of field 'EmotesID'.
---@param value integer
---@return dbc.row.v1215.BroadcastText self
function row:SetEmotesID(value) end

---Navigates foreign relationship to 'Emotes' via 'EmotesID'.
---@return dbc.row.v1215.Emotes|nil
function row:GetEmotes() end

---Creates a related 'Emotes' row and automatically links 'EmotesID'.
---@param data? table
---@return dbc.row.v1215.Emotes
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.BroadcastText self
function row:SetFlags(value) end

---Gets the value of field 'ChatBubbleDurationMs'.
---@return integer value
function row:GetChatBubbleDurationMs() end

---Sets the value of field 'ChatBubbleDurationMs'.
---@param value integer
---@return dbc.row.v1215.BroadcastText self
function row:SetChatBubbleDurationMs(value) end

---Gets the value of field 'VoiceOverPriorityID'.
---@return integer value
function row:GetVoiceOverPriorityID() end

---Sets the value of field 'VoiceOverPriorityID'.
---@param value integer
---@return dbc.row.v1215.BroadcastText self
function row:SetVoiceOverPriorityID(value) end

---Navigates foreign relationship to 'VoiceOverPriority' via 'VoiceOverPriorityID'.
---@return dbc.row.v1215.VoiceOverPriority|nil
function row:GetVoiceOverPriority() end

---Creates a related 'VoiceOverPriority' row and automatically links 'VoiceOverPriorityID'.
---@param data? table
---@return dbc.row.v1215.VoiceOverPriority
function row:CreateRelated(data) end

---Gets the value of field 'SoundKitID'.
---@return integer[] value
function row:GetSoundKitID() end

---Sets the value of field 'SoundKitID'.
---@param value integer[]
---@return dbc.row.v1215.BroadcastText self
function row:SetSoundKitID(value) end

---Gets element at 1-based index in 'SoundKitID'.
---@param index integer
---@return integer value
function row:GetSoundKitIDItem(index) end

---Navigates foreign relationship to 'SoundKit' via 'SoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'SoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'EmoteID'.
---@return integer[] value
function row:GetEmoteID() end

---Sets the value of field 'EmoteID'.
---@param value integer[]
---@return dbc.row.v1215.BroadcastText self
function row:SetEmoteID(value) end

---Gets element at 1-based index in 'EmoteID'.
---@param index integer
---@return integer value
function row:GetEmoteIDItem(index) end

---Navigates foreign relationship to 'Emotes' via 'EmoteID'.
---@return dbc.row.v1215.Emotes|nil
function row:GetEmote() end

---Creates a related 'Emotes' row and automatically links 'EmoteID'.
---@param data? table
---@return dbc.row.v1215.Emotes
function row:CreateRelated(data) end

---Gets the value of field 'EmoteDelay'.
---@return integer[] value
function row:GetEmoteDelay() end

---Sets the value of field 'EmoteDelay'.
---@param value integer[]
---@return dbc.row.v1215.BroadcastText self
function row:SetEmoteDelay(value) end

---Gets element at 1-based index in 'EmoteDelay'.
---@param index integer
---@return integer value
function row:GetEmoteDelayItem(index) end

---Table container for BroadcastText (Build 12.1.5.69594).
---@class dbc.Table.v1215.BroadcastText : DbcTable
---@field [integer] dbc.row.v1215.BroadcastText
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.BroadcastText
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.BroadcastText|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.BroadcastText
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.BroadcastText>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.BroadcastText[]
function tbl:GetByRelation(foreign_id) end

return {}
