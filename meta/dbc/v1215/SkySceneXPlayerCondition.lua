---@meta
-- Generated LuaLS annotations for SkySceneXPlayerCondition (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SkySceneXPlayerCondition in build 12.1.5.69594.
---@class dbc.row.v1215.SkySceneXPlayerCondition : RowProxy
---@field ID integer
---@field PlayerConditionID integer
---@field SkySceneID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SkySceneXPlayerCondition self
function row:SetID(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.SkySceneXPlayerCondition self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'SkySceneID'.
---@return integer value
function row:GetSkySceneID() end

---Sets the value of field 'SkySceneID'.
---@param value integer
---@return dbc.row.v1215.SkySceneXPlayerCondition self
function row:SetSkySceneID(value) end

---Navigates foreign relationship to 'SkyScene' via 'SkySceneID'.
---@return dbc.row.v1215.SkyScene|nil
function row:GetSkyScene() end

---Creates a related 'SkyScene' row and automatically links 'SkySceneID'.
---@param data? table
---@return dbc.row.v1215.SkyScene
function row:CreateRelated(data) end

---Table container for SkySceneXPlayerCondition (Build 12.1.5.69594).
---@class dbc.Table.v1215.SkySceneXPlayerCondition : DbcTable
---@field [integer] dbc.row.v1215.SkySceneXPlayerCondition
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SkySceneXPlayerCondition
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SkySceneXPlayerCondition|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SkySceneXPlayerCondition
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SkySceneXPlayerCondition>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SkySceneXPlayerCondition[]
function tbl:GetByRelation(foreign_id) end

return {}
