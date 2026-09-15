---@meta
-- Generated LuaLS annotations for ItemLogicalCost (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemLogicalCost in build 12.1.5.69594.
---@class dbc.row.v1215.ItemLogicalCost : RowProxy
---@field ID integer
---@field InventoryTypeSlotMask integer
---@field Flags integer
---@field ItemExtendedCostID integer
---@field ItemLogicalCostGroupID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemLogicalCost self
function row:SetID(value) end

---Gets the value of field 'InventoryTypeSlotMask'.
---@return integer value
function row:GetInventoryTypeSlotMask() end

---Sets the value of field 'InventoryTypeSlotMask'.
---@param value integer
---@return dbc.row.v1215.ItemLogicalCost self
function row:SetInventoryTypeSlotMask(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ItemLogicalCost self
function row:SetFlags(value) end

---Gets the value of field 'ItemExtendedCostID'.
---@return integer value
function row:GetItemExtendedCostID() end

---Sets the value of field 'ItemExtendedCostID'.
---@param value integer
---@return dbc.row.v1215.ItemLogicalCost self
function row:SetItemExtendedCostID(value) end

---Navigates foreign relationship to 'ItemExtendedCost' via 'ItemExtendedCostID'.
---@return dbc.row.v1215.ItemExtendedCost|nil
function row:GetItemExtendedCost() end

---Creates a related 'ItemExtendedCost' row and automatically links 'ItemExtendedCostID'.
---@param data? table
---@return dbc.row.v1215.ItemExtendedCost
function row:CreateRelated(data) end

---Gets the value of field 'ItemLogicalCostGroupID'.
---@return integer value
function row:GetItemLogicalCostGroupID() end

---Sets the value of field 'ItemLogicalCostGroupID'.
---@param value integer
---@return dbc.row.v1215.ItemLogicalCost self
function row:SetItemLogicalCostGroupID(value) end

---Navigates foreign relationship to 'ItemLogicalCostGroup' via 'ItemLogicalCostGroupID'.
---@return dbc.row.v1215.ItemLogicalCostGroup|nil
function row:GetItemLogicalCostGroup() end

---Creates a related 'ItemLogicalCostGroup' row and automatically links 'ItemLogicalCostGroupID'.
---@param data? table
---@return dbc.row.v1215.ItemLogicalCostGroup
function row:CreateRelated(data) end

---Table container for ItemLogicalCost (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemLogicalCost : DbcTable
---@field [integer] dbc.row.v1215.ItemLogicalCost
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemLogicalCost
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemLogicalCost|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemLogicalCost
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemLogicalCost>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemLogicalCost[]
function tbl:GetByRelation(foreign_id) end

return {}
