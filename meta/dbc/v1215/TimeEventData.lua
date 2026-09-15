---@meta
-- Generated LuaLS annotations for TimeEventData (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TimeEventData in build 12.1.5.69594.
---@class dbc.row.v1215.TimeEventData : RowProxy
---@field ID integer
---@field Timestamp integer
---@field TimeEventID integer serverside table
---@field Cfg_TimeEventRegionGroupID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TimeEventData self
function row:SetID(value) end

---Gets the value of field 'Timestamp'.
---@return integer value
function row:GetTimestamp() end

---Sets the value of field 'Timestamp'.
---@param value integer
---@return dbc.row.v1215.TimeEventData self
function row:SetTimestamp(value) end

---Gets the value of field 'TimeEventID'.
---@return integer value
function row:GetTimeEventID() end

---Sets the value of field 'TimeEventID'.
---@param value integer
---@return dbc.row.v1215.TimeEventData self
function row:SetTimeEventID(value) end

---Navigates foreign relationship to 'TimeEvent' via 'TimeEventID'.
---@return dbc.row.v1215.TimeEvent|nil
function row:GetTimeEvent() end

---Creates a related 'TimeEvent' row and automatically links 'TimeEventID'.
---@param data? table
---@return dbc.row.v1215.TimeEvent
function row:CreateRelated(data) end

---Gets the value of field 'Cfg_TimeEventRegionGroupID'.
---@return integer value
function row:GetCfg_TimeEventRegionGroupID() end

---Sets the value of field 'Cfg_TimeEventRegionGroupID'.
---@param value integer
---@return dbc.row.v1215.TimeEventData self
function row:SetCfg_TimeEventRegionGroupID(value) end

---Navigates foreign relationship to 'Cfg_TimeEventRegionGroup' via 'Cfg_TimeEventRegionGroupID'.
---@return dbc.row.v1215.Cfg_TimeEventRegionGroup|nil
function row:GetCfg_TimeEventRegionGroup() end

---Creates a related 'Cfg_TimeEventRegionGroup' row and automatically links 'Cfg_TimeEventRegionGroupID'.
---@param data? table
---@return dbc.row.v1215.Cfg_TimeEventRegionGroup
function row:CreateRelated(data) end

---Table container for TimeEventData (Build 12.1.5.69594).
---@class dbc.Table.v1215.TimeEventData : DbcTable
---@field [integer] dbc.row.v1215.TimeEventData
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TimeEventData
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TimeEventData|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TimeEventData
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TimeEventData>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TimeEventData[]
function tbl:GetByRelation(foreign_id) end

return {}
