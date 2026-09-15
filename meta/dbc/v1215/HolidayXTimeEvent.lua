---@meta
-- Generated LuaLS annotations for HolidayXTimeEvent (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of HolidayXTimeEvent in build 12.1.5.69594.
---@class dbc.row.v1215.HolidayXTimeEvent : RowProxy
---@field ID integer
---@field Field_11_2_0_61476_000 integer
---@field TimeEventID integer
---@field HolidayID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.HolidayXTimeEvent self
function row:SetID(value) end

---Gets the value of field 'Field_11_2_0_61476_000'.
---@return integer value
function row:GetField_11_2_0_61476_000() end

---Sets the value of field 'Field_11_2_0_61476_000'.
---@param value integer
---@return dbc.row.v1215.HolidayXTimeEvent self
function row:SetField_11_2_0_61476_000(value) end

---Gets the value of field 'TimeEventID'.
---@return integer value
function row:GetTimeEventID() end

---Sets the value of field 'TimeEventID'.
---@param value integer
---@return dbc.row.v1215.HolidayXTimeEvent self
function row:SetTimeEventID(value) end

---Navigates foreign relationship to 'TimeEventData' via 'TimeEventID'.
---@return dbc.row.v1215.TimeEventData|nil
function row:GetTimeEvent() end

---Creates a related 'TimeEventData' row and automatically links 'TimeEventID'.
---@param data? table
---@return dbc.row.v1215.TimeEventData
function row:CreateRelated(data) end

---Gets the value of field 'HolidayID'.
---@return integer value
function row:GetHolidayID() end

---Sets the value of field 'HolidayID'.
---@param value integer
---@return dbc.row.v1215.HolidayXTimeEvent self
function row:SetHolidayID(value) end

---Navigates foreign relationship to 'Holidays' via 'HolidayID'.
---@return dbc.row.v1215.Holidays|nil
function row:GetHoliday() end

---Creates a related 'Holidays' row and automatically links 'HolidayID'.
---@param data? table
---@return dbc.row.v1215.Holidays
function row:CreateRelated(data) end

---Table container for HolidayXTimeEvent (Build 12.1.5.69594).
---@class dbc.Table.v1215.HolidayXTimeEvent : DbcTable
---@field [integer] dbc.row.v1215.HolidayXTimeEvent
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.HolidayXTimeEvent
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.HolidayXTimeEvent|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.HolidayXTimeEvent
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.HolidayXTimeEvent>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.HolidayXTimeEvent[]
function tbl:GetByRelation(foreign_id) end

return {}
