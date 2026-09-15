---@meta
-- Generated LuaLS annotations for SpellDuration (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SpellDuration in build 3.3.5.12340.
---@class dbc.row.v335.SpellDuration : RowProxy
---@field ID integer
---@field Duration integer
---@field DurationPerLevel integer
---@field MaxDuration integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SpellDuration self
function row:SetID(value) end

---Gets the value of field 'Duration'.
---@return integer value
function row:GetDuration() end

---Sets the value of field 'Duration'.
---@param value integer
---@return dbc.row.v335.SpellDuration self
function row:SetDuration(value) end

---Gets the value of field 'DurationPerLevel'.
---@return integer value
function row:GetDurationPerLevel() end

---Sets the value of field 'DurationPerLevel'.
---@param value integer
---@return dbc.row.v335.SpellDuration self
function row:SetDurationPerLevel(value) end

---Gets the value of field 'MaxDuration'.
---@return integer value
function row:GetMaxDuration() end

---Sets the value of field 'MaxDuration'.
---@param value integer
---@return dbc.row.v335.SpellDuration self
function row:SetMaxDuration(value) end

---Table container for SpellDuration (Build 3.3.5.12340).
---@class dbc.Table.v335.SpellDuration : DbcTable
---@field [integer] dbc.row.v335.SpellDuration
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SpellDuration
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SpellDuration|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SpellDuration
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SpellDuration>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SpellDuration[]
function tbl:GetByRelation(foreign_id) end

return {}
