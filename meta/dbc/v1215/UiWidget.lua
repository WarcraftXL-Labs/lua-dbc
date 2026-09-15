---@meta
-- Generated LuaLS annotations for UiWidget (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiWidget in build 12.1.5.69594.
---@class dbc.row.v1215.UiWidget : RowProxy
---@field WidgetTag string
---@field ID integer
---@field ParentSetID integer
---@field VisID integer
---@field MapID integer
---@field PlayerConditionID integer
---@field OrderIndex integer
---@field LayoutDirection integer 0: Default, 1: Vertical, 2: Horizontal, 3: Overlap
---@field Field_8_2_5_31337_006 integer flag? 1: UniversalWidget

local row = {}

---Gets the value of field 'WidgetTag'.
---@return string value
function row:GetWidgetTag() end

---Sets the value of field 'WidgetTag'.
---@param value string
---@return dbc.row.v1215.UiWidget self
function row:SetWidgetTag(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiWidget self
function row:SetID(value) end

---Gets the value of field 'ParentSetID'.
---@return integer value
function row:GetParentSetID() end

---Sets the value of field 'ParentSetID'.
---@param value integer
---@return dbc.row.v1215.UiWidget self
function row:SetParentSetID(value) end

---Navigates foreign relationship to 'ParentSet' via 'ParentSetID'.
---@return dbc.row.v1215.ParentSet|nil
function row:GetParentSet() end

---Creates a related 'ParentSet' row and automatically links 'ParentSetID'.
---@param data? table
---@return dbc.row.v1215.ParentSet
function row:CreateRelated(data) end

---Gets the value of field 'VisID'.
---@return integer value
function row:GetVisID() end

---Sets the value of field 'VisID'.
---@param value integer
---@return dbc.row.v1215.UiWidget self
function row:SetVisID(value) end

---Navigates foreign relationship to 'UiWidgetVisualization' via 'VisID'.
---@return dbc.row.v1215.UiWidgetVisualization|nil
function row:GetVis() end

---Creates a related 'UiWidgetVisualization' row and automatically links 'VisID'.
---@param data? table
---@return dbc.row.v1215.UiWidgetVisualization
function row:CreateRelated(data) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.UiWidget self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.UiWidget self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.UiWidget self
function row:SetOrderIndex(value) end

---Gets the value of field 'LayoutDirection'.
---@return integer value
function row:GetLayoutDirection() end

---Sets the value of field 'LayoutDirection'.
---@param value integer
---@return dbc.row.v1215.UiWidget self
function row:SetLayoutDirection(value) end

---Gets the value of field 'Field_8_2_5_31337_006'.
---@return integer value
function row:GetField_8_2_5_31337_006() end

---Sets the value of field 'Field_8_2_5_31337_006'.
---@param value integer
---@return dbc.row.v1215.UiWidget self
function row:SetField_8_2_5_31337_006(value) end

---Table container for UiWidget (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiWidget : DbcTable
---@field [integer] dbc.row.v1215.UiWidget
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiWidget
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiWidget|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiWidget
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiWidget>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiWidget[]
function tbl:GetByRelation(foreign_id) end

return {}
