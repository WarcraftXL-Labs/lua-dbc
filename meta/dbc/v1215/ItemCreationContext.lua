---@meta
-- Generated LuaLS annotations for ItemCreationContext (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemCreationContext in build 12.1.5.69594.
---@class dbc.row.v1215.ItemCreationContext : RowProxy
---@field ID integer
---@field ItemContext integer
---@field ItemCreationContextGroupID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemCreationContext self
function row:SetID(value) end

---Gets the value of field 'ItemContext'.
---@return integer value
function row:GetItemContext() end

---Sets the value of field 'ItemContext'.
---@param value integer
---@return dbc.row.v1215.ItemCreationContext self
function row:SetItemContext(value) end

---Gets the value of field 'ItemCreationContextGroupID'.
---@return integer value
function row:GetItemCreationContextGroupID() end

---Sets the value of field 'ItemCreationContextGroupID'.
---@param value integer
---@return dbc.row.v1215.ItemCreationContext self
function row:SetItemCreationContextGroupID(value) end

---Navigates foreign relationship to 'ItemCreationContextGroup' via 'ItemCreationContextGroupID'.
---@return dbc.row.v1215.ItemCreationContextGroup|nil
function row:GetItemCreationContextGroup() end

---Creates a related 'ItemCreationContextGroup' row and automatically links 'ItemCreationContextGroupID'.
---@param data? table
---@return dbc.row.v1215.ItemCreationContextGroup
function row:CreateRelated(data) end

---Table container for ItemCreationContext (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemCreationContext : DbcTable
---@field [integer] dbc.row.v1215.ItemCreationContext
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemCreationContext
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemCreationContext|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemCreationContext
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemCreationContext>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemCreationContext[]
function tbl:GetByRelation(foreign_id) end

return {}
