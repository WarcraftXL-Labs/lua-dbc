---@meta
-- Generated LuaLS annotations for NPCCraftingOrderSetXCustomer (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of NPCCraftingOrderSetXCustomer in build 12.1.5.69594.
---@class dbc.row.v1215.NPCCraftingOrderSetXCustomer : RowProxy
---@field ID integer
---@field NPCCraftingOrderCustomerID integer
---@field NPCCraftingOrderSetID integer
---@field Field_11_0_0_54605_003 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.NPCCraftingOrderSetXCustomer self
function row:SetID(value) end

---Gets the value of field 'NPCCraftingOrderCustomerID'.
---@return integer value
function row:GetNPCCraftingOrderCustomerID() end

---Sets the value of field 'NPCCraftingOrderCustomerID'.
---@param value integer
---@return dbc.row.v1215.NPCCraftingOrderSetXCustomer self
function row:SetNPCCraftingOrderCustomerID(value) end

---Navigates foreign relationship to 'NPCCraftingOrderCustomer' via 'NPCCraftingOrderCustomerID'.
---@return dbc.row.v1215.NPCCraftingOrderCustomer|nil
function row:GetNPCCraftingOrderCustomer() end

---Creates a related 'NPCCraftingOrderCustomer' row and automatically links 'NPCCraftingOrderCustomerID'.
---@param data? table
---@return dbc.row.v1215.NPCCraftingOrderCustomer
function row:CreateRelated(data) end

---Gets the value of field 'NPCCraftingOrderSetID'.
---@return integer value
function row:GetNPCCraftingOrderSetID() end

---Sets the value of field 'NPCCraftingOrderSetID'.
---@param value integer
---@return dbc.row.v1215.NPCCraftingOrderSetXCustomer self
function row:SetNPCCraftingOrderSetID(value) end

---Navigates foreign relationship to 'NPCCraftingOrderSet' via 'NPCCraftingOrderSetID'.
---@return dbc.row.v1215.NPCCraftingOrderSet|nil
function row:GetNPCCraftingOrderSet() end

---Creates a related 'NPCCraftingOrderSet' row and automatically links 'NPCCraftingOrderSetID'.
---@param data? table
---@return dbc.row.v1215.NPCCraftingOrderSet
function row:CreateRelated(data) end

---Gets the value of field 'Field_11_0_0_54605_003'.
---@return integer value
function row:GetField_11_0_0_54605_003() end

---Sets the value of field 'Field_11_0_0_54605_003'.
---@param value integer
---@return dbc.row.v1215.NPCCraftingOrderSetXCustomer self
function row:SetField_11_0_0_54605_003(value) end

---Table container for NPCCraftingOrderSetXCustomer (Build 12.1.5.69594).
---@class dbc.Table.v1215.NPCCraftingOrderSetXCustomer : DbcTable
---@field [integer] dbc.row.v1215.NPCCraftingOrderSetXCustomer
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.NPCCraftingOrderSetXCustomer
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.NPCCraftingOrderSetXCustomer|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.NPCCraftingOrderSetXCustomer
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.NPCCraftingOrderSetXCustomer>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.NPCCraftingOrderSetXCustomer[]
function tbl:GetByRelation(foreign_id) end

return {}
