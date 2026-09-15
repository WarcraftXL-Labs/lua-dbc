---@meta
-- Generated LuaLS annotations for GameObjectArtKit (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of GameObjectArtKit in build 3.3.5.12340.
---@class dbc.row.v335.GameObjectArtKit : RowProxy
---@field ID integer
---@field TextureVariation string[]
---@field AttachModel string[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.GameObjectArtKit self
function row:SetID(value) end

---Gets the value of field 'TextureVariation'.
---@return string[] value
function row:GetTextureVariation() end

---Sets the value of field 'TextureVariation'.
---@param value string[]
---@return dbc.row.v335.GameObjectArtKit self
function row:SetTextureVariation(value) end

---Gets element at 1-based index in 'TextureVariation'.
---@param index integer
---@return string value
function row:GetTextureVariationItem(index) end

---Gets the value of field 'AttachModel'.
---@return string[] value
function row:GetAttachModel() end

---Sets the value of field 'AttachModel'.
---@param value string[]
---@return dbc.row.v335.GameObjectArtKit self
function row:SetAttachModel(value) end

---Gets element at 1-based index in 'AttachModel'.
---@param index integer
---@return string value
function row:GetAttachModelItem(index) end

---Table container for GameObjectArtKit (Build 3.3.5.12340).
---@class dbc.Table.v335.GameObjectArtKit : DbcTable
---@field [integer] dbc.row.v335.GameObjectArtKit
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.GameObjectArtKit
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.GameObjectArtKit|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.GameObjectArtKit
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.GameObjectArtKit>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.GameObjectArtKit[]
function tbl:GetByRelation(foreign_id) end

return {}
