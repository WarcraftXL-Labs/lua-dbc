---@meta
-- Generated LuaLS annotations for GarrFollItemSetMember (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrFollItemSetMember in build 12.1.5.69594.
---@class dbc.row.v1215.GarrFollItemSetMember : RowProxy
---@field ID integer
---@field ItemID integer
---@field ItemSlot integer GARR_FOLLOWER_ITEM_SLOT: 0: Mainhand; 1: Offhand; 2: Armor
---@field MinItemLevel integer
---@field GarrFollItemSetID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrFollItemSetMember self
function row:SetID(value) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.GarrFollItemSetMember self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'ItemSlot'.
---@return integer value
function row:GetItemSlot() end

---Sets the value of field 'ItemSlot'.
---@param value integer
---@return dbc.row.v1215.GarrFollItemSetMember self
function row:SetItemSlot(value) end

---Gets the value of field 'MinItemLevel'.
---@return integer value
function row:GetMinItemLevel() end

---Sets the value of field 'MinItemLevel'.
---@param value integer
---@return dbc.row.v1215.GarrFollItemSetMember self
function row:SetMinItemLevel(value) end

---Gets the value of field 'GarrFollItemSetID'.
---@return integer value
function row:GetGarrFollItemSetID() end

---Sets the value of field 'GarrFollItemSetID'.
---@param value integer
---@return dbc.row.v1215.GarrFollItemSetMember self
function row:SetGarrFollItemSetID(value) end

---Navigates foreign relationship to 'GarrFollItemSet' via 'GarrFollItemSetID'.
---@return dbc.row.v1215.GarrFollItemSet|nil
function row:GetGarrFollItemSet() end

---Creates a related 'GarrFollItemSet' row and automatically links 'GarrFollItemSetID'.
---@param data? table
---@return dbc.row.v1215.GarrFollItemSet
function row:CreateRelated(data) end

---Table container for GarrFollItemSetMember (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrFollItemSetMember : DbcTable
---@field [integer] dbc.row.v1215.GarrFollItemSetMember
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrFollItemSetMember
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrFollItemSetMember|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrFollItemSetMember
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrFollItemSetMember>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrFollItemSetMember[]
function tbl:GetByRelation(foreign_id) end

return {}
