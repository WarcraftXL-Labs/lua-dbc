---@meta
-- Generated LuaLS annotations for MythicPlusSeasonRewardLevels (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MythicPlusSeasonRewardLevels in build 12.1.5.69594.
---@class dbc.row.v1215.MythicPlusSeasonRewardLevels : RowProxy
---@field ID integer
---@field MythicPlusSeasonID integer
---@field ActivityTierID integer
---@field DifficultyLevel integer
---@field WeeklyRewardLevel integer
---@field EndOfRunRewardLevel integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MythicPlusSeasonRewardLevels self
function row:SetID(value) end

---Gets the value of field 'MythicPlusSeasonID'.
---@return integer value
function row:GetMythicPlusSeasonID() end

---Sets the value of field 'MythicPlusSeasonID'.
---@param value integer
---@return dbc.row.v1215.MythicPlusSeasonRewardLevels self
function row:SetMythicPlusSeasonID(value) end

---Navigates foreign relationship to 'MythicPlusSeason' via 'MythicPlusSeasonID'.
---@return dbc.row.v1215.MythicPlusSeason|nil
function row:GetMythicPlusSeason() end

---Creates a related 'MythicPlusSeason' row and automatically links 'MythicPlusSeasonID'.
---@param data? table
---@return dbc.row.v1215.MythicPlusSeason
function row:CreateRelated(data) end

---Gets the value of field 'ActivityTierID'.
---@return integer value
function row:GetActivityTierID() end

---Sets the value of field 'ActivityTierID'.
---@param value integer
---@return dbc.row.v1215.MythicPlusSeasonRewardLevels self
function row:SetActivityTierID(value) end

---Navigates foreign relationship to 'WeeklyRewardChestActivityTier' via 'ActivityTierID'.
---@return dbc.row.v1215.WeeklyRewardChestActivityTier|nil
function row:GetActivityTier() end

---Creates a related 'WeeklyRewardChestActivityTier' row and automatically links 'ActivityTierID'.
---@param data? table
---@return dbc.row.v1215.WeeklyRewardChestActivityTier
function row:CreateRelated(data) end

---Gets the value of field 'DifficultyLevel'.
---@return integer value
function row:GetDifficultyLevel() end

---Sets the value of field 'DifficultyLevel'.
---@param value integer
---@return dbc.row.v1215.MythicPlusSeasonRewardLevels self
function row:SetDifficultyLevel(value) end

---Gets the value of field 'WeeklyRewardLevel'.
---@return integer value
function row:GetWeeklyRewardLevel() end

---Sets the value of field 'WeeklyRewardLevel'.
---@param value integer
---@return dbc.row.v1215.MythicPlusSeasonRewardLevels self
function row:SetWeeklyRewardLevel(value) end

---Gets the value of field 'EndOfRunRewardLevel'.
---@return integer value
function row:GetEndOfRunRewardLevel() end

---Sets the value of field 'EndOfRunRewardLevel'.
---@param value integer
---@return dbc.row.v1215.MythicPlusSeasonRewardLevels self
function row:SetEndOfRunRewardLevel(value) end

---Table container for MythicPlusSeasonRewardLevels (Build 12.1.5.69594).
---@class dbc.Table.v1215.MythicPlusSeasonRewardLevels : DbcTable
---@field [integer] dbc.row.v1215.MythicPlusSeasonRewardLevels
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MythicPlusSeasonRewardLevels
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MythicPlusSeasonRewardLevels|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MythicPlusSeasonRewardLevels
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MythicPlusSeasonRewardLevels>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MythicPlusSeasonRewardLevels[]
function tbl:GetByRelation(foreign_id) end

return {}
