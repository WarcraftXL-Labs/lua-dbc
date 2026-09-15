---@meta
-- Generated LuaLS annotations for LightParamsLightShaft (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of LightParamsLightShaft in build 12.1.5.69594.
---@class dbc.row.v1215.LightParamsLightShaft : RowProxy
---@field ID integer
---@field LightShaftID integer
---@field LightDataID integer
---@field LightParamsID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.LightParamsLightShaft self
function row:SetID(value) end

---Gets the value of field 'LightShaftID'.
---@return integer value
function row:GetLightShaftID() end

---Sets the value of field 'LightShaftID'.
---@param value integer
---@return dbc.row.v1215.LightParamsLightShaft self
function row:SetLightShaftID(value) end

---Navigates foreign relationship to 'LightShaft' via 'LightShaftID'.
---@return dbc.row.v1215.LightShaft|nil
function row:GetLightShaft() end

---Creates a related 'LightShaft' row and automatically links 'LightShaftID'.
---@param data? table
---@return dbc.row.v1215.LightShaft
function row:CreateRelated(data) end

---Gets the value of field 'LightDataID'.
---@return integer value
function row:GetLightDataID() end

---Sets the value of field 'LightDataID'.
---@param value integer
---@return dbc.row.v1215.LightParamsLightShaft self
function row:SetLightDataID(value) end

---Navigates foreign relationship to 'LightData' via 'LightDataID'.
---@return dbc.row.v1215.LightData|nil
function row:GetLightData() end

---Creates a related 'LightData' row and automatically links 'LightDataID'.
---@param data? table
---@return dbc.row.v1215.LightData
function row:CreateRelated(data) end

---Gets the value of field 'LightParamsID'.
---@return integer value
function row:GetLightParamsID() end

---Sets the value of field 'LightParamsID'.
---@param value integer
---@return dbc.row.v1215.LightParamsLightShaft self
function row:SetLightParamsID(value) end

---Navigates foreign relationship to 'LightParams' via 'LightParamsID'.
---@return dbc.row.v1215.LightParams|nil
function row:GetLightParams() end

---Creates a related 'LightParams' row and automatically links 'LightParamsID'.
---@param data? table
---@return dbc.row.v1215.LightParams
function row:CreateRelated(data) end

---Table container for LightParamsLightShaft (Build 12.1.5.69594).
---@class dbc.Table.v1215.LightParamsLightShaft : DbcTable
---@field [integer] dbc.row.v1215.LightParamsLightShaft
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.LightParamsLightShaft
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.LightParamsLightShaft|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.LightParamsLightShaft
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.LightParamsLightShaft>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.LightParamsLightShaft[]
function tbl:GetByRelation(foreign_id) end

return {}
