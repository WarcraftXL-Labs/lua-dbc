---@meta
-- Generated LuaLS annotations for ChrRacesCreateScreenIcon (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrRacesCreateScreenIcon in build 12.1.5.69594.
---@class dbc.row.v1215.ChrRacesCreateScreenIcon : RowProxy
---@field ID integer
---@field ChrRacesID integer
---@field Sex integer mask: 1: male, 2: female, 3: male+female
---@field RaceIcon integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrRacesCreateScreenIcon self
function row:SetID(value) end

---Gets the value of field 'ChrRacesID'.
---@return integer value
function row:GetChrRacesID() end

---Sets the value of field 'ChrRacesID'.
---@param value integer
---@return dbc.row.v1215.ChrRacesCreateScreenIcon self
function row:SetChrRacesID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'ChrRacesID'.
---@return dbc.row.v1215.ChrRaces|nil
function row:GetChrRaces() end

---Creates a related 'ChrRaces' row and automatically links 'ChrRacesID'.
---@param data? table
---@return dbc.row.v1215.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'Sex'.
---@return integer value
function row:GetSex() end

---Sets the value of field 'Sex'.
---@param value integer
---@return dbc.row.v1215.ChrRacesCreateScreenIcon self
function row:SetSex(value) end

---Gets the value of field 'RaceIcon'.
---@return integer value
function row:GetRaceIcon() end

---Sets the value of field 'RaceIcon'.
---@param value integer
---@return dbc.row.v1215.ChrRacesCreateScreenIcon self
function row:SetRaceIcon(value) end

---Navigates foreign relationship to 'UiTextureAtlasElement' via 'RaceIcon'.
---@return dbc.row.v1215.UiTextureAtlasElement|nil
function row:GetRaceIcon() end

---Creates a related 'UiTextureAtlasElement' row and automatically links 'RaceIcon'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasElement
function row:CreateRelated(data) end

---Table container for ChrRacesCreateScreenIcon (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrRacesCreateScreenIcon : DbcTable
---@field [integer] dbc.row.v1215.ChrRacesCreateScreenIcon
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrRacesCreateScreenIcon
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrRacesCreateScreenIcon|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrRacesCreateScreenIcon
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrRacesCreateScreenIcon>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrRacesCreateScreenIcon[]
function tbl:GetByRelation(foreign_id) end

return {}
