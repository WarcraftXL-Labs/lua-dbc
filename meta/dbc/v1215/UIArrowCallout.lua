---@meta
-- Generated LuaLS annotations for UIArrowCallout (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UIArrowCallout in build 12.1.5.69594.
---@class dbc.row.v1215.UIArrowCallout : RowProxy
---@field CalloutText_lang string
---@field CalloutFrame string
---@field ID integer
---@field Type integer 0: None, 1: Generic, 2: WorldLootObject, 3: Tutorial, 4: WidgetContainerNoBorder
---@field Direction integer 0: Up, 1: Down, 2: Left, 3: Right
---@field Field_10_1_0_48480_005 integer
---@field UiWidgetSetID integer
---@field OffsetX integer
---@field OffsetY integer

local row = {}

---Gets the value of field 'CalloutText_lang'.
---@return string value
function row:GetCalloutText_lang() end

---Sets the value of field 'CalloutText_lang'.
---@param value string
---@return dbc.row.v1215.UIArrowCallout self
function row:SetCalloutText_lang(value) end

---Gets the value of field 'CalloutFrame'.
---@return string value
function row:GetCalloutFrame() end

---Sets the value of field 'CalloutFrame'.
---@param value string
---@return dbc.row.v1215.UIArrowCallout self
function row:SetCalloutFrame(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UIArrowCallout self
function row:SetID(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.UIArrowCallout self
function row:SetType(value) end

---Gets the value of field 'Direction'.
---@return integer value
function row:GetDirection() end

---Sets the value of field 'Direction'.
---@param value integer
---@return dbc.row.v1215.UIArrowCallout self
function row:SetDirection(value) end

---Gets the value of field 'Field_10_1_0_48480_005'.
---@return integer value
function row:GetField_10_1_0_48480_005() end

---Sets the value of field 'Field_10_1_0_48480_005'.
---@param value integer
---@return dbc.row.v1215.UIArrowCallout self
function row:SetField_10_1_0_48480_005(value) end

---Gets the value of field 'UiWidgetSetID'.
---@return integer value
function row:GetUiWidgetSetID() end

---Sets the value of field 'UiWidgetSetID'.
---@param value integer
---@return dbc.row.v1215.UIArrowCallout self
function row:SetUiWidgetSetID(value) end

---Navigates foreign relationship to 'UiWidgetSet' via 'UiWidgetSetID'.
---@return dbc.row.v1215.UiWidgetSet|nil
function row:GetUiWidgetSet() end

---Creates a related 'UiWidgetSet' row and automatically links 'UiWidgetSetID'.
---@param data? table
---@return dbc.row.v1215.UiWidgetSet
function row:CreateRelated(data) end

---Gets the value of field 'OffsetX'.
---@return integer value
function row:GetOffsetX() end

---Sets the value of field 'OffsetX'.
---@param value integer
---@return dbc.row.v1215.UIArrowCallout self
function row:SetOffsetX(value) end

---Gets the value of field 'OffsetY'.
---@return integer value
function row:GetOffsetY() end

---Sets the value of field 'OffsetY'.
---@param value integer
---@return dbc.row.v1215.UIArrowCallout self
function row:SetOffsetY(value) end

---Table container for UIArrowCallout (Build 12.1.5.69594).
---@class dbc.Table.v1215.UIArrowCallout : DbcTable
---@field [integer] dbc.row.v1215.UIArrowCallout
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UIArrowCallout
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UIArrowCallout|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UIArrowCallout
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UIArrowCallout>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UIArrowCallout[]
function tbl:GetByRelation(foreign_id) end

return {}
