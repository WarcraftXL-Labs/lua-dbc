---@meta
-- Generated LuaLS annotations for AltMinimapFiledata (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AltMinimapFiledata in build 12.1.5.69594.
---@class dbc.row.v1215.AltMinimapFiledata : RowProxy
---@field ID integer
---@field AltMinimapID integer
---@field TileX integer
---@field TileY integer
---@field FileDataID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AltMinimapFiledata self
function row:SetID(value) end

---Gets the value of field 'AltMinimapID'.
---@return integer value
function row:GetAltMinimapID() end

---Sets the value of field 'AltMinimapID'.
---@param value integer
---@return dbc.row.v1215.AltMinimapFiledata self
function row:SetAltMinimapID(value) end

---Navigates foreign relationship to 'AltMinimap' via 'AltMinimapID'.
---@return dbc.row.v1215.AltMinimap|nil
function row:GetAltMinimap() end

---Creates a related 'AltMinimap' row and automatically links 'AltMinimapID'.
---@param data? table
---@return dbc.row.v1215.AltMinimap
function row:CreateRelated(data) end

---Gets the value of field 'TileX'.
---@return integer value
function row:GetTileX() end

---Sets the value of field 'TileX'.
---@param value integer
---@return dbc.row.v1215.AltMinimapFiledata self
function row:SetTileX(value) end

---Gets the value of field 'TileY'.
---@return integer value
function row:GetTileY() end

---Sets the value of field 'TileY'.
---@param value integer
---@return dbc.row.v1215.AltMinimapFiledata self
function row:SetTileY(value) end

---Gets the value of field 'FileDataID'.
---@return integer value
function row:GetFileDataID() end

---Sets the value of field 'FileDataID'.
---@param value integer
---@return dbc.row.v1215.AltMinimapFiledata self
function row:SetFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'FileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFileData() end

---Creates a related 'FileData' row and automatically links 'FileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Table container for AltMinimapFiledata (Build 12.1.5.69594).
---@class dbc.Table.v1215.AltMinimapFiledata : DbcTable
---@field [integer] dbc.row.v1215.AltMinimapFiledata
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AltMinimapFiledata
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AltMinimapFiledata|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AltMinimapFiledata
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AltMinimapFiledata>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AltMinimapFiledata[]
function tbl:GetByRelation(foreign_id) end

return {}
