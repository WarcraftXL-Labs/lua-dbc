---@meta
-- Generated LuaLS annotations for PvpSeasonRewardLevels (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PvpSeasonRewardLevels in build 12.1.5.69594.
---@class dbc.row.v1215.PvpSeasonRewardLevels : RowProxy
---@field ID integer
---@field Tier integer
---@field EndOfMatchILvl integer
---@field WeeklyCacheILvl integer
---@field PvpSeasonID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PvpSeasonRewardLevels self
function row:SetID(value) end

---Gets the value of field 'Tier'.
---@return integer value
function row:GetTier() end

---Sets the value of field 'Tier'.
---@param value integer
---@return dbc.row.v1215.PvpSeasonRewardLevels self
function row:SetTier(value) end

---Gets the value of field 'EndOfMatchILvl'.
---@return integer value
function row:GetEndOfMatchILvl() end

---Sets the value of field 'EndOfMatchILvl'.
---@param value integer
---@return dbc.row.v1215.PvpSeasonRewardLevels self
function row:SetEndOfMatchILvl(value) end

---Gets the value of field 'WeeklyCacheILvl'.
---@return integer value
function row:GetWeeklyCacheILvl() end

---Sets the value of field 'WeeklyCacheILvl'.
---@param value integer
---@return dbc.row.v1215.PvpSeasonRewardLevels self
function row:SetWeeklyCacheILvl(value) end

---Gets the value of field 'PvpSeasonID'.
---@return integer value
function row:GetPvpSeasonID() end

---Sets the value of field 'PvpSeasonID'.
---@param value integer
---@return dbc.row.v1215.PvpSeasonRewardLevels self
function row:SetPvpSeasonID(value) end

---Navigates foreign relationship to 'PvpSeason' via 'PvpSeasonID'.
---@return dbc.row.v1215.PvpSeason|nil
function row:GetPvpSeason() end

---Creates a related 'PvpSeason' row and automatically links 'PvpSeasonID'.
---@param data? table
---@return dbc.row.v1215.PvpSeason
function row:CreateRelated(data) end

---Table container for PvpSeasonRewardLevels (Build 12.1.5.69594).
---@class dbc.Table.v1215.PvpSeasonRewardLevels : DbcTable
---@field [integer] dbc.row.v1215.PvpSeasonRewardLevels
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PvpSeasonRewardLevels
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PvpSeasonRewardLevels|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PvpSeasonRewardLevels
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PvpSeasonRewardLevels>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PvpSeasonRewardLevels[]
function tbl:GetByRelation(foreign_id) end

return {}
