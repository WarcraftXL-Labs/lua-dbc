---@meta
-- Generated LuaLS annotations for ParticulateSound (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ParticulateSound in build 12.1.5.69594.
---@class dbc.row.v1215.ParticulateSound : RowProxy
---@field ID integer
---@field ParticulateID integer
---@field DaySound integer
---@field NightSound integer
---@field EnterSound integer
---@field ExitSound integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ParticulateSound self
function row:SetID(value) end

---Gets the value of field 'ParticulateID'.
---@return integer value
function row:GetParticulateID() end

---Sets the value of field 'ParticulateID'.
---@param value integer
---@return dbc.row.v1215.ParticulateSound self
function row:SetParticulateID(value) end

---Navigates foreign relationship to 'Particulate' via 'ParticulateID'.
---@return dbc.row.v1215.Particulate|nil
function row:GetParticulate() end

---Creates a related 'Particulate' row and automatically links 'ParticulateID'.
---@param data? table
---@return dbc.row.v1215.Particulate
function row:CreateRelated(data) end

---Gets the value of field 'DaySound'.
---@return integer value
function row:GetDaySound() end

---Sets the value of field 'DaySound'.
---@param value integer
---@return dbc.row.v1215.ParticulateSound self
function row:SetDaySound(value) end

---Navigates foreign relationship to 'SoundKit' via 'DaySound'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetDaySound() end

---Creates a related 'SoundKit' row and automatically links 'DaySound'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'NightSound'.
---@return integer value
function row:GetNightSound() end

---Sets the value of field 'NightSound'.
---@param value integer
---@return dbc.row.v1215.ParticulateSound self
function row:SetNightSound(value) end

---Navigates foreign relationship to 'SoundKit' via 'NightSound'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetNightSound() end

---Creates a related 'SoundKit' row and automatically links 'NightSound'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'EnterSound'.
---@return integer value
function row:GetEnterSound() end

---Sets the value of field 'EnterSound'.
---@param value integer
---@return dbc.row.v1215.ParticulateSound self
function row:SetEnterSound(value) end

---Navigates foreign relationship to 'SoundKit' via 'EnterSound'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetEnterSound() end

---Creates a related 'SoundKit' row and automatically links 'EnterSound'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'ExitSound'.
---@return integer value
function row:GetExitSound() end

---Sets the value of field 'ExitSound'.
---@param value integer
---@return dbc.row.v1215.ParticulateSound self
function row:SetExitSound(value) end

---Navigates foreign relationship to 'SoundKit' via 'ExitSound'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetExitSound() end

---Creates a related 'SoundKit' row and automatically links 'ExitSound'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Table container for ParticulateSound (Build 12.1.5.69594).
---@class dbc.Table.v1215.ParticulateSound : DbcTable
---@field [integer] dbc.row.v1215.ParticulateSound
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ParticulateSound
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ParticulateSound|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ParticulateSound
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ParticulateSound>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ParticulateSound[]
function tbl:GetByRelation(foreign_id) end

return {}
