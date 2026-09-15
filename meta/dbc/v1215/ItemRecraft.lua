---@meta
-- Generated LuaLS annotations for ItemRecraft (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemRecraft in build 12.1.5.69594.
---@class dbc.row.v1215.ItemRecraft : RowProxy
---@field ID integer
---@field ItemID integer
---@field Field_12_0_0_64124_002 integer
---@field ItemFixupID integer
---@field SharedStringID integer
---@field Field_10_1_0_49190_003 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemRecraft self
function row:SetID(value) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.ItemRecraft self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_0_0_64124_002'.
---@return integer value
function row:GetField_12_0_0_64124_002() end

---Sets the value of field 'Field_12_0_0_64124_002'.
---@param value integer
---@return dbc.row.v1215.ItemRecraft self
function row:SetField_12_0_0_64124_002(value) end

---Gets the value of field 'ItemFixupID'.
---@return integer value
function row:GetItemFixupID() end

---Sets the value of field 'ItemFixupID'.
---@param value integer
---@return dbc.row.v1215.ItemRecraft self
function row:SetItemFixupID(value) end

---Navigates foreign relationship to 'ItemFixup' via 'ItemFixupID'.
---@return dbc.row.v1215.ItemFixup|nil
function row:GetItemFixup() end

---Creates a related 'ItemFixup' row and automatically links 'ItemFixupID'.
---@param data? table
---@return dbc.row.v1215.ItemFixup
function row:CreateRelated(data) end

---Gets the value of field 'SharedStringID'.
---@return integer value
function row:GetSharedStringID() end

---Sets the value of field 'SharedStringID'.
---@param value integer
---@return dbc.row.v1215.ItemRecraft self
function row:SetSharedStringID(value) end

---Navigates foreign relationship to 'SharedString' via 'SharedStringID'.
---@return dbc.row.v1215.SharedString|nil
function row:GetSharedString() end

---Creates a related 'SharedString' row and automatically links 'SharedStringID'.
---@param data? table
---@return dbc.row.v1215.SharedString
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_1_0_49190_003'.
---@return integer value
function row:GetField_10_1_0_49190_003() end

---Sets the value of field 'Field_10_1_0_49190_003'.
---@param value integer
---@return dbc.row.v1215.ItemRecraft self
function row:SetField_10_1_0_49190_003(value) end

---Table container for ItemRecraft (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemRecraft : DbcTable
---@field [integer] dbc.row.v1215.ItemRecraft
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemRecraft
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemRecraft|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemRecraft
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemRecraft>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemRecraft[]
function tbl:GetByRelation(foreign_id) end

return {}
