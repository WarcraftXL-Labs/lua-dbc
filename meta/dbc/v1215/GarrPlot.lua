---@meta
-- Generated LuaLS annotations for GarrPlot (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrPlot in build 12.1.5.69594.
---@class dbc.row.v1215.GarrPlot : RowProxy
---@field ID integer
---@field Name string
---@field PlotType integer
---@field HordeConstructObjID integer
---@field AllianceConstructObjID integer
---@field Flags integer
---@field UpgradeRequirement integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrPlot self
function row:SetID(value) end

---Gets the value of field 'Name'.
---@return string value
function row:GetName() end

---Sets the value of field 'Name'.
---@param value string
---@return dbc.row.v1215.GarrPlot self
function row:SetName(value) end

---Gets the value of field 'PlotType'.
---@return integer value
function row:GetPlotType() end

---Sets the value of field 'PlotType'.
---@param value integer
---@return dbc.row.v1215.GarrPlot self
function row:SetPlotType(value) end

---Gets the value of field 'HordeConstructObjID'.
---@return integer value
function row:GetHordeConstructObjID() end

---Sets the value of field 'HordeConstructObjID'.
---@param value integer
---@return dbc.row.v1215.GarrPlot self
function row:SetHordeConstructObjID(value) end

---Navigates foreign relationship to 'GameObjects' via 'HordeConstructObjID'.
---@return dbc.row.v1215.GameObjects|nil
function row:GetHordeConstructObj() end

---Creates a related 'GameObjects' row and automatically links 'HordeConstructObjID'.
---@param data? table
---@return dbc.row.v1215.GameObjects
function row:CreateRelated(data) end

---Gets the value of field 'AllianceConstructObjID'.
---@return integer value
function row:GetAllianceConstructObjID() end

---Sets the value of field 'AllianceConstructObjID'.
---@param value integer
---@return dbc.row.v1215.GarrPlot self
function row:SetAllianceConstructObjID(value) end

---Navigates foreign relationship to 'GameObjects' via 'AllianceConstructObjID'.
---@return dbc.row.v1215.GameObjects|nil
function row:GetAllianceConstructObj() end

---Creates a related 'GameObjects' row and automatically links 'AllianceConstructObjID'.
---@param data? table
---@return dbc.row.v1215.GameObjects
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.GarrPlot self
function row:SetFlags(value) end

---Gets the value of field 'UpgradeRequirement'.
---@return integer[] value
function row:GetUpgradeRequirement() end

---Sets the value of field 'UpgradeRequirement'.
---@param value integer[]
---@return dbc.row.v1215.GarrPlot self
function row:SetUpgradeRequirement(value) end

---Gets element at 1-based index in 'UpgradeRequirement'.
---@param index integer
---@return integer value
function row:GetUpgradeRequirementItem(index) end

---Table container for GarrPlot (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrPlot : DbcTable
---@field [integer] dbc.row.v1215.GarrPlot
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrPlot
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrPlot|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrPlot
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrPlot>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrPlot[]
function tbl:GetByRelation(foreign_id) end

return {}
