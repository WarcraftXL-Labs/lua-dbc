---@meta
-- Generated LuaLS annotations for Movie (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Movie in build 12.1.5.69594.
---@class dbc.row.v1215.Movie : RowProxy
---@field ID integer
---@field Summary_lang string
---@field Volume integer
---@field KeyID integer
---@field AudioFileDataID integer
---@field SubtitleFileDataID integer
---@field SubtitleFileFormat integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Movie self
function row:SetID(value) end

---Gets the value of field 'Summary_lang'.
---@return string value
function row:GetSummary_lang() end

---Sets the value of field 'Summary_lang'.
---@param value string
---@return dbc.row.v1215.Movie self
function row:SetSummary_lang(value) end

---Gets the value of field 'Volume'.
---@return integer value
function row:GetVolume() end

---Sets the value of field 'Volume'.
---@param value integer
---@return dbc.row.v1215.Movie self
function row:SetVolume(value) end

---Gets the value of field 'KeyID'.
---@return integer value
function row:GetKeyID() end

---Sets the value of field 'KeyID'.
---@param value integer
---@return dbc.row.v1215.Movie self
function row:SetKeyID(value) end

---Navigates foreign relationship to 'TactKey' via 'KeyID'.
---@return dbc.row.v1215.TactKey|nil
function row:GetKey() end

---Creates a related 'TactKey' row and automatically links 'KeyID'.
---@param data? table
---@return dbc.row.v1215.TactKey
function row:CreateRelated(data) end

---Gets the value of field 'AudioFileDataID'.
---@return integer value
function row:GetAudioFileDataID() end

---Sets the value of field 'AudioFileDataID'.
---@param value integer
---@return dbc.row.v1215.Movie self
function row:SetAudioFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'AudioFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetAudioFileData() end

---Creates a related 'FileData' row and automatically links 'AudioFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'SubtitleFileDataID'.
---@return integer value
function row:GetSubtitleFileDataID() end

---Sets the value of field 'SubtitleFileDataID'.
---@param value integer
---@return dbc.row.v1215.Movie self
function row:SetSubtitleFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'SubtitleFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetSubtitleFileData() end

---Creates a related 'FileData' row and automatically links 'SubtitleFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'SubtitleFileFormat'.
---@return integer value
function row:GetSubtitleFileFormat() end

---Sets the value of field 'SubtitleFileFormat'.
---@param value integer
---@return dbc.row.v1215.Movie self
function row:SetSubtitleFileFormat(value) end

---Table container for Movie (Build 12.1.5.69594).
---@class dbc.Table.v1215.Movie : DbcTable
---@field [integer] dbc.row.v1215.Movie
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Movie
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Movie|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Movie
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Movie>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Movie[]
function tbl:GetByRelation(foreign_id) end

return {}
