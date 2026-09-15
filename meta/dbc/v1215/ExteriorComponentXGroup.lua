---@meta
-- Generated LuaLS annotations for ExteriorComponentXGroup (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ExteriorComponentXGroup in build 12.1.5.69594.
---@class dbc.row.v1215.ExteriorComponentXGroup : RowProxy
---@field ID integer
---@field ExteriorComponentGroupID integer
---@field ExteriorComponentID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ExteriorComponentXGroup self
function row:SetID(value) end

---Gets the value of field 'ExteriorComponentGroupID'.
---@return integer value
function row:GetExteriorComponentGroupID() end

---Sets the value of field 'ExteriorComponentGroupID'.
---@param value integer
---@return dbc.row.v1215.ExteriorComponentXGroup self
function row:SetExteriorComponentGroupID(value) end

---Navigates foreign relationship to 'ExteriorComponentGroup' via 'ExteriorComponentGroupID'.
---@return dbc.row.v1215.ExteriorComponentGroup|nil
function row:GetExteriorComponentGroup() end

---Creates a related 'ExteriorComponentGroup' row and automatically links 'ExteriorComponentGroupID'.
---@param data? table
---@return dbc.row.v1215.ExteriorComponentGroup
function row:CreateRelated(data) end

---Gets the value of field 'ExteriorComponentID'.
---@return integer value
function row:GetExteriorComponentID() end

---Sets the value of field 'ExteriorComponentID'.
---@param value integer
---@return dbc.row.v1215.ExteriorComponentXGroup self
function row:SetExteriorComponentID(value) end

---Navigates foreign relationship to 'ExteriorComponent' via 'ExteriorComponentID'.
---@return dbc.row.v1215.ExteriorComponent|nil
function row:GetExteriorComponent() end

---Creates a related 'ExteriorComponent' row and automatically links 'ExteriorComponentID'.
---@param data? table
---@return dbc.row.v1215.ExteriorComponent
function row:CreateRelated(data) end

---Table container for ExteriorComponentXGroup (Build 12.1.5.69594).
---@class dbc.Table.v1215.ExteriorComponentXGroup : DbcTable
---@field [integer] dbc.row.v1215.ExteriorComponentXGroup
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ExteriorComponentXGroup
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ExteriorComponentXGroup|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ExteriorComponentXGroup
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ExteriorComponentXGroup>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ExteriorComponentXGroup[]
function tbl:GetByRelation(foreign_id) end

return {}
