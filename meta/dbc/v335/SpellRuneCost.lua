---@meta
-- Generated LuaLS annotations for SpellRuneCost (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SpellRuneCost in build 3.3.5.12340.
---@class dbc.row.v335.SpellRuneCost : RowProxy
---@field ID integer
---@field Blood integer
---@field Unholy integer
---@field Frost integer
---@field RunicPower integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SpellRuneCost self
function row:SetID(value) end

---Gets the value of field 'Blood'.
---@return integer value
function row:GetBlood() end

---Sets the value of field 'Blood'.
---@param value integer
---@return dbc.row.v335.SpellRuneCost self
function row:SetBlood(value) end

---Gets the value of field 'Unholy'.
---@return integer value
function row:GetUnholy() end

---Sets the value of field 'Unholy'.
---@param value integer
---@return dbc.row.v335.SpellRuneCost self
function row:SetUnholy(value) end

---Gets the value of field 'Frost'.
---@return integer value
function row:GetFrost() end

---Sets the value of field 'Frost'.
---@param value integer
---@return dbc.row.v335.SpellRuneCost self
function row:SetFrost(value) end

---Gets the value of field 'RunicPower'.
---@return integer value
function row:GetRunicPower() end

---Sets the value of field 'RunicPower'.
---@param value integer
---@return dbc.row.v335.SpellRuneCost self
function row:SetRunicPower(value) end

---Table container for SpellRuneCost (Build 3.3.5.12340).
---@class dbc.Table.v335.SpellRuneCost : DbcTable
---@field [integer] dbc.row.v335.SpellRuneCost
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SpellRuneCost
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SpellRuneCost|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SpellRuneCost
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SpellRuneCost>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SpellRuneCost[]
function tbl:GetByRelation(foreign_id) end

return {}
