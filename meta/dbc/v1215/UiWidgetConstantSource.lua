---@meta
-- Generated LuaLS annotations for UiWidgetConstantSource (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiWidgetConstantSource in build 12.1.5.69594.
---@class dbc.row.v1215.UiWidgetConstantSource : RowProxy
---@field ID integer
---@field ReqID integer
---@field Value integer
---@field ParentWidgetID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiWidgetConstantSource self
function row:SetID(value) end

---Gets the value of field 'ReqID'.
---@return integer value
function row:GetReqID() end

---Sets the value of field 'ReqID'.
---@param value integer
---@return dbc.row.v1215.UiWidgetConstantSource self
function row:SetReqID(value) end

---Navigates foreign relationship to 'UiWidgetVisTypeDataReq' via 'ReqID'.
---@return dbc.row.v1215.UiWidgetVisTypeDataReq|nil
function row:GetReq() end

---Creates a related 'UiWidgetVisTypeDataReq' row and automatically links 'ReqID'.
---@param data? table
---@return dbc.row.v1215.UiWidgetVisTypeDataReq
function row:CreateRelated(data) end

---Gets the value of field 'Value'.
---@return integer value
function row:GetValue() end

---Sets the value of field 'Value'.
---@param value integer
---@return dbc.row.v1215.UiWidgetConstantSource self
function row:SetValue(value) end

---Gets the value of field 'ParentWidgetID'.
---@return integer value
function row:GetParentWidgetID() end

---Sets the value of field 'ParentWidgetID'.
---@param value integer
---@return dbc.row.v1215.UiWidgetConstantSource self
function row:SetParentWidgetID(value) end

---Navigates foreign relationship to 'UiWidget' via 'ParentWidgetID'.
---@return dbc.row.v1215.UiWidget|nil
function row:GetParentWidget() end

---Creates a related 'UiWidget' row and automatically links 'ParentWidgetID'.
---@param data? table
---@return dbc.row.v1215.UiWidget
function row:CreateRelated(data) end

---Table container for UiWidgetConstantSource (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiWidgetConstantSource : DbcTable
---@field [integer] dbc.row.v1215.UiWidgetConstantSource
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiWidgetConstantSource
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiWidgetConstantSource|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiWidgetConstantSource
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiWidgetConstantSource>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiWidgetConstantSource[]
function tbl:GetByRelation(foreign_id) end

return {}
