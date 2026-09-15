---@meta
-- Generated LuaLS annotations for GameObjectArtKit (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GameObjectArtKit in build 12.1.5.69594.
---@class dbc.row.v1215.GameObjectArtKit : RowProxy
---@field ID integer
---@field AttachModelFileID integer
---@field TextureVariationFileID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GameObjectArtKit self
function row:SetID(value) end

---Gets the value of field 'AttachModelFileID'.
---@return integer value
function row:GetAttachModelFileID() end

---Sets the value of field 'AttachModelFileID'.
---@param value integer
---@return dbc.row.v1215.GameObjectArtKit self
function row:SetAttachModelFileID(value) end

---Navigates foreign relationship to 'FileData' via 'AttachModelFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetAttachModelFile() end

---Creates a related 'FileData' row and automatically links 'AttachModelFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'TextureVariationFileID'.
---@return integer[] value
function row:GetTextureVariationFileID() end

---Sets the value of field 'TextureVariationFileID'.
---@param value integer[]
---@return dbc.row.v1215.GameObjectArtKit self
function row:SetTextureVariationFileID(value) end

---Gets element at 1-based index in 'TextureVariationFileID'.
---@param index integer
---@return integer value
function row:GetTextureVariationFileIDItem(index) end

---Navigates foreign relationship to 'FileData' via 'TextureVariationFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetTextureVariationFile() end

---Creates a related 'FileData' row and automatically links 'TextureVariationFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Table container for GameObjectArtKit (Build 12.1.5.69594).
---@class dbc.Table.v1215.GameObjectArtKit : DbcTable
---@field [integer] dbc.row.v1215.GameObjectArtKit
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GameObjectArtKit
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GameObjectArtKit|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GameObjectArtKit
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GameObjectArtKit>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GameObjectArtKit[]
function tbl:GetByRelation(foreign_id) end

return {}
