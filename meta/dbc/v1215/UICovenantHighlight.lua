---@meta
-- Generated LuaLS annotations for UICovenantHighlight (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UICovenantHighlight in build 12.1.5.69594.
---@class dbc.row.v1215.UICovenantHighlight : RowProxy
---@field ID integer
---@field SharedStringID integer
---@field Field_12_0_1_64889_001 integer
---@field UiCovenantDisplayInfoID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UICovenantHighlight self
function row:SetID(value) end

---Gets the value of field 'SharedStringID'.
---@return integer value
function row:GetSharedStringID() end

---Sets the value of field 'SharedStringID'.
---@param value integer
---@return dbc.row.v1215.UICovenantHighlight self
function row:SetSharedStringID(value) end

---Navigates foreign relationship to 'SharedString' via 'SharedStringID'.
---@return dbc.row.v1215.SharedString|nil
function row:GetSharedString() end

---Creates a related 'SharedString' row and automatically links 'SharedStringID'.
---@param data? table
---@return dbc.row.v1215.SharedString
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_0_1_64889_001'.
---@return integer value
function row:GetField_12_0_1_64889_001() end

---Sets the value of field 'Field_12_0_1_64889_001'.
---@param value integer
---@return dbc.row.v1215.UICovenantHighlight self
function row:SetField_12_0_1_64889_001(value) end

---Gets the value of field 'UiCovenantDisplayInfoID'.
---@return integer value
function row:GetUiCovenantDisplayInfoID() end

---Sets the value of field 'UiCovenantDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.UICovenantHighlight self
function row:SetUiCovenantDisplayInfoID(value) end

---Navigates foreign relationship to 'UiCovenantDisplayInfo' via 'UiCovenantDisplayInfoID'.
---@return dbc.row.v1215.UiCovenantDisplayInfo|nil
function row:GetUiCovenantDisplayInfo() end

---Creates a related 'UiCovenantDisplayInfo' row and automatically links 'UiCovenantDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.UiCovenantDisplayInfo
function row:CreateRelated(data) end

---Table container for UICovenantHighlight (Build 12.1.5.69594).
---@class dbc.Table.v1215.UICovenantHighlight : DbcTable
---@field [integer] dbc.row.v1215.UICovenantHighlight
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UICovenantHighlight
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UICovenantHighlight|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UICovenantHighlight
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UICovenantHighlight>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UICovenantHighlight[]
function tbl:GetByRelation(foreign_id) end

return {}
