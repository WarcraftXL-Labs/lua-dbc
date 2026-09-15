---@meta
-- Generated LuaLS annotations for ChallengeModeXReward (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChallengeModeXReward in build 12.1.5.69594.
---@class dbc.row.v1215.ChallengeModeXReward : RowProxy
---@field ID integer
---@field ChallengeModeRewardID integer
---@field MapChallengeModeID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChallengeModeXReward self
function row:SetID(value) end

---Gets the value of field 'ChallengeModeRewardID'.
---@return integer value
function row:GetChallengeModeRewardID() end

---Sets the value of field 'ChallengeModeRewardID'.
---@param value integer
---@return dbc.row.v1215.ChallengeModeXReward self
function row:SetChallengeModeRewardID(value) end

---Navigates foreign relationship to 'ChallengeModeReward' via 'ChallengeModeRewardID'.
---@return dbc.row.v1215.ChallengeModeReward|nil
function row:GetChallengeModeReward() end

---Creates a related 'ChallengeModeReward' row and automatically links 'ChallengeModeRewardID'.
---@param data? table
---@return dbc.row.v1215.ChallengeModeReward
function row:CreateRelated(data) end

---Gets the value of field 'MapChallengeModeID'.
---@return integer value
function row:GetMapChallengeModeID() end

---Sets the value of field 'MapChallengeModeID'.
---@param value integer
---@return dbc.row.v1215.ChallengeModeXReward self
function row:SetMapChallengeModeID(value) end

---Navigates foreign relationship to 'MapChallengeMode' via 'MapChallengeModeID'.
---@return dbc.row.v1215.MapChallengeMode|nil
function row:GetMapChallengeMode() end

---Creates a related 'MapChallengeMode' row and automatically links 'MapChallengeModeID'.
---@param data? table
---@return dbc.row.v1215.MapChallengeMode
function row:CreateRelated(data) end

---Table container for ChallengeModeXReward (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChallengeModeXReward : DbcTable
---@field [integer] dbc.row.v1215.ChallengeModeXReward
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChallengeModeXReward
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChallengeModeXReward|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChallengeModeXReward
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChallengeModeXReward>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChallengeModeXReward[]
function tbl:GetByRelation(foreign_id) end

return {}
