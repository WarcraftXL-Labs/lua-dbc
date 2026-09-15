---@meta
-- Generated LuaLS annotations for WaypointEdge (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of WaypointEdge in build 12.1.5.69594.
---@class dbc.row.v1215.WaypointEdge : RowProxy
---@field ID integer
---@field Start integer
---@field End integer
---@field Flags integer 1=?, 2=bidirectional
---@field PlayerConditionID integer
---@field Field_8_1_5_29281_005 integer Cost?

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.WaypointEdge self
function row:SetID(value) end

---Gets the value of field 'Start'.
---@return integer value
function row:GetStart() end

---Sets the value of field 'Start'.
---@param value integer
---@return dbc.row.v1215.WaypointEdge self
function row:SetStart(value) end

---Navigates foreign relationship to 'WaypointNode' via 'Start'.
---@return dbc.row.v1215.WaypointNode|nil
function row:GetStart() end

---Creates a related 'WaypointNode' row and automatically links 'Start'.
---@param data? table
---@return dbc.row.v1215.WaypointNode
function row:CreateRelated(data) end

---Gets the value of field 'End'.
---@return integer value
function row:GetEnd() end

---Sets the value of field 'End'.
---@param value integer
---@return dbc.row.v1215.WaypointEdge self
function row:SetEnd(value) end

---Navigates foreign relationship to 'WaypointNode' via 'End'.
---@return dbc.row.v1215.WaypointNode|nil
function row:GetEnd() end

---Creates a related 'WaypointNode' row and automatically links 'End'.
---@param data? table
---@return dbc.row.v1215.WaypointNode
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.WaypointEdge self
function row:SetFlags(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.WaypointEdge self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'Field_8_1_5_29281_005'.
---@return integer value
function row:GetField_8_1_5_29281_005() end

---Sets the value of field 'Field_8_1_5_29281_005'.
---@param value integer
---@return dbc.row.v1215.WaypointEdge self
function row:SetField_8_1_5_29281_005(value) end

---Table container for WaypointEdge (Build 12.1.5.69594).
---@class dbc.Table.v1215.WaypointEdge : DbcTable
---@field [integer] dbc.row.v1215.WaypointEdge
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.WaypointEdge
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.WaypointEdge|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.WaypointEdge
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.WaypointEdge>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.WaypointEdge[]
function tbl:GetByRelation(foreign_id) end

return {}
