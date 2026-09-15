---@meta
-- Generated LuaLS annotations for SoulbindConduitItem (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SoulbindConduitItem in build 12.1.5.69594.
---@class dbc.row.v1215.SoulbindConduitItem : RowProxy
---@field ID integer
---@field ItemID integer
---@field ConduitID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SoulbindConduitItem self
function row:SetID(value) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.SoulbindConduitItem self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'ConduitID'.
---@return integer value
function row:GetConduitID() end

---Sets the value of field 'ConduitID'.
---@param value integer
---@return dbc.row.v1215.SoulbindConduitItem self
function row:SetConduitID(value) end

---Navigates foreign relationship to 'SoulbindConduit' via 'ConduitID'.
---@return dbc.row.v1215.SoulbindConduit|nil
function row:GetConduit() end

---Creates a related 'SoulbindConduit' row and automatically links 'ConduitID'.
---@param data? table
---@return dbc.row.v1215.SoulbindConduit
function row:CreateRelated(data) end

---Table container for SoulbindConduitItem (Build 12.1.5.69594).
---@class dbc.Table.v1215.SoulbindConduitItem : DbcTable
---@field [integer] dbc.row.v1215.SoulbindConduitItem
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SoulbindConduitItem
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SoulbindConduitItem|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SoulbindConduitItem
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SoulbindConduitItem>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SoulbindConduitItem[]
function tbl:GetByRelation(foreign_id) end

return {}
