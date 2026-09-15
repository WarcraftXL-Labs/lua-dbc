---@meta
-- Generated LuaLS annotations for SpellVisualEvent (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellVisualEvent in build 12.1.5.69594.
---@class dbc.row.v1215.SpellVisualEvent : RowProxy
---@field ID integer
---@field StartEvent integer
---@field EndEvent integer
---@field StartMinOffsetMs integer
---@field StartMaxOffsetMs integer
---@field EndMinOffsetMs integer
---@field EndMaxOffsetMs integer
---@field TargetType integer
---@field SpellVisualKitID integer
---@field Field_10_0_0_44649_008 integer empowerment stuff probably
---@field Field_10_0_0_44649_009 integer
---@field SpellVisualID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualEvent self
function row:SetID(value) end

---Gets the value of field 'StartEvent'.
---@return integer value
function row:GetStartEvent() end

---Sets the value of field 'StartEvent'.
---@param value integer
---@return dbc.row.v1215.SpellVisualEvent self
function row:SetStartEvent(value) end

---Gets the value of field 'EndEvent'.
---@return integer value
function row:GetEndEvent() end

---Sets the value of field 'EndEvent'.
---@param value integer
---@return dbc.row.v1215.SpellVisualEvent self
function row:SetEndEvent(value) end

---Gets the value of field 'StartMinOffsetMs'.
---@return integer value
function row:GetStartMinOffsetMs() end

---Sets the value of field 'StartMinOffsetMs'.
---@param value integer
---@return dbc.row.v1215.SpellVisualEvent self
function row:SetStartMinOffsetMs(value) end

---Gets the value of field 'StartMaxOffsetMs'.
---@return integer value
function row:GetStartMaxOffsetMs() end

---Sets the value of field 'StartMaxOffsetMs'.
---@param value integer
---@return dbc.row.v1215.SpellVisualEvent self
function row:SetStartMaxOffsetMs(value) end

---Gets the value of field 'EndMinOffsetMs'.
---@return integer value
function row:GetEndMinOffsetMs() end

---Sets the value of field 'EndMinOffsetMs'.
---@param value integer
---@return dbc.row.v1215.SpellVisualEvent self
function row:SetEndMinOffsetMs(value) end

---Gets the value of field 'EndMaxOffsetMs'.
---@return integer value
function row:GetEndMaxOffsetMs() end

---Sets the value of field 'EndMaxOffsetMs'.
---@param value integer
---@return dbc.row.v1215.SpellVisualEvent self
function row:SetEndMaxOffsetMs(value) end

---Gets the value of field 'TargetType'.
---@return integer value
function row:GetTargetType() end

---Sets the value of field 'TargetType'.
---@param value integer
---@return dbc.row.v1215.SpellVisualEvent self
function row:SetTargetType(value) end

---Gets the value of field 'SpellVisualKitID'.
---@return integer value
function row:GetSpellVisualKitID() end

---Sets the value of field 'SpellVisualKitID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualEvent self
function row:SetSpellVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'SpellVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetSpellVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'SpellVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_0_0_44649_008'.
---@return integer value
function row:GetField_10_0_0_44649_008() end

---Sets the value of field 'Field_10_0_0_44649_008'.
---@param value integer
---@return dbc.row.v1215.SpellVisualEvent self
function row:SetField_10_0_0_44649_008(value) end

---Gets the value of field 'Field_10_0_0_44649_009'.
---@return integer value
function row:GetField_10_0_0_44649_009() end

---Sets the value of field 'Field_10_0_0_44649_009'.
---@param value integer
---@return dbc.row.v1215.SpellVisualEvent self
function row:SetField_10_0_0_44649_009(value) end

---Gets the value of field 'SpellVisualID'.
---@return integer value
function row:GetSpellVisualID() end

---Sets the value of field 'SpellVisualID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualEvent self
function row:SetSpellVisualID(value) end

---Navigates foreign relationship to 'SpellVisual' via 'SpellVisualID'.
---@return dbc.row.v1215.SpellVisual|nil
function row:GetSpellVisual() end

---Creates a related 'SpellVisual' row and automatically links 'SpellVisualID'.
---@param data? table
---@return dbc.row.v1215.SpellVisual
function row:CreateRelated(data) end

---Table container for SpellVisualEvent (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellVisualEvent : DbcTable
---@field [integer] dbc.row.v1215.SpellVisualEvent
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellVisualEvent
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellVisualEvent|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellVisualEvent
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellVisualEvent>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellVisualEvent[]
function tbl:GetByRelation(foreign_id) end

return {}
