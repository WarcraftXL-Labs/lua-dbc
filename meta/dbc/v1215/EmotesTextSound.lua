---@meta
-- Generated LuaLS annotations for EmotesTextSound (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of EmotesTextSound in build 12.1.5.69594.
---@class dbc.row.v1215.EmotesTextSound : RowProxy
---@field ID integer
---@field RaceID integer
---@field ClassID integer
---@field SexID integer
---@field SoundID integer
---@field EmotesTextID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.EmotesTextSound self
function row:SetID(value) end

---Gets the value of field 'RaceID'.
---@return integer value
function row:GetRaceID() end

---Sets the value of field 'RaceID'.
---@param value integer
---@return dbc.row.v1215.EmotesTextSound self
function row:SetRaceID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'RaceID'.
---@return dbc.row.v1215.ChrRaces|nil
function row:GetRace() end

---Creates a related 'ChrRaces' row and automatically links 'RaceID'.
---@param data? table
---@return dbc.row.v1215.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'ClassID'.
---@return integer value
function row:GetClassID() end

---Sets the value of field 'ClassID'.
---@param value integer
---@return dbc.row.v1215.EmotesTextSound self
function row:SetClassID(value) end

---Navigates foreign relationship to 'ChrClasses' via 'ClassID'.
---@return dbc.row.v1215.ChrClasses|nil
function row:GetClass() end

---Creates a related 'ChrClasses' row and automatically links 'ClassID'.
---@param data? table
---@return dbc.row.v1215.ChrClasses
function row:CreateRelated(data) end

---Gets the value of field 'SexID'.
---@return integer value
function row:GetSexID() end

---Sets the value of field 'SexID'.
---@param value integer
---@return dbc.row.v1215.EmotesTextSound self
function row:SetSexID(value) end

---Navigates foreign relationship to 'Sex' via 'SexID'.
---@return dbc.row.v1215.Sex|nil
function row:GetSex() end

---Creates a related 'Sex' row and automatically links 'SexID'.
---@param data? table
---@return dbc.row.v1215.Sex
function row:CreateRelated(data) end

---Gets the value of field 'SoundID'.
---@return integer value
function row:GetSoundID() end

---Sets the value of field 'SoundID'.
---@param value integer
---@return dbc.row.v1215.EmotesTextSound self
function row:SetSoundID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundID'.
---@return dbc.row.v1215.SoundEntries|nil
function row:GetSound() end

---Creates a related 'SoundEntries' row and automatically links 'SoundID'.
---@param data? table
---@return dbc.row.v1215.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'EmotesTextID'.
---@return integer value
function row:GetEmotesTextID() end

---Sets the value of field 'EmotesTextID'.
---@param value integer
---@return dbc.row.v1215.EmotesTextSound self
function row:SetEmotesTextID(value) end

---Navigates foreign relationship to 'EmotesText' via 'EmotesTextID'.
---@return dbc.row.v1215.EmotesText|nil
function row:GetEmotesText() end

---Creates a related 'EmotesText' row and automatically links 'EmotesTextID'.
---@param data? table
---@return dbc.row.v1215.EmotesText
function row:CreateRelated(data) end

---Table container for EmotesTextSound (Build 12.1.5.69594).
---@class dbc.Table.v1215.EmotesTextSound : DbcTable
---@field [integer] dbc.row.v1215.EmotesTextSound
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.EmotesTextSound
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.EmotesTextSound|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.EmotesTextSound
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.EmotesTextSound>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.EmotesTextSound[]
function tbl:GetByRelation(foreign_id) end

return {}
