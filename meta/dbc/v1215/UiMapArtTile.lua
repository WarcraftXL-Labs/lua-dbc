---@meta
-- Generated LuaLS annotations for UiMapArtTile (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiMapArtTile in build 12.1.5.69594.
---@class dbc.row.v1215.UiMapArtTile : RowProxy
---@field ID integer
---@field RowIndex integer
---@field ColIndex integer
---@field LayerIndex integer
---@field FileDataID integer
---@field UiMapArtID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiMapArtTile self
function row:SetID(value) end

---Gets the value of field 'RowIndex'.
---@return integer value
function row:GetRowIndex() end

---Sets the value of field 'RowIndex'.
---@param value integer
---@return dbc.row.v1215.UiMapArtTile self
function row:SetRowIndex(value) end

---Gets the value of field 'ColIndex'.
---@return integer value
function row:GetColIndex() end

---Sets the value of field 'ColIndex'.
---@param value integer
---@return dbc.row.v1215.UiMapArtTile self
function row:SetColIndex(value) end

---Gets the value of field 'LayerIndex'.
---@return integer value
function row:GetLayerIndex() end

---Sets the value of field 'LayerIndex'.
---@param value integer
---@return dbc.row.v1215.UiMapArtTile self
function row:SetLayerIndex(value) end

---Gets the value of field 'FileDataID'.
---@return integer value
function row:GetFileDataID() end

---Sets the value of field 'FileDataID'.
---@param value integer
---@return dbc.row.v1215.UiMapArtTile self
function row:SetFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'FileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFileData() end

---Creates a related 'FileData' row and automatically links 'FileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'UiMapArtID'.
---@return integer value
function row:GetUiMapArtID() end

---Sets the value of field 'UiMapArtID'.
---@param value integer
---@return dbc.row.v1215.UiMapArtTile self
function row:SetUiMapArtID(value) end

---Navigates foreign relationship to 'UiMapArt' via 'UiMapArtID'.
---@return dbc.row.v1215.UiMapArt|nil
function row:GetUiMapArt() end

---Creates a related 'UiMapArt' row and automatically links 'UiMapArtID'.
---@param data? table
---@return dbc.row.v1215.UiMapArt
function row:CreateRelated(data) end

---Table container for UiMapArtTile (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiMapArtTile : DbcTable
---@field [integer] dbc.row.v1215.UiMapArtTile
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiMapArtTile
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiMapArtTile|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiMapArtTile
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiMapArtTile>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiMapArtTile[]
function tbl:GetByRelation(foreign_id) end

return {}
