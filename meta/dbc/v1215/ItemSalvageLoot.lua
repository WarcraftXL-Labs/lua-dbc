---@meta
-- Generated LuaLS annotations for ItemSalvageLoot (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemSalvageLoot in build 12.1.5.69594.
---@class dbc.row.v1215.ItemSalvageLoot : RowProxy
---@field ID integer
---@field SalvagedItemID integer
---@field ItemSalvageID integer
---@field ResultingTreasureID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemSalvageLoot self
function row:SetID(value) end

---Gets the value of field 'SalvagedItemID'.
---@return integer value
function row:GetSalvagedItemID() end

---Sets the value of field 'SalvagedItemID'.
---@param value integer
---@return dbc.row.v1215.ItemSalvageLoot self
function row:SetSalvagedItemID(value) end

---Navigates foreign relationship to 'Item' via 'SalvagedItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetSalvagedItem() end

---Creates a related 'Item' row and automatically links 'SalvagedItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'ItemSalvageID'.
---@return integer value
function row:GetItemSalvageID() end

---Sets the value of field 'ItemSalvageID'.
---@param value integer
---@return dbc.row.v1215.ItemSalvageLoot self
function row:SetItemSalvageID(value) end

---Navigates foreign relationship to 'ItemSalvage' via 'ItemSalvageID'.
---@return dbc.row.v1215.ItemSalvage|nil
function row:GetItemSalvage() end

---Creates a related 'ItemSalvage' row and automatically links 'ItemSalvageID'.
---@param data? table
---@return dbc.row.v1215.ItemSalvage
function row:CreateRelated(data) end

---Gets the value of field 'ResultingTreasureID'.
---@return integer value
function row:GetResultingTreasureID() end

---Sets the value of field 'ResultingTreasureID'.
---@param value integer
---@return dbc.row.v1215.ItemSalvageLoot self
function row:SetResultingTreasureID(value) end

---Navigates foreign relationship to 'ResultingTreasure' via 'ResultingTreasureID'.
---@return dbc.row.v1215.ResultingTreasure|nil
function row:GetResultingTreasure() end

---Creates a related 'ResultingTreasure' row and automatically links 'ResultingTreasureID'.
---@param data? table
---@return dbc.row.v1215.ResultingTreasure
function row:CreateRelated(data) end

---Table container for ItemSalvageLoot (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemSalvageLoot : DbcTable
---@field [integer] dbc.row.v1215.ItemSalvageLoot
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemSalvageLoot
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemSalvageLoot|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemSalvageLoot
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemSalvageLoot>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemSalvageLoot[]
function tbl:GetByRelation(foreign_id) end

return {}
