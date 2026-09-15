---@meta
-- Generated LuaLS annotations for SoundKitEntry (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SoundKitEntry in build 12.1.5.69594.
---@class dbc.row.v1215.SoundKitEntry : RowProxy
---@field ID integer
---@field SoundKitID integer
---@field FileDataID integer
---@field Frequency integer
---@field Volume number
---@field PlayerConditionID integer Very unconfirmed, but matches with test spell

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SoundKitEntry self
function row:SetID(value) end

---Gets the value of field 'SoundKitID'.
---@return integer value
function row:GetSoundKitID() end

---Sets the value of field 'SoundKitID'.
---@param value integer
---@return dbc.row.v1215.SoundKitEntry self
function row:SetSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'SoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'SoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'FileDataID'.
---@return integer value
function row:GetFileDataID() end

---Sets the value of field 'FileDataID'.
---@param value integer
---@return dbc.row.v1215.SoundKitEntry self
function row:SetFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'FileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFileData() end

---Creates a related 'FileData' row and automatically links 'FileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Frequency'.
---@return integer value
function row:GetFrequency() end

---Sets the value of field 'Frequency'.
---@param value integer
---@return dbc.row.v1215.SoundKitEntry self
function row:SetFrequency(value) end

---Gets the value of field 'Volume'.
---@return number value
function row:GetVolume() end

---Sets the value of field 'Volume'.
---@param value number
---@return dbc.row.v1215.SoundKitEntry self
function row:SetVolume(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.SoundKitEntry self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Table container for SoundKitEntry (Build 12.1.5.69594).
---@class dbc.Table.v1215.SoundKitEntry : DbcTable
---@field [integer] dbc.row.v1215.SoundKitEntry
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SoundKitEntry
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SoundKitEntry|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SoundKitEntry
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SoundKitEntry>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SoundKitEntry[]
function tbl:GetByRelation(foreign_id) end

return {}
