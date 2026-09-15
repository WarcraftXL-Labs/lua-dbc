---@meta
-- Generated LuaLS annotations for GarrMissionXFollower (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrMissionXFollower in build 12.1.5.69594.
---@class dbc.row.v1215.GarrMissionXFollower : RowProxy
---@field ID integer
---@field GarrFollowerID integer
---@field GarrFollowerSetID integer
---@field Field_9_0_1_33978_002 integer second field in JamGarrisonMissionFollowerReqInfo
---@field GarrMissionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrMissionXFollower self
function row:SetID(value) end

---Gets the value of field 'GarrFollowerID'.
---@return integer value
function row:GetGarrFollowerID() end

---Sets the value of field 'GarrFollowerID'.
---@param value integer
---@return dbc.row.v1215.GarrMissionXFollower self
function row:SetGarrFollowerID(value) end

---Navigates foreign relationship to 'GarrFollower' via 'GarrFollowerID'.
---@return dbc.row.v1215.GarrFollower|nil
function row:GetGarrFollower() end

---Creates a related 'GarrFollower' row and automatically links 'GarrFollowerID'.
---@param data? table
---@return dbc.row.v1215.GarrFollower
function row:CreateRelated(data) end

---Gets the value of field 'GarrFollowerSetID'.
---@return integer value
function row:GetGarrFollowerSetID() end

---Sets the value of field 'GarrFollowerSetID'.
---@param value integer
---@return dbc.row.v1215.GarrMissionXFollower self
function row:SetGarrFollowerSetID(value) end

---Navigates foreign relationship to 'GarrFollowerSet' via 'GarrFollowerSetID'.
---@return dbc.row.v1215.GarrFollowerSet|nil
function row:GetGarrFollowerSet() end

---Creates a related 'GarrFollowerSet' row and automatically links 'GarrFollowerSetID'.
---@param data? table
---@return dbc.row.v1215.GarrFollowerSet
function row:CreateRelated(data) end

---Gets the value of field 'Field_9_0_1_33978_002'.
---@return integer value
function row:GetField_9_0_1_33978_002() end

---Sets the value of field 'Field_9_0_1_33978_002'.
---@param value integer
---@return dbc.row.v1215.GarrMissionXFollower self
function row:SetField_9_0_1_33978_002(value) end

---Gets the value of field 'GarrMissionID'.
---@return integer value
function row:GetGarrMissionID() end

---Sets the value of field 'GarrMissionID'.
---@param value integer
---@return dbc.row.v1215.GarrMissionXFollower self
function row:SetGarrMissionID(value) end

---Navigates foreign relationship to 'GarrMission' via 'GarrMissionID'.
---@return dbc.row.v1215.GarrMission|nil
function row:GetGarrMission() end

---Creates a related 'GarrMission' row and automatically links 'GarrMissionID'.
---@param data? table
---@return dbc.row.v1215.GarrMission
function row:CreateRelated(data) end

---Table container for GarrMissionXFollower (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrMissionXFollower : DbcTable
---@field [integer] dbc.row.v1215.GarrMissionXFollower
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrMissionXFollower
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrMissionXFollower|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrMissionXFollower
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrMissionXFollower>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrMissionXFollower[]
function tbl:GetByRelation(foreign_id) end

return {}
