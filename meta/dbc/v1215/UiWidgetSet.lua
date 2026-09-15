---@meta
-- Generated LuaLS annotations for UiWidgetSet (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiWidgetSet in build 12.1.5.69594.
---@class dbc.row.v1215.UiWidgetSet : RowProxy
---@field ID integer
---@field LayoutDirection integer UIWidgetSetLayoutDirection 0: Vertical, 1: Horizontal
---@field VerticalPadding integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiWidgetSet self
function row:SetID(value) end

---Gets the value of field 'LayoutDirection'.
---@return integer value
function row:GetLayoutDirection() end

---Sets the value of field 'LayoutDirection'.
---@param value integer
---@return dbc.row.v1215.UiWidgetSet self
function row:SetLayoutDirection(value) end

---Gets the value of field 'VerticalPadding'.
---@return integer value
function row:GetVerticalPadding() end

---Sets the value of field 'VerticalPadding'.
---@param value integer
---@return dbc.row.v1215.UiWidgetSet self
function row:SetVerticalPadding(value) end

---Table container for UiWidgetSet (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiWidgetSet : DbcTable
---@field [integer] dbc.row.v1215.UiWidgetSet
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiWidgetSet
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiWidgetSet|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiWidgetSet
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiWidgetSet>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiWidgetSet[]
function tbl:GetByRelation(foreign_id) end

return {}
