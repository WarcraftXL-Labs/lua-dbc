---@meta
-- Generated LuaLS annotations for GarrPlotUICategory (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrPlotUICategory in build 12.1.5.69594.
---@class dbc.row.v1215.GarrPlotUICategory : RowProxy
---@field ID integer
---@field CategoryName_lang string
---@field PlotType integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrPlotUICategory self
function row:SetID(value) end

---Gets the value of field 'CategoryName_lang'.
---@return string value
function row:GetCategoryName_lang() end

---Sets the value of field 'CategoryName_lang'.
---@param value string
---@return dbc.row.v1215.GarrPlotUICategory self
function row:SetCategoryName_lang(value) end

---Gets the value of field 'PlotType'.
---@return integer value
function row:GetPlotType() end

---Sets the value of field 'PlotType'.
---@param value integer
---@return dbc.row.v1215.GarrPlotUICategory self
function row:SetPlotType(value) end

---Table container for GarrPlotUICategory (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrPlotUICategory : DbcTable
---@field [integer] dbc.row.v1215.GarrPlotUICategory
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrPlotUICategory
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrPlotUICategory|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrPlotUICategory
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrPlotUICategory>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrPlotUICategory[]
function tbl:GetByRelation(foreign_id) end

return {}
