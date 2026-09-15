---@meta
-- Generated LuaLS annotations for CinematicCamera (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of CinematicCamera in build 3.3.5.12340.
---@class dbc.row.v335.CinematicCamera : RowProxy
---@field ID integer
---@field Model string
---@field SoundID integer
---@field Origin number[]
---@field OriginFacing number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.CinematicCamera self
function row:SetID(value) end

---Gets the value of field 'Model'.
---@return string value
function row:GetModel() end

---Sets the value of field 'Model'.
---@param value string
---@return dbc.row.v335.CinematicCamera self
function row:SetModel(value) end

---Gets the value of field 'SoundID'.
---@return integer value
function row:GetSoundID() end

---Sets the value of field 'SoundID'.
---@param value integer
---@return dbc.row.v335.CinematicCamera self
function row:SetSoundID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetSound() end

---Creates a related 'SoundEntries' row and automatically links 'SoundID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'Origin'.
---@return number[] value
function row:GetOrigin() end

---Sets the value of field 'Origin'.
---@param value number[]
---@return dbc.row.v335.CinematicCamera self
function row:SetOrigin(value) end

---Gets element at 1-based index in 'Origin'.
---@param index integer
---@return number value
function row:GetOriginItem(index) end

---Gets the value of field 'OriginFacing'.
---@return number value
function row:GetOriginFacing() end

---Sets the value of field 'OriginFacing'.
---@param value number
---@return dbc.row.v335.CinematicCamera self
function row:SetOriginFacing(value) end

---Table container for CinematicCamera (Build 3.3.5.12340).
---@class dbc.Table.v335.CinematicCamera : DbcTable
---@field [integer] dbc.row.v335.CinematicCamera
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.CinematicCamera
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.CinematicCamera|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.CinematicCamera
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.CinematicCamera>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.CinematicCamera[]
function tbl:GetByRelation(foreign_id) end

return {}
