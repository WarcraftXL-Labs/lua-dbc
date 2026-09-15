---@meta
-- Generated LuaLS annotations for VehicleUIIndSeat (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of VehicleUIIndSeat in build 12.1.5.69594.
---@class dbc.row.v1215.VehicleUIIndSeat : RowProxy
---@field ID integer
---@field VirtualSeatIndex integer
---@field XPos number
---@field YPos number
---@field VehicleUIIndicatorID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.VehicleUIIndSeat self
function row:SetID(value) end

---Gets the value of field 'VirtualSeatIndex'.
---@return integer value
function row:GetVirtualSeatIndex() end

---Sets the value of field 'VirtualSeatIndex'.
---@param value integer
---@return dbc.row.v1215.VehicleUIIndSeat self
function row:SetVirtualSeatIndex(value) end

---Gets the value of field 'XPos'.
---@return number value
function row:GetXPos() end

---Sets the value of field 'XPos'.
---@param value number
---@return dbc.row.v1215.VehicleUIIndSeat self
function row:SetXPos(value) end

---Gets the value of field 'YPos'.
---@return number value
function row:GetYPos() end

---Sets the value of field 'YPos'.
---@param value number
---@return dbc.row.v1215.VehicleUIIndSeat self
function row:SetYPos(value) end

---Gets the value of field 'VehicleUIIndicatorID'.
---@return integer value
function row:GetVehicleUIIndicatorID() end

---Sets the value of field 'VehicleUIIndicatorID'.
---@param value integer
---@return dbc.row.v1215.VehicleUIIndSeat self
function row:SetVehicleUIIndicatorID(value) end

---Navigates foreign relationship to 'VehicleUIIndicator' via 'VehicleUIIndicatorID'.
---@return dbc.row.v1215.VehicleUIIndicator|nil
function row:GetVehicleUIIndicator() end

---Creates a related 'VehicleUIIndicator' row and automatically links 'VehicleUIIndicatorID'.
---@param data? table
---@return dbc.row.v1215.VehicleUIIndicator
function row:CreateRelated(data) end

---Table container for VehicleUIIndSeat (Build 12.1.5.69594).
---@class dbc.Table.v1215.VehicleUIIndSeat : DbcTable
---@field [integer] dbc.row.v1215.VehicleUIIndSeat
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.VehicleUIIndSeat
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.VehicleUIIndSeat|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.VehicleUIIndSeat
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.VehicleUIIndSeat>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.VehicleUIIndSeat[]
function tbl:GetByRelation(foreign_id) end

return {}
