---@meta
-- Generated LuaLS annotations for ItemSpecOverride (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemSpecOverride in build 12.1.5.69594.
---@class dbc.row.v1215.ItemSpecOverride : RowProxy
---@field ID integer
---@field SpecID integer
---@field ItemID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemSpecOverride self
function row:SetID(value) end

---Gets the value of field 'SpecID'.
---@return integer value
function row:GetSpecID() end

---Sets the value of field 'SpecID'.
---@param value integer
---@return dbc.row.v1215.ItemSpecOverride self
function row:SetSpecID(value) end

---Navigates foreign relationship to 'ChrSpecialization' via 'SpecID'.
---@return dbc.row.v1215.ChrSpecialization|nil
function row:GetSpec() end

---Creates a related 'ChrSpecialization' row and automatically links 'SpecID'.
---@param data? table
---@return dbc.row.v1215.ChrSpecialization
function row:CreateRelated(data) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.ItemSpecOverride self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Table container for ItemSpecOverride (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemSpecOverride : DbcTable
---@field [integer] dbc.row.v1215.ItemSpecOverride
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemSpecOverride
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemSpecOverride|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemSpecOverride
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemSpecOverride>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemSpecOverride[]
function tbl:GetByRelation(foreign_id) end

return {}
