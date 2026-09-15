---@meta
-- Generated LuaLS annotations for WorldMapContinent (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of WorldMapContinent in build 3.3.5.12340.
---@class dbc.row.v335.WorldMapContinent : RowProxy
---@field ID integer
---@field MapID integer
---@field LeftBoundary integer
---@field RightBoundary integer
---@field TopBoundary integer
---@field BottomBoundary integer
---@field ContinentOffset number[]
---@field Scale number
---@field TaxiMin number[]
---@field TaxiMax number[]
---@field WorldMapID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.WorldMapContinent self
function row:SetID(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v335.WorldMapContinent self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v335.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v335.Map
function row:CreateRelated(data) end

---Gets the value of field 'LeftBoundary'.
---@return integer value
function row:GetLeftBoundary() end

---Sets the value of field 'LeftBoundary'.
---@param value integer
---@return dbc.row.v335.WorldMapContinent self
function row:SetLeftBoundary(value) end

---Gets the value of field 'RightBoundary'.
---@return integer value
function row:GetRightBoundary() end

---Sets the value of field 'RightBoundary'.
---@param value integer
---@return dbc.row.v335.WorldMapContinent self
function row:SetRightBoundary(value) end

---Gets the value of field 'TopBoundary'.
---@return integer value
function row:GetTopBoundary() end

---Sets the value of field 'TopBoundary'.
---@param value integer
---@return dbc.row.v335.WorldMapContinent self
function row:SetTopBoundary(value) end

---Gets the value of field 'BottomBoundary'.
---@return integer value
function row:GetBottomBoundary() end

---Sets the value of field 'BottomBoundary'.
---@param value integer
---@return dbc.row.v335.WorldMapContinent self
function row:SetBottomBoundary(value) end

---Gets the value of field 'ContinentOffset'.
---@return number[] value
function row:GetContinentOffset() end

---Sets the value of field 'ContinentOffset'.
---@param value number[]
---@return dbc.row.v335.WorldMapContinent self
function row:SetContinentOffset(value) end

---Gets element at 1-based index in 'ContinentOffset'.
---@param index integer
---@return number value
function row:GetContinentOffsetItem(index) end

---Gets the value of field 'Scale'.
---@return number value
function row:GetScale() end

---Sets the value of field 'Scale'.
---@param value number
---@return dbc.row.v335.WorldMapContinent self
function row:SetScale(value) end

---Gets the value of field 'TaxiMin'.
---@return number[] value
function row:GetTaxiMin() end

---Sets the value of field 'TaxiMin'.
---@param value number[]
---@return dbc.row.v335.WorldMapContinent self
function row:SetTaxiMin(value) end

---Gets element at 1-based index in 'TaxiMin'.
---@param index integer
---@return number value
function row:GetTaxiMinItem(index) end

---Gets the value of field 'TaxiMax'.
---@return number[] value
function row:GetTaxiMax() end

---Sets the value of field 'TaxiMax'.
---@param value number[]
---@return dbc.row.v335.WorldMapContinent self
function row:SetTaxiMax(value) end

---Gets element at 1-based index in 'TaxiMax'.
---@param index integer
---@return number value
function row:GetTaxiMaxItem(index) end

---Gets the value of field 'WorldMapID'.
---@return integer value
function row:GetWorldMapID() end

---Sets the value of field 'WorldMapID'.
---@param value integer
---@return dbc.row.v335.WorldMapContinent self
function row:SetWorldMapID(value) end

---Navigates foreign relationship to 'WorldMapArea' via 'WorldMapID'.
---@return dbc.row.v335.WorldMapArea|nil
function row:GetWorldMap() end

---Creates a related 'WorldMapArea' row and automatically links 'WorldMapID'.
---@param data? table
---@return dbc.row.v335.WorldMapArea
function row:CreateRelated(data) end

---Table container for WorldMapContinent (Build 3.3.5.12340).
---@class dbc.Table.v335.WorldMapContinent : DbcTable
---@field [integer] dbc.row.v335.WorldMapContinent
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.WorldMapContinent
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.WorldMapContinent|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.WorldMapContinent
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.WorldMapContinent>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.WorldMapContinent[]
function tbl:GetByRelation(foreign_id) end

return {}
