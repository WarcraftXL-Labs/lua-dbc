---@meta
-- Generated LuaLS annotations for CraftingReagentEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CraftingReagentEffect in build 12.1.5.69594.
---@class dbc.row.v1215.CraftingReagentEffect : RowProxy
---@field ID integer
---@field ProfessionEffectID integer pure guess
---@field Order integer
---@field ModifiedCraftingCategoryID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CraftingReagentEffect self
function row:SetID(value) end

---Gets the value of field 'ProfessionEffectID'.
---@return integer value
function row:GetProfessionEffectID() end

---Sets the value of field 'ProfessionEffectID'.
---@param value integer
---@return dbc.row.v1215.CraftingReagentEffect self
function row:SetProfessionEffectID(value) end

---Navigates foreign relationship to 'ProfessionEffect' via 'ProfessionEffectID'.
---@return dbc.row.v1215.ProfessionEffect|nil
function row:GetProfessionEffect() end

---Creates a related 'ProfessionEffect' row and automatically links 'ProfessionEffectID'.
---@param data? table
---@return dbc.row.v1215.ProfessionEffect
function row:CreateRelated(data) end

---Gets the value of field 'Order'.
---@return integer value
function row:GetOrder() end

---Sets the value of field 'Order'.
---@param value integer
---@return dbc.row.v1215.CraftingReagentEffect self
function row:SetOrder(value) end

---Gets the value of field 'ModifiedCraftingCategoryID'.
---@return integer value
function row:GetModifiedCraftingCategoryID() end

---Sets the value of field 'ModifiedCraftingCategoryID'.
---@param value integer
---@return dbc.row.v1215.CraftingReagentEffect self
function row:SetModifiedCraftingCategoryID(value) end

---Navigates foreign relationship to 'ModifiedCraftingCategory' via 'ModifiedCraftingCategoryID'.
---@return dbc.row.v1215.ModifiedCraftingCategory|nil
function row:GetModifiedCraftingCategory() end

---Creates a related 'ModifiedCraftingCategory' row and automatically links 'ModifiedCraftingCategoryID'.
---@param data? table
---@return dbc.row.v1215.ModifiedCraftingCategory
function row:CreateRelated(data) end

---Table container for CraftingReagentEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.CraftingReagentEffect : DbcTable
---@field [integer] dbc.row.v1215.CraftingReagentEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CraftingReagentEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CraftingReagentEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CraftingReagentEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CraftingReagentEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CraftingReagentEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
