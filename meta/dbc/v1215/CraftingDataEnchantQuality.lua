---@meta
-- Generated LuaLS annotations for CraftingDataEnchantQuality (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CraftingDataEnchantQuality in build 12.1.5.69594.
---@class dbc.row.v1215.CraftingDataEnchantQuality : RowProxy
---@field ID integer
---@field Rank integer
---@field SpellItemEnchantmentID integer
---@field ItemID integer
---@field CraftingDataID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CraftingDataEnchantQuality self
function row:SetID(value) end

---Gets the value of field 'Rank'.
---@return integer value
function row:GetRank() end

---Sets the value of field 'Rank'.
---@param value integer
---@return dbc.row.v1215.CraftingDataEnchantQuality self
function row:SetRank(value) end

---Gets the value of field 'SpellItemEnchantmentID'.
---@return integer value
function row:GetSpellItemEnchantmentID() end

---Sets the value of field 'SpellItemEnchantmentID'.
---@param value integer
---@return dbc.row.v1215.CraftingDataEnchantQuality self
function row:SetSpellItemEnchantmentID(value) end

---Navigates foreign relationship to 'SpellItemEnchantment' via 'SpellItemEnchantmentID'.
---@return dbc.row.v1215.SpellItemEnchantment|nil
function row:GetSpellItemEnchantment() end

---Creates a related 'SpellItemEnchantment' row and automatically links 'SpellItemEnchantmentID'.
---@param data? table
---@return dbc.row.v1215.SpellItemEnchantment
function row:CreateRelated(data) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.CraftingDataEnchantQuality self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'CraftingDataID'.
---@return integer value
function row:GetCraftingDataID() end

---Sets the value of field 'CraftingDataID'.
---@param value integer
---@return dbc.row.v1215.CraftingDataEnchantQuality self
function row:SetCraftingDataID(value) end

---Navigates foreign relationship to 'CraftingData' via 'CraftingDataID'.
---@return dbc.row.v1215.CraftingData|nil
function row:GetCraftingData() end

---Creates a related 'CraftingData' row and automatically links 'CraftingDataID'.
---@param data? table
---@return dbc.row.v1215.CraftingData
function row:CreateRelated(data) end

---Table container for CraftingDataEnchantQuality (Build 12.1.5.69594).
---@class dbc.Table.v1215.CraftingDataEnchantQuality : DbcTable
---@field [integer] dbc.row.v1215.CraftingDataEnchantQuality
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CraftingDataEnchantQuality
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CraftingDataEnchantQuality|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CraftingDataEnchantQuality
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CraftingDataEnchantQuality>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CraftingDataEnchantQuality[]
function tbl:GetByRelation(foreign_id) end

return {}
