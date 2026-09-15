---@meta
-- Generated LuaLS annotations for UiWidgetXWidgetSet (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiWidgetXWidgetSet in build 12.1.5.69594.
---@class dbc.row.v1215.UiWidgetXWidgetSet : RowProxy
---@field ID integer
---@field ParentSet integer
---@field UiWidgetID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiWidgetXWidgetSet self
function row:SetID(value) end

---Gets the value of field 'ParentSet'.
---@return integer value
function row:GetParentSet() end

---Sets the value of field 'ParentSet'.
---@param value integer
---@return dbc.row.v1215.UiWidgetXWidgetSet self
function row:SetParentSet(value) end

---Navigates foreign relationship to 'UiWidgetSet' via 'ParentSet'.
---@return dbc.row.v1215.UiWidgetSet|nil
function row:GetParentSet() end

---Creates a related 'UiWidgetSet' row and automatically links 'ParentSet'.
---@param data? table
---@return dbc.row.v1215.UiWidgetSet
function row:CreateRelated(data) end

---Gets the value of field 'UiWidgetID'.
---@return integer value
function row:GetUiWidgetID() end

---Sets the value of field 'UiWidgetID'.
---@param value integer
---@return dbc.row.v1215.UiWidgetXWidgetSet self
function row:SetUiWidgetID(value) end

---Navigates foreign relationship to 'UiWidget' via 'UiWidgetID'.
---@return dbc.row.v1215.UiWidget|nil
function row:GetUiWidget() end

---Creates a related 'UiWidget' row and automatically links 'UiWidgetID'.
---@param data? table
---@return dbc.row.v1215.UiWidget
function row:CreateRelated(data) end

---Table container for UiWidgetXWidgetSet (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiWidgetXWidgetSet : DbcTable
---@field [integer] dbc.row.v1215.UiWidgetXWidgetSet
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiWidgetXWidgetSet
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiWidgetXWidgetSet|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiWidgetXWidgetSet
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiWidgetXWidgetSet>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiWidgetXWidgetSet[]
function tbl:GetByRelation(foreign_id) end

return {}
