---@meta
-- Generated LuaLS annotations for ActionBarGroup (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ActionBarGroup in build 12.1.5.69594.
---@class dbc.row.v1215.ActionBarGroup : RowProxy
---@field ID integer
---@field InterfaceVersion integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ActionBarGroup self
function row:SetID(value) end

---Gets the value of field 'InterfaceVersion'.
---@return integer value
function row:GetInterfaceVersion() end

---Sets the value of field 'InterfaceVersion'.
---@param value integer
---@return dbc.row.v1215.ActionBarGroup self
function row:SetInterfaceVersion(value) end

---Table container for ActionBarGroup (Build 12.1.5.69594).
---@class dbc.Table.v1215.ActionBarGroup : DbcTable
---@field [integer] dbc.row.v1215.ActionBarGroup
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ActionBarGroup
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ActionBarGroup|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ActionBarGroup
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ActionBarGroup>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ActionBarGroup[]
function tbl:GetByRelation(foreign_id) end

return {}
