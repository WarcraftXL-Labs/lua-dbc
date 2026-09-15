---@meta
-- Generated LuaLS annotations for ItemFixup (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemFixup in build 12.1.5.69594.
---@class dbc.row.v1215.ItemFixup : RowProxy
---@field ID integer
---@field ItemConditionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemFixup self
function row:SetID(value) end

---Gets the value of field 'ItemConditionID'.
---@return integer value
function row:GetItemConditionID() end

---Sets the value of field 'ItemConditionID'.
---@param value integer
---@return dbc.row.v1215.ItemFixup self
function row:SetItemConditionID(value) end

---Navigates foreign relationship to 'ItemCondition' via 'ItemConditionID'.
---@return dbc.row.v1215.ItemCondition|nil
function row:GetItemCondition() end

---Creates a related 'ItemCondition' row and automatically links 'ItemConditionID'.
---@param data? table
---@return dbc.row.v1215.ItemCondition
function row:CreateRelated(data) end

---Table container for ItemFixup (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemFixup : DbcTable
---@field [integer] dbc.row.v1215.ItemFixup
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemFixup
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemFixup|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemFixup
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemFixup>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemFixup[]
function tbl:GetByRelation(foreign_id) end

return {}
