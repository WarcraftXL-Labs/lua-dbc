---@meta
-- Generated LuaLS annotations for VocalUISounds (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of VocalUISounds in build 3.3.5.12340.
---@class dbc.row.v335.VocalUISounds : RowProxy
---@field ID integer
---@field VocalUIEnum integer
---@field RaceID integer
---@field NormalSoundID integer[]
---@field PissedSoundID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.VocalUISounds self
function row:SetID(value) end

---Gets the value of field 'VocalUIEnum'.
---@return integer value
function row:GetVocalUIEnum() end

---Sets the value of field 'VocalUIEnum'.
---@param value integer
---@return dbc.row.v335.VocalUISounds self
function row:SetVocalUIEnum(value) end

---Gets the value of field 'RaceID'.
---@return integer value
function row:GetRaceID() end

---Sets the value of field 'RaceID'.
---@param value integer
---@return dbc.row.v335.VocalUISounds self
function row:SetRaceID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'RaceID'.
---@return dbc.row.v335.ChrRaces|nil
function row:GetRace() end

---Creates a related 'ChrRaces' row and automatically links 'RaceID'.
---@param data? table
---@return dbc.row.v335.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'NormalSoundID'.
---@return integer[] value
function row:GetNormalSoundID() end

---Sets the value of field 'NormalSoundID'.
---@param value integer[]
---@return dbc.row.v335.VocalUISounds self
function row:SetNormalSoundID(value) end

---Gets element at 1-based index in 'NormalSoundID'.
---@param index integer
---@return integer value
function row:GetNormalSoundIDItem(index) end

---Navigates foreign relationship to 'SoundKit' via 'NormalSoundID'.
---@return dbc.row.v335.SoundKit|nil
function row:GetNormalSound() end

---Creates a related 'SoundKit' row and automatically links 'NormalSoundID'.
---@param data? table
---@return dbc.row.v335.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'PissedSoundID'.
---@return integer[] value
function row:GetPissedSoundID() end

---Sets the value of field 'PissedSoundID'.
---@param value integer[]
---@return dbc.row.v335.VocalUISounds self
function row:SetPissedSoundID(value) end

---Gets element at 1-based index in 'PissedSoundID'.
---@param index integer
---@return integer value
function row:GetPissedSoundIDItem(index) end

---Navigates foreign relationship to 'SoundKit' via 'PissedSoundID'.
---@return dbc.row.v335.SoundKit|nil
function row:GetPissedSound() end

---Creates a related 'SoundKit' row and automatically links 'PissedSoundID'.
---@param data? table
---@return dbc.row.v335.SoundKit
function row:CreateRelated(data) end

---Table container for VocalUISounds (Build 3.3.5.12340).
---@class dbc.Table.v335.VocalUISounds : DbcTable
---@field [integer] dbc.row.v335.VocalUISounds
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.VocalUISounds
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.VocalUISounds|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.VocalUISounds
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.VocalUISounds>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.VocalUISounds[]
function tbl:GetByRelation(foreign_id) end

return {}
