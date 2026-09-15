---@meta
-- Generated LuaLS annotations for UiTextureAtlasMember (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiTextureAtlasMember in build 12.1.5.69594.
---@class dbc.row.v1215.UiTextureAtlasMember : RowProxy
---@field CommittedName string
---@field ID integer
---@field UiTextureAtlasID integer
---@field Width integer
---@field Height integer
---@field CommittedLeft integer
---@field CommittedRight integer
---@field CommittedTop integer
---@field CommittedBottom integer
---@field UiTextureAtlasElementID integer
---@field OverrideWidth integer if > 0, use instead of right - left
---@field OverrideHeight integer if > 0, use instead of bottom - top
---@field CommittedFlags integer &2: tiles vertically, &4: tiles horizontally, &0x10: don't tile (ignore &6)
---@field UiCanvasID integer

local row = {}

---Gets the value of field 'CommittedName'.
---@return string value
function row:GetCommittedName() end

---Sets the value of field 'CommittedName'.
---@param value string
---@return dbc.row.v1215.UiTextureAtlasMember self
function row:SetCommittedName(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiTextureAtlasMember self
function row:SetID(value) end

---Gets the value of field 'UiTextureAtlasID'.
---@return integer value
function row:GetUiTextureAtlasID() end

---Sets the value of field 'UiTextureAtlasID'.
---@param value integer
---@return dbc.row.v1215.UiTextureAtlasMember self
function row:SetUiTextureAtlasID(value) end

---Navigates foreign relationship to 'UiTextureAtlas' via 'UiTextureAtlasID'.
---@return dbc.row.v1215.UiTextureAtlas|nil
function row:GetUiTextureAtlas() end

---Creates a related 'UiTextureAtlas' row and automatically links 'UiTextureAtlasID'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlas
function row:CreateRelated(data) end

---Gets the value of field 'Width'.
---@return integer value
function row:GetWidth() end

---Sets the value of field 'Width'.
---@param value integer
---@return dbc.row.v1215.UiTextureAtlasMember self
function row:SetWidth(value) end

---Gets the value of field 'Height'.
---@return integer value
function row:GetHeight() end

---Sets the value of field 'Height'.
---@param value integer
---@return dbc.row.v1215.UiTextureAtlasMember self
function row:SetHeight(value) end

---Gets the value of field 'CommittedLeft'.
---@return integer value
function row:GetCommittedLeft() end

---Sets the value of field 'CommittedLeft'.
---@param value integer
---@return dbc.row.v1215.UiTextureAtlasMember self
function row:SetCommittedLeft(value) end

---Gets the value of field 'CommittedRight'.
---@return integer value
function row:GetCommittedRight() end

---Sets the value of field 'CommittedRight'.
---@param value integer
---@return dbc.row.v1215.UiTextureAtlasMember self
function row:SetCommittedRight(value) end

---Gets the value of field 'CommittedTop'.
---@return integer value
function row:GetCommittedTop() end

---Sets the value of field 'CommittedTop'.
---@param value integer
---@return dbc.row.v1215.UiTextureAtlasMember self
function row:SetCommittedTop(value) end

---Gets the value of field 'CommittedBottom'.
---@return integer value
function row:GetCommittedBottom() end

---Sets the value of field 'CommittedBottom'.
---@param value integer
---@return dbc.row.v1215.UiTextureAtlasMember self
function row:SetCommittedBottom(value) end

---Gets the value of field 'UiTextureAtlasElementID'.
---@return integer value
function row:GetUiTextureAtlasElementID() end

---Sets the value of field 'UiTextureAtlasElementID'.
---@param value integer
---@return dbc.row.v1215.UiTextureAtlasMember self
function row:SetUiTextureAtlasElementID(value) end

---Navigates foreign relationship to 'UiTextureAtlasElement' via 'UiTextureAtlasElementID'.
---@return dbc.row.v1215.UiTextureAtlasElement|nil
function row:GetUiTextureAtlasElement() end

---Creates a related 'UiTextureAtlasElement' row and automatically links 'UiTextureAtlasElementID'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasElement
function row:CreateRelated(data) end

---Gets the value of field 'OverrideWidth'.
---@return integer value
function row:GetOverrideWidth() end

---Sets the value of field 'OverrideWidth'.
---@param value integer
---@return dbc.row.v1215.UiTextureAtlasMember self
function row:SetOverrideWidth(value) end

---Gets the value of field 'OverrideHeight'.
---@return integer value
function row:GetOverrideHeight() end

---Sets the value of field 'OverrideHeight'.
---@param value integer
---@return dbc.row.v1215.UiTextureAtlasMember self
function row:SetOverrideHeight(value) end

---Gets the value of field 'CommittedFlags'.
---@return integer value
function row:GetCommittedFlags() end

---Sets the value of field 'CommittedFlags'.
---@param value integer
---@return dbc.row.v1215.UiTextureAtlasMember self
function row:SetCommittedFlags(value) end

---Gets the value of field 'UiCanvasID'.
---@return integer value
function row:GetUiCanvasID() end

---Sets the value of field 'UiCanvasID'.
---@param value integer
---@return dbc.row.v1215.UiTextureAtlasMember self
function row:SetUiCanvasID(value) end

---Navigates foreign relationship to 'UiCanvas' via 'UiCanvasID'.
---@return dbc.row.v1215.UiCanvas|nil
function row:GetUiCanvas() end

---Creates a related 'UiCanvas' row and automatically links 'UiCanvasID'.
---@param data? table
---@return dbc.row.v1215.UiCanvas
function row:CreateRelated(data) end

---Table container for UiTextureAtlasMember (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiTextureAtlasMember : DbcTable
---@field [integer] dbc.row.v1215.UiTextureAtlasMember
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiTextureAtlasMember
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiTextureAtlasMember|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiTextureAtlasMember
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiTextureAtlasMember>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiTextureAtlasMember[]
function tbl:GetByRelation(foreign_id) end

return {}
