---@meta
-- Generated LuaLS annotations for MCRSlotXMCRCategory (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MCRSlotXMCRCategory in build 12.1.5.69594.
---@class dbc.row.v1215.MCRSlotXMCRCategory : RowProxy
---@field ID integer
---@field ModifiedCraftingCategoryID integer
---@field Order integer
---@field ModifiedCraftingReagentSlotID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MCRSlotXMCRCategory self
function row:SetID(value) end

---Gets the value of field 'ModifiedCraftingCategoryID'.
---@return integer value
function row:GetModifiedCraftingCategoryID() end

---Sets the value of field 'ModifiedCraftingCategoryID'.
---@param value integer
---@return dbc.row.v1215.MCRSlotXMCRCategory self
function row:SetModifiedCraftingCategoryID(value) end

---Navigates foreign relationship to 'ModifiedCraftingCategory' via 'ModifiedCraftingCategoryID'.
---@return dbc.row.v1215.ModifiedCraftingCategory|nil
function row:GetModifiedCraftingCategory() end

---Creates a related 'ModifiedCraftingCategory' row and automatically links 'ModifiedCraftingCategoryID'.
---@param data? table
---@return dbc.row.v1215.ModifiedCraftingCategory
function row:CreateRelated(data) end

---Gets the value of field 'Order'.
---@return integer value
function row:GetOrder() end

---Sets the value of field 'Order'.
---@param value integer
---@return dbc.row.v1215.MCRSlotXMCRCategory self
function row:SetOrder(value) end

---Gets the value of field 'ModifiedCraftingReagentSlotID'.
---@return integer value
function row:GetModifiedCraftingReagentSlotID() end

---Sets the value of field 'ModifiedCraftingReagentSlotID'.
---@param value integer
---@return dbc.row.v1215.MCRSlotXMCRCategory self
function row:SetModifiedCraftingReagentSlotID(value) end

---Navigates foreign relationship to 'ModifiedCraftingReagentSlot' via 'ModifiedCraftingReagentSlotID'.
---@return dbc.row.v1215.ModifiedCraftingReagentSlot|nil
function row:GetModifiedCraftingReagentSlot() end

---Creates a related 'ModifiedCraftingReagentSlot' row and automatically links 'ModifiedCraftingReagentSlotID'.
---@param data? table
---@return dbc.row.v1215.ModifiedCraftingReagentSlot
function row:CreateRelated(data) end

---Table container for MCRSlotXMCRCategory (Build 12.1.5.69594).
---@class dbc.Table.v1215.MCRSlotXMCRCategory : DbcTable
---@field [integer] dbc.row.v1215.MCRSlotXMCRCategory
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MCRSlotXMCRCategory
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MCRSlotXMCRCategory|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MCRSlotXMCRCategory
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MCRSlotXMCRCategory>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MCRSlotXMCRCategory[]
function tbl:GetByRelation(foreign_id) end

return {}
