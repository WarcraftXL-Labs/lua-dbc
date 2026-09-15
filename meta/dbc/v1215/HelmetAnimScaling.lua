---@meta
-- Generated LuaLS annotations for HelmetAnimScaling (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of HelmetAnimScaling in build 12.1.5.69594.
---@class dbc.row.v1215.HelmetAnimScaling : RowProxy
---@field ID integer
---@field RaceID integer
---@field Amount number
---@field HelmetGeosetVisDataID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.HelmetAnimScaling self
function row:SetID(value) end

---Gets the value of field 'RaceID'.
---@return integer value
function row:GetRaceID() end

---Sets the value of field 'RaceID'.
---@param value integer
---@return dbc.row.v1215.HelmetAnimScaling self
function row:SetRaceID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'RaceID'.
---@return dbc.row.v1215.ChrRaces|nil
function row:GetRace() end

---Creates a related 'ChrRaces' row and automatically links 'RaceID'.
---@param data? table
---@return dbc.row.v1215.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'Amount'.
---@return number value
function row:GetAmount() end

---Sets the value of field 'Amount'.
---@param value number
---@return dbc.row.v1215.HelmetAnimScaling self
function row:SetAmount(value) end

---Gets the value of field 'HelmetGeosetVisDataID'.
---@return integer value
function row:GetHelmetGeosetVisDataID() end

---Sets the value of field 'HelmetGeosetVisDataID'.
---@param value integer
---@return dbc.row.v1215.HelmetAnimScaling self
function row:SetHelmetGeosetVisDataID(value) end

---Navigates foreign relationship to 'HelmetGeosetVisData' via 'HelmetGeosetVisDataID'.
---@return dbc.row.v1215.HelmetGeosetVisData|nil
function row:GetHelmetGeosetVisData() end

---Creates a related 'HelmetGeosetVisData' row and automatically links 'HelmetGeosetVisDataID'.
---@param data? table
---@return dbc.row.v1215.HelmetGeosetVisData
function row:CreateRelated(data) end

---Table container for HelmetAnimScaling (Build 12.1.5.69594).
---@class dbc.Table.v1215.HelmetAnimScaling : DbcTable
---@field [integer] dbc.row.v1215.HelmetAnimScaling
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.HelmetAnimScaling
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.HelmetAnimScaling|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.HelmetAnimScaling
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.HelmetAnimScaling>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.HelmetAnimScaling[]
function tbl:GetByRelation(foreign_id) end

return {}
