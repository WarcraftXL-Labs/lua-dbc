---@meta
-- Generated LuaLS annotations for GarrBuildingPlotInst (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrBuildingPlotInst in build 12.1.5.69594.
---@class dbc.row.v1215.GarrBuildingPlotInst : RowProxy
---@field MapOffset number[]
---@field ID integer
---@field GarrBuildingID integer
---@field GarrSiteLevelPlotInstID integer
---@field UiTextureAtlasMemberID integer

local row = {}

---Gets the value of field 'MapOffset'.
---@return number[] value
function row:GetMapOffset() end

---Sets the value of field 'MapOffset'.
---@param value number[]
---@return dbc.row.v1215.GarrBuildingPlotInst self
function row:SetMapOffset(value) end

---Gets element at 1-based index in 'MapOffset'.
---@param index integer
---@return number value
function row:GetMapOffsetItem(index) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrBuildingPlotInst self
function row:SetID(value) end

---Gets the value of field 'GarrBuildingID'.
---@return integer value
function row:GetGarrBuildingID() end

---Sets the value of field 'GarrBuildingID'.
---@param value integer
---@return dbc.row.v1215.GarrBuildingPlotInst self
function row:SetGarrBuildingID(value) end

---Navigates foreign relationship to 'GarrBuilding' via 'GarrBuildingID'.
---@return dbc.row.v1215.GarrBuilding|nil
function row:GetGarrBuilding() end

---Creates a related 'GarrBuilding' row and automatically links 'GarrBuildingID'.
---@param data? table
---@return dbc.row.v1215.GarrBuilding
function row:CreateRelated(data) end

---Gets the value of field 'GarrSiteLevelPlotInstID'.
---@return integer value
function row:GetGarrSiteLevelPlotInstID() end

---Sets the value of field 'GarrSiteLevelPlotInstID'.
---@param value integer
---@return dbc.row.v1215.GarrBuildingPlotInst self
function row:SetGarrSiteLevelPlotInstID(value) end

---Navigates foreign relationship to 'GarrSiteLevelPlotInst' via 'GarrSiteLevelPlotInstID'.
---@return dbc.row.v1215.GarrSiteLevelPlotInst|nil
function row:GetGarrSiteLevelPlotInst() end

---Creates a related 'GarrSiteLevelPlotInst' row and automatically links 'GarrSiteLevelPlotInstID'.
---@param data? table
---@return dbc.row.v1215.GarrSiteLevelPlotInst
function row:CreateRelated(data) end

---Gets the value of field 'UiTextureAtlasMemberID'.
---@return integer value
function row:GetUiTextureAtlasMemberID() end

---Sets the value of field 'UiTextureAtlasMemberID'.
---@param value integer
---@return dbc.row.v1215.GarrBuildingPlotInst self
function row:SetUiTextureAtlasMemberID(value) end

---Navigates foreign relationship to 'UiTextureAtlasMember' via 'UiTextureAtlasMemberID'.
---@return dbc.row.v1215.UiTextureAtlasMember|nil
function row:GetUiTextureAtlasMember() end

---Creates a related 'UiTextureAtlasMember' row and automatically links 'UiTextureAtlasMemberID'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasMember
function row:CreateRelated(data) end

---Table container for GarrBuildingPlotInst (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrBuildingPlotInst : DbcTable
---@field [integer] dbc.row.v1215.GarrBuildingPlotInst
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrBuildingPlotInst
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrBuildingPlotInst|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrBuildingPlotInst
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrBuildingPlotInst>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrBuildingPlotInst[]
function tbl:GetByRelation(foreign_id) end

return {}
