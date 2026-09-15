---@meta
-- Generated LuaLS annotations for WaypointNode (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of WaypointNode in build 12.1.5.69594.
---@class dbc.row.v1215.WaypointNode : RowProxy
---@field ID integer
---@field Name_lang string
---@field SafeLocID integer
---@field PlayerConditionID integer
---@field Flags integer &1: ???, &8: ???
---@field Type integer
---@field Field_8_2_0_30080_006 integer
---@field WaypointMapVolumeID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.WaypointNode self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.WaypointNode self
function row:SetName_lang(value) end

---Gets the value of field 'SafeLocID'.
---@return integer value
function row:GetSafeLocID() end

---Sets the value of field 'SafeLocID'.
---@param value integer
---@return dbc.row.v1215.WaypointNode self
function row:SetSafeLocID(value) end

---Navigates foreign relationship to 'WaypointSafeLocs' via 'SafeLocID'.
---@return dbc.row.v1215.WaypointSafeLocs|nil
function row:GetSafeLoc() end

---Creates a related 'WaypointSafeLocs' row and automatically links 'SafeLocID'.
---@param data? table
---@return dbc.row.v1215.WaypointSafeLocs
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.WaypointNode self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.WaypointNode self
function row:SetFlags(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.WaypointNode self
function row:SetType(value) end

---Gets the value of field 'Field_8_2_0_30080_006'.
---@return integer value
function row:GetField_8_2_0_30080_006() end

---Sets the value of field 'Field_8_2_0_30080_006'.
---@param value integer
---@return dbc.row.v1215.WaypointNode self
function row:SetField_8_2_0_30080_006(value) end

---Gets the value of field 'WaypointMapVolumeID'.
---@return integer value
function row:GetWaypointMapVolumeID() end

---Sets the value of field 'WaypointMapVolumeID'.
---@param value integer
---@return dbc.row.v1215.WaypointNode self
function row:SetWaypointMapVolumeID(value) end

---Navigates foreign relationship to 'WaypointMapVolume' via 'WaypointMapVolumeID'.
---@return dbc.row.v1215.WaypointMapVolume|nil
function row:GetWaypointMapVolume() end

---Creates a related 'WaypointMapVolume' row and automatically links 'WaypointMapVolumeID'.
---@param data? table
---@return dbc.row.v1215.WaypointMapVolume
function row:CreateRelated(data) end

---Table container for WaypointNode (Build 12.1.5.69594).
---@class dbc.Table.v1215.WaypointNode : DbcTable
---@field [integer] dbc.row.v1215.WaypointNode
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.WaypointNode
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.WaypointNode|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.WaypointNode
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.WaypointNode>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.WaypointNode[]
function tbl:GetByRelation(foreign_id) end

return {}
