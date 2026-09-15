---@meta
-- Generated LuaLS annotations for ItemChildEquipment (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemChildEquipment in build 12.1.5.69594.
---@class dbc.row.v1215.ItemChildEquipment : RowProxy
---@field ID integer
---@field ParentItemID integer
---@field ChildItemID integer
---@field ChildItemEquipSlot integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemChildEquipment self
function row:SetID(value) end

---Gets the value of field 'ParentItemID'.
---@return integer value
function row:GetParentItemID() end

---Sets the value of field 'ParentItemID'.
---@param value integer
---@return dbc.row.v1215.ItemChildEquipment self
function row:SetParentItemID(value) end

---Navigates foreign relationship to 'Item' via 'ParentItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetParentItem() end

---Creates a related 'Item' row and automatically links 'ParentItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'ChildItemID'.
---@return integer value
function row:GetChildItemID() end

---Sets the value of field 'ChildItemID'.
---@param value integer
---@return dbc.row.v1215.ItemChildEquipment self
function row:SetChildItemID(value) end

---Navigates foreign relationship to 'Item' via 'ChildItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetChildItem() end

---Creates a related 'Item' row and automatically links 'ChildItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'ChildItemEquipSlot'.
---@return integer value
function row:GetChildItemEquipSlot() end

---Sets the value of field 'ChildItemEquipSlot'.
---@param value integer
---@return dbc.row.v1215.ItemChildEquipment self
function row:SetChildItemEquipSlot(value) end

---Table container for ItemChildEquipment (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemChildEquipment : DbcTable
---@field [integer] dbc.row.v1215.ItemChildEquipment
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemChildEquipment
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemChildEquipment|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemChildEquipment
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemChildEquipment>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemChildEquipment[]
function tbl:GetByRelation(foreign_id) end

return {}
