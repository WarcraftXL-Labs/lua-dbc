---@meta
-- Generated LuaLS annotations for ItemCondExtCosts (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of ItemCondExtCosts in build 3.3.5.12340.
---@class dbc.row.v335.ItemCondExtCosts : RowProxy
---@field ID integer
---@field CondExtendedCost integer
---@field ItemExtendedCostEntry integer
---@field ArenaSeason integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.ItemCondExtCosts self
function row:SetID(value) end

---Gets the value of field 'CondExtendedCost'.
---@return integer value
function row:GetCondExtendedCost() end

---Sets the value of field 'CondExtendedCost'.
---@param value integer
---@return dbc.row.v335.ItemCondExtCosts self
function row:SetCondExtendedCost(value) end

---Gets the value of field 'ItemExtendedCostEntry'.
---@return integer value
function row:GetItemExtendedCostEntry() end

---Sets the value of field 'ItemExtendedCostEntry'.
---@param value integer
---@return dbc.row.v335.ItemCondExtCosts self
function row:SetItemExtendedCostEntry(value) end

---Navigates foreign relationship to 'ItemExtendedCost' via 'ItemExtendedCostEntry'.
---@return dbc.row.v335.ItemExtendedCost|nil
function row:GetItemExtendedCostEntry() end

---Creates a related 'ItemExtendedCost' row and automatically links 'ItemExtendedCostEntry'.
---@param data? table
---@return dbc.row.v335.ItemExtendedCost
function row:CreateRelated(data) end

---Gets the value of field 'ArenaSeason'.
---@return integer value
function row:GetArenaSeason() end

---Sets the value of field 'ArenaSeason'.
---@param value integer
---@return dbc.row.v335.ItemCondExtCosts self
function row:SetArenaSeason(value) end

---Table container for ItemCondExtCosts (Build 3.3.5.12340).
---@class dbc.Table.v335.ItemCondExtCosts : DbcTable
---@field [integer] dbc.row.v335.ItemCondExtCosts
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.ItemCondExtCosts
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.ItemCondExtCosts|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.ItemCondExtCosts
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.ItemCondExtCosts>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.ItemCondExtCosts[]
function tbl:GetByRelation(foreign_id) end

return {}
