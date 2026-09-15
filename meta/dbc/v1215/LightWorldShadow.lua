---@meta
-- Generated LuaLS annotations for LightWorldShadow (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of LightWorldShadow in build 12.1.5.69594.
---@class dbc.row.v1215.LightWorldShadow : RowProxy
---@field ID integer
---@field WorldShadowID integer
---@field LightDataID integer
---@field LightParamID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.LightWorldShadow self
function row:SetID(value) end

---Gets the value of field 'WorldShadowID'.
---@return integer value
function row:GetWorldShadowID() end

---Sets the value of field 'WorldShadowID'.
---@param value integer
---@return dbc.row.v1215.LightWorldShadow self
function row:SetWorldShadowID(value) end

---Navigates foreign relationship to 'WorldShadow' via 'WorldShadowID'.
---@return dbc.row.v1215.WorldShadow|nil
function row:GetWorldShadow() end

---Creates a related 'WorldShadow' row and automatically links 'WorldShadowID'.
---@param data? table
---@return dbc.row.v1215.WorldShadow
function row:CreateRelated(data) end

---Gets the value of field 'LightDataID'.
---@return integer value
function row:GetLightDataID() end

---Sets the value of field 'LightDataID'.
---@param value integer
---@return dbc.row.v1215.LightWorldShadow self
function row:SetLightDataID(value) end

---Navigates foreign relationship to 'LightData' via 'LightDataID'.
---@return dbc.row.v1215.LightData|nil
function row:GetLightData() end

---Creates a related 'LightData' row and automatically links 'LightDataID'.
---@param data? table
---@return dbc.row.v1215.LightData
function row:CreateRelated(data) end

---Gets the value of field 'LightParamID'.
---@return integer value
function row:GetLightParamID() end

---Sets the value of field 'LightParamID'.
---@param value integer
---@return dbc.row.v1215.LightWorldShadow self
function row:SetLightParamID(value) end

---Navigates foreign relationship to 'LightParams' via 'LightParamID'.
---@return dbc.row.v1215.LightParams|nil
function row:GetLightParam() end

---Creates a related 'LightParams' row and automatically links 'LightParamID'.
---@param data? table
---@return dbc.row.v1215.LightParams
function row:CreateRelated(data) end

---Table container for LightWorldShadow (Build 12.1.5.69594).
---@class dbc.Table.v1215.LightWorldShadow : DbcTable
---@field [integer] dbc.row.v1215.LightWorldShadow
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.LightWorldShadow
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.LightWorldShadow|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.LightWorldShadow
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.LightWorldShadow>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.LightWorldShadow[]
function tbl:GetByRelation(foreign_id) end

return {}
