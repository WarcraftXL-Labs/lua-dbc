---@meta
-- Generated LuaLS annotations for RewardPackXItem (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of RewardPackXItem in build 12.1.5.69594.
---@class dbc.row.v1215.RewardPackXItem : RowProxy
---@field ID integer
---@field ItemID integer
---@field ItemQuantity integer
---@field RewardPackID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.RewardPackXItem self
function row:SetID(value) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.RewardPackXItem self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'ItemQuantity'.
---@return integer value
function row:GetItemQuantity() end

---Sets the value of field 'ItemQuantity'.
---@param value integer
---@return dbc.row.v1215.RewardPackXItem self
function row:SetItemQuantity(value) end

---Gets the value of field 'RewardPackID'.
---@return integer value
function row:GetRewardPackID() end

---Sets the value of field 'RewardPackID'.
---@param value integer
---@return dbc.row.v1215.RewardPackXItem self
function row:SetRewardPackID(value) end

---Navigates foreign relationship to 'RewardPack' via 'RewardPackID'.
---@return dbc.row.v1215.RewardPack|nil
function row:GetRewardPack() end

---Creates a related 'RewardPack' row and automatically links 'RewardPackID'.
---@param data? table
---@return dbc.row.v1215.RewardPack
function row:CreateRelated(data) end

---Table container for RewardPackXItem (Build 12.1.5.69594).
---@class dbc.Table.v1215.RewardPackXItem : DbcTable
---@field [integer] dbc.row.v1215.RewardPackXItem
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.RewardPackXItem
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.RewardPackXItem|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.RewardPackXItem
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.RewardPackXItem>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.RewardPackXItem[]
function tbl:GetByRelation(foreign_id) end

return {}
