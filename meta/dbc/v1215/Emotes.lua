---@meta
-- Generated LuaLS annotations for Emotes (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Emotes in build 12.1.5.69594.
---@class dbc.row.v1215.Emotes : RowProxy
---@field ID integer
---@field EmoteSlashCommand string
---@field AnimID integer
---@field EmoteFlags integer
---@field EmoteSpecProc integer
---@field EmoteSpecProcParam integer
---@field EventSoundID integer
---@field SpellVisualKitID integer
---@field ClassMask integer
---@field RaceMasks integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Emotes self
function row:SetID(value) end

---Gets the value of field 'EmoteSlashCommand'.
---@return string value
function row:GetEmoteSlashCommand() end

---Sets the value of field 'EmoteSlashCommand'.
---@param value string
---@return dbc.row.v1215.Emotes self
function row:SetEmoteSlashCommand(value) end

---Gets the value of field 'AnimID'.
---@return integer value
function row:GetAnimID() end

---Sets the value of field 'AnimID'.
---@param value integer
---@return dbc.row.v1215.Emotes self
function row:SetAnimID(value) end

---Navigates foreign relationship to 'AnimationData' via 'AnimID'.
---@return dbc.row.v1215.AnimationData|nil
function row:GetAnim() end

---Creates a related 'AnimationData' row and automatically links 'AnimID'.
---@param data? table
---@return dbc.row.v1215.AnimationData
function row:CreateRelated(data) end

---Gets the value of field 'EmoteFlags'.
---@return integer value
function row:GetEmoteFlags() end

---Sets the value of field 'EmoteFlags'.
---@param value integer
---@return dbc.row.v1215.Emotes self
function row:SetEmoteFlags(value) end

---Gets the value of field 'EmoteSpecProc'.
---@return integer value
function row:GetEmoteSpecProc() end

---Sets the value of field 'EmoteSpecProc'.
---@param value integer
---@return dbc.row.v1215.Emotes self
function row:SetEmoteSpecProc(value) end

---Gets the value of field 'EmoteSpecProcParam'.
---@return integer value
function row:GetEmoteSpecProcParam() end

---Sets the value of field 'EmoteSpecProcParam'.
---@param value integer
---@return dbc.row.v1215.Emotes self
function row:SetEmoteSpecProcParam(value) end

---Gets the value of field 'EventSoundID'.
---@return integer value
function row:GetEventSoundID() end

---Sets the value of field 'EventSoundID'.
---@param value integer
---@return dbc.row.v1215.Emotes self
function row:SetEventSoundID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'EventSoundID'.
---@return dbc.row.v1215.SoundEntries|nil
function row:GetEventSound() end

---Creates a related 'SoundEntries' row and automatically links 'EventSoundID'.
---@param data? table
---@return dbc.row.v1215.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'SpellVisualKitID'.
---@return integer value
function row:GetSpellVisualKitID() end

---Sets the value of field 'SpellVisualKitID'.
---@param value integer
---@return dbc.row.v1215.Emotes self
function row:SetSpellVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'SpellVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetSpellVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'SpellVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'ClassMask'.
---@return integer value
function row:GetClassMask() end

---Sets the value of field 'ClassMask'.
---@param value integer
---@return dbc.row.v1215.Emotes self
function row:SetClassMask(value) end

---Gets the value of field 'RaceMasks'.
---@return integer[] value
function row:GetRaceMasks() end

---Sets the value of field 'RaceMasks'.
---@param value integer[]
---@return dbc.row.v1215.Emotes self
function row:SetRaceMasks(value) end

---Gets element at 1-based index in 'RaceMasks'.
---@param index integer
---@return integer value
function row:GetRaceMasksItem(index) end

---Table container for Emotes (Build 12.1.5.69594).
---@class dbc.Table.v1215.Emotes : DbcTable
---@field [integer] dbc.row.v1215.Emotes
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Emotes
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Emotes|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Emotes
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Emotes>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Emotes[]
function tbl:GetByRelation(foreign_id) end

return {}
