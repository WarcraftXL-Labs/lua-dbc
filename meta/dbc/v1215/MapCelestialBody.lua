---@meta
-- Generated LuaLS annotations for MapCelestialBody (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MapCelestialBody in build 12.1.5.69594.
---@class dbc.row.v1215.MapCelestialBody : RowProxy
---@field ID integer
---@field CelestialBodyID integer
---@field PlayerConditionID integer
---@field MapID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MapCelestialBody self
function row:SetID(value) end

---Gets the value of field 'CelestialBodyID'.
---@return integer value
function row:GetCelestialBodyID() end

---Sets the value of field 'CelestialBodyID'.
---@param value integer
---@return dbc.row.v1215.MapCelestialBody self
function row:SetCelestialBodyID(value) end

---Navigates foreign relationship to 'CelestialBody' via 'CelestialBodyID'.
---@return dbc.row.v1215.CelestialBody|nil
function row:GetCelestialBody() end

---Creates a related 'CelestialBody' row and automatically links 'CelestialBodyID'.
---@param data? table
---@return dbc.row.v1215.CelestialBody
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.MapCelestialBody self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.MapCelestialBody self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Table container for MapCelestialBody (Build 12.1.5.69594).
---@class dbc.Table.v1215.MapCelestialBody : DbcTable
---@field [integer] dbc.row.v1215.MapCelestialBody
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MapCelestialBody
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MapCelestialBody|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MapCelestialBody
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MapCelestialBody>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MapCelestialBody[]
function tbl:GetByRelation(foreign_id) end

return {}
