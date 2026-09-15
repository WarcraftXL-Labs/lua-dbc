---@meta
-- Generated LuaLS annotations for ItemVisuals (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of ItemVisuals in build 3.3.5.12340.
---@class dbc.row.v335.ItemVisuals : RowProxy
---@field ID integer
---@field Slot integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.ItemVisuals self
function row:SetID(value) end

---Gets the value of field 'Slot'.
---@return integer[] value
function row:GetSlot() end

---Sets the value of field 'Slot'.
---@param value integer[]
---@return dbc.row.v335.ItemVisuals self
function row:SetSlot(value) end

---Gets element at 1-based index in 'Slot'.
---@param index integer
---@return integer value
function row:GetSlotItem(index) end

---Table container for ItemVisuals (Build 3.3.5.12340).
---@class dbc.Table.v335.ItemVisuals : DbcTable
---@field [integer] dbc.row.v335.ItemVisuals
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.ItemVisuals
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.ItemVisuals|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.ItemVisuals
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.ItemVisuals>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.ItemVisuals[]
function tbl:GetByRelation(foreign_id) end

return {}
