---@meta
-- Generated LuaLS annotations for UiMapArt (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiMapArt in build 12.1.5.69594.
---@class dbc.row.v1215.UiMapArt : RowProxy
---@field ID integer
---@field HighlightFileDataID integer
---@field HighlightAtlasID integer
---@field UiMapArtStyleID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiMapArt self
function row:SetID(value) end

---Gets the value of field 'HighlightFileDataID'.
---@return integer value
function row:GetHighlightFileDataID() end

---Sets the value of field 'HighlightFileDataID'.
---@param value integer
---@return dbc.row.v1215.UiMapArt self
function row:SetHighlightFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'HighlightFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetHighlightFileData() end

---Creates a related 'FileData' row and automatically links 'HighlightFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'HighlightAtlasID'.
---@return integer value
function row:GetHighlightAtlasID() end

---Sets the value of field 'HighlightAtlasID'.
---@param value integer
---@return dbc.row.v1215.UiMapArt self
function row:SetHighlightAtlasID(value) end

---Navigates foreign relationship to 'UiTextureAtlasMember' via 'HighlightAtlasID'.
---@return dbc.row.v1215.UiTextureAtlasMember|nil
function row:GetHighlightAtlas() end

---Creates a related 'UiTextureAtlasMember' row and automatically links 'HighlightAtlasID'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasMember
function row:CreateRelated(data) end

---Gets the value of field 'UiMapArtStyleID'.
---@return integer value
function row:GetUiMapArtStyleID() end

---Sets the value of field 'UiMapArtStyleID'.
---@param value integer
---@return dbc.row.v1215.UiMapArt self
function row:SetUiMapArtStyleID(value) end

---Navigates foreign relationship to 'UiMapArtStyle' via 'UiMapArtStyleID'.
---@return dbc.row.v1215.UiMapArtStyle|nil
function row:GetUiMapArtStyle() end

---Creates a related 'UiMapArtStyle' row and automatically links 'UiMapArtStyleID'.
---@param data? table
---@return dbc.row.v1215.UiMapArtStyle
function row:CreateRelated(data) end

---Table container for UiMapArt (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiMapArt : DbcTable
---@field [integer] dbc.row.v1215.UiMapArt
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiMapArt
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiMapArt|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiMapArt
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiMapArt>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiMapArt[]
function tbl:GetByRelation(foreign_id) end

return {}
