---@meta
-- Generated LuaLS annotations for UiTextureAtlasElementSliceData (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiTextureAtlasElementSliceData in build 12.1.5.69594.
---@class dbc.row.v1215.UiTextureAtlasElementSliceData : RowProxy
---@field ID integer
---@field UiTextureAtlasElementID integer
---@field Left integer
---@field Top integer
---@field Right integer
---@field Bottom integer
---@field SliceMode integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiTextureAtlasElementSliceData self
function row:SetID(value) end

---Gets the value of field 'UiTextureAtlasElementID'.
---@return integer value
function row:GetUiTextureAtlasElementID() end

---Sets the value of field 'UiTextureAtlasElementID'.
---@param value integer
---@return dbc.row.v1215.UiTextureAtlasElementSliceData self
function row:SetUiTextureAtlasElementID(value) end

---Navigates foreign relationship to 'UiTextureAtlasElement' via 'UiTextureAtlasElementID'.
---@return dbc.row.v1215.UiTextureAtlasElement|nil
function row:GetUiTextureAtlasElement() end

---Creates a related 'UiTextureAtlasElement' row and automatically links 'UiTextureAtlasElementID'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasElement
function row:CreateRelated(data) end

---Gets the value of field 'Left'.
---@return integer value
function row:GetLeft() end

---Sets the value of field 'Left'.
---@param value integer
---@return dbc.row.v1215.UiTextureAtlasElementSliceData self
function row:SetLeft(value) end

---Gets the value of field 'Top'.
---@return integer value
function row:GetTop() end

---Sets the value of field 'Top'.
---@param value integer
---@return dbc.row.v1215.UiTextureAtlasElementSliceData self
function row:SetTop(value) end

---Gets the value of field 'Right'.
---@return integer value
function row:GetRight() end

---Sets the value of field 'Right'.
---@param value integer
---@return dbc.row.v1215.UiTextureAtlasElementSliceData self
function row:SetRight(value) end

---Gets the value of field 'Bottom'.
---@return integer value
function row:GetBottom() end

---Sets the value of field 'Bottom'.
---@param value integer
---@return dbc.row.v1215.UiTextureAtlasElementSliceData self
function row:SetBottom(value) end

---Gets the value of field 'SliceMode'.
---@return integer value
function row:GetSliceMode() end

---Sets the value of field 'SliceMode'.
---@param value integer
---@return dbc.row.v1215.UiTextureAtlasElementSliceData self
function row:SetSliceMode(value) end

---Table container for UiTextureAtlasElementSliceData (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiTextureAtlasElementSliceData : DbcTable
---@field [integer] dbc.row.v1215.UiTextureAtlasElementSliceData
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiTextureAtlasElementSliceData
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiTextureAtlasElementSliceData|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiTextureAtlasElementSliceData
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiTextureAtlasElementSliceData>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiTextureAtlasElementSliceData[]
function tbl:GetByRelation(foreign_id) end

return {}
