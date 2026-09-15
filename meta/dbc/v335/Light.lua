---@meta
-- Generated LuaLS annotations for Light (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of Light in build 3.3.5.12340.
---@class dbc.row.v335.Light : RowProxy
---@field ID integer
---@field ContinentID integer
---@field GameCoords number[]
---@field GameFalloffStart number
---@field GameFalloffEnd number
---@field LightParamsID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.Light self
function row:SetID(value) end

---Gets the value of field 'ContinentID'.
---@return integer value
function row:GetContinentID() end

---Sets the value of field 'ContinentID'.
---@param value integer
---@return dbc.row.v335.Light self
function row:SetContinentID(value) end

---Navigates foreign relationship to 'Map' via 'ContinentID'.
---@return dbc.row.v335.Map|nil
function row:GetContinent() end

---Creates a related 'Map' row and automatically links 'ContinentID'.
---@param data? table
---@return dbc.row.v335.Map
function row:CreateRelated(data) end

---Gets the value of field 'GameCoords'.
---@return number[] value
function row:GetGameCoords() end

---Sets the value of field 'GameCoords'.
---@param value number[]
---@return dbc.row.v335.Light self
function row:SetGameCoords(value) end

---Gets element at 1-based index in 'GameCoords'.
---@param index integer
---@return number value
function row:GetGameCoordsItem(index) end

---Gets the value of field 'GameFalloffStart'.
---@return number value
function row:GetGameFalloffStart() end

---Sets the value of field 'GameFalloffStart'.
---@param value number
---@return dbc.row.v335.Light self
function row:SetGameFalloffStart(value) end

---Gets the value of field 'GameFalloffEnd'.
---@return number value
function row:GetGameFalloffEnd() end

---Sets the value of field 'GameFalloffEnd'.
---@param value number
---@return dbc.row.v335.Light self
function row:SetGameFalloffEnd(value) end

---Gets the value of field 'LightParamsID'.
---@return integer[] value
function row:GetLightParamsID() end

---Sets the value of field 'LightParamsID'.
---@param value integer[]
---@return dbc.row.v335.Light self
function row:SetLightParamsID(value) end

---Gets element at 1-based index in 'LightParamsID'.
---@param index integer
---@return integer value
function row:GetLightParamsIDItem(index) end

---Navigates foreign relationship to 'LightParams' via 'LightParamsID'.
---@return dbc.row.v335.LightParams|nil
function row:GetLightParams() end

---Creates a related 'LightParams' row and automatically links 'LightParamsID'.
---@param data? table
---@return dbc.row.v335.LightParams
function row:CreateRelated(data) end

---Table container for Light (Build 3.3.5.12340).
---@class dbc.Table.v335.Light : DbcTable
---@field [integer] dbc.row.v335.Light
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.Light
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.Light|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.Light
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.Light>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.Light[]
function tbl:GetByRelation(foreign_id) end

return {}
