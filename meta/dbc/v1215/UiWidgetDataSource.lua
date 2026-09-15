---@meta
-- Generated LuaLS annotations for UiWidgetDataSource (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiWidgetDataSource in build 12.1.5.69594.
---@class dbc.row.v1215.UiWidgetDataSource : RowProxy
---@field ID integer
---@field ReqID integer
---@field SourceType integer 0: value, 1: eval result, 2: amount, 3: MaxQty, 4: percentage complete, 5: time until next state change, 6: time of next state change relative to start time, 7: state, 8:
---@field SourceID integer 0: WorldStateID, 1: WorldStateExpressionID, [2, 3]: CurrencyTypesID, [4, 5, 6, 7]: ContributionID, [8, 9, 10, 11, 12, 13, 14, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62]: SpellID, [15, 16, 17, 18, 24]: QuestID, [25, 26, 27, 28, 29, 30, 31, 32]: FactionID, [39, 41, 42, 43]: ScenarioID, [47, 48, 49, 50, 51]: PowerTypeID
---@field ParentWidgetID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiWidgetDataSource self
function row:SetID(value) end

---Gets the value of field 'ReqID'.
---@return integer value
function row:GetReqID() end

---Sets the value of field 'ReqID'.
---@param value integer
---@return dbc.row.v1215.UiWidgetDataSource self
function row:SetReqID(value) end

---Navigates foreign relationship to 'UiWidgetVisTypeDataReq' via 'ReqID'.
---@return dbc.row.v1215.UiWidgetVisTypeDataReq|nil
function row:GetReq() end

---Creates a related 'UiWidgetVisTypeDataReq' row and automatically links 'ReqID'.
---@param data? table
---@return dbc.row.v1215.UiWidgetVisTypeDataReq
function row:CreateRelated(data) end

---Gets the value of field 'SourceType'.
---@return integer value
function row:GetSourceType() end

---Sets the value of field 'SourceType'.
---@param value integer
---@return dbc.row.v1215.UiWidgetDataSource self
function row:SetSourceType(value) end

---Gets the value of field 'SourceID'.
---@return integer value
function row:GetSourceID() end

---Sets the value of field 'SourceID'.
---@param value integer
---@return dbc.row.v1215.UiWidgetDataSource self
function row:SetSourceID(value) end

---Navigates foreign relationship to 'Source' via 'SourceID'.
---@return dbc.row.v1215.Source|nil
function row:GetSource() end

---Creates a related 'Source' row and automatically links 'SourceID'.
---@param data? table
---@return dbc.row.v1215.Source
function row:CreateRelated(data) end

---Gets the value of field 'ParentWidgetID'.
---@return integer value
function row:GetParentWidgetID() end

---Sets the value of field 'ParentWidgetID'.
---@param value integer
---@return dbc.row.v1215.UiWidgetDataSource self
function row:SetParentWidgetID(value) end

---Navigates foreign relationship to 'UiWidget' via 'ParentWidgetID'.
---@return dbc.row.v1215.UiWidget|nil
function row:GetParentWidget() end

---Creates a related 'UiWidget' row and automatically links 'ParentWidgetID'.
---@param data? table
---@return dbc.row.v1215.UiWidget
function row:CreateRelated(data) end

---Table container for UiWidgetDataSource (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiWidgetDataSource : DbcTable
---@field [integer] dbc.row.v1215.UiWidgetDataSource
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiWidgetDataSource
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiWidgetDataSource|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiWidgetDataSource
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiWidgetDataSource>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiWidgetDataSource[]
function tbl:GetByRelation(foreign_id) end

return {}
