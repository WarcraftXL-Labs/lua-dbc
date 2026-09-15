---@meta
-- Generated LuaLS annotations for ChrClassRaceSex (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrClassRaceSex in build 12.1.5.69594.
---@class dbc.row.v1215.ChrClassRaceSex : RowProxy
---@field ID integer
---@field ClassID integer
---@field RaceID integer
---@field Sex integer
---@field Flags integer
---@field SoundID integer
---@field VoiceSoundFilterID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrClassRaceSex self
function row:SetID(value) end

---Gets the value of field 'ClassID'.
---@return integer value
function row:GetClassID() end

---Sets the value of field 'ClassID'.
---@param value integer
---@return dbc.row.v1215.ChrClassRaceSex self
function row:SetClassID(value) end

---Navigates foreign relationship to 'ChrClasses' via 'ClassID'.
---@return dbc.row.v1215.ChrClasses|nil
function row:GetClass() end

---Creates a related 'ChrClasses' row and automatically links 'ClassID'.
---@param data? table
---@return dbc.row.v1215.ChrClasses
function row:CreateRelated(data) end

---Gets the value of field 'RaceID'.
---@return integer value
function row:GetRaceID() end

---Sets the value of field 'RaceID'.
---@param value integer
---@return dbc.row.v1215.ChrClassRaceSex self
function row:SetRaceID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'RaceID'.
---@return dbc.row.v1215.ChrRaces|nil
function row:GetRace() end

---Creates a related 'ChrRaces' row and automatically links 'RaceID'.
---@param data? table
---@return dbc.row.v1215.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'Sex'.
---@return integer value
function row:GetSex() end

---Sets the value of field 'Sex'.
---@param value integer
---@return dbc.row.v1215.ChrClassRaceSex self
function row:SetSex(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ChrClassRaceSex self
function row:SetFlags(value) end

---Gets the value of field 'SoundID'.
---@return integer value
function row:GetSoundID() end

---Sets the value of field 'SoundID'.
---@param value integer
---@return dbc.row.v1215.ChrClassRaceSex self
function row:SetSoundID(value) end

---Navigates foreign relationship to 'CreatureSoundData' via 'SoundID'.
---@return dbc.row.v1215.CreatureSoundData|nil
function row:GetSound() end

---Creates a related 'CreatureSoundData' row and automatically links 'SoundID'.
---@param data? table
---@return dbc.row.v1215.CreatureSoundData
function row:CreateRelated(data) end

---Gets the value of field 'VoiceSoundFilterID'.
---@return integer value
function row:GetVoiceSoundFilterID() end

---Sets the value of field 'VoiceSoundFilterID'.
---@param value integer
---@return dbc.row.v1215.ChrClassRaceSex self
function row:SetVoiceSoundFilterID(value) end

---Navigates foreign relationship to 'SoundFilter' via 'VoiceSoundFilterID'.
---@return dbc.row.v1215.SoundFilter|nil
function row:GetVoiceSoundFilter() end

---Creates a related 'SoundFilter' row and automatically links 'VoiceSoundFilterID'.
---@param data? table
---@return dbc.row.v1215.SoundFilter
function row:CreateRelated(data) end

---Table container for ChrClassRaceSex (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrClassRaceSex : DbcTable
---@field [integer] dbc.row.v1215.ChrClassRaceSex
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrClassRaceSex
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrClassRaceSex|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrClassRaceSex
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrClassRaceSex>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrClassRaceSex[]
function tbl:GetByRelation(foreign_id) end

return {}
