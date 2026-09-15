---@meta
-- Generated LuaLS annotations for ConversationLine (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ConversationLine in build 12.1.5.69594.
---@class dbc.row.v1215.ConversationLine : RowProxy
---@field ID integer
---@field BroadcastTextID integer
---@field Field_10_2_0_51239_001 integer
---@field SpellVisualKitID integer
---@field AdditionalDuration integer
---@field NextConversationLineID integer
---@field AnimKitID integer
---@field SpeechType integer
---@field StartAnimation integer
---@field EndAnimation integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ConversationLine self
function row:SetID(value) end

---Gets the value of field 'BroadcastTextID'.
---@return integer value
function row:GetBroadcastTextID() end

---Sets the value of field 'BroadcastTextID'.
---@param value integer
---@return dbc.row.v1215.ConversationLine self
function row:SetBroadcastTextID(value) end

---Navigates foreign relationship to 'BroadcastText' via 'BroadcastTextID'.
---@return dbc.row.v1215.BroadcastText|nil
function row:GetBroadcastText() end

---Creates a related 'BroadcastText' row and automatically links 'BroadcastTextID'.
---@param data? table
---@return dbc.row.v1215.BroadcastText
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_2_0_51239_001'.
---@return integer value
function row:GetField_10_2_0_51239_001() end

---Sets the value of field 'Field_10_2_0_51239_001'.
---@param value integer
---@return dbc.row.v1215.ConversationLine self
function row:SetField_10_2_0_51239_001(value) end

---Gets the value of field 'SpellVisualKitID'.
---@return integer value
function row:GetSpellVisualKitID() end

---Sets the value of field 'SpellVisualKitID'.
---@param value integer
---@return dbc.row.v1215.ConversationLine self
function row:SetSpellVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'SpellVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetSpellVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'SpellVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'AdditionalDuration'.
---@return integer value
function row:GetAdditionalDuration() end

---Sets the value of field 'AdditionalDuration'.
---@param value integer
---@return dbc.row.v1215.ConversationLine self
function row:SetAdditionalDuration(value) end

---Gets the value of field 'NextConversationLineID'.
---@return integer value
function row:GetNextConversationLineID() end

---Sets the value of field 'NextConversationLineID'.
---@param value integer
---@return dbc.row.v1215.ConversationLine self
function row:SetNextConversationLineID(value) end

---Navigates foreign relationship to 'ConversationLine' via 'NextConversationLineID'.
---@return dbc.row.v1215.ConversationLine|nil
function row:GetNextConversationLine() end

---Creates a related 'ConversationLine' row and automatically links 'NextConversationLineID'.
---@param data? table
---@return dbc.row.v1215.ConversationLine
function row:CreateRelated(data) end

---Gets the value of field 'AnimKitID'.
---@return integer value
function row:GetAnimKitID() end

---Sets the value of field 'AnimKitID'.
---@param value integer
---@return dbc.row.v1215.ConversationLine self
function row:SetAnimKitID(value) end

---Navigates foreign relationship to 'AnimKit' via 'AnimKitID'.
---@return dbc.row.v1215.AnimKit|nil
function row:GetAnimKit() end

---Creates a related 'AnimKit' row and automatically links 'AnimKitID'.
---@param data? table
---@return dbc.row.v1215.AnimKit
function row:CreateRelated(data) end

---Gets the value of field 'SpeechType'.
---@return integer value
function row:GetSpeechType() end

---Sets the value of field 'SpeechType'.
---@param value integer
---@return dbc.row.v1215.ConversationLine self
function row:SetSpeechType(value) end

---Gets the value of field 'StartAnimation'.
---@return integer value
function row:GetStartAnimation() end

---Sets the value of field 'StartAnimation'.
---@param value integer
---@return dbc.row.v1215.ConversationLine self
function row:SetStartAnimation(value) end

---Navigates foreign relationship to 'AnimationData' via 'StartAnimation'.
---@return dbc.row.v1215.AnimationData|nil
function row:GetStartAnimation() end

---Creates a related 'AnimationData' row and automatically links 'StartAnimation'.
---@param data? table
---@return dbc.row.v1215.AnimationData
function row:CreateRelated(data) end

---Gets the value of field 'EndAnimation'.
---@return integer value
function row:GetEndAnimation() end

---Sets the value of field 'EndAnimation'.
---@param value integer
---@return dbc.row.v1215.ConversationLine self
function row:SetEndAnimation(value) end

---Navigates foreign relationship to 'AnimationData' via 'EndAnimation'.
---@return dbc.row.v1215.AnimationData|nil
function row:GetEndAnimation() end

---Creates a related 'AnimationData' row and automatically links 'EndAnimation'.
---@param data? table
---@return dbc.row.v1215.AnimationData
function row:CreateRelated(data) end

---Table container for ConversationLine (Build 12.1.5.69594).
---@class dbc.Table.v1215.ConversationLine : DbcTable
---@field [integer] dbc.row.v1215.ConversationLine
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ConversationLine
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ConversationLine|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ConversationLine
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ConversationLine>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ConversationLine[]
function tbl:GetByRelation(foreign_id) end

return {}
