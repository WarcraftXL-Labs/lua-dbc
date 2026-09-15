---@meta
-- Generated LuaLS annotations for VignetteUiWidgetSet (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of VignetteUiWidgetSet in build 12.1.5.69594.
---@class dbc.row.v1215.VignetteUiWidgetSet : RowProxy
---@field ID integer
---@field VignetteID integer
---@field UiWidgetSetID integer
---@field Field_10_2_6_53840_002 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.VignetteUiWidgetSet self
function row:SetID(value) end

---Gets the value of field 'VignetteID'.
---@return integer value
function row:GetVignetteID() end

---Sets the value of field 'VignetteID'.
---@param value integer
---@return dbc.row.v1215.VignetteUiWidgetSet self
function row:SetVignetteID(value) end

---Navigates foreign relationship to 'Vignette' via 'VignetteID'.
---@return dbc.row.v1215.Vignette|nil
function row:GetVignette() end

---Creates a related 'Vignette' row and automatically links 'VignetteID'.
---@param data? table
---@return dbc.row.v1215.Vignette
function row:CreateRelated(data) end

---Gets the value of field 'UiWidgetSetID'.
---@return integer value
function row:GetUiWidgetSetID() end

---Sets the value of field 'UiWidgetSetID'.
---@param value integer
---@return dbc.row.v1215.VignetteUiWidgetSet self
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
---@return dbc.row.v1215.VignetteUiWidgetSet self
function row:SetField_10_2_6_53840_002(value) end

---Table container for VignetteUiWidgetSet (Build 12.1.5.69594).
---@class dbc.Table.v1215.VignetteUiWidgetSet : DbcTable
---@field [integer] dbc.row.v1215.VignetteUiWidgetSet
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.VignetteUiWidgetSet
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.VignetteUiWidgetSet|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.VignetteUiWidgetSet
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.VignetteUiWidgetSet>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.VignetteUiWidgetSet[]
function tbl:GetByRelation(foreign_id) end

return {}
