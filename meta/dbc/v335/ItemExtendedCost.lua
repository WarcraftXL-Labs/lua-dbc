---@meta
-- Generated LuaLS annotations for ItemExtendedCost (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of ItemExtendedCost in build 3.3.5.12340.
---@class dbc.row.v335.ItemExtendedCost : RowProxy
---@field ID integer
---@field HonorPoints integer
---@field ArenaPoints integer
---@field ArenaBracket integer
---@field ItemID integer[]
---@field ItemCount integer[]
---@field RequiredArenaRating integer
---@field ItemPurchaseGroup integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.ItemExtendedCost self
function row:SetID(value) end

---Gets the value of field 'HonorPoints'.
---@return integer value
function row:GetHonorPoints() end

---Sets the value of field 'HonorPoints'.
---@param value integer
---@return dbc.row.v335.ItemExtendedCost self
function row:SetHonorPoints(value) end

---Gets the value of field 'ArenaPoints'.
---@return integer value
function row:GetArenaPoints() end

---Sets the value of field 'ArenaPoints'.
---@param value integer
---@return dbc.row.v335.ItemExtendedCost self
function row:SetArenaPoints(value) end

---Gets the value of field 'ArenaBracket'.
---@return integer value
function row:GetArenaBracket() end

---Sets the value of field 'ArenaBracket'.
---@param value integer
---@return dbc.row.v335.ItemExtendedCost self
function row:SetArenaBracket(value) end

---Gets the value of field 'ItemID'.
---@return integer[] value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer[]
---@return dbc.row.v335.ItemExtendedCost self
function row:SetItemID(value) end

---Gets element at 1-based index in 'ItemID'.
---@param index integer
---@return integer value
function row:GetItemIDItem(index) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v335.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v335.Item
function row:CreateRelated(data) end

---Gets the value of field 'ItemCount'.
---@return integer[] value
function row:GetItemCount() end

---Sets the value of field 'ItemCount'.
---@param value integer[]
---@return dbc.row.v335.ItemExtendedCost self
function row:SetItemCount(value) end

---Gets element at 1-based index in 'ItemCount'.
---@param index integer
---@return integer value
function row:GetItemCountItem(index) end

---Gets the value of field 'RequiredArenaRating'.
---@return integer value
function row:GetRequiredArenaRating() end

---Sets the value of field 'RequiredArenaRating'.
---@param value integer
---@return dbc.row.v335.ItemExtendedCost self
function row:SetRequiredArenaRating(value) end

---Gets the value of field 'ItemPurchaseGroup'.
---@return integer value
function row:GetItemPurchaseGroup() end

---Sets the value of field 'ItemPurchaseGroup'.
---@param value integer
---@return dbc.row.v335.ItemExtendedCost self
function row:SetItemPurchaseGroup(value) end

---Navigates foreign relationship to 'ItemPurchaseGroup' via 'ItemPurchaseGroup'.
---@return dbc.row.v335.ItemPurchaseGroup|nil
function row:GetItemPurchaseGroup() end

---Creates a related 'ItemPurchaseGroup' row and automatically links 'ItemPurchaseGroup'.
---@param data? table
---@return dbc.row.v335.ItemPurchaseGroup
function row:CreateRelated(data) end

---Table container for ItemExtendedCost (Build 3.3.5.12340).
---@class dbc.Table.v335.ItemExtendedCost : DbcTable
---@field [integer] dbc.row.v335.ItemExtendedCost
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.ItemExtendedCost
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.ItemExtendedCost|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.ItemExtendedCost
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.ItemExtendedCost>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.ItemExtendedCost[]
function tbl:GetByRelation(foreign_id) end

return {}
