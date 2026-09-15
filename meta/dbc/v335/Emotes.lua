---@meta
-- Generated LuaLS annotations for Emotes (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of Emotes in build 3.3.5.12340.
---@class dbc.row.v335.Emotes : RowProxy
---@field ID integer
---@field EmoteSlashCommand string
---@field AnimID integer
---@field EmoteFlags integer
---@field EmoteSpecProc integer
---@field EmoteSpecProcParam integer
---@field EventSoundID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.Emotes self
function row:SetID(value) end

---Gets the value of field 'EmoteSlashCommand'.
---@return string value
function row:GetEmoteSlashCommand() end

---Sets the value of field 'EmoteSlashCommand'.
---@param value string
---@return dbc.row.v335.Emotes self
function row:SetEmoteSlashCommand(value) end

---Gets the value of field 'AnimID'.
---@return integer value
function row:GetAnimID() end

---Sets the value of field 'AnimID'.
---@param value integer
---@return dbc.row.v335.Emotes self
function row:SetAnimID(value) end

---Navigates foreign relationship to 'AnimationData' via 'AnimID'.
---@return dbc.row.v335.AnimationData|nil
function row:GetAnim() end

---Creates a related 'AnimationData' row and automatically links 'AnimID'.
---@param data? table
---@return dbc.row.v335.AnimationData
function row:CreateRelated(data) end

---Gets the value of field 'EmoteFlags'.
---@return integer value
function row:GetEmoteFlags() end

---Sets the value of field 'EmoteFlags'.
---@param value integer
---@return dbc.row.v335.Emotes self
function row:SetEmoteFlags(value) end

---Gets the value of field 'EmoteSpecProc'.
---@return integer value
function row:GetEmoteSpecProc() end

---Sets the value of field 'EmoteSpecProc'.
---@param value integer
---@return dbc.row.v335.Emotes self
function row:SetEmoteSpecProc(value) end

---Gets the value of field 'EmoteSpecProcParam'.
---@return integer value
function row:GetEmoteSpecProcParam() end

---Sets the value of field 'EmoteSpecProcParam'.
---@param value integer
---@return dbc.row.v335.Emotes self
function row:SetEmoteSpecProcParam(value) end

---Gets the value of field 'EventSoundID'.
---@return integer value
function row:GetEventSoundID() end

---Sets the value of field 'EventSoundID'.
---@param value integer
---@return dbc.row.v335.Emotes self
function row:SetEventSoundID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'EventSoundID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetEventSound() end

---Creates a related 'SoundEntries' row and automatically links 'EventSoundID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Table container for Emotes (Build 3.3.5.12340).
---@class dbc.Table.v335.Emotes : DbcTable
---@field [integer] dbc.row.v335.Emotes
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.Emotes
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.Emotes|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.Emotes
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.Emotes>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.Emotes[]
function tbl:GetByRelation(foreign_id) end

return {}
