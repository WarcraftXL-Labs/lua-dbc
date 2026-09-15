---@meta
-- Generated LuaLS annotations for ScheduledInterval (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ScheduledInterval in build 12.1.5.69594.
---@class dbc.row.v1215.ScheduledInterval : RowProxy
---@field ID integer
---@field Flags integer
---@field RepeatType integer
---@field DurationSecs integer
---@field OffsetSecs integer
---@field DateAlignmentType integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ScheduledInterval self
function row:SetID(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ScheduledInterval self
function row:SetFlags(value) end

---Gets the value of field 'RepeatType'.
---@return integer value
function row:GetRepeatType() end

---Sets the value of field 'RepeatType'.
---@param value integer
---@return dbc.row.v1215.ScheduledInterval self
function row:SetRepeatType(value) end

---Gets the value of field 'DurationSecs'.
---@return integer value
function row:GetDurationSecs() end

---Sets the value of field 'DurationSecs'.
---@param value integer
---@return dbc.row.v1215.ScheduledInterval self
function row:SetDurationSecs(value) end

---Gets the value of field 'OffsetSecs'.
---@return integer value
function row:GetOffsetSecs() end

---Sets the value of field 'OffsetSecs'.
---@param value integer
---@return dbc.row.v1215.ScheduledInterval self
function row:SetOffsetSecs(value) end

---Gets the value of field 'DateAlignmentType'.
---@return integer value
function row:GetDateAlignmentType() end

---Sets the value of field 'DateAlignmentType'.
---@param value integer
---@return dbc.row.v1215.ScheduledInterval self
function row:SetDateAlignmentType(value) end

---Table container for ScheduledInterval (Build 12.1.5.69594).
---@class dbc.Table.v1215.ScheduledInterval : DbcTable
---@field [integer] dbc.row.v1215.ScheduledInterval
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ScheduledInterval
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ScheduledInterval|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ScheduledInterval
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ScheduledInterval>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ScheduledInterval[]
function tbl:GetByRelation(foreign_id) end

return {}
