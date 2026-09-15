---@meta
-- Generated LuaLS annotations for GarrUiAnimRaceInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrUiAnimRaceInfo in build 12.1.5.69594.
---@class dbc.row.v1215.GarrUiAnimRaceInfo : RowProxy
---@field ID integer
---@field GarrFollRaceID integer
---@field MaleScale number
---@field MaleHeight number
---@field FemaleScale number
---@field FemaleHeight number
---@field MaleSingleModelScale number
---@field MaleSingleModelHeight number
---@field FemaleSingleModelScale number
---@field FemaleSingleModelHeight number
---@field MaleFollowerPageScale number
---@field MaleFollowerPageHeight number
---@field FemaleFollowerPageScale number
---@field FemaleFollowerPageHeight number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrUiAnimRaceInfo self
function row:SetID(value) end

---Gets the value of field 'GarrFollRaceID'.
---@return integer value
function row:GetGarrFollRaceID() end

---Sets the value of field 'GarrFollRaceID'.
---@param value integer
---@return dbc.row.v1215.GarrUiAnimRaceInfo self
function row:SetGarrFollRaceID(value) end

---Navigates foreign relationship to 'GarrFollRace' via 'GarrFollRaceID'.
---@return dbc.row.v1215.GarrFollRace|nil
function row:GetGarrFollRace() end

---Creates a related 'GarrFollRace' row and automatically links 'GarrFollRaceID'.
---@param data? table
---@return dbc.row.v1215.GarrFollRace
function row:CreateRelated(data) end

---Gets the value of field 'MaleScale'.
---@return number value
function row:GetMaleScale() end

---Sets the value of field 'MaleScale'.
---@param value number
---@return dbc.row.v1215.GarrUiAnimRaceInfo self
function row:SetMaleScale(value) end

---Gets the value of field 'MaleHeight'.
---@return number value
function row:GetMaleHeight() end

---Sets the value of field 'MaleHeight'.
---@param value number
---@return dbc.row.v1215.GarrUiAnimRaceInfo self
function row:SetMaleHeight(value) end

---Gets the value of field 'FemaleScale'.
---@return number value
function row:GetFemaleScale() end

---Sets the value of field 'FemaleScale'.
---@param value number
---@return dbc.row.v1215.GarrUiAnimRaceInfo self
function row:SetFemaleScale(value) end

---Gets the value of field 'FemaleHeight'.
---@return number value
function row:GetFemaleHeight() end

---Sets the value of field 'FemaleHeight'.
---@param value number
---@return dbc.row.v1215.GarrUiAnimRaceInfo self
function row:SetFemaleHeight(value) end

---Gets the value of field 'MaleSingleModelScale'.
---@return number value
function row:GetMaleSingleModelScale() end

---Sets the value of field 'MaleSingleModelScale'.
---@param value number
---@return dbc.row.v1215.GarrUiAnimRaceInfo self
function row:SetMaleSingleModelScale(value) end

---Gets the value of field 'MaleSingleModelHeight'.
---@return number value
function row:GetMaleSingleModelHeight() end

---Sets the value of field 'MaleSingleModelHeight'.
---@param value number
---@return dbc.row.v1215.GarrUiAnimRaceInfo self
function row:SetMaleSingleModelHeight(value) end

---Gets the value of field 'FemaleSingleModelScale'.
---@return number value
function row:GetFemaleSingleModelScale() end

---Sets the value of field 'FemaleSingleModelScale'.
---@param value number
---@return dbc.row.v1215.GarrUiAnimRaceInfo self
function row:SetFemaleSingleModelScale(value) end

---Gets the value of field 'FemaleSingleModelHeight'.
---@return number value
function row:GetFemaleSingleModelHeight() end

---Sets the value of field 'FemaleSingleModelHeight'.
---@param value number
---@return dbc.row.v1215.GarrUiAnimRaceInfo self
function row:SetFemaleSingleModelHeight(value) end

---Gets the value of field 'MaleFollowerPageScale'.
---@return number value
function row:GetMaleFollowerPageScale() end

---Sets the value of field 'MaleFollowerPageScale'.
---@param value number
---@return dbc.row.v1215.GarrUiAnimRaceInfo self
function row:SetMaleFollowerPageScale(value) end

---Gets the value of field 'MaleFollowerPageHeight'.
---@return number value
function row:GetMaleFollowerPageHeight() end

---Sets the value of field 'MaleFollowerPageHeight'.
---@param value number
---@return dbc.row.v1215.GarrUiAnimRaceInfo self
function row:SetMaleFollowerPageHeight(value) end

---Gets the value of field 'FemaleFollowerPageScale'.
---@return number value
function row:GetFemaleFollowerPageScale() end

---Sets the value of field 'FemaleFollowerPageScale'.
---@param value number
---@return dbc.row.v1215.GarrUiAnimRaceInfo self
function row:SetFemaleFollowerPageScale(value) end

---Gets the value of field 'FemaleFollowerPageHeight'.
---@return number value
function row:GetFemaleFollowerPageHeight() end

---Sets the value of field 'FemaleFollowerPageHeight'.
---@param value number
---@return dbc.row.v1215.GarrUiAnimRaceInfo self
function row:SetFemaleFollowerPageHeight(value) end

---Table container for GarrUiAnimRaceInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrUiAnimRaceInfo : DbcTable
---@field [integer] dbc.row.v1215.GarrUiAnimRaceInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrUiAnimRaceInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrUiAnimRaceInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrUiAnimRaceInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrUiAnimRaceInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrUiAnimRaceInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
