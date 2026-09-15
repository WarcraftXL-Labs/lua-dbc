---@meta
-- Generated LuaLS annotations for UiTextureAtlas (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiTextureAtlas in build 12.1.5.69594.
---@class dbc.row.v1215.UiTextureAtlas : RowProxy
---@field ID integer
---@field FileDataID integer
---@field AtlasWidth integer
---@field AtlasHeight integer
---@field UiCanvasID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiTextureAtlas self
function row:SetID(value) end

---Gets the value of field 'FileDataID'.
---@return integer value
function row:GetFileDataID() end

---Sets the value of field 'FileDataID'.
---@param value integer
---@return dbc.row.v1215.UiTextureAtlas self
function row:SetFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'FileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFileData() end

---Creates a related 'FileData' row and automatically links 'FileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'AtlasWidth'.
---@return integer value
function row:GetAtlasWidth() end

---Sets the value of field 'AtlasWidth'.
---@param value integer
---@return dbc.row.v1215.UiTextureAtlas self
function row:SetAtlasWidth(value) end

---Gets the value of field 'AtlasHeight'.
---@return integer value
function row:GetAtlasHeight() end

---Sets the value of field 'AtlasHeight'.
---@param value integer
---@return dbc.row.v1215.UiTextureAtlas self
function row:SetAtlasHeight(value) end

---Gets the value of field 'UiCanvasID'.
---@return integer value
function row:GetUiCanvasID() end

---Sets the value of field 'UiCanvasID'.
---@param value integer
---@return dbc.row.v1215.UiTextureAtlas self
function row:SetUiCanvasID(value) end

---Navigates foreign relationship to 'UiCanvas' via 'UiCanvasID'.
---@return dbc.row.v1215.UiCanvas|nil
function row:GetUiCanvas() end

---Creates a related 'UiCanvas' row and automatically links 'UiCanvasID'.
---@param data? table
---@return dbc.row.v1215.UiCanvas
function row:CreateRelated(data) end

---Table container for UiTextureAtlas (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiTextureAtlas : DbcTable
---@field [integer] dbc.row.v1215.UiTextureAtlas
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiTextureAtlas
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiTextureAtlas|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiTextureAtlas
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiTextureAtlas>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiTextureAtlas[]
function tbl:GetByRelation(foreign_id) end

return {}
