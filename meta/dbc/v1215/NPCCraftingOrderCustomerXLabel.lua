---@meta
-- Generated LuaLS annotations for NPCCraftingOrderCustomerXLabel (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of NPCCraftingOrderCustomerXLabel in build 12.1.5.69594.
---@class dbc.row.v1215.NPCCraftingOrderCustomerXLabel : RowProxy
---@field ID integer
---@field NPCCraftingOrderCustomerID integer
---@field LabelID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.NPCCraftingOrderCustomerXLabel self
function row:SetID(value) end

---Gets the value of field 'NPCCraftingOrderCustomerID'.
---@return integer value
function row:GetNPCCraftingOrderCustomerID() end

---Sets the value of field 'NPCCraftingOrderCustomerID'.
---@param value integer
---@return dbc.row.v1215.NPCCraftingOrderCustomerXLabel self
function row:SetNPCCraftingOrderCustomerID(value) end

---Navigates foreign relationship to 'NPCCraftingOrderCustomer' via 'NPCCraftingOrderCustomerID'.
---@return dbc.row.v1215.NPCCraftingOrderCustomer|nil
function row:GetNPCCraftingOrderCustomer() end

---Creates a related 'NPCCraftingOrderCustomer' row and automatically links 'NPCCraftingOrderCustomerID'.
---@param data? table
---@return dbc.row.v1215.NPCCraftingOrderCustomer
function row:CreateRelated(data) end

---Gets the value of field 'LabelID'.
---@return integer value
function row:GetLabelID() end

---Sets the value of field 'LabelID'.
---@param value integer
---@return dbc.row.v1215.NPCCraftingOrderCustomerXLabel self
function row:SetLabelID(value) end

---Navigates foreign relationship to 'Label' via 'LabelID'.
---@return dbc.row.v1215.Label|nil
function row:GetLabel() end

---Creates a related 'Label' row and automatically links 'LabelID'.
---@param data? table
---@return dbc.row.v1215.Label
function row:CreateRelated(data) end

---Table container for NPCCraftingOrderCustomerXLabel (Build 12.1.5.69594).
---@class dbc.Table.v1215.NPCCraftingOrderCustomerXLabel : DbcTable
---@field [integer] dbc.row.v1215.NPCCraftingOrderCustomerXLabel
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.NPCCraftingOrderCustomerXLabel
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.NPCCraftingOrderCustomerXLabel|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.NPCCraftingOrderCustomerXLabel
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.NPCCraftingOrderCustomerXLabel>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.NPCCraftingOrderCustomerXLabel[]
function tbl:GetByRelation(foreign_id) end

return {}
