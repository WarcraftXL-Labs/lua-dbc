---@meta
-- Generated LuaLS annotations for GarrSiteLevelPlotInst (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrSiteLevelPlotInst in build 12.1.5.69594.
---@class dbc.row.v1215.GarrSiteLevelPlotInst : RowProxy
---@field ID integer
---@field UiMarkerPos number[]
---@field GarrSiteLevelID integer
---@field GarrPlotInstanceID integer
---@field UiMarkerSize integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrSiteLevelPlotInst self
function row:SetID(value) end

---Gets the value of field 'UiMarkerPos'.
---@return number[] value
function row:GetUiMarkerPos() end

---Sets the value of field 'UiMarkerPos'.
---@param value number[]
---@return dbc.row.v1215.GarrSiteLevelPlotInst self
function row:SetUiMarkerPos(value) end

---Gets element at 1-based index in 'UiMarkerPos'.
---@param index integer
---@return number value
function row:GetUiMarkerPosItem(index) end

---Gets the value of field 'GarrSiteLevelID'.
---@return integer value
function row:GetGarrSiteLevelID() end

---Sets the value of field 'GarrSiteLevelID'.
---@param value integer
---@return dbc.row.v1215.GarrSiteLevelPlotInst self
function row:SetGarrSiteLevelID(value) end

---Navigates foreign relationship to 'GarrSiteLevel' via 'GarrSiteLevelID'.
---@return dbc.row.v1215.GarrSiteLevel|nil
function row:GetGarrSiteLevel() end

---Creates a related 'GarrSiteLevel' row and automatically links 'GarrSiteLevelID'.
---@param data? table
---@return dbc.row.v1215.GarrSiteLevel
function row:CreateRelated(data) end

---Gets the value of field 'GarrPlotInstanceID'.
---@return integer value
function row:GetGarrPlotInstanceID() end

---Sets the value of field 'GarrPlotInstanceID'.
---@param value integer
---@return dbc.row.v1215.GarrSiteLevelPlotInst self
function row:SetGarrPlotInstanceID(value) end

---Navigates foreign relationship to 'GarrPlotInstance' via 'GarrPlotInstanceID'.
---@return dbc.row.v1215.GarrPlotInstance|nil
function row:GetGarrPlotInstance() end

---Creates a related 'GarrPlotInstance' row and automatically links 'GarrPlotInstanceID'.
---@param data? table
---@return dbc.row.v1215.GarrPlotInstance
function row:CreateRelated(data) end

---Gets the value of field 'UiMarkerSize'.
---@return integer value
function row:GetUiMarkerSize() end

---Sets the value of field 'UiMarkerSize'.
---@param value integer
---@return dbc.row.v1215.GarrSiteLevelPlotInst self
function row:SetUiMarkerSize(value) end

---Table container for GarrSiteLevelPlotInst (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrSiteLevelPlotInst : DbcTable
---@field [integer] dbc.row.v1215.GarrSiteLevelPlotInst
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrSiteLevelPlotInst
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrSiteLevelPlotInst|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrSiteLevelPlotInst
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrSiteLevelPlotInst>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrSiteLevelPlotInst[]
function tbl:GetByRelation(foreign_id) end

return {}
