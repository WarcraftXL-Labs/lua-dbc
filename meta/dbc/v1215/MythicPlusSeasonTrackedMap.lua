---@meta
-- Generated LuaLS annotations for MythicPlusSeasonTrackedMap (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MythicPlusSeasonTrackedMap in build 12.1.5.69594.
---@class dbc.row.v1215.MythicPlusSeasonTrackedMap : RowProxy
---@field ID integer
---@field MapChallengeModeID integer
---@field DisplaySeasonID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MythicPlusSeasonTrackedMap self
function row:SetID(value) end

---Gets the value of field 'MapChallengeModeID'.
---@return integer value
function row:GetMapChallengeModeID() end

---Sets the value of field 'MapChallengeModeID'.
---@param value integer
---@return dbc.row.v1215.MythicPlusSeasonTrackedMap self
function row:SetMapChallengeModeID(value) end

---Navigates foreign relationship to 'MapChallengeMode' via 'MapChallengeModeID'.
---@return dbc.row.v1215.MapChallengeMode|nil
function row:GetMapChallengeMode() end

---Creates a related 'MapChallengeMode' row and automatically links 'MapChallengeModeID'.
---@param data? table
---@return dbc.row.v1215.MapChallengeMode
function row:CreateRelated(data) end

---Gets the value of field 'DisplaySeasonID'.
---@return integer value
function row:GetDisplaySeasonID() end

---Sets the value of field 'DisplaySeasonID'.
---@param value integer
---@return dbc.row.v1215.MythicPlusSeasonTrackedMap self
function row:SetDisplaySeasonID(value) end

---Navigates foreign relationship to 'DisplaySeason' via 'DisplaySeasonID'.
---@return dbc.row.v1215.DisplaySeason|nil
function row:GetDisplaySeason() end

---Creates a related 'DisplaySeason' row and automatically links 'DisplaySeasonID'.
---@param data? table
---@return dbc.row.v1215.DisplaySeason
function row:CreateRelated(data) end

---Table container for MythicPlusSeasonTrackedMap (Build 12.1.5.69594).
---@class dbc.Table.v1215.MythicPlusSeasonTrackedMap : DbcTable
---@field [integer] dbc.row.v1215.MythicPlusSeasonTrackedMap
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MythicPlusSeasonTrackedMap
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MythicPlusSeasonTrackedMap|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MythicPlusSeasonTrackedMap
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MythicPlusSeasonTrackedMap>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MythicPlusSeasonTrackedMap[]
function tbl:GetByRelation(foreign_id) end

return {}
