---@meta
-- Generated LuaLS annotations for ChrCustomizationCategory (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrCustomizationCategory in build 12.1.5.69594.
---@class dbc.row.v1215.ChrCustomizationCategory : RowProxy
---@field ID integer
---@field CategoryName_lang string
---@field CustomizeIcon integer
---@field CustomizeIconSelected integer
---@field OrderIndex integer
---@field CameraZoomLevel integer
---@field Flags integer 1 = UndressModel
---@field SpellShapeshiftFormID integer
---@field CameraDistanceOffset number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationCategory self
function row:SetID(value) end

---Gets the value of field 'CategoryName_lang'.
---@return string value
function row:GetCategoryName_lang() end

---Sets the value of field 'CategoryName_lang'.
---@param value string
---@return dbc.row.v1215.ChrCustomizationCategory self
function row:SetCategoryName_lang(value) end

---Gets the value of field 'CustomizeIcon'.
---@return integer value
function row:GetCustomizeIcon() end

---Sets the value of field 'CustomizeIcon'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationCategory self
function row:SetCustomizeIcon(value) end

---Navigates foreign relationship to 'UiTextureAtlasElement' via 'CustomizeIcon'.
---@return dbc.row.v1215.UiTextureAtlasElement|nil
function row:GetCustomizeIcon() end

---Creates a related 'UiTextureAtlasElement' row and automatically links 'CustomizeIcon'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasElement
function row:CreateRelated(data) end

---Gets the value of field 'CustomizeIconSelected'.
---@return integer value
function row:GetCustomizeIconSelected() end

---Sets the value of field 'CustomizeIconSelected'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationCategory self
function row:SetCustomizeIconSelected(value) end

---Navigates foreign relationship to 'UiTextureAtlasElement' via 'CustomizeIconSelected'.
---@return dbc.row.v1215.UiTextureAtlasElement|nil
function row:GetCustomizeIconSelected() end

---Creates a related 'UiTextureAtlasElement' row and automatically links 'CustomizeIconSelected'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasElement
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationCategory self
function row:SetOrderIndex(value) end

---Gets the value of field 'CameraZoomLevel'.
---@return integer value
function row:GetCameraZoomLevel() end

---Sets the value of field 'CameraZoomLevel'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationCategory self
function row:SetCameraZoomLevel(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationCategory self
function row:SetFlags(value) end

---Gets the value of field 'SpellShapeshiftFormID'.
---@return integer value
function row:GetSpellShapeshiftFormID() end

---Sets the value of field 'SpellShapeshiftFormID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationCategory self
function row:SetSpellShapeshiftFormID(value) end

---Navigates foreign relationship to 'SpellShapeshiftForm' via 'SpellShapeshiftFormID'.
---@return dbc.row.v1215.SpellShapeshiftForm|nil
function row:GetSpellShapeshiftForm() end

---Creates a related 'SpellShapeshiftForm' row and automatically links 'SpellShapeshiftFormID'.
---@param data? table
---@return dbc.row.v1215.SpellShapeshiftForm
function row:CreateRelated(data) end

---Gets the value of field 'CameraDistanceOffset'.
---@return number value
function row:GetCameraDistanceOffset() end

---Sets the value of field 'CameraDistanceOffset'.
---@param value number
---@return dbc.row.v1215.ChrCustomizationCategory self
function row:SetCameraDistanceOffset(value) end

---Table container for ChrCustomizationCategory (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrCustomizationCategory : DbcTable
---@field [integer] dbc.row.v1215.ChrCustomizationCategory
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrCustomizationCategory
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomizationCategory|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomizationCategory
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrCustomizationCategory>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrCustomizationCategory[]
function tbl:GetByRelation(foreign_id) end

return {}
