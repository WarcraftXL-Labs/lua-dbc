---@meta
-- Generated LuaLS annotations for ChrRaceXChrModel (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrRaceXChrModel in build 12.1.5.69594.
---@class dbc.row.v1215.ChrRaceXChrModel : RowProxy
---@field ID integer
---@field ChrRacesID integer
---@field ChrModelID integer
---@field Sex integer 0: Male, 1: Female
---@field AllowedTransmogSlots integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrRaceXChrModel self
function row:SetID(value) end

---Gets the value of field 'ChrRacesID'.
---@return integer value
function row:GetChrRacesID() end

---Sets the value of field 'ChrRacesID'.
---@param value integer
---@return dbc.row.v1215.ChrRaceXChrModel self
function row:SetChrRacesID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'ChrRacesID'.
---@return dbc.row.v1215.ChrRaces|nil
function row:GetChrRaces() end

---Creates a related 'ChrRaces' row and automatically links 'ChrRacesID'.
---@param data? table
---@return dbc.row.v1215.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'ChrModelID'.
---@return integer value
function row:GetChrModelID() end

---Sets the value of field 'ChrModelID'.
---@param value integer
---@return dbc.row.v1215.ChrRaceXChrModel self
function row:SetChrModelID(value) end

---Navigates foreign relationship to 'ChrModel' via 'ChrModelID'.
---@return dbc.row.v1215.ChrModel|nil
function row:GetChrModel() end

---Creates a related 'ChrModel' row and automatically links 'ChrModelID'.
---@param data? table
---@return dbc.row.v1215.ChrModel
function row:CreateRelated(data) end

---Gets the value of field 'Sex'.
---@return integer value
function row:GetSex() end

---Sets the value of field 'Sex'.
---@param value integer
---@return dbc.row.v1215.ChrRaceXChrModel self
function row:SetSex(value) end

---Gets the value of field 'AllowedTransmogSlots'.
---@return integer value
function row:GetAllowedTransmogSlots() end

---Sets the value of field 'AllowedTransmogSlots'.
---@param value integer
---@return dbc.row.v1215.ChrRaceXChrModel self
function row:SetAllowedTransmogSlots(value) end

---Table container for ChrRaceXChrModel (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrRaceXChrModel : DbcTable
---@field [integer] dbc.row.v1215.ChrRaceXChrModel
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrRaceXChrModel
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrRaceXChrModel|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrRaceXChrModel
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrRaceXChrModel>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrRaceXChrModel[]
function tbl:GetByRelation(foreign_id) end

return {}
