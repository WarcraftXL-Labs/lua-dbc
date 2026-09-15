---@meta
-- Generated LuaLS annotations for NPCSounds (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of NPCSounds in build 3.3.5.12340.
---@class dbc.row.v335.NPCSounds : RowProxy
---@field ID integer
---@field SoundID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.NPCSounds self
function row:SetID(value) end

---Gets the value of field 'SoundID'.
---@return integer[] value
function row:GetSoundID() end

---Sets the value of field 'SoundID'.
---@param value integer[]
---@return dbc.row.v335.NPCSounds self
function row:SetSoundID(value) end

---Gets element at 1-based index in 'SoundID'.
---@param index integer
---@return integer value
function row:GetSoundIDItem(index) end

---Navigates foreign relationship to 'SoundKit' via 'SoundID'.
---@return dbc.row.v335.SoundKit|nil
function row:GetSound() end

---Creates a related 'SoundKit' row and automatically links 'SoundID'.
---@param data? table
---@return dbc.row.v335.SoundKit
function row:CreateRelated(data) end

---Table container for NPCSounds (Build 3.3.5.12340).
---@class dbc.Table.v335.NPCSounds : DbcTable
---@field [integer] dbc.row.v335.NPCSounds
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.NPCSounds
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.NPCSounds|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.NPCSounds
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.NPCSounds>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.NPCSounds[]
function tbl:GetByRelation(foreign_id) end

return {}
