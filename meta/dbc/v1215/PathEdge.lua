---@meta
-- Generated LuaLS annotations for PathEdge (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PathEdge in build 12.1.5.69594.
---@class dbc.row.v1215.PathEdge : RowProxy
---@field ID integer
---@field PathNodeID integer[]
---@field PathID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PathEdge self
function row:SetID(value) end

---Gets the value of field 'PathNodeID'.
---@return integer[] value
function row:GetPathNodeID() end

---Sets the value of field 'PathNodeID'.
---@param value integer[]
---@return dbc.row.v1215.PathEdge self
function row:SetPathNodeID(value) end

---Gets element at 1-based index in 'PathNodeID'.
---@param index integer
---@return integer value
function row:GetPathNodeIDItem(index) end

---Navigates foreign relationship to 'PathNode' via 'PathNodeID'.
---@return dbc.row.v1215.PathNode|nil
function row:GetPathNode() end

---Creates a related 'PathNode' row and automatically links 'PathNodeID'.
---@param data? table
---@return dbc.row.v1215.PathNode
function row:CreateRelated(data) end

---Gets the value of field 'PathID'.
---@return integer value
function row:GetPathID() end

---Sets the value of field 'PathID'.
---@param value integer
---@return dbc.row.v1215.PathEdge self
function row:SetPathID(value) end

---Navigates foreign relationship to 'Path' via 'PathID'.
---@return dbc.row.v1215.Path|nil
function row:GetPath() end

---Creates a related 'Path' row and automatically links 'PathID'.
---@param data? table
---@return dbc.row.v1215.Path
function row:CreateRelated(data) end

---Table container for PathEdge (Build 12.1.5.69594).
---@class dbc.Table.v1215.PathEdge : DbcTable
---@field [integer] dbc.row.v1215.PathEdge
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PathEdge
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PathEdge|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PathEdge
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PathEdge>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PathEdge[]
function tbl:GetByRelation(foreign_id) end

return {}
