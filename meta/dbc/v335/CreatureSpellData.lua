---@meta
-- Generated LuaLS annotations for CreatureSpellData (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of CreatureSpellData in build 3.3.5.12340.
---@class dbc.row.v335.CreatureSpellData : RowProxy
---@field ID integer
---@field Spells integer[]
---@field Availability integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.CreatureSpellData self
function row:SetID(value) end

---Gets the value of field 'Spells'.
---@return integer[] value
function row:GetSpells() end

---Sets the value of field 'Spells'.
---@param value integer[]
---@return dbc.row.v335.CreatureSpellData self
function row:SetSpells(value) end

---Gets element at 1-based index in 'Spells'.
---@param index integer
---@return integer value
function row:GetSpellsItem(index) end

---Navigates foreign relationship to 'Spell' via 'Spells'.
---@return dbc.row.v335.Spell|nil
function row:GetSpells() end

---Creates a related 'Spell' row and automatically links 'Spells'.
---@param data? table
---@return dbc.row.v335.Spell
function row:CreateRelated(data) end

---Gets the value of field 'Availability'.
---@return integer[] value
function row:GetAvailability() end

---Sets the value of field 'Availability'.
---@param value integer[]
---@return dbc.row.v335.CreatureSpellData self
function row:SetAvailability(value) end

---Gets element at 1-based index in 'Availability'.
---@param index integer
---@return integer value
function row:GetAvailabilityItem(index) end

---Table container for CreatureSpellData (Build 3.3.5.12340).
---@class dbc.Table.v335.CreatureSpellData : DbcTable
---@field [integer] dbc.row.v335.CreatureSpellData
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.CreatureSpellData
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.CreatureSpellData|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.CreatureSpellData
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.CreatureSpellData>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.CreatureSpellData[]
function tbl:GetByRelation(foreign_id) end

return {}
