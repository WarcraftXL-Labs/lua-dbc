---@meta
-- Generated LuaLS annotations for FlightCapabilityXGlideEvent (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of FlightCapabilityXGlideEvent in build 12.1.5.69594.
---@class dbc.row.v1215.FlightCapabilityXGlideEvent : RowProxy
---@field ID integer
---@field GlideEventID integer
---@field FlightCapabilityID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.FlightCapabilityXGlideEvent self
function row:SetID(value) end

---Gets the value of field 'GlideEventID'.
---@return integer value
function row:GetGlideEventID() end

---Sets the value of field 'GlideEventID'.
---@param value integer
---@return dbc.row.v1215.FlightCapabilityXGlideEvent self
function row:SetGlideEventID(value) end

---Navigates foreign relationship to 'GlideEvent' via 'GlideEventID'.
---@return dbc.row.v1215.GlideEvent|nil
function row:GetGlideEvent() end

---Creates a related 'GlideEvent' row and automatically links 'GlideEventID'.
---@param data? table
---@return dbc.row.v1215.GlideEvent
function row:CreateRelated(data) end

---Gets the value of field 'FlightCapabilityID'.
---@return integer value
function row:GetFlightCapabilityID() end

---Sets the value of field 'FlightCapabilityID'.
---@param value integer
---@return dbc.row.v1215.FlightCapabilityXGlideEvent self
function row:SetFlightCapabilityID(value) end

---Navigates foreign relationship to 'FlightCapability' via 'FlightCapabilityID'.
---@return dbc.row.v1215.FlightCapability|nil
function row:GetFlightCapability() end

---Creates a related 'FlightCapability' row and automatically links 'FlightCapabilityID'.
---@param data? table
---@return dbc.row.v1215.FlightCapability
function row:CreateRelated(data) end

---Table container for FlightCapabilityXGlideEvent (Build 12.1.5.69594).
---@class dbc.Table.v1215.FlightCapabilityXGlideEvent : DbcTable
---@field [integer] dbc.row.v1215.FlightCapabilityXGlideEvent
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.FlightCapabilityXGlideEvent
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.FlightCapabilityXGlideEvent|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.FlightCapabilityXGlideEvent
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.FlightCapabilityXGlideEvent>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.FlightCapabilityXGlideEvent[]
function tbl:GetByRelation(foreign_id) end

return {}
