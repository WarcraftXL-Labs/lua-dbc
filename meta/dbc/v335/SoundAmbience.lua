---@meta
-- Generated LuaLS annotations for SoundAmbience (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SoundAmbience in build 3.3.5.12340.
---@class dbc.row.v335.SoundAmbience : RowProxy
---@field ID integer
---@field AmbienceID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SoundAmbience self
function row:SetID(value) end

---Gets the value of field 'AmbienceID'.
---@return integer[] value
function row:GetAmbienceID() end

---Sets the value of field 'AmbienceID'.
---@param value integer[]
---@return dbc.row.v335.SoundAmbience self
function row:SetAmbienceID(value) end

---Gets element at 1-based index in 'AmbienceID'.
---@param index integer
---@return integer value
function row:GetAmbienceIDItem(index) end

---Navigates foreign relationship to 'SoundKit' via 'AmbienceID'.
---@return dbc.row.v335.SoundKit|nil
function row:GetAmbience() end

---Creates a related 'SoundKit' row and automatically links 'AmbienceID'.
---@param data? table
---@return dbc.row.v335.SoundKit
function row:CreateRelated(data) end

---Table container for SoundAmbience (Build 3.3.5.12340).
---@class dbc.Table.v335.SoundAmbience : DbcTable
---@field [integer] dbc.row.v335.SoundAmbience
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SoundAmbience
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SoundAmbience|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SoundAmbience
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SoundAmbience>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SoundAmbience[]
function tbl:GetByRelation(foreign_id) end

return {}
