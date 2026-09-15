---@meta
-- Generated LuaLS annotations for UIGenericWidgetDisplay (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UIGenericWidgetDisplay in build 12.1.5.69594.
---@class dbc.row.v1215.UIGenericWidgetDisplay : RowProxy
---@field Title_lang string
---@field Field_10_1_0_48480_001_lang string
---@field Field_10_1_0_48480_002_lang string
---@field ID integer
---@field UiTextureKitID integer
---@field UiWidgetSetID integer
---@field FrameWidth integer
---@field FrameHeight integer
---@field Field_10_1_0_48480_008 integer
---@field Field_10_1_0_48480_009 integer

local row = {}

---Gets the value of field 'Title_lang'.
---@return string value
function row:GetTitle_lang() end

---Sets the value of field 'Title_lang'.
---@param value string
---@return dbc.row.v1215.UIGenericWidgetDisplay self
function row:SetTitle_lang(value) end

---Gets the value of field 'Field_10_1_0_48480_001_lang'.
---@return string value
function row:GetField_10_1_0_48480_001_lang() end

---Sets the value of field 'Field_10_1_0_48480_001_lang'.
---@param value string
---@return dbc.row.v1215.UIGenericWidgetDisplay self
function row:SetField_10_1_0_48480_001_lang(value) end

---Gets the value of field 'Field_10_1_0_48480_002_lang'.
---@return string value
function row:GetField_10_1_0_48480_002_lang() end

---Sets the value of field 'Field_10_1_0_48480_002_lang'.
---@param value string
---@return dbc.row.v1215.UIGenericWidgetDisplay self
function row:SetField_10_1_0_48480_002_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UIGenericWidgetDisplay self
function row:SetID(value) end

---Gets the value of field 'UiTextureKitID'.
---@return integer value
function row:GetUiTextureKitID() end

---Sets the value of field 'UiTextureKitID'.
---@param value integer
---@return dbc.row.v1215.UIGenericWidgetDisplay self
function row:SetUiTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'UiTextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetUiTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'UiTextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'UiWidgetSetID'.
---@return integer value
function row:GetUiWidgetSetID() end

---Sets the value of field 'UiWidgetSetID'.
---@param value integer
---@return dbc.row.v1215.UIGenericWidgetDisplay self
function row:SetUiWidgetSetID(value) end

---Navigates foreign relationship to 'UiWidgetSet' via 'UiWidgetSetID'.
---@return dbc.row.v1215.UiWidgetSet|nil
function row:GetUiWidgetSet() end

---Creates a related 'UiWidgetSet' row and automatically links 'UiWidgetSetID'.
---@param data? table
---@return dbc.row.v1215.UiWidgetSet
function row:CreateRelated(data) end

---Gets the value of field 'FrameWidth'.
---@return integer value
function row:GetFrameWidth() end

---Sets the value of field 'FrameWidth'.
---@param value integer
---@return dbc.row.v1215.UIGenericWidgetDisplay self
function row:SetFrameWidth(value) end

---Gets the value of field 'FrameHeight'.
---@return integer value
function row:GetFrameHeight() end

---Sets the value of field 'FrameHeight'.
---@param value integer
---@return dbc.row.v1215.UIGenericWidgetDisplay self
function row:SetFrameHeight(value) end

---Gets the value of field 'Field_10_1_0_48480_008'.
---@return integer value
function row:GetField_10_1_0_48480_008() end

---Sets the value of field 'Field_10_1_0_48480_008'.
---@param value integer
---@return dbc.row.v1215.UIGenericWidgetDisplay self
function row:SetField_10_1_0_48480_008(value) end

---Gets the value of field 'Field_10_1_0_48480_009'.
---@return integer value
function row:GetField_10_1_0_48480_009() end

---Sets the value of field 'Field_10_1_0_48480_009'.
---@param value integer
---@return dbc.row.v1215.UIGenericWidgetDisplay self
function row:SetField_10_1_0_48480_009(value) end

---Table container for UIGenericWidgetDisplay (Build 12.1.5.69594).
---@class dbc.Table.v1215.UIGenericWidgetDisplay : DbcTable
---@field [integer] dbc.row.v1215.UIGenericWidgetDisplay
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UIGenericWidgetDisplay
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UIGenericWidgetDisplay|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UIGenericWidgetDisplay
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UIGenericWidgetDisplay>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UIGenericWidgetDisplay[]
function tbl:GetByRelation(foreign_id) end

return {}
