---@meta
-- Generated LuaLS annotations for AreaPOIUiWidgetSet (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AreaPOIUiWidgetSet in build 12.1.5.69594.
---@class dbc.row.v1215.AreaPOIUiWidgetSet : RowProxy
---@field ID integer
---@field AreaPOIID integer
---@field UiWidgetSetID integer
---@field Field_10_2_6_53840_002 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AreaPOIUiWidgetSet self
function row:SetID(value) end

---Gets the value of field 'AreaPOIID'.
---@return integer value
function row:GetAreaPOIID() end

---Sets the value of field 'AreaPOIID'.
---@param value integer
---@return dbc.row.v1215.AreaPOIUiWidgetSet self
function row:SetAreaPOIID(value) end

---Navigates foreign relationship to 'AreaPOI' via 'AreaPOIID'.
---@return dbc.row.v1215.AreaPOI|nil
function row:GetAreaPOI() end

---Creates a related 'AreaPOI' row and automatically links 'AreaPOIID'.
---@param data? table
---@return dbc.row.v1215.AreaPOI
function row:CreateRelated(data) end

---Gets the value of field 'UiWidgetSetID'.
---@return integer value
function row:GetUiWidgetSetID() end

---Sets the value of field 'UiWidgetSetID'.
---@param value integer
---@return dbc.row.v1215.AreaPOIUiWidgetSet self
function row:SetUiWidgetSetID(value) end

---Navigates foreign relationship to 'UiWidgetSet' via 'UiWidgetSetID'.
---@return dbc.row.v1215.UiWidgetSet|nil
function row:GetUiWidgetSet() end

---Creates a related 'UiWidgetSet' row and automatically links 'UiWidgetSetID'.
---@param data? table
---@return dbc.row.v1215.UiWidgetSet
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_2_6_53840_002'.
---@return integer value
function row:GetField_10_2_6_53840_002() end

---Sets the value of field 'Field_10_2_6_53840_002'.
---@param value integer
---@return dbc.row.v1215.AreaPOIUiWidgetSet self
function row:SetField_10_2_6_53840_002(value) end

---Table container for AreaPOIUiWidgetSet (Build 12.1.5.69594).
---@class dbc.Table.v1215.AreaPOIUiWidgetSet : DbcTable
---@field [integer] dbc.row.v1215.AreaPOIUiWidgetSet
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AreaPOIUiWidgetSet
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AreaPOIUiWidgetSet|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AreaPOIUiWidgetSet
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AreaPOIUiWidgetSet>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AreaPOIUiWidgetSet[]
function tbl:GetByRelation(foreign_id) end

return {}
