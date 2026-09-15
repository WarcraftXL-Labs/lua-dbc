---@meta
-- Generated LuaLS annotations for OccluderNode (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of OccluderNode in build 12.1.5.69594.
---@class dbc.row.v1215.OccluderNode : RowProxy
---@field ID integer
---@field OccluderID integer
---@field Sequence integer
---@field LocationID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.OccluderNode self
function row:SetID(value) end

---Gets the value of field 'OccluderID'.
---@return integer value
function row:GetOccluderID() end

---Sets the value of field 'OccluderID'.
---@param value integer
---@return dbc.row.v1215.OccluderNode self
function row:SetOccluderID(value) end

---Navigates foreign relationship to 'Occluder' via 'OccluderID'.
---@return dbc.row.v1215.Occluder|nil
function row:GetOccluder() end

---Creates a related 'Occluder' row and automatically links 'OccluderID'.
---@param data? table
---@return dbc.row.v1215.Occluder
function row:CreateRelated(data) end

---Gets the value of field 'Sequence'.
---@return integer value
function row:GetSequence() end

---Sets the value of field 'Sequence'.
---@param value integer
---@return dbc.row.v1215.OccluderNode self
function row:SetSequence(value) end

---Gets the value of field 'LocationID'.
---@return integer value
function row:GetLocationID() end

---Sets the value of field 'LocationID'.
---@param value integer
---@return dbc.row.v1215.OccluderNode self
function row:SetLocationID(value) end

---Navigates foreign relationship to 'OccluderLocation' via 'LocationID'.
---@return dbc.row.v1215.OccluderLocation|nil
function row:GetLocation() end

---Creates a related 'OccluderLocation' row and automatically links 'LocationID'.
---@param data? table
---@return dbc.row.v1215.OccluderLocation
function row:CreateRelated(data) end

---Table container for OccluderNode (Build 12.1.5.69594).
---@class dbc.Table.v1215.OccluderNode : DbcTable
---@field [integer] dbc.row.v1215.OccluderNode
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.OccluderNode
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.OccluderNode|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.OccluderNode
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.OccluderNode>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.OccluderNode[]
function tbl:GetByRelation(foreign_id) end

return {}
