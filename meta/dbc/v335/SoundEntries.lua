---@meta
-- Generated LuaLS annotations for SoundEntries (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SoundEntries in build 3.3.5.12340.
---@class dbc.row.v335.SoundEntries : RowProxy
---@field ID integer
---@field SoundType integer
---@field Name string
---@field File string[]
---@field Freq integer[]
---@field DirectoryBase string
---@field VolumeFloat number
---@field Flags integer
---@field MinDistance number
---@field DistanceCutoff number
---@field EAXDef integer
---@field SoundEntriesAdvancedID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SoundEntries self
function row:SetID(value) end

---Gets the value of field 'SoundType'.
---@return integer value
function row:GetSoundType() end

---Sets the value of field 'SoundType'.
---@param value integer
---@return dbc.row.v335.SoundEntries self
function row:SetSoundType(value) end

---Gets the value of field 'Name'.
---@return string value
function row:GetName() end

---Sets the value of field 'Name'.
---@param value string
---@return dbc.row.v335.SoundEntries self
function row:SetName(value) end

---Gets the value of field 'File'.
---@return string[] value
function row:GetFile() end

---Sets the value of field 'File'.
---@param value string[]
---@return dbc.row.v335.SoundEntries self
function row:SetFile(value) end

---Gets element at 1-based index in 'File'.
---@param index integer
---@return string value
function row:GetFileItem(index) end

---Gets the value of field 'Freq'.
---@return integer[] value
function row:GetFreq() end

---Sets the value of field 'Freq'.
---@param value integer[]
---@return dbc.row.v335.SoundEntries self
function row:SetFreq(value) end

---Gets element at 1-based index in 'Freq'.
---@param index integer
---@return integer value
function row:GetFreqItem(index) end

---Gets the value of field 'DirectoryBase'.
---@return string value
function row:GetDirectoryBase() end

---Sets the value of field 'DirectoryBase'.
---@param value string
---@return dbc.row.v335.SoundEntries self
function row:SetDirectoryBase(value) end

---Gets the value of field 'VolumeFloat'.
---@return number value
function row:GetVolumeFloat() end

---Sets the value of field 'VolumeFloat'.
---@param value number
---@return dbc.row.v335.SoundEntries self
function row:SetVolumeFloat(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.SoundEntries self
function row:SetFlags(value) end

---Gets the value of field 'MinDistance'.
---@return number value
function row:GetMinDistance() end

---Sets the value of field 'MinDistance'.
---@param value number
---@return dbc.row.v335.SoundEntries self
function row:SetMinDistance(value) end

---Gets the value of field 'DistanceCutoff'.
---@return number value
function row:GetDistanceCutoff() end

---Sets the value of field 'DistanceCutoff'.
---@param value number
---@return dbc.row.v335.SoundEntries self
function row:SetDistanceCutoff(value) end

---Gets the value of field 'EAXDef'.
---@return integer value
function row:GetEAXDef() end

---Sets the value of field 'EAXDef'.
---@param value integer
---@return dbc.row.v335.SoundEntries self
function row:SetEAXDef(value) end

---Gets the value of field 'SoundEntriesAdvancedID'.
---@return integer value
function row:GetSoundEntriesAdvancedID() end

---Sets the value of field 'SoundEntriesAdvancedID'.
---@param value integer
---@return dbc.row.v335.SoundEntries self
function row:SetSoundEntriesAdvancedID(value) end

---Navigates foreign relationship to 'SoundEntriesAdvanced' via 'SoundEntriesAdvancedID'.
---@return dbc.row.v335.SoundEntriesAdvanced|nil
function row:GetSoundEntriesAdvanced() end

---Creates a related 'SoundEntriesAdvanced' row and automatically links 'SoundEntriesAdvancedID'.
---@param data? table
---@return dbc.row.v335.SoundEntriesAdvanced
function row:CreateRelated(data) end

---Table container for SoundEntries (Build 3.3.5.12340).
---@class dbc.Table.v335.SoundEntries : DbcTable
---@field [integer] dbc.row.v335.SoundEntries
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SoundEntries
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SoundEntries|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SoundEntries
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SoundEntries>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SoundEntries[]
function tbl:GetByRelation(foreign_id) end

return {}
