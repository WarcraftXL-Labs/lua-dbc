---@meta
-- Generated LuaLS annotations for CraftingReagentRequirement (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CraftingReagentRequirement in build 12.1.5.69594.
---@class dbc.row.v1215.CraftingReagentRequirement : RowProxy
---@field ID integer
---@field RequiredModifiedCraftingCategoryID integer
---@field ModifiedCraftingCategoryID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CraftingReagentRequirement self
function row:SetID(value) end

---Gets the value of field 'RequiredModifiedCraftingCategoryID'.
---@return integer value
function row:GetRequiredModifiedCraftingCategoryID() end

---Sets the value of field 'RequiredModifiedCraftingCategoryID'.
---@param value integer
---@return dbc.row.v1215.CraftingReagentRequirement self
function row:SetRequiredModifiedCraftingCategoryID(value) end

---Navigates foreign relationship to 'ModifiedCraftingCategory' via 'RequiredModifiedCraftingCategoryID'.
---@return dbc.row.v1215.ModifiedCraftingCategory|nil
function row:GetRequiredModifiedCraftingCategory() end

---Creates a related 'ModifiedCraftingCategory' row and automatically links 'RequiredModifiedCraftingCategoryID'.
---@param data? table
---@return dbc.row.v1215.ModifiedCraftingCategory
function row:CreateRelated(data) end

---Gets the value of field 'ModifiedCraftingCategoryID'.
---@return integer value
function row:GetModifiedCraftingCategoryID() end

---Sets the value of field 'ModifiedCraftingCategoryID'.
---@param value integer
---@return dbc.row.v1215.CraftingReagentRequirement self
function row:SetModifiedCraftingCategoryID(value) end

---Navigates foreign relationship to 'ModifiedCraftingCategory' via 'ModifiedCraftingCategoryID'.
---@return dbc.row.v1215.ModifiedCraftingCategory|nil
function row:GetModifiedCraftingCategory() end

---Creates a related 'ModifiedCraftingCategory' row and automatically links 'ModifiedCraftingCategoryID'.
---@param data? table
---@return dbc.row.v1215.ModifiedCraftingCategory
function row:CreateRelated(data) end

---Table container for CraftingReagentRequirement (Build 12.1.5.69594).
---@class dbc.Table.v1215.CraftingReagentRequirement : DbcTable
---@field [integer] dbc.row.v1215.CraftingReagentRequirement
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CraftingReagentRequirement
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CraftingReagentRequirement|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CraftingReagentRequirement
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CraftingReagentRequirement>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CraftingReagentRequirement[]
function tbl:GetByRelation(foreign_id) end

return {}
