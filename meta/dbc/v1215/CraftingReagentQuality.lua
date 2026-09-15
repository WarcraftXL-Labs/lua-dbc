---@meta
-- Generated LuaLS annotations for CraftingReagentQuality (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CraftingReagentQuality in build 12.1.5.69594.
---@class dbc.row.v1215.CraftingReagentQuality : RowProxy
---@field ID integer
---@field OrderIndex integer
---@field ItemID integer
---@field CurrencyTypesID integer
---@field MaxDifficultyAdjustment number
---@field ReagentEffectPct number
---@field Field_12_0_0_64124_006 integer
---@field ModifiedCraftingCategoryID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CraftingReagentQuality self
function row:SetID(value) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.CraftingReagentQuality self
function row:SetOrderIndex(value) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.CraftingReagentQuality self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'CurrencyTypesID'.
---@return integer value
function row:GetCurrencyTypesID() end

---Sets the value of field 'CurrencyTypesID'.
---@param value integer
---@return dbc.row.v1215.CraftingReagentQuality self
function row:SetCurrencyTypesID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'CurrencyTypesID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetCurrencyTypes() end

---Creates a related 'CurrencyTypes' row and automatically links 'CurrencyTypesID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'MaxDifficultyAdjustment'.
---@return number value
function row:GetMaxDifficultyAdjustment() end

---Sets the value of field 'MaxDifficultyAdjustment'.
---@param value number
---@return dbc.row.v1215.CraftingReagentQuality self
function row:SetMaxDifficultyAdjustment(value) end

---Gets the value of field 'ReagentEffectPct'.
---@return number value
function row:GetReagentEffectPct() end

---Sets the value of field 'ReagentEffectPct'.
---@param value number
---@return dbc.row.v1215.CraftingReagentQuality self
function row:SetReagentEffectPct(value) end

---Gets the value of field 'Field_12_0_0_64124_006'.
---@return integer value
function row:GetField_12_0_0_64124_006() end

---Sets the value of field 'Field_12_0_0_64124_006'.
---@param value integer
---@return dbc.row.v1215.CraftingReagentQuality self
function row:SetField_12_0_0_64124_006(value) end

---Gets the value of field 'ModifiedCraftingCategoryID'.
---@return integer value
function row:GetModifiedCraftingCategoryID() end

---Sets the value of field 'ModifiedCraftingCategoryID'.
---@param value integer
---@return dbc.row.v1215.CraftingReagentQuality self
function row:SetModifiedCraftingCategoryID(value) end

---Navigates foreign relationship to 'ModifiedCraftingCategory' via 'ModifiedCraftingCategoryID'.
---@return dbc.row.v1215.ModifiedCraftingCategory|nil
function row:GetModifiedCraftingCategory() end

---Creates a related 'ModifiedCraftingCategory' row and automatically links 'ModifiedCraftingCategoryID'.
---@param data? table
---@return dbc.row.v1215.ModifiedCraftingCategory
function row:CreateRelated(data) end

---Table container for CraftingReagentQuality (Build 12.1.5.69594).
---@class dbc.Table.v1215.CraftingReagentQuality : DbcTable
---@field [integer] dbc.row.v1215.CraftingReagentQuality
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CraftingReagentQuality
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CraftingReagentQuality|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CraftingReagentQuality
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CraftingReagentQuality>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CraftingReagentQuality[]
function tbl:GetByRelation(foreign_id) end

return {}
