---@meta
-- Generated LuaLS annotations for ItemNameSlotOverride (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemNameSlotOverride in build 12.1.5.69594.
---@class dbc.row.v1215.ItemNameSlotOverride : RowProxy
---@field ID integer
---@field OverrideNameString_lang string
---@field SlotMask integer 1 << Item::InventoryType
---@field ItemNameDescriptionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemNameSlotOverride self
function row:SetID(value) end

---Gets the value of field 'OverrideNameString_lang'.
---@return string value
function row:GetOverrideNameString_lang() end

---Sets the value of field 'OverrideNameString_lang'.
---@param value string
---@return dbc.row.v1215.ItemNameSlotOverride self
function row:SetOverrideNameString_lang(value) end

---Gets the value of field 'SlotMask'.
---@return integer value
function row:GetSlotMask() end

---Sets the value of field 'SlotMask'.
---@param value integer
---@return dbc.row.v1215.ItemNameSlotOverride self
function row:SetSlotMask(value) end

---Gets the value of field 'ItemNameDescriptionID'.
---@return integer value
function row:GetItemNameDescriptionID() end

---Sets the value of field 'ItemNameDescriptionID'.
---@param value integer
---@return dbc.row.v1215.ItemNameSlotOverride self
function row:SetItemNameDescriptionID(value) end

---Navigates foreign relationship to 'ItemNameDescription' via 'ItemNameDescriptionID'.
---@return dbc.row.v1215.ItemNameDescription|nil
function row:GetItemNameDescription() end

---Creates a related 'ItemNameDescription' row and automatically links 'ItemNameDescriptionID'.
---@param data? table
---@return dbc.row.v1215.ItemNameDescription
function row:CreateRelated(data) end

---Table container for ItemNameSlotOverride (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemNameSlotOverride : DbcTable
---@field [integer] dbc.row.v1215.ItemNameSlotOverride
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemNameSlotOverride
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemNameSlotOverride|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemNameSlotOverride
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemNameSlotOverride>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemNameSlotOverride[]
function tbl:GetByRelation(foreign_id) end

return {}
