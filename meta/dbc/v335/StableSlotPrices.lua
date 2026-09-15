---@meta
-- Generated LuaLS annotations for StableSlotPrices (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of StableSlotPrices in build 3.3.5.12340.
---@class dbc.row.v335.StableSlotPrices : RowProxy
---@field ID integer
---@field Cost integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.StableSlotPrices self
function row:SetID(value) end

---Gets the value of field 'Cost'.
---@return integer value
function row:GetCost() end

---Sets the value of field 'Cost'.
---@param value integer
---@return dbc.row.v335.StableSlotPrices self
function row:SetCost(value) end

---Table container for StableSlotPrices (Build 3.3.5.12340).
---@class dbc.Table.v335.StableSlotPrices : DbcTable
---@field [integer] dbc.row.v335.StableSlotPrices
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.StableSlotPrices
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.StableSlotPrices|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.StableSlotPrices
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.StableSlotPrices>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.StableSlotPrices[]
function tbl:GetByRelation(foreign_id) end

return {}
