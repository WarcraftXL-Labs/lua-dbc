---@meta
-- Generated LuaLS annotations for EntryNode (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of EntryNode in build 12.1.5.69594.
---@class dbc.row.v1215.EntryNode : RowProxy
---@field ID integer
---@field NodeID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.EntryNode self
function row:SetID(value) end

---Gets the value of field 'NodeID'.
---@return integer value
function row:GetNodeID() end

---Sets the value of field 'NodeID'.
---@param value integer
---@return dbc.row.v1215.EntryNode self
function row:SetNodeID(value) end

---Navigates foreign relationship to 'Node' via 'NodeID'.
---@return dbc.row.v1215.Node|nil
function row:GetNode() end

---Creates a related 'Node' row and automatically links 'NodeID'.
---@param data? table
---@return dbc.row.v1215.Node
function row:CreateRelated(data) end

---Table container for EntryNode (Build 12.1.5.69594).
---@class dbc.Table.v1215.EntryNode : DbcTable
---@field [integer] dbc.row.v1215.EntryNode
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.EntryNode
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.EntryNode|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.EntryNode
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.EntryNode>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.EntryNode[]
function tbl:GetByRelation(foreign_id) end

return {}
