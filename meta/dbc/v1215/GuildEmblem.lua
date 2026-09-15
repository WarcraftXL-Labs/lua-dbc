---@meta
-- Generated LuaLS annotations for GuildEmblem (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GuildEmblem in build 12.1.5.69594.
---@class dbc.row.v1215.GuildEmblem : RowProxy
---@field ID integer
---@field EmblemID integer
---@field TextureFileDataID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GuildEmblem self
function row:SetID(value) end

---Gets the value of field 'EmblemID'.
---@return integer value
function row:GetEmblemID() end

---Sets the value of field 'EmblemID'.
---@param value integer
---@return dbc.row.v1215.GuildEmblem self
function row:SetEmblemID(value) end

---Navigates foreign relationship to 'Emblem' via 'EmblemID'.
---@return dbc.row.v1215.Emblem|nil
function row:GetEmblem() end

---Creates a related 'Emblem' row and automatically links 'EmblemID'.
---@param data? table
---@return dbc.row.v1215.Emblem
function row:CreateRelated(data) end

---Gets the value of field 'TextureFileDataID'.
---@return integer value
function row:GetTextureFileDataID() end

---Sets the value of field 'TextureFileDataID'.
---@param value integer
---@return dbc.row.v1215.GuildEmblem self
function row:SetTextureFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'TextureFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetTextureFileData() end

---Creates a related 'FileData' row and automatically links 'TextureFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Table container for GuildEmblem (Build 12.1.5.69594).
---@class dbc.Table.v1215.GuildEmblem : DbcTable
---@field [integer] dbc.row.v1215.GuildEmblem
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GuildEmblem
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GuildEmblem|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GuildEmblem
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GuildEmblem>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GuildEmblem[]
function tbl:GetByRelation(foreign_id) end

return {}
