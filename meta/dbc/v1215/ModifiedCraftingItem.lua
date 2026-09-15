---@meta
-- Generated LuaLS annotations for ModifiedCraftingItem (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ModifiedCraftingItem in build 12.1.5.69594.
---@class dbc.row.v1215.ModifiedCraftingItem : RowProxy
---@field ItemID integer
---@field ModifiedCraftingReagentItemID integer
---@field CraftingQualityID integer

local row = {}

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.ModifiedCraftingItem self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'ModifiedCraftingReagentItemID'.
---@return integer value
function row:GetModifiedCraftingReagentItemID() end

---Sets the value of field 'ModifiedCraftingReagentItemID'.
---@param value integer
---@return dbc.row.v1215.ModifiedCraftingItem self
function row:SetModifiedCraftingReagentItemID(value) end

---Navigates foreign relationship to 'ModifiedCraftingReagentItem' via 'ModifiedCraftingReagentItemID'.
---@return dbc.row.v1215.ModifiedCraftingReagentItem|nil
function row:GetModifiedCraftingReagentItem() end

---Creates a related 'ModifiedCraftingReagentItem' row and automatically links 'ModifiedCraftingReagentItemID'.
---@param data? table
---@return dbc.row.v1215.ModifiedCraftingReagentItem
function row:CreateRelated(data) end

---Gets the value of field 'CraftingQualityID'.
---@return integer value
function row:GetCraftingQualityID() end

---Sets the value of field 'CraftingQualityID'.
---@param value integer
---@return dbc.row.v1215.ModifiedCraftingItem self
function row:SetCraftingQualityID(value) end

---Navigates foreign relationship to 'CraftingQuality' via 'CraftingQualityID'.
---@return dbc.row.v1215.CraftingQuality|nil
function row:GetCraftingQuality() end

---Creates a related 'CraftingQuality' row and automatically links 'CraftingQualityID'.
---@param data? table
---@return dbc.row.v1215.CraftingQuality
function row:CreateRelated(data) end

---Table container for ModifiedCraftingItem (Build 12.1.5.69594).
---@class dbc.Table.v1215.ModifiedCraftingItem : DbcTable
---@field [integer] dbc.row.v1215.ModifiedCraftingItem
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ModifiedCraftingItem
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ModifiedCraftingItem|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ModifiedCraftingItem
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ModifiedCraftingItem>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ModifiedCraftingItem[]
function tbl:GetByRelation(foreign_id) end

return {}
