---@meta
-- Generated LuaLS annotations for ItemBonusTreeGroupEntry (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemBonusTreeGroupEntry in build 12.1.5.69594.
---@class dbc.row.v1215.ItemBonusTreeGroupEntry : RowProxy
---@field ID integer
---@field ItemBonusTreeGroupID integer
---@field ItemBonusTreeID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusTreeGroupEntry self
function row:SetID(value) end

---Gets the value of field 'ItemBonusTreeGroupID'.
---@return integer value
function row:GetItemBonusTreeGroupID() end

---Sets the value of field 'ItemBonusTreeGroupID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusTreeGroupEntry self
function row:SetItemBonusTreeGroupID(value) end

---Navigates foreign relationship to 'ItemBonusTreeGroup' via 'ItemBonusTreeGroupID'.
---@return dbc.row.v1215.ItemBonusTreeGroup|nil
function row:GetItemBonusTreeGroup() end

---Creates a related 'ItemBonusTreeGroup' row and automatically links 'ItemBonusTreeGroupID'.
---@param data? table
---@return dbc.row.v1215.ItemBonusTreeGroup
function row:CreateRelated(data) end

---Gets the value of field 'ItemBonusTreeID'.
---@return integer value
function row:GetItemBonusTreeID() end

---Sets the value of field 'ItemBonusTreeID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusTreeGroupEntry self
function row:SetItemBonusTreeID(value) end

---Navigates foreign relationship to 'ItemBonusTree' via 'ItemBonusTreeID'.
---@return dbc.row.v1215.ItemBonusTree|nil
function row:GetItemBonusTree() end

---Creates a related 'ItemBonusTree' row and automatically links 'ItemBonusTreeID'.
---@param data? table
---@return dbc.row.v1215.ItemBonusTree
function row:CreateRelated(data) end

---Table container for ItemBonusTreeGroupEntry (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemBonusTreeGroupEntry : DbcTable
---@field [integer] dbc.row.v1215.ItemBonusTreeGroupEntry
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemBonusTreeGroupEntry
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemBonusTreeGroupEntry|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemBonusTreeGroupEntry
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemBonusTreeGroupEntry>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemBonusTreeGroupEntry[]
function tbl:GetByRelation(foreign_id) end

return {}
