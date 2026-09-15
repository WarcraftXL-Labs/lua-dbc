---@meta
-- Generated LuaLS annotations for UiWidgetVisTypeDataReq (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiWidgetVisTypeDataReq in build 12.1.5.69594.
---@class dbc.row.v1215.UiWidgetVisTypeDataReq : RowProxy
---@field Name string
---@field ID integer
---@field ValueType integer 0=int, 1=string
---@field Field_8_1_5_28938_002 integer
---@field Default integer
---@field VisType integer 0=IconAndText, 1=CaptureBar, 3=DoubleStatusBar, …

local row = {}

---Gets the value of field 'Name'.
---@return string value
function row:GetName() end

---Sets the value of field 'Name'.
---@param value string
---@return dbc.row.v1215.UiWidgetVisTypeDataReq self
function row:SetName(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiWidgetVisTypeDataReq self
function row:SetID(value) end

---Gets the value of field 'ValueType'.
---@return integer value
function row:GetValueType() end

---Sets the value of field 'ValueType'.
---@param value integer
---@return dbc.row.v1215.UiWidgetVisTypeDataReq self
function row:SetValueType(value) end

---Gets the value of field 'Field_8_1_5_28938_002'.
---@return integer value
function row:GetField_8_1_5_28938_002() end

---Sets the value of field 'Field_8_1_5_28938_002'.
---@param value integer
---@return dbc.row.v1215.UiWidgetVisTypeDataReq self
function row:SetField_8_1_5_28938_002(value) end

---Gets the value of field 'Default'.
---@return integer value
function row:GetDefault() end

---Sets the value of field 'Default'.
---@param value integer
---@return dbc.row.v1215.UiWidgetVisTypeDataReq self
function row:SetDefault(value) end

---Gets the value of field 'VisType'.
---@return integer value
function row:GetVisType() end

---Sets the value of field 'VisType'.
---@param value integer
---@return dbc.row.v1215.UiWidgetVisTypeDataReq self
function row:SetVisType(value) end

---Table container for UiWidgetVisTypeDataReq (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiWidgetVisTypeDataReq : DbcTable
---@field [integer] dbc.row.v1215.UiWidgetVisTypeDataReq
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiWidgetVisTypeDataReq
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiWidgetVisTypeDataReq|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiWidgetVisTypeDataReq
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiWidgetVisTypeDataReq>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiWidgetVisTypeDataReq[]
function tbl:GetByRelation(foreign_id) end

return {}
