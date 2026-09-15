---@meta
-- Generated LuaLS annotations for ItemLimitCategoryCondition (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemLimitCategoryCondition in build 12.1.5.69594.
---@class dbc.row.v1215.ItemLimitCategoryCondition : RowProxy
---@field ID integer
---@field AddQuantity integer
---@field PlayerConditionID integer
---@field ParentItemLimitCategoryID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemLimitCategoryCondition self
function row:SetID(value) end

---Gets the value of field 'AddQuantity'.
---@return integer value
function row:GetAddQuantity() end

---Sets the value of field 'AddQuantity'.
---@param value integer
---@return dbc.row.v1215.ItemLimitCategoryCondition self
function row:SetAddQuantity(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.ItemLimitCategoryCondition self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'ParentItemLimitCategoryID'.
---@return integer value
function row:GetParentItemLimitCategoryID() end

---Sets the value of field 'ParentItemLimitCategoryID'.
---@param value integer
---@return dbc.row.v1215.ItemLimitCategoryCondition self
function row:SetParentItemLimitCategoryID(value) end

---Navigates foreign relationship to 'ParentItemLimitCategory' via 'ParentItemLimitCategoryID'.
---@return dbc.row.v1215.ParentItemLimitCategory|nil
function row:GetParentItemLimitCategory() end

---Creates a related 'ParentItemLimitCategory' row and automatically links 'ParentItemLimitCategoryID'.
---@param data? table
---@return dbc.row.v1215.ParentItemLimitCategory
function row:CreateRelated(data) end

---Table container for ItemLimitCategoryCondition (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemLimitCategoryCondition : DbcTable
---@field [integer] dbc.row.v1215.ItemLimitCategoryCondition
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemLimitCategoryCondition
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemLimitCategoryCondition|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemLimitCategoryCondition
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemLimitCategoryCondition>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemLimitCategoryCondition[]
function tbl:GetByRelation(foreign_id) end

return {}
