---@meta
-- Generated LuaLS annotations for UiTextureKit (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiTextureKit in build 12.1.5.69594.
---@class dbc.row.v1215.UiTextureKit : RowProxy
---@field ID integer
---@field KitPrefix string

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiTextureKit self
function row:SetID(value) end

---Gets the value of field 'KitPrefix'.
---@return string value
function row:GetKitPrefix() end

---Sets the value of field 'KitPrefix'.
---@param value string
---@return dbc.row.v1215.UiTextureKit self
function row:SetKitPrefix(value) end

---Table container for UiTextureKit (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiTextureKit : DbcTable
---@field [integer] dbc.row.v1215.UiTextureKit
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiTextureKit
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiTextureKit|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiTextureKit
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiTextureKit>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiTextureKit[]
function tbl:GetByRelation(foreign_id) end

return {}
