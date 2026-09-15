---@meta
-- Generated LuaLS annotations for UiMapFogOfWarVisualization (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiMapFogOfWarVisualization in build 12.1.5.69594.
---@class dbc.row.v1215.UiMapFogOfWarVisualization : RowProxy
---@field ID integer
---@field BackgroundAtlasID integer
---@field MaskAtlasID integer
---@field MaskScalar number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiMapFogOfWarVisualization self
function row:SetID(value) end

---Gets the value of field 'BackgroundAtlasID'.
---@return integer value
function row:GetBackgroundAtlasID() end

---Sets the value of field 'BackgroundAtlasID'.
---@param value integer
---@return dbc.row.v1215.UiMapFogOfWarVisualization self
function row:SetBackgroundAtlasID(value) end

---Navigates foreign relationship to 'BackgroundAtlas' via 'BackgroundAtlasID'.
---@return dbc.row.v1215.BackgroundAtlas|nil
function row:GetBackgroundAtlas() end

---Creates a related 'BackgroundAtlas' row and automatically links 'BackgroundAtlasID'.
---@param data? table
---@return dbc.row.v1215.BackgroundAtlas
function row:CreateRelated(data) end

---Gets the value of field 'MaskAtlasID'.
---@return integer value
function row:GetMaskAtlasID() end

---Sets the value of field 'MaskAtlasID'.
---@param value integer
---@return dbc.row.v1215.UiMapFogOfWarVisualization self
function row:SetMaskAtlasID(value) end

---Navigates foreign relationship to 'MaskAtlas' via 'MaskAtlasID'.
---@return dbc.row.v1215.MaskAtlas|nil
function row:GetMaskAtlas() end

---Creates a related 'MaskAtlas' row and automatically links 'MaskAtlasID'.
---@param data? table
---@return dbc.row.v1215.MaskAtlas
function row:CreateRelated(data) end

---Gets the value of field 'MaskScalar'.
---@return number value
function row:GetMaskScalar() end

---Sets the value of field 'MaskScalar'.
---@param value number
---@return dbc.row.v1215.UiMapFogOfWarVisualization self
function row:SetMaskScalar(value) end

---Table container for UiMapFogOfWarVisualization (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiMapFogOfWarVisualization : DbcTable
---@field [integer] dbc.row.v1215.UiMapFogOfWarVisualization
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiMapFogOfWarVisualization
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiMapFogOfWarVisualization|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiMapFogOfWarVisualization
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiMapFogOfWarVisualization>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiMapFogOfWarVisualization[]
function tbl:GetByRelation(foreign_id) end

return {}
