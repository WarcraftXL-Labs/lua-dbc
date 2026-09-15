---@meta
-- Generated LuaLS annotations for ZoneLight (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ZoneLight in build 12.1.5.69594.
---@class dbc.row.v1215.ZoneLight : RowProxy
---@field ID integer
---@field Name string
---@field MapID integer
---@field LightID integer
---@field Flags integer
---@field Zmin number
---@field Zmax number
---@field TransitionType integer
---@field PlayerConditionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ZoneLight self
function row:SetID(value) end

---Gets the value of field 'Name'.
---@return string value
function row:GetName() end

---Sets the value of field 'Name'.
---@param value string
---@return dbc.row.v1215.ZoneLight self
function row:SetName(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.ZoneLight self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'LightID'.
---@return integer value
function row:GetLightID() end

---Sets the value of field 'LightID'.
---@param value integer
---@return dbc.row.v1215.ZoneLight self
function row:SetLightID(value) end

---Navigates foreign relationship to 'Light' via 'LightID'.
---@return dbc.row.v1215.Light|nil
function row:GetLight() end

---Creates a related 'Light' row and automatically links 'LightID'.
---@param data? table
---@return dbc.row.v1215.Light
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ZoneLight self
function row:SetFlags(value) end

---Gets the value of field 'Zmin'.
---@return number value
function row:GetZmin() end

---Sets the value of field 'Zmin'.
---@param value number
---@return dbc.row.v1215.ZoneLight self
function row:SetZmin(value) end

---Gets the value of field 'Zmax'.
---@return number value
function row:GetZmax() end

---Sets the value of field 'Zmax'.
---@param value number
---@return dbc.row.v1215.ZoneLight self
function row:SetZmax(value) end

---Gets the value of field 'TransitionType'.
---@return integer value
function row:GetTransitionType() end

---Sets the value of field 'TransitionType'.
---@param value integer
---@return dbc.row.v1215.ZoneLight self
function row:SetTransitionType(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.ZoneLight self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Table container for ZoneLight (Build 12.1.5.69594).
---@class dbc.Table.v1215.ZoneLight : DbcTable
---@field [integer] dbc.row.v1215.ZoneLight
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ZoneLight
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ZoneLight|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ZoneLight
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ZoneLight>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ZoneLight[]
function tbl:GetByRelation(foreign_id) end

return {}
