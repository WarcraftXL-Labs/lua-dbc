---@meta
-- Generated LuaLS annotations for CharacterFacialHairStyles (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CharacterFacialHairStyles in build 12.1.5.69594.
---@class dbc.row.v1215.CharacterFacialHairStyles : RowProxy
---@field ID integer
---@field Geoset integer[]
---@field RaceID integer
---@field SexID integer
---@field VariationID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CharacterFacialHairStyles self
function row:SetID(value) end

---Gets the value of field 'Geoset'.
---@return integer[] value
function row:GetGeoset() end

---Sets the value of field 'Geoset'.
---@param value integer[]
---@return dbc.row.v1215.CharacterFacialHairStyles self
function row:SetGeoset(value) end

---Gets element at 1-based index in 'Geoset'.
---@param index integer
---@return integer value
function row:GetGeosetItem(index) end

---Gets the value of field 'RaceID'.
---@return integer value
function row:GetRaceID() end

---Sets the value of field 'RaceID'.
---@param value integer
---@return dbc.row.v1215.CharacterFacialHairStyles self
function row:SetRaceID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'RaceID'.
---@return dbc.row.v1215.ChrRaces|nil
function row:GetRace() end

---Creates a related 'ChrRaces' row and automatically links 'RaceID'.
---@param data? table
---@return dbc.row.v1215.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'SexID'.
---@return integer value
function row:GetSexID() end

---Sets the value of field 'SexID'.
---@param value integer
---@return dbc.row.v1215.CharacterFacialHairStyles self
function row:SetSexID(value) end

---Navigates foreign relationship to 'Sex' via 'SexID'.
---@return dbc.row.v1215.Sex|nil
function row:GetSex() end

---Creates a related 'Sex' row and automatically links 'SexID'.
---@param data? table
---@return dbc.row.v1215.Sex
function row:CreateRelated(data) end

---Gets the value of field 'VariationID'.
---@return integer value
function row:GetVariationID() end

---Sets the value of field 'VariationID'.
---@param value integer
---@return dbc.row.v1215.CharacterFacialHairStyles self
function row:SetVariationID(value) end

---Navigates foreign relationship to 'Variation' via 'VariationID'.
---@return dbc.row.v1215.Variation|nil
function row:GetVariation() end

---Creates a related 'Variation' row and automatically links 'VariationID'.
---@param data? table
---@return dbc.row.v1215.Variation
function row:CreateRelated(data) end

---Table container for CharacterFacialHairStyles (Build 12.1.5.69594).
---@class dbc.Table.v1215.CharacterFacialHairStyles : DbcTable
---@field [integer] dbc.row.v1215.CharacterFacialHairStyles
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CharacterFacialHairStyles
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CharacterFacialHairStyles|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CharacterFacialHairStyles
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CharacterFacialHairStyles>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CharacterFacialHairStyles[]
function tbl:GetByRelation(foreign_id) end

return {}
