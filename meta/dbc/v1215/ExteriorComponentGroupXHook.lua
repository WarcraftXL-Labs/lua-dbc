---@meta
-- Generated LuaLS annotations for ExteriorComponentGroupXHook (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ExteriorComponentGroupXHook in build 12.1.5.69594.
---@class dbc.row.v1215.ExteriorComponentGroupXHook : RowProxy
---@field ID integer
---@field ExteriorComponentGroupID integer
---@field ExteriorComponentHookID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ExteriorComponentGroupXHook self
function row:SetID(value) end

---Gets the value of field 'ExteriorComponentGroupID'.
---@return integer value
function row:GetExteriorComponentGroupID() end

---Sets the value of field 'ExteriorComponentGroupID'.
---@param value integer
---@return dbc.row.v1215.ExteriorComponentGroupXHook self
function row:SetExteriorComponentGroupID(value) end

---Navigates foreign relationship to 'ExteriorComponentGroup' via 'ExteriorComponentGroupID'.
---@return dbc.row.v1215.ExteriorComponentGroup|nil
function row:GetExteriorComponentGroup() end

---Creates a related 'ExteriorComponentGroup' row and automatically links 'ExteriorComponentGroupID'.
---@param data? table
---@return dbc.row.v1215.ExteriorComponentGroup
function row:CreateRelated(data) end

---Gets the value of field 'ExteriorComponentHookID'.
---@return integer value
function row:GetExteriorComponentHookID() end

---Sets the value of field 'ExteriorComponentHookID'.
---@param value integer
---@return dbc.row.v1215.ExteriorComponentGroupXHook self
function row:SetExteriorComponentHookID(value) end

---Navigates foreign relationship to 'ExteriorComponentHook' via 'ExteriorComponentHookID'.
---@return dbc.row.v1215.ExteriorComponentHook|nil
function row:GetExteriorComponentHook() end

---Creates a related 'ExteriorComponentHook' row and automatically links 'ExteriorComponentHookID'.
---@param data? table
---@return dbc.row.v1215.ExteriorComponentHook
function row:CreateRelated(data) end

---Table container for ExteriorComponentGroupXHook (Build 12.1.5.69594).
---@class dbc.Table.v1215.ExteriorComponentGroupXHook : DbcTable
---@field [integer] dbc.row.v1215.ExteriorComponentGroupXHook
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ExteriorComponentGroupXHook
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ExteriorComponentGroupXHook|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ExteriorComponentGroupXHook
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ExteriorComponentGroupXHook>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ExteriorComponentGroupXHook[]
function tbl:GetByRelation(foreign_id) end

return {}
