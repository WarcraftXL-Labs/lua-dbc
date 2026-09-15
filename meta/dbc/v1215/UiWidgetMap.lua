---@meta
-- Generated LuaLS annotations for UiWidgetMap (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiWidgetMap in build 12.1.5.69594.
---@class dbc.row.v1215.UiWidgetMap : RowProxy
---@field ID integer
---@field ParentWidgetID integer
---@field MapID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiWidgetMap self
function row:SetID(value) end

---Gets the value of field 'ParentWidgetID'.
---@return integer value
function row:GetParentWidgetID() end

---Sets the value of field 'ParentWidgetID'.
---@param value integer
---@return dbc.row.v1215.UiWidgetMap self
function row:SetParentWidgetID(value) end

---Navigates foreign relationship to 'UiWidget' via 'ParentWidgetID'.
---@return dbc.row.v1215.UiWidget|nil
function row:GetParentWidget() end

---Creates a related 'UiWidget' row and automatically links 'ParentWidgetID'.
---@param data? table
---@return dbc.row.v1215.UiWidget
function row:CreateRelated(data) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.UiWidgetMap self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Table container for UiWidgetMap (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiWidgetMap : DbcTable
---@field [integer] dbc.row.v1215.UiWidgetMap
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiWidgetMap
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiWidgetMap|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiWidgetMap
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiWidgetMap>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiWidgetMap[]
function tbl:GetByRelation(foreign_id) end

return {}
