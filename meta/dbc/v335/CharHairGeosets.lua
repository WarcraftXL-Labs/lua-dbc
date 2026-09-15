---@meta
-- Generated LuaLS annotations for CharHairGeosets (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of CharHairGeosets in build 3.3.5.12340.
---@class dbc.row.v335.CharHairGeosets : RowProxy
---@field ID integer
---@field RaceID integer
---@field SexID integer
---@field VariationID integer
---@field GeosetID integer
---@field Showscalp integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.CharHairGeosets self
function row:SetID(value) end

---Gets the value of field 'RaceID'.
---@return integer value
function row:GetRaceID() end

---Sets the value of field 'RaceID'.
---@param value integer
---@return dbc.row.v335.CharHairGeosets self
function row:SetRaceID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'RaceID'.
---@return dbc.row.v335.ChrRaces|nil
function row:GetRace() end

---Creates a related 'ChrRaces' row and automatically links 'RaceID'.
---@param data? table
---@return dbc.row.v335.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'SexID'.
---@return integer value
function row:GetSexID() end

---Sets the value of field 'SexID'.
---@param value integer
---@return dbc.row.v335.CharHairGeosets self
function row:SetSexID(value) end

---Navigates foreign relationship to 'Sex' via 'SexID'.
---@return dbc.row.v335.Sex|nil
function row:GetSex() end

---Creates a related 'Sex' row and automatically links 'SexID'.
---@param data? table
---@return dbc.row.v335.Sex
function row:CreateRelated(data) end

---Gets the value of field 'VariationID'.
---@return integer value
function row:GetVariationID() end

---Sets the value of field 'VariationID'.
---@param value integer
---@return dbc.row.v335.CharHairGeosets self
function row:SetVariationID(value) end

---Navigates foreign relationship to 'Variation' via 'VariationID'.
---@return dbc.row.v335.Variation|nil
function row:GetVariation() end

---Creates a related 'Variation' row and automatically links 'VariationID'.
---@param data? table
---@return dbc.row.v335.Variation
function row:CreateRelated(data) end

---Gets the value of field 'GeosetID'.
---@return integer value
function row:GetGeosetID() end

---Sets the value of field 'GeosetID'.
---@param value integer
---@return dbc.row.v335.CharHairGeosets self
function row:SetGeosetID(value) end

---Navigates foreign relationship to 'Geoset' via 'GeosetID'.
---@return dbc.row.v335.Geoset|nil
function row:GetGeoset() end

---Creates a related 'Geoset' row and automatically links 'GeosetID'.
---@param data? table
---@return dbc.row.v335.Geoset
function row:CreateRelated(data) end

---Gets the value of field 'Showscalp'.
---@return integer value
function row:GetShowscalp() end

---Sets the value of field 'Showscalp'.
---@param value integer
---@return dbc.row.v335.CharHairGeosets self
function row:SetShowscalp(value) end

---Table container for CharHairGeosets (Build 3.3.5.12340).
---@class dbc.Table.v335.CharHairGeosets : DbcTable
---@field [integer] dbc.row.v335.CharHairGeosets
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.CharHairGeosets
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.CharHairGeosets|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.CharHairGeosets
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.CharHairGeosets>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.CharHairGeosets[]
function tbl:GetByRelation(foreign_id) end

return {}
