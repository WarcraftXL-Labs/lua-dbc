---@meta
-- Generated LuaLS annotations for ItemCreationContextGroup (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemCreationContextGroup in build 12.1.5.69594.
---@class dbc.row.v1215.ItemCreationContextGroup : RowProxy
---@field ID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemCreationContextGroup self
function row:SetID(value) end

---Table container for ItemCreationContextGroup (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemCreationContextGroup : DbcTable
---@field [integer] dbc.row.v1215.ItemCreationContextGroup
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemCreationContextGroup
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemCreationContextGroup|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemCreationContextGroup
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemCreationContextGroup>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemCreationContextGroup[]
function tbl:GetByRelation(foreign_id) end

return {}
