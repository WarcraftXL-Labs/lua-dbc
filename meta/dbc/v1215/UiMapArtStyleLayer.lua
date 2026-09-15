---@meta
-- Generated LuaLS annotations for UiMapArtStyleLayer (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiMapArtStyleLayer in build 12.1.5.69594.
---@class dbc.row.v1215.UiMapArtStyleLayer : RowProxy
---@field ID integer
---@field LayerIndex integer
---@field LayerWidth integer
---@field LayerHeight integer
---@field TileWidth integer
---@field TileHeight integer
---@field MinScale number
---@field MaxScale number
---@field AdditionalZoomSteps integer
---@field UiMapArtStyleID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiMapArtStyleLayer self
function row:SetID(value) end

---Gets the value of field 'LayerIndex'.
---@return integer value
function row:GetLayerIndex() end

---Sets the value of field 'LayerIndex'.
---@param value integer
---@return dbc.row.v1215.UiMapArtStyleLayer self
function row:SetLayerIndex(value) end

---Gets the value of field 'LayerWidth'.
---@return integer value
function row:GetLayerWidth() end

---Sets the value of field 'LayerWidth'.
---@param value integer
---@return dbc.row.v1215.UiMapArtStyleLayer self
function row:SetLayerWidth(value) end

---Gets the value of field 'LayerHeight'.
---@return integer value
function row:GetLayerHeight() end

---Sets the value of field 'LayerHeight'.
---@param value integer
---@return dbc.row.v1215.UiMapArtStyleLayer self
function row:SetLayerHeight(value) end

---Gets the value of field 'TileWidth'.
---@return integer value
function row:GetTileWidth() end

---Sets the value of field 'TileWidth'.
---@param value integer
---@return dbc.row.v1215.UiMapArtStyleLayer self
function row:SetTileWidth(value) end

---Gets the value of field 'TileHeight'.
---@return integer value
function row:GetTileHeight() end

---Sets the value of field 'TileHeight'.
---@param value integer
---@return dbc.row.v1215.UiMapArtStyleLayer self
function row:SetTileHeight(value) end

---Gets the value of field 'MinScale'.
---@return number value
function row:GetMinScale() end

---Sets the value of field 'MinScale'.
---@param value number
---@return dbc.row.v1215.UiMapArtStyleLayer self
function row:SetMinScale(value) end

---Gets the value of field 'MaxScale'.
---@return number value
function row:GetMaxScale() end

---Sets the value of field 'MaxScale'.
---@param value number
---@return dbc.row.v1215.UiMapArtStyleLayer self
function row:SetMaxScale(value) end

---Gets the value of field 'AdditionalZoomSteps'.
---@return integer value
function row:GetAdditionalZoomSteps() end

---Sets the value of field 'AdditionalZoomSteps'.
---@param value integer
---@return dbc.row.v1215.UiMapArtStyleLayer self
function row:SetAdditionalZoomSteps(value) end

---Gets the value of field 'UiMapArtStyleID'.
---@return integer value
function row:GetUiMapArtStyleID() end

---Sets the value of field 'UiMapArtStyleID'.
---@param value integer
---@return dbc.row.v1215.UiMapArtStyleLayer self
function row:SetUiMapArtStyleID(value) end

---Navigates foreign relationship to 'UiMapArtStyle' via 'UiMapArtStyleID'.
---@return dbc.row.v1215.UiMapArtStyle|nil
function row:GetUiMapArtStyle() end

---Creates a related 'UiMapArtStyle' row and automatically links 'UiMapArtStyleID'.
---@param data? table
---@return dbc.row.v1215.UiMapArtStyle
function row:CreateRelated(data) end

---Table container for UiMapArtStyleLayer (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiMapArtStyleLayer : DbcTable
---@field [integer] dbc.row.v1215.UiMapArtStyleLayer
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiMapArtStyleLayer
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiMapArtStyleLayer|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiMapArtStyleLayer
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiMapArtStyleLayer>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiMapArtStyleLayer[]
function tbl:GetByRelation(foreign_id) end

return {}
