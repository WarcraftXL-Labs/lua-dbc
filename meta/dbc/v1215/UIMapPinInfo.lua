---@meta
-- Generated LuaLS annotations for UIMapPinInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UIMapPinInfo in build 12.1.5.69594.
---@class dbc.row.v1215.UIMapPinInfo : RowProxy
---@field ID integer
---@field Button integer
---@field ButtonSelected integer
---@field VignetteButton integer
---@field VignetteButtonSelected integer
---@field Field_11_0_7_57361_004 integer
---@field Underlay integer
---@field Field_12_0_1_65448_006 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UIMapPinInfo self
function row:SetID(value) end

---Gets the value of field 'Button'.
---@return integer value
function row:GetButton() end

---Sets the value of field 'Button'.
---@param value integer
---@return dbc.row.v1215.UIMapPinInfo self
function row:SetButton(value) end

---Navigates foreign relationship to 'UIButton' via 'Button'.
---@return dbc.row.v1215.UIButton|nil
function row:GetButton() end

---Creates a related 'UIButton' row and automatically links 'Button'.
---@param data? table
---@return dbc.row.v1215.UIButton
function row:CreateRelated(data) end

---Gets the value of field 'ButtonSelected'.
---@return integer value
function row:GetButtonSelected() end

---Sets the value of field 'ButtonSelected'.
---@param value integer
---@return dbc.row.v1215.UIMapPinInfo self
function row:SetButtonSelected(value) end

---Navigates foreign relationship to 'UIButton' via 'ButtonSelected'.
---@return dbc.row.v1215.UIButton|nil
function row:GetButtonSelected() end

---Creates a related 'UIButton' row and automatically links 'ButtonSelected'.
---@param data? table
---@return dbc.row.v1215.UIButton
function row:CreateRelated(data) end

---Gets the value of field 'VignetteButton'.
---@return integer value
function row:GetVignetteButton() end

---Sets the value of field 'VignetteButton'.
---@param value integer
---@return dbc.row.v1215.UIMapPinInfo self
function row:SetVignetteButton(value) end

---Navigates foreign relationship to 'UIButton' via 'VignetteButton'.
---@return dbc.row.v1215.UIButton|nil
function row:GetVignetteButton() end

---Creates a related 'UIButton' row and automatically links 'VignetteButton'.
---@param data? table
---@return dbc.row.v1215.UIButton
function row:CreateRelated(data) end

---Gets the value of field 'VignetteButtonSelected'.
---@return integer value
function row:GetVignetteButtonSelected() end

---Sets the value of field 'VignetteButtonSelected'.
---@param value integer
---@return dbc.row.v1215.UIMapPinInfo self
function row:SetVignetteButtonSelected(value) end

---Navigates foreign relationship to 'UIButton' via 'VignetteButtonSelected'.
---@return dbc.row.v1215.UIButton|nil
function row:GetVignetteButtonSelected() end

---Creates a related 'UIButton' row and automatically links 'VignetteButtonSelected'.
---@param data? table
---@return dbc.row.v1215.UIButton
function row:CreateRelated(data) end

---Gets the value of field 'Field_11_0_7_57361_004'.
---@return integer value
function row:GetField_11_0_7_57361_004() end

---Sets the value of field 'Field_11_0_7_57361_004'.
---@param value integer
---@return dbc.row.v1215.UIMapPinInfo self
function row:SetField_11_0_7_57361_004(value) end

---Gets the value of field 'Underlay'.
---@return integer value
function row:GetUnderlay() end

---Sets the value of field 'Underlay'.
---@param value integer
---@return dbc.row.v1215.UIMapPinInfo self
function row:SetUnderlay(value) end

---Navigates foreign relationship to 'UiTextureAtlasElement' via 'Underlay'.
---@return dbc.row.v1215.UiTextureAtlasElement|nil
function row:GetUnderlay() end

---Creates a related 'UiTextureAtlasElement' row and automatically links 'Underlay'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasElement
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_0_1_65448_006'.
---@return integer value
function row:GetField_12_0_1_65448_006() end

---Sets the value of field 'Field_12_0_1_65448_006'.
---@param value integer
---@return dbc.row.v1215.UIMapPinInfo self
function row:SetField_12_0_1_65448_006(value) end

---Table container for UIMapPinInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.UIMapPinInfo : DbcTable
---@field [integer] dbc.row.v1215.UIMapPinInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UIMapPinInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UIMapPinInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UIMapPinInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UIMapPinInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UIMapPinInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
