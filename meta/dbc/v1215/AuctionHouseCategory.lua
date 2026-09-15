---@meta
-- Generated LuaLS annotations for AuctionHouseCategory (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AuctionHouseCategory in build 12.1.5.69594.
---@class dbc.row.v1215.AuctionHouseCategory : RowProxy
---@field Description_lang string
---@field SortedProperty_lang string
---@field ID integer
---@field ItemClass integer
---@field ItemSubClass integer
---@field InventoryType integer C_Item.InventoryType
---@field OrderIndex integer
---@field ParentCategory integer
---@field DefaultAuctionHouseFilter integer guessed, seems to be off by one though, i.e. pre-9.2.5 enum
---@field AuctionHouseExtraColumn integer 0: None, 1: Ilvl, 2: Slots, 3: Level, 4: Skill

local row = {}

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.AuctionHouseCategory self
function row:SetDescription_lang(value) end

---Gets the value of field 'SortedProperty_lang'.
---@return string value
function row:GetSortedProperty_lang() end

---Sets the value of field 'SortedProperty_lang'.
---@param value string
---@return dbc.row.v1215.AuctionHouseCategory self
function row:SetSortedProperty_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AuctionHouseCategory self
function row:SetID(value) end

---Gets the value of field 'ItemClass'.
---@return integer value
function row:GetItemClass() end

---Sets the value of field 'ItemClass'.
---@param value integer
---@return dbc.row.v1215.AuctionHouseCategory self
function row:SetItemClass(value) end

---Navigates foreign relationship to 'ItemClass' via 'ItemClass'.
---@return dbc.row.v1215.ItemClass|nil
function row:GetItemClass() end

---Creates a related 'ItemClass' row and automatically links 'ItemClass'.
---@param data? table
---@return dbc.row.v1215.ItemClass
function row:CreateRelated(data) end

---Gets the value of field 'ItemSubClass'.
---@return integer value
function row:GetItemSubClass() end

---Sets the value of field 'ItemSubClass'.
---@param value integer
---@return dbc.row.v1215.AuctionHouseCategory self
function row:SetItemSubClass(value) end

---Navigates foreign relationship to 'ItemSubClass' via 'ItemSubClass'.
---@return dbc.row.v1215.ItemSubClass|nil
function row:GetItemSubClass() end

---Creates a related 'ItemSubClass' row and automatically links 'ItemSubClass'.
---@param data? table
---@return dbc.row.v1215.ItemSubClass
function row:CreateRelated(data) end

---Gets the value of field 'InventoryType'.
---@return integer value
function row:GetInventoryType() end

---Sets the value of field 'InventoryType'.
---@param value integer
---@return dbc.row.v1215.AuctionHouseCategory self
function row:SetInventoryType(value) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.AuctionHouseCategory self
function row:SetOrderIndex(value) end

---Gets the value of field 'ParentCategory'.
---@return integer value
function row:GetParentCategory() end

---Sets the value of field 'ParentCategory'.
---@param value integer
---@return dbc.row.v1215.AuctionHouseCategory self
function row:SetParentCategory(value) end

---Navigates foreign relationship to 'AuctionHouseCategory' via 'ParentCategory'.
---@return dbc.row.v1215.AuctionHouseCategory|nil
function row:GetParentCategory() end

---Creates a related 'AuctionHouseCategory' row and automatically links 'ParentCategory'.
---@param data? table
---@return dbc.row.v1215.AuctionHouseCategory
function row:CreateRelated(data) end

---Gets the value of field 'DefaultAuctionHouseFilter'.
---@return integer value
function row:GetDefaultAuctionHouseFilter() end

---Sets the value of field 'DefaultAuctionHouseFilter'.
---@param value integer
---@return dbc.row.v1215.AuctionHouseCategory self
function row:SetDefaultAuctionHouseFilter(value) end

---Gets the value of field 'AuctionHouseExtraColumn'.
---@return integer value
function row:GetAuctionHouseExtraColumn() end

---Sets the value of field 'AuctionHouseExtraColumn'.
---@param value integer
---@return dbc.row.v1215.AuctionHouseCategory self
function row:SetAuctionHouseExtraColumn(value) end

---Table container for AuctionHouseCategory (Build 12.1.5.69594).
---@class dbc.Table.v1215.AuctionHouseCategory : DbcTable
---@field [integer] dbc.row.v1215.AuctionHouseCategory
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AuctionHouseCategory
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AuctionHouseCategory|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AuctionHouseCategory
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AuctionHouseCategory>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AuctionHouseCategory[]
function tbl:GetByRelation(foreign_id) end

return {}
