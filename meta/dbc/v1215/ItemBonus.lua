---@meta
-- Generated LuaLS annotations for ItemBonus (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemBonus in build 12.1.5.69594.
---@class dbc.row.v1215.ItemBonus : RowProxy
---@field ID integer
---@field Value integer[]
---@field ParentItemBonusListID integer
---@field Type integer
---@field OrderIndex integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemBonus self
function row:SetID(value) end

---Gets the value of field 'Value'.
---@return integer[] value
function row:GetValue() end

---Sets the value of field 'Value'.
---@param value integer[]
---@return dbc.row.v1215.ItemBonus self
function row:SetValue(value) end

---Gets element at 1-based index in 'Value'.
---@param index integer
---@return integer value
function row:GetValueItem(index) end

---Gets the value of field 'ParentItemBonusListID'.
---@return integer value
function row:GetParentItemBonusListID() end

---Sets the value of field 'ParentItemBonusListID'.
---@param value integer
---@return dbc.row.v1215.ItemBonus self
function row:SetParentItemBonusListID(value) end

---Navigates foreign relationship to 'ItemBonusList' via 'ParentItemBonusListID'.
---@return dbc.row.v1215.ItemBonusList|nil
function row:GetParentItemBonusList() end

---Creates a related 'ItemBonusList' row and automatically links 'ParentItemBonusListID'.
---@param data? table
---@return dbc.row.v1215.ItemBonusList
function row:CreateRelated(data) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.ItemBonus self
function row:SetType(value) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.ItemBonus self
function row:SetOrderIndex(value) end

---Table container for ItemBonus (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemBonus : DbcTable
---@field [integer] dbc.row.v1215.ItemBonus
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemBonus
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemBonus|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemBonus
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemBonus>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemBonus[]
function tbl:GetByRelation(foreign_id) end

return {}
