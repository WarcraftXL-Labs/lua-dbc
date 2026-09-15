---@meta
-- Generated LuaLS annotations for ModifiedCraftingReagentItem (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ModifiedCraftingReagentItem in build 12.1.5.69594.
---@class dbc.row.v1215.ModifiedCraftingReagentItem : RowProxy
---@field ID integer
---@field Description_lang string
---@field ModifiedCraftingCategoryID integer
---@field ItemBonusTreeID integer
---@field Flags integer
---@field Field_9_1_0_38511_004 integer
---@field ItemContextOffset integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ModifiedCraftingReagentItem self
function row:SetID(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.ModifiedCraftingReagentItem self
function row:SetDescription_lang(value) end

---Gets the value of field 'ModifiedCraftingCategoryID'.
---@return integer value
function row:GetModifiedCraftingCategoryID() end

---Sets the value of field 'ModifiedCraftingCategoryID'.
---@param value integer
---@return dbc.row.v1215.ModifiedCraftingReagentItem self
function row:SetModifiedCraftingCategoryID(value) end

---Navigates foreign relationship to 'ModifiedCraftingCategory' via 'ModifiedCraftingCategoryID'.
---@return dbc.row.v1215.ModifiedCraftingCategory|nil
function row:GetModifiedCraftingCategory() end

---Creates a related 'ModifiedCraftingCategory' row and automatically links 'ModifiedCraftingCategoryID'.
---@param data? table
---@return dbc.row.v1215.ModifiedCraftingCategory
function row:CreateRelated(data) end

---Gets the value of field 'ItemBonusTreeID'.
---@return integer value
function row:GetItemBonusTreeID() end

---Sets the value of field 'ItemBonusTreeID'.
---@param value integer
---@return dbc.row.v1215.ModifiedCraftingReagentItem self
function row:SetItemBonusTreeID(value) end

---Navigates foreign relationship to 'ItemBonusTree' via 'ItemBonusTreeID'.
---@return dbc.row.v1215.ItemBonusTree|nil
function row:GetItemBonusTree() end

---Creates a related 'ItemBonusTree' row and automatically links 'ItemBonusTreeID'.
---@param data? table
---@return dbc.row.v1215.ItemBonusTree
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ModifiedCraftingReagentItem self
function row:SetFlags(value) end

---Gets the value of field 'Field_9_1_0_38511_004'.
---@return integer value
function row:GetField_9_1_0_38511_004() end

---Sets the value of field 'Field_9_1_0_38511_004'.
---@param value integer
---@return dbc.row.v1215.ModifiedCraftingReagentItem self
function row:SetField_9_1_0_38511_004(value) end

---Gets the value of field 'ItemContextOffset'.
---@return integer value
function row:GetItemContextOffset() end

---Sets the value of field 'ItemContextOffset'.
---@param value integer
---@return dbc.row.v1215.ModifiedCraftingReagentItem self
function row:SetItemContextOffset(value) end

---Table container for ModifiedCraftingReagentItem (Build 12.1.5.69594).
---@class dbc.Table.v1215.ModifiedCraftingReagentItem : DbcTable
---@field [integer] dbc.row.v1215.ModifiedCraftingReagentItem
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ModifiedCraftingReagentItem
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ModifiedCraftingReagentItem|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ModifiedCraftingReagentItem
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ModifiedCraftingReagentItem>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ModifiedCraftingReagentItem[]
function tbl:GetByRelation(foreign_id) end

return {}
