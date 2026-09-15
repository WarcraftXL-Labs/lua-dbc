---@meta
-- Generated LuaLS annotations for HelmetGeosetData (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of HelmetGeosetData in build 12.1.5.69594.
---@class dbc.row.v1215.HelmetGeosetData : RowProxy
---@field ID integer
---@field RaceID integer
---@field HideGeosetGroup integer
---@field RaceBitSelection integer instead of using race id, use playable race bit to select; 0: none, 1: Alliance, 2: Horde, 3: any playable
---@field Field_10_0_0_46047_003 integer
---@field HelmetGeosetVisDataID integer this is equivalent to HelmetGeosetVisData::ID, which is still how this table is referenced.

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.HelmetGeosetData self
function row:SetID(value) end

---Gets the value of field 'RaceID'.
---@return integer value
function row:GetRaceID() end

---Sets the value of field 'RaceID'.
---@param value integer
---@return dbc.row.v1215.HelmetGeosetData self
function row:SetRaceID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'RaceID'.
---@return dbc.row.v1215.ChrRaces|nil
function row:GetRace() end

---Creates a related 'ChrRaces' row and automatically links 'RaceID'.
---@param data? table
---@return dbc.row.v1215.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'HideGeosetGroup'.
---@return integer value
function row:GetHideGeosetGroup() end

---Sets the value of field 'HideGeosetGroup'.
---@param value integer
---@return dbc.row.v1215.HelmetGeosetData self
function row:SetHideGeosetGroup(value) end

---Gets the value of field 'RaceBitSelection'.
---@return integer value
function row:GetRaceBitSelection() end

---Sets the value of field 'RaceBitSelection'.
---@param value integer
---@return dbc.row.v1215.HelmetGeosetData self
function row:SetRaceBitSelection(value) end

---Gets the value of field 'Field_10_0_0_46047_003'.
---@return integer value
function row:GetField_10_0_0_46047_003() end

---Sets the value of field 'Field_10_0_0_46047_003'.
---@param value integer
---@return dbc.row.v1215.HelmetGeosetData self
function row:SetField_10_0_0_46047_003(value) end

---Gets the value of field 'HelmetGeosetVisDataID'.
---@return integer value
function row:GetHelmetGeosetVisDataID() end

---Sets the value of field 'HelmetGeosetVisDataID'.
---@param value integer
---@return dbc.row.v1215.HelmetGeosetData self
function row:SetHelmetGeosetVisDataID(value) end

---Navigates foreign relationship to 'HelmetGeosetVisData' via 'HelmetGeosetVisDataID'.
---@return dbc.row.v1215.HelmetGeosetVisData|nil
function row:GetHelmetGeosetVisData() end

---Creates a related 'HelmetGeosetVisData' row and automatically links 'HelmetGeosetVisDataID'.
---@param data? table
---@return dbc.row.v1215.HelmetGeosetVisData
function row:CreateRelated(data) end

---Table container for HelmetGeosetData (Build 12.1.5.69594).
---@class dbc.Table.v1215.HelmetGeosetData : DbcTable
---@field [integer] dbc.row.v1215.HelmetGeosetData
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.HelmetGeosetData
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.HelmetGeosetData|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.HelmetGeosetData
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.HelmetGeosetData>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.HelmetGeosetData[]
function tbl:GetByRelation(foreign_id) end

return {}
