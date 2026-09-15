---@meta
-- Generated LuaLS annotations for ItemPurchaseGroup (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of ItemPurchaseGroup in build 3.3.5.12340.
---@class dbc.row.v335.ItemPurchaseGroup : RowProxy
---@field ID integer
---@field ItemID integer[]
---@field Name_lang string

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.ItemPurchaseGroup self
function row:SetID(value) end

---Gets the value of field 'ItemID'.
---@return integer[] value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer[]
---@return dbc.row.v335.ItemPurchaseGroup self
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

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v335.ItemPurchaseGroup self
function row:SetName_lang(value) end

---Table container for ItemPurchaseGroup (Build 3.3.5.12340).
---@class dbc.Table.v335.ItemPurchaseGroup : DbcTable
---@field [integer] dbc.row.v335.ItemPurchaseGroup
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.ItemPurchaseGroup
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.ItemPurchaseGroup|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.ItemPurchaseGroup
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.ItemPurchaseGroup>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.ItemPurchaseGroup[]
function tbl:GetByRelation(foreign_id) end

return {}
