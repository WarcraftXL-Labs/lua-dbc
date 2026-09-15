---@meta
-- Generated LuaLS annotations for SoundBus (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SoundBus in build 12.1.5.69594.
---@class dbc.row.v1215.SoundBus : RowProxy
---@field ID integer
---@field Flags integer
---@field DefaultPriority integer
---@field DefaultPriorityPenalty integer
---@field DefaultVolume number
---@field DefaultPlaybackLimit integer
---@field BusEnumID integer
---@field Parent integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SoundBus self
function row:SetID(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.SoundBus self
function row:SetFlags(value) end

---Gets the value of field 'DefaultPriority'.
---@return integer value
function row:GetDefaultPriority() end

---Sets the value of field 'DefaultPriority'.
---@param value integer
---@return dbc.row.v1215.SoundBus self
function row:SetDefaultPriority(value) end

---Gets the value of field 'DefaultPriorityPenalty'.
---@return integer value
function row:GetDefaultPriorityPenalty() end

---Sets the value of field 'DefaultPriorityPenalty'.
---@param value integer
---@return dbc.row.v1215.SoundBus self
function row:SetDefaultPriorityPenalty(value) end

---Gets the value of field 'DefaultVolume'.
---@return number value
function row:GetDefaultVolume() end

---Sets the value of field 'DefaultVolume'.
---@param value number
---@return dbc.row.v1215.SoundBus self
function row:SetDefaultVolume(value) end

---Gets the value of field 'DefaultPlaybackLimit'.
---@return integer value
function row:GetDefaultPlaybackLimit() end

---Sets the value of field 'DefaultPlaybackLimit'.
---@param value integer
---@return dbc.row.v1215.SoundBus self
function row:SetDefaultPlaybackLimit(value) end

---Gets the value of field 'BusEnumID'.
---@return integer value
function row:GetBusEnumID() end

---Sets the value of field 'BusEnumID'.
---@param value integer
---@return dbc.row.v1215.SoundBus self
function row:SetBusEnumID(value) end

---Navigates foreign relationship to 'BusEnum' via 'BusEnumID'.
---@return dbc.row.v1215.BusEnum|nil
function row:GetBusEnum() end

---Creates a related 'BusEnum' row and automatically links 'BusEnumID'.
---@param data? table
---@return dbc.row.v1215.BusEnum
function row:CreateRelated(data) end

---Gets the value of field 'Parent'.
---@return integer value
function row:GetParent() end

---Sets the value of field 'Parent'.
---@param value integer
---@return dbc.row.v1215.SoundBus self
function row:SetParent(value) end

---Table container for SoundBus (Build 12.1.5.69594).
---@class dbc.Table.v1215.SoundBus : DbcTable
---@field [integer] dbc.row.v1215.SoundBus
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SoundBus
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SoundBus|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SoundBus
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SoundBus>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SoundBus[]
function tbl:GetByRelation(foreign_id) end

return {}
