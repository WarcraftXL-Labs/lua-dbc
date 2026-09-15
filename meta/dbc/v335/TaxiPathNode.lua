---@meta
-- Generated LuaLS annotations for TaxiPathNode (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of TaxiPathNode in build 3.3.5.12340.
---@class dbc.row.v335.TaxiPathNode : RowProxy
---@field ID integer
---@field PathID integer
---@field NodeIndex integer
---@field ContinentID integer
---@field Loc number[]
---@field Flags integer
---@field Delay integer
---@field ArrivalEventID integer
---@field DepartureEventID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.TaxiPathNode self
function row:SetID(value) end

---Gets the value of field 'PathID'.
---@return integer value
function row:GetPathID() end

---Sets the value of field 'PathID'.
---@param value integer
---@return dbc.row.v335.TaxiPathNode self
function row:SetPathID(value) end

---Navigates foreign relationship to 'TaxiPath' via 'PathID'.
---@return dbc.row.v335.TaxiPath|nil
function row:GetPath() end

---Creates a related 'TaxiPath' row and automatically links 'PathID'.
---@param data? table
---@return dbc.row.v335.TaxiPath
function row:CreateRelated(data) end

---Gets the value of field 'NodeIndex'.
---@return integer value
function row:GetNodeIndex() end

---Sets the value of field 'NodeIndex'.
---@param value integer
---@return dbc.row.v335.TaxiPathNode self
function row:SetNodeIndex(value) end

---Gets the value of field 'ContinentID'.
---@return integer value
function row:GetContinentID() end

---Sets the value of field 'ContinentID'.
---@param value integer
---@return dbc.row.v335.TaxiPathNode self
function row:SetContinentID(value) end

---Navigates foreign relationship to 'Map' via 'ContinentID'.
---@return dbc.row.v335.Map|nil
function row:GetContinent() end

---Creates a related 'Map' row and automatically links 'ContinentID'.
---@param data? table
---@return dbc.row.v335.Map
function row:CreateRelated(data) end

---Gets the value of field 'Loc'.
---@return number[] value
function row:GetLoc() end

---Sets the value of field 'Loc'.
---@param value number[]
---@return dbc.row.v335.TaxiPathNode self
function row:SetLoc(value) end

---Gets element at 1-based index in 'Loc'.
---@param index integer
---@return number value
function row:GetLocItem(index) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.TaxiPathNode self
function row:SetFlags(value) end

---Gets the value of field 'Delay'.
---@return integer value
function row:GetDelay() end

---Sets the value of field 'Delay'.
---@param value integer
---@return dbc.row.v335.TaxiPathNode self
function row:SetDelay(value) end

---Gets the value of field 'ArrivalEventID'.
---@return integer value
function row:GetArrivalEventID() end

---Sets the value of field 'ArrivalEventID'.
---@param value integer
---@return dbc.row.v335.TaxiPathNode self
function row:SetArrivalEventID(value) end

---Navigates foreign relationship to 'ArrivalEvent' via 'ArrivalEventID'.
---@return dbc.row.v335.ArrivalEvent|nil
function row:GetArrivalEvent() end

---Creates a related 'ArrivalEvent' row and automatically links 'ArrivalEventID'.
---@param data? table
---@return dbc.row.v335.ArrivalEvent
function row:CreateRelated(data) end

---Gets the value of field 'DepartureEventID'.
---@return integer value
function row:GetDepartureEventID() end

---Sets the value of field 'DepartureEventID'.
---@param value integer
---@return dbc.row.v335.TaxiPathNode self
function row:SetDepartureEventID(value) end

---Navigates foreign relationship to 'DepartureEvent' via 'DepartureEventID'.
---@return dbc.row.v335.DepartureEvent|nil
function row:GetDepartureEvent() end

---Creates a related 'DepartureEvent' row and automatically links 'DepartureEventID'.
---@param data? table
---@return dbc.row.v335.DepartureEvent
function row:CreateRelated(data) end

---Table container for TaxiPathNode (Build 3.3.5.12340).
---@class dbc.Table.v335.TaxiPathNode : DbcTable
---@field [integer] dbc.row.v335.TaxiPathNode
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.TaxiPathNode
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.TaxiPathNode|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.TaxiPathNode
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.TaxiPathNode>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.TaxiPathNode[]
function tbl:GetByRelation(foreign_id) end

return {}
