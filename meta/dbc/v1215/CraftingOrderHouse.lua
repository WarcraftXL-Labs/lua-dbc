---@meta
-- Generated LuaLS annotations for CraftingOrderHouse (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CraftingOrderHouse in build 12.1.5.69594.
---@class dbc.row.v1215.CraftingOrderHouse : RowProxy
---@field ID integer
---@field ConsortiumCutPct number
---@field BaseDepositCost integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CraftingOrderHouse self
function row:SetID(value) end

---Gets the value of field 'ConsortiumCutPct'.
---@return number value
function row:GetConsortiumCutPct() end

---Sets the value of field 'ConsortiumCutPct'.
---@param value number
---@return dbc.row.v1215.CraftingOrderHouse self
function row:SetConsortiumCutPct(value) end

---Gets the value of field 'BaseDepositCost'.
---@return integer[] value
function row:GetBaseDepositCost() end

---Sets the value of field 'BaseDepositCost'.
---@param value integer[]
---@return dbc.row.v1215.CraftingOrderHouse self
function row:SetBaseDepositCost(value) end

---Gets element at 1-based index in 'BaseDepositCost'.
---@param index integer
---@return integer value
function row:GetBaseDepositCostItem(index) end

---Table container for CraftingOrderHouse (Build 12.1.5.69594).
---@class dbc.Table.v1215.CraftingOrderHouse : DbcTable
---@field [integer] dbc.row.v1215.CraftingOrderHouse
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CraftingOrderHouse
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CraftingOrderHouse|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CraftingOrderHouse
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CraftingOrderHouse>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CraftingOrderHouse[]
function tbl:GetByRelation(foreign_id) end

return {}
