---@meta
-- Generated LuaLS annotations for SoundBusOverride (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SoundBusOverride in build 12.1.5.69594.
---@class dbc.row.v1215.SoundBusOverride : RowProxy
---@field ID integer
---@field SoundBusID integer
---@field PlayerConditionID integer
---@field PlaybackLimit integer
---@field Volume number
---@field Priority integer
---@field PriorityPenalty integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SoundBusOverride self
function row:SetID(value) end

---Gets the value of field 'SoundBusID'.
---@return integer value
function row:GetSoundBusID() end

---Sets the value of field 'SoundBusID'.
---@param value integer
---@return dbc.row.v1215.SoundBusOverride self
function row:SetSoundBusID(value) end

---Navigates foreign relationship to 'SoundBus' via 'SoundBusID'.
---@return dbc.row.v1215.SoundBus|nil
function row:GetSoundBus() end

---Creates a related 'SoundBus' row and automatically links 'SoundBusID'.
---@param data? table
---@return dbc.row.v1215.SoundBus
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.SoundBusOverride self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'PlaybackLimit'.
---@return integer value
function row:GetPlaybackLimit() end

---Sets the value of field 'PlaybackLimit'.
---@param value integer
---@return dbc.row.v1215.SoundBusOverride self
function row:SetPlaybackLimit(value) end

---Gets the value of field 'Volume'.
---@return number value
function row:GetVolume() end

---Sets the value of field 'Volume'.
---@param value number
---@return dbc.row.v1215.SoundBusOverride self
function row:SetVolume(value) end

---Gets the value of field 'Priority'.
---@return integer value
function row:GetPriority() end

---Sets the value of field 'Priority'.
---@param value integer
---@return dbc.row.v1215.SoundBusOverride self
function row:SetPriority(value) end

---Gets the value of field 'PriorityPenalty'.
---@return integer value
function row:GetPriorityPenalty() end

---Sets the value of field 'PriorityPenalty'.
---@param value integer
---@return dbc.row.v1215.SoundBusOverride self
function row:SetPriorityPenalty(value) end

---Table container for SoundBusOverride (Build 12.1.5.69594).
---@class dbc.Table.v1215.SoundBusOverride : DbcTable
---@field [integer] dbc.row.v1215.SoundBusOverride
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SoundBusOverride
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SoundBusOverride|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SoundBusOverride
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SoundBusOverride>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SoundBusOverride[]
function tbl:GetByRelation(foreign_id) end

return {}
