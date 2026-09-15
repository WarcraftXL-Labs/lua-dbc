---@meta
-- Generated LuaLS annotations for EventSchedulerEvent (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of EventSchedulerEvent in build 12.1.5.69594.
---@class dbc.row.v1215.EventSchedulerEvent : RowProxy
---@field ID integer
---@field Field_12_0_0_63967_001 integer
---@field Field_12_0_0_63967_002 integer
---@field Field_12_0_0_63967_003 integer
---@field Field_12_0_0_63967_004 integer
---@field Field_12_0_0_63967_005 integer
---@field Field_12_0_0_63967_006 integer
---@field Field_12_0_0_63967_007 integer
---@field Field_12_0_0_63967_008 integer
---@field Field_12_0_0_63967_009 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.EventSchedulerEvent self
function row:SetID(value) end

---Gets the value of field 'Field_12_0_0_63967_001'.
---@return integer value
function row:GetField_12_0_0_63967_001() end

---Sets the value of field 'Field_12_0_0_63967_001'.
---@param value integer
---@return dbc.row.v1215.EventSchedulerEvent self
function row:SetField_12_0_0_63967_001(value) end

---Gets the value of field 'Field_12_0_0_63967_002'.
---@return integer value
function row:GetField_12_0_0_63967_002() end

---Sets the value of field 'Field_12_0_0_63967_002'.
---@param value integer
---@return dbc.row.v1215.EventSchedulerEvent self
function row:SetField_12_0_0_63967_002(value) end

---Gets the value of field 'Field_12_0_0_63967_003'.
---@return integer value
function row:GetField_12_0_0_63967_003() end

---Sets the value of field 'Field_12_0_0_63967_003'.
---@param value integer
---@return dbc.row.v1215.EventSchedulerEvent self
function row:SetField_12_0_0_63967_003(value) end

---Gets the value of field 'Field_12_0_0_63967_004'.
---@return integer value
function row:GetField_12_0_0_63967_004() end

---Sets the value of field 'Field_12_0_0_63967_004'.
---@param value integer
---@return dbc.row.v1215.EventSchedulerEvent self
function row:SetField_12_0_0_63967_004(value) end

---Gets the value of field 'Field_12_0_0_63967_005'.
---@return integer value
function row:GetField_12_0_0_63967_005() end

---Sets the value of field 'Field_12_0_0_63967_005'.
---@param value integer
---@return dbc.row.v1215.EventSchedulerEvent self
function row:SetField_12_0_0_63967_005(value) end

---Gets the value of field 'Field_12_0_0_63967_006'.
---@return integer value
function row:GetField_12_0_0_63967_006() end

---Sets the value of field 'Field_12_0_0_63967_006'.
---@param value integer
---@return dbc.row.v1215.EventSchedulerEvent self
function row:SetField_12_0_0_63967_006(value) end

---Gets the value of field 'Field_12_0_0_63967_007'.
---@return integer value
function row:GetField_12_0_0_63967_007() end

---Sets the value of field 'Field_12_0_0_63967_007'.
---@param value integer
---@return dbc.row.v1215.EventSchedulerEvent self
function row:SetField_12_0_0_63967_007(value) end

---Gets the value of field 'Field_12_0_0_63967_008'.
---@return integer value
function row:GetField_12_0_0_63967_008() end

---Sets the value of field 'Field_12_0_0_63967_008'.
---@param value integer
---@return dbc.row.v1215.EventSchedulerEvent self
function row:SetField_12_0_0_63967_008(value) end

---Gets the value of field 'Field_12_0_0_63967_009'.
---@return integer value
function row:GetField_12_0_0_63967_009() end

---Sets the value of field 'Field_12_0_0_63967_009'.
---@param value integer
---@return dbc.row.v1215.EventSchedulerEvent self
function row:SetField_12_0_0_63967_009(value) end

---Table container for EventSchedulerEvent (Build 12.1.5.69594).
---@class dbc.Table.v1215.EventSchedulerEvent : DbcTable
---@field [integer] dbc.row.v1215.EventSchedulerEvent
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.EventSchedulerEvent
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.EventSchedulerEvent|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.EventSchedulerEvent
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.EventSchedulerEvent>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.EventSchedulerEvent[]
function tbl:GetByRelation(foreign_id) end

return {}
