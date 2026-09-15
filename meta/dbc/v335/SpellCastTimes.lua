---@meta
-- Generated LuaLS annotations for SpellCastTimes (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SpellCastTimes in build 3.3.5.12340.
---@class dbc.row.v335.SpellCastTimes : RowProxy
---@field ID integer
---@field Base integer
---@field PerLevel integer
---@field Minimum integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SpellCastTimes self
function row:SetID(value) end

---Gets the value of field 'Base'.
---@return integer value
function row:GetBase() end

---Sets the value of field 'Base'.
---@param value integer
---@return dbc.row.v335.SpellCastTimes self
function row:SetBase(value) end

---Gets the value of field 'PerLevel'.
---@return integer value
function row:GetPerLevel() end

---Sets the value of field 'PerLevel'.
---@param value integer
---@return dbc.row.v335.SpellCastTimes self
function row:SetPerLevel(value) end

---Gets the value of field 'Minimum'.
---@return integer value
function row:GetMinimum() end

---Sets the value of field 'Minimum'.
---@param value integer
---@return dbc.row.v335.SpellCastTimes self
function row:SetMinimum(value) end

---Table container for SpellCastTimes (Build 3.3.5.12340).
---@class dbc.Table.v335.SpellCastTimes : DbcTable
---@field [integer] dbc.row.v335.SpellCastTimes
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SpellCastTimes
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SpellCastTimes|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SpellCastTimes
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SpellCastTimes>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SpellCastTimes[]
function tbl:GetByRelation(foreign_id) end

return {}
