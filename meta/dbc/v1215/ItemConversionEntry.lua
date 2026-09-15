---@meta
-- Generated LuaLS annotations for ItemConversionEntry (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemConversionEntry in build 12.1.5.69594.
---@class dbc.row.v1215.ItemConversionEntry : RowProxy
---@field ID integer
---@field ItemID integer
---@field ItemConversionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemConversionEntry self
function row:SetID(value) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.ItemConversionEntry self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'ItemConversionID'.
---@return integer value
function row:GetItemConversionID() end

---Sets the value of field 'ItemConversionID'.
---@param value integer
---@return dbc.row.v1215.ItemConversionEntry self
function row:SetItemConversionID(value) end

---Navigates foreign relationship to 'ItemConversion' via 'ItemConversionID'.
---@return dbc.row.v1215.ItemConversion|nil
function row:GetItemConversion() end

---Creates a related 'ItemConversion' row and automatically links 'ItemConversionID'.
---@param data? table
---@return dbc.row.v1215.ItemConversion
function row:CreateRelated(data) end

---Table container for ItemConversionEntry (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemConversionEntry : DbcTable
---@field [integer] dbc.row.v1215.ItemConversionEntry
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemConversionEntry
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemConversionEntry|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemConversionEntry
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemConversionEntry>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemConversionEntry[]
function tbl:GetByRelation(foreign_id) end

return {}
