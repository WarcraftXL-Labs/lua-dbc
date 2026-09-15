---@meta
-- Generated LuaLS annotations for CharHairGeosets (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CharHairGeosets in build 12.1.5.69594.
---@class dbc.row.v1215.CharHairGeosets : RowProxy
---@field ID integer
---@field RaceID integer
---@field SexID integer
---@field VariationID integer
---@field GeosetID integer
---@field Showscalp integer
---@field VariationType integer
---@field GeosetType integer
---@field ColorIndex integer
---@field CustomGeoFileDataID integer
---@field HdCustomGeoFileDataID integer
---@field Field_8_3_0_32044_010 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CharHairGeosets self
function row:SetID(value) end

---Gets the value of field 'RaceID'.
---@return integer value
function row:GetRaceID() end

---Sets the value of field 'RaceID'.
---@param value integer
---@return dbc.row.v1215.CharHairGeosets self
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
---@return dbc.row.v1215.CharHairGeosets self
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
---@return dbc.row.v1215.CharHairGeosets self
function row:SetVariationID(value) end

---Navigates foreign relationship to 'Variation' via 'VariationID'.
---@return dbc.row.v1215.Variation|nil
function row:GetVariation() end

---Creates a related 'Variation' row and automatically links 'VariationID'.
---@param data? table
---@return dbc.row.v1215.Variation
function row:CreateRelated(data) end

---Gets the value of field 'GeosetID'.
---@return integer value
function row:GetGeosetID() end

---Sets the value of field 'GeosetID'.
---@param value integer
---@return dbc.row.v1215.CharHairGeosets self
function row:SetGeosetID(value) end

---Navigates foreign relationship to 'Geoset' via 'GeosetID'.
---@return dbc.row.v1215.Geoset|nil
function row:GetGeoset() end

---Creates a related 'Geoset' row and automatically links 'GeosetID'.
---@param data? table
---@return dbc.row.v1215.Geoset
function row:CreateRelated(data) end

---Gets the value of field 'Showscalp'.
---@return integer value
function row:GetShowscalp() end

---Sets the value of field 'Showscalp'.
---@param value integer
---@return dbc.row.v1215.CharHairGeosets self
function row:SetShowscalp(value) end

---Gets the value of field 'VariationType'.
---@return integer value
function row:GetVariationType() end

---Sets the value of field 'VariationType'.
---@param value integer
---@return dbc.row.v1215.CharHairGeosets self
function row:SetVariationType(value) end

---Gets the value of field 'GeosetType'.
---@return integer value
function row:GetGeosetType() end

---Sets the value of field 'GeosetType'.
---@param value integer
---@return dbc.row.v1215.CharHairGeosets self
function row:SetGeosetType(value) end

---Gets the value of field 'ColorIndex'.
---@return integer value
function row:GetColorIndex() end

---Sets the value of field 'ColorIndex'.
---@param value integer
---@return dbc.row.v1215.CharHairGeosets self
function row:SetColorIndex(value) end

---Gets the value of field 'CustomGeoFileDataID'.
---@return integer value
function row:GetCustomGeoFileDataID() end

---Sets the value of field 'CustomGeoFileDataID'.
---@param value integer
---@return dbc.row.v1215.CharHairGeosets self
function row:SetCustomGeoFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'CustomGeoFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetCustomGeoFileData() end

---Creates a related 'FileData' row and automatically links 'CustomGeoFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'HdCustomGeoFileDataID'.
---@return integer value
function row:GetHdCustomGeoFileDataID() end

---Sets the value of field 'HdCustomGeoFileDataID'.
---@param value integer
---@return dbc.row.v1215.CharHairGeosets self
function row:SetHdCustomGeoFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'HdCustomGeoFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetHdCustomGeoFileData() end

---Creates a related 'FileData' row and automatically links 'HdCustomGeoFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Field_8_3_0_32044_010'.
---@return integer value
function row:GetField_8_3_0_32044_010() end

---Sets the value of field 'Field_8_3_0_32044_010'.
---@param value integer
---@return dbc.row.v1215.CharHairGeosets self
function row:SetField_8_3_0_32044_010(value) end

---Table container for CharHairGeosets (Build 12.1.5.69594).
---@class dbc.Table.v1215.CharHairGeosets : DbcTable
---@field [integer] dbc.row.v1215.CharHairGeosets
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CharHairGeosets
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CharHairGeosets|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CharHairGeosets
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CharHairGeosets>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CharHairGeosets[]
function tbl:GetByRelation(foreign_id) end

return {}
