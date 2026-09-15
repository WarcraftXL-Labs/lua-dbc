---@meta
-- Generated LuaLS annotations for GarrPlotBuilding (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrPlotBuilding in build 12.1.5.69594.
---@class dbc.row.v1215.GarrPlotBuilding : RowProxy
---@field ID integer
---@field GarrPlotID integer
---@field GarrBuildingID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrPlotBuilding self
function row:SetID(value) end

---Gets the value of field 'GarrPlotID'.
---@return integer value
function row:GetGarrPlotID() end

---Sets the value of field 'GarrPlotID'.
---@param value integer
---@return dbc.row.v1215.GarrPlotBuilding self
function row:SetGarrPlotID(value) end

---Navigates foreign relationship to 'GarrPlot' via 'GarrPlotID'.
---@return dbc.row.v1215.GarrPlot|nil
function row:GetGarrPlot() end

---Creates a related 'GarrPlot' row and automatically links 'GarrPlotID'.
---@param data? table
---@return dbc.row.v1215.GarrPlot
function row:CreateRelated(data) end

---Gets the value of field 'GarrBuildingID'.
---@return integer value
function row:GetGarrBuildingID() end

---Sets the value of field 'GarrBuildingID'.
---@param value integer
---@return dbc.row.v1215.GarrPlotBuilding self
function row:SetGarrBuildingID(value) end

---Navigates foreign relationship to 'GarrBuilding' via 'GarrBuildingID'.
---@return dbc.row.v1215.GarrBuilding|nil
function row:GetGarrBuilding() end

---Creates a related 'GarrBuilding' row and automatically links 'GarrBuildingID'.
---@param data? table
---@return dbc.row.v1215.GarrBuilding
function row:CreateRelated(data) end

---Table container for GarrPlotBuilding (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrPlotBuilding : DbcTable
---@field [integer] dbc.row.v1215.GarrPlotBuilding
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrPlotBuilding
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrPlotBuilding|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrPlotBuilding
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrPlotBuilding>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrPlotBuilding[]
function tbl:GetByRelation(foreign_id) end

return {}
