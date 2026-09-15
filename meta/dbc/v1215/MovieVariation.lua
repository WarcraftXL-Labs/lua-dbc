---@meta
-- Generated LuaLS annotations for MovieVariation (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MovieVariation in build 12.1.5.69594.
---@class dbc.row.v1215.MovieVariation : RowProxy
---@field ID integer
---@field FileDataID integer
---@field OverlayFileDataID integer
---@field MovieID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MovieVariation self
function row:SetID(value) end

---Gets the value of field 'FileDataID'.
---@return integer value
function row:GetFileDataID() end

---Sets the value of field 'FileDataID'.
---@param value integer
---@return dbc.row.v1215.MovieVariation self
function row:SetFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'FileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFileData() end

---Creates a related 'FileData' row and automatically links 'FileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'OverlayFileDataID'.
---@return integer value
function row:GetOverlayFileDataID() end

---Sets the value of field 'OverlayFileDataID'.
---@param value integer
---@return dbc.row.v1215.MovieVariation self
function row:SetOverlayFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'OverlayFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetOverlayFileData() end

---Creates a related 'FileData' row and automatically links 'OverlayFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'MovieID'.
---@return integer value
function row:GetMovieID() end

---Sets the value of field 'MovieID'.
---@param value integer
---@return dbc.row.v1215.MovieVariation self
function row:SetMovieID(value) end

---Navigates foreign relationship to 'Movie' via 'MovieID'.
---@return dbc.row.v1215.Movie|nil
function row:GetMovie() end

---Creates a related 'Movie' row and automatically links 'MovieID'.
---@param data? table
---@return dbc.row.v1215.Movie
function row:CreateRelated(data) end

---Table container for MovieVariation (Build 12.1.5.69594).
---@class dbc.Table.v1215.MovieVariation : DbcTable
---@field [integer] dbc.row.v1215.MovieVariation
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MovieVariation
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MovieVariation|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MovieVariation
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MovieVariation>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MovieVariation[]
function tbl:GetByRelation(foreign_id) end

return {}
