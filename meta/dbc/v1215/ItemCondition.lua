---@meta
-- Generated LuaLS annotations for ItemCondition (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemCondition in build 12.1.5.69594.
---@class dbc.row.v1215.ItemCondition : RowProxy
---@field ID integer
---@field ModifierTreeID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemCondition self
function row:SetID(value) end

---Gets the value of field 'ModifierTreeID'.
---@return integer value
function row:GetModifierTreeID() end

---Sets the value of field 'ModifierTreeID'.
---@param value integer
---@return dbc.row.v1215.ItemCondition self
function row:SetModifierTreeID(value) end

---Navigates foreign relationship to 'ModifierTree' via 'ModifierTreeID'.
---@return dbc.row.v1215.ModifierTree|nil
function row:GetModifierTree() end

---Creates a related 'ModifierTree' row and automatically links 'ModifierTreeID'.
---@param data? table
---@return dbc.row.v1215.ModifierTree
function row:CreateRelated(data) end

---Table container for ItemCondition (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemCondition : DbcTable
---@field [integer] dbc.row.v1215.ItemCondition
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemCondition
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemCondition|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemCondition
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemCondition>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemCondition[]
function tbl:GetByRelation(foreign_id) end

return {}
