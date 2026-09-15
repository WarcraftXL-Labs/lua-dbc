---@meta
-- Generated LuaLS annotations for NeighborhoodPlot (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of NeighborhoodPlot in build 12.1.5.69594.
---@class dbc.row.v1215.NeighborhoodPlot : RowProxy
---@field Cost integer
---@field Name string
---@field Field_12_0_0_63534_004 number[]
---@field Field_12_0_0_63534_005 number[]
---@field CornerstonePosition number[]
---@field CornerstoneRotation number[]
---@field TeleportPosition number[]
---@field ID integer
---@field NeighborhoodMapID integer
---@field Field_12_0_0_63534_010 integer
---@field CornerstoneGameObjectID integer
---@field PlotIndex integer
---@field WorldState integer
---@field PlotGameObjectID integer
---@field Field_12_0_0_65028_014 number
---@field Field_12_0_0_64741_016 integer

local row = {}

---Gets the value of field 'Cost'.
---@return integer value
function row:GetCost() end

---Sets the value of field 'Cost'.
---@param value integer
---@return dbc.row.v1215.NeighborhoodPlot self
function row:SetCost(value) end

---Gets the value of field 'Name'.
---@return string value
function row:GetName() end

---Sets the value of field 'Name'.
---@param value string
---@return dbc.row.v1215.NeighborhoodPlot self
function row:SetName(value) end

---Gets the value of field 'Field_12_0_0_63534_004'.
---@return number[] value
function row:GetField_12_0_0_63534_004() end

---Sets the value of field 'Field_12_0_0_63534_004'.
---@param value number[]
---@return dbc.row.v1215.NeighborhoodPlot self
function row:SetField_12_0_0_63534_004(value) end

---Gets element at 1-based index in 'Field_12_0_0_63534_004'.
---@param index integer
---@return number value
function row:GetField_12_0_0_63534_004Item(index) end

---Gets the value of field 'Field_12_0_0_63534_005'.
---@return number[] value
function row:GetField_12_0_0_63534_005() end

---Sets the value of field 'Field_12_0_0_63534_005'.
---@param value number[]
---@return dbc.row.v1215.NeighborhoodPlot self
function row:SetField_12_0_0_63534_005(value) end

---Gets element at 1-based index in 'Field_12_0_0_63534_005'.
---@param index integer
---@return number value
function row:GetField_12_0_0_63534_005Item(index) end

---Gets the value of field 'CornerstonePosition'.
---@return number[] value
function row:GetCornerstonePosition() end

---Sets the value of field 'CornerstonePosition'.
---@param value number[]
---@return dbc.row.v1215.NeighborhoodPlot self
function row:SetCornerstonePosition(value) end

---Gets element at 1-based index in 'CornerstonePosition'.
---@param index integer
---@return number value
function row:GetCornerstonePositionItem(index) end

---Gets the value of field 'CornerstoneRotation'.
---@return number[] value
function row:GetCornerstoneRotation() end

---Sets the value of field 'CornerstoneRotation'.
---@param value number[]
---@return dbc.row.v1215.NeighborhoodPlot self
function row:SetCornerstoneRotation(value) end

---Gets element at 1-based index in 'CornerstoneRotation'.
---@param index integer
---@return number value
function row:GetCornerstoneRotationItem(index) end

---Gets the value of field 'TeleportPosition'.
---@return number[] value
function row:GetTeleportPosition() end

---Sets the value of field 'TeleportPosition'.
---@param value number[]
---@return dbc.row.v1215.NeighborhoodPlot self
function row:SetTeleportPosition(value) end

---Gets element at 1-based index in 'TeleportPosition'.
---@param index integer
---@return number value
function row:GetTeleportPositionItem(index) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.NeighborhoodPlot self
function row:SetID(value) end

---Gets the value of field 'NeighborhoodMapID'.
---@return integer value
function row:GetNeighborhoodMapID() end

---Sets the value of field 'NeighborhoodMapID'.
---@param value integer
---@return dbc.row.v1215.NeighborhoodPlot self
function row:SetNeighborhoodMapID(value) end

---Navigates foreign relationship to 'NeighborhoodMap' via 'NeighborhoodMapID'.
---@return dbc.row.v1215.NeighborhoodMap|nil
function row:GetNeighborhoodMap() end

---Creates a related 'NeighborhoodMap' row and automatically links 'NeighborhoodMapID'.
---@param data? table
---@return dbc.row.v1215.NeighborhoodMap
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_0_0_63534_010'.
---@return integer value
function row:GetField_12_0_0_63534_010() end

---Sets the value of field 'Field_12_0_0_63534_010'.
---@param value integer
---@return dbc.row.v1215.NeighborhoodPlot self
function row:SetField_12_0_0_63534_010(value) end

---Gets the value of field 'CornerstoneGameObjectID'.
---@return integer value
function row:GetCornerstoneGameObjectID() end

---Sets the value of field 'CornerstoneGameObjectID'.
---@param value integer
---@return dbc.row.v1215.NeighborhoodPlot self
function row:SetCornerstoneGameObjectID(value) end

---Navigates foreign relationship to 'GameObjects' via 'CornerstoneGameObjectID'.
---@return dbc.row.v1215.GameObjects|nil
function row:GetCornerstoneGameObject() end

---Creates a related 'GameObjects' row and automatically links 'CornerstoneGameObjectID'.
---@param data? table
---@return dbc.row.v1215.GameObjects
function row:CreateRelated(data) end

---Gets the value of field 'PlotIndex'.
---@return integer value
function row:GetPlotIndex() end

---Sets the value of field 'PlotIndex'.
---@param value integer
---@return dbc.row.v1215.NeighborhoodPlot self
function row:SetPlotIndex(value) end

---Gets the value of field 'WorldState'.
---@return integer value
function row:GetWorldState() end

---Sets the value of field 'WorldState'.
---@param value integer
---@return dbc.row.v1215.NeighborhoodPlot self
function row:SetWorldState(value) end

---Gets the value of field 'PlotGameObjectID'.
---@return integer value
function row:GetPlotGameObjectID() end

---Sets the value of field 'PlotGameObjectID'.
---@param value integer
---@return dbc.row.v1215.NeighborhoodPlot self
function row:SetPlotGameObjectID(value) end

---Navigates foreign relationship to 'GameObjects' via 'PlotGameObjectID'.
---@return dbc.row.v1215.GameObjects|nil
function row:GetPlotGameObject() end

---Creates a related 'GameObjects' row and automatically links 'PlotGameObjectID'.
---@param data? table
---@return dbc.row.v1215.GameObjects
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_0_0_65028_014'.
---@return number value
function row:GetField_12_0_0_65028_014() end

---Sets the value of field 'Field_12_0_0_65028_014'.
---@param value number
---@return dbc.row.v1215.NeighborhoodPlot self
function row:SetField_12_0_0_65028_014(value) end

---Gets the value of field 'Field_12_0_0_64741_016'.
---@return integer value
function row:GetField_12_0_0_64741_016() end

---Sets the value of field 'Field_12_0_0_64741_016'.
---@param value integer
---@return dbc.row.v1215.NeighborhoodPlot self
function row:SetField_12_0_0_64741_016(value) end

---Navigates foreign relationship to 'GameObjects' via 'Field_12_0_0_64741_016'.
---@return dbc.row.v1215.GameObjects|nil
function row:GetField_12_0_0_64741_016() end

---Creates a related 'GameObjects' row and automatically links 'Field_12_0_0_64741_016'.
---@param data? table
---@return dbc.row.v1215.GameObjects
function row:CreateRelated(data) end

---Table container for NeighborhoodPlot (Build 12.1.5.69594).
---@class dbc.Table.v1215.NeighborhoodPlot : DbcTable
---@field [integer] dbc.row.v1215.NeighborhoodPlot
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.NeighborhoodPlot
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.NeighborhoodPlot|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.NeighborhoodPlot
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.NeighborhoodPlot>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.NeighborhoodPlot[]
function tbl:GetByRelation(foreign_id) end

return {}
