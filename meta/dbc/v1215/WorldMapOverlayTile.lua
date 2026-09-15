---@meta
-- Generated LuaLS annotations for WorldMapOverlayTile (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of WorldMapOverlayTile in build 12.1.5.69594.
---@class dbc.row.v1215.WorldMapOverlayTile : RowProxy
---@field ID integer
---@field RowIndex integer
---@field ColIndex integer
---@field LayerIndex integer
---@field FileDataID integer
---@field WorldMapOverlayID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.WorldMapOverlayTile self
function row:SetID(value) end

---Gets the value of field 'RowIndex'.
---@return integer value
function row:GetRowIndex() end

---Sets the value of field 'RowIndex'.
---@param value integer
---@return dbc.row.v1215.WorldMapOverlayTile self
function row:SetRowIndex(value) end

---Gets the value of field 'ColIndex'.
---@return integer value
function row:GetColIndex() end

---Sets the value of field 'ColIndex'.
---@param value integer
---@return dbc.row.v1215.WorldMapOverlayTile self
function row:SetColIndex(value) end

---Gets the value of field 'LayerIndex'.
---@return integer value
function row:GetLayerIndex() end

---Sets the value of field 'LayerIndex'.
---@param value integer
---@return dbc.row.v1215.WorldMapOverlayTile self
function row:SetLayerIndex(value) end

---Gets the value of field 'FileDataID'.
---@return integer value
function row:GetFileDataID() end

---Sets the value of field 'FileDataID'.
---@param value integer
---@return dbc.row.v1215.WorldMapOverlayTile self
function row:SetFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'FileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFileData() end

---Creates a related 'FileData' row and automatically links 'FileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'WorldMapOverlayID'.
---@return integer value
function row:GetWorldMapOverlayID() end

---Sets the value of field 'WorldMapOverlayID'.
---@param value integer
---@return dbc.row.v1215.WorldMapOverlayTile self
function row:SetWorldMapOverlayID(value) end

---Navigates foreign relationship to 'WorldMapOverlay' via 'WorldMapOverlayID'.
---@return dbc.row.v1215.WorldMapOverlay|nil
function row:GetWorldMapOverlay() end

---Creates a related 'WorldMapOverlay' row and automatically links 'WorldMapOverlayID'.
---@param data? table
---@return dbc.row.v1215.WorldMapOverlay
function row:CreateRelated(data) end

---Table container for WorldMapOverlayTile (Build 12.1.5.69594).
---@class dbc.Table.v1215.WorldMapOverlayTile : DbcTable
---@field [integer] dbc.row.v1215.WorldMapOverlayTile
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.WorldMapOverlayTile
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.WorldMapOverlayTile|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.WorldMapOverlayTile
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.WorldMapOverlayTile>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.WorldMapOverlayTile[]
function tbl:GetByRelation(foreign_id) end

return {}
