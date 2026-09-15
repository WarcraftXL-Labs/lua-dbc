---@meta
-- Generated LuaLS annotations for SoundAmbienceFlavor (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SoundAmbienceFlavor in build 12.1.5.69594.
---@class dbc.row.v1215.SoundAmbienceFlavor : RowProxy
---@field ID integer
---@field SoundEntriesIDDay integer
---@field SoundEntriesIDNight integer
---@field SoundAmbienceID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SoundAmbienceFlavor self
function row:SetID(value) end

---Gets the value of field 'SoundEntriesIDDay'.
---@return integer value
function row:GetSoundEntriesIDDay() end

---Sets the value of field 'SoundEntriesIDDay'.
---@param value integer
---@return dbc.row.v1215.SoundAmbienceFlavor self
function row:SetSoundEntriesIDDay(value) end

---Navigates foreign relationship to 'SoundKit' via 'SoundEntriesIDDay'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetSoundEntriesIDDay() end

---Creates a related 'SoundKit' row and automatically links 'SoundEntriesIDDay'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'SoundEntriesIDNight'.
---@return integer value
function row:GetSoundEntriesIDNight() end

---Sets the value of field 'SoundEntriesIDNight'.
---@param value integer
---@return dbc.row.v1215.SoundAmbienceFlavor self
function row:SetSoundEntriesIDNight(value) end

---Navigates foreign relationship to 'SoundKit' via 'SoundEntriesIDNight'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetSoundEntriesIDNight() end

---Creates a related 'SoundKit' row and automatically links 'SoundEntriesIDNight'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'SoundAmbienceID'.
---@return integer value
function row:GetSoundAmbienceID() end

---Sets the value of field 'SoundAmbienceID'.
---@param value integer
---@return dbc.row.v1215.SoundAmbienceFlavor self
function row:SetSoundAmbienceID(value) end

---Navigates foreign relationship to 'SoundAmbience' via 'SoundAmbienceID'.
---@return dbc.row.v1215.SoundAmbience|nil
function row:GetSoundAmbience() end

---Creates a related 'SoundAmbience' row and automatically links 'SoundAmbienceID'.
---@param data? table
---@return dbc.row.v1215.SoundAmbience
function row:CreateRelated(data) end

---Table container for SoundAmbienceFlavor (Build 12.1.5.69594).
---@class dbc.Table.v1215.SoundAmbienceFlavor : DbcTable
---@field [integer] dbc.row.v1215.SoundAmbienceFlavor
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SoundAmbienceFlavor
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SoundAmbienceFlavor|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SoundAmbienceFlavor
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SoundAmbienceFlavor>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SoundAmbienceFlavor[]
function tbl:GetByRelation(foreign_id) end

return {}
