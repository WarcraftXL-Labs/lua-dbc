---@meta
-- Generated LuaLS annotations for UiMapFogOfWar (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiMapFogOfWar in build 12.1.5.69594.
---@class dbc.row.v1215.UiMapFogOfWar : RowProxy
---@field ID integer
---@field UiMapID integer
---@field PlayerConditionID integer
---@field UiMapFogOfWarVisID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiMapFogOfWar self
function row:SetID(value) end

---Gets the value of field 'UiMapID'.
---@return integer value
function row:GetUiMapID() end

---Sets the value of field 'UiMapID'.
---@param value integer
---@return dbc.row.v1215.UiMapFogOfWar self
function row:SetUiMapID(value) end

---Navigates foreign relationship to 'UiMap' via 'UiMapID'.
---@return dbc.row.v1215.UiMap|nil
function row:GetUiMap() end

---Creates a related 'UiMap' row and automatically links 'UiMapID'.
---@param data? table
---@return dbc.row.v1215.UiMap
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.UiMapFogOfWar self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'UiMapFogOfWarVisID'.
---@return integer value
function row:GetUiMapFogOfWarVisID() end

---Sets the value of field 'UiMapFogOfWarVisID'.
---@param value integer
---@return dbc.row.v1215.UiMapFogOfWar self
function row:SetUiMapFogOfWarVisID(value) end

---Navigates foreign relationship to 'UiMapFogOfWarVisualization' via 'UiMapFogOfWarVisID'.
---@return dbc.row.v1215.UiMapFogOfWarVisualization|nil
function row:GetUiMapFogOfWarVis() end

---Creates a related 'UiMapFogOfWarVisualization' row and automatically links 'UiMapFogOfWarVisID'.
---@param data? table
---@return dbc.row.v1215.UiMapFogOfWarVisualization
function row:CreateRelated(data) end

---Table container for UiMapFogOfWar (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiMapFogOfWar : DbcTable
---@field [integer] dbc.row.v1215.UiMapFogOfWar
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiMapFogOfWar
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiMapFogOfWar|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiMapFogOfWar
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiMapFogOfWar>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiMapFogOfWar[]
function tbl:GetByRelation(foreign_id) end

return {}
