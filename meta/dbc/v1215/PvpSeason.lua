---@meta
-- Generated LuaLS annotations for PvpSeason (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PvpSeason in build 12.1.5.69594.
---@class dbc.row.v1215.PvpSeason : RowProxy
---@field ID integer
---@field MilestoneSeason integer
---@field AllianceAchievementID integer
---@field HordeAchievementID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PvpSeason self
function row:SetID(value) end

---Gets the value of field 'MilestoneSeason'.
---@return integer value
function row:GetMilestoneSeason() end

---Sets the value of field 'MilestoneSeason'.
---@param value integer
---@return dbc.row.v1215.PvpSeason self
function row:SetMilestoneSeason(value) end

---Gets the value of field 'AllianceAchievementID'.
---@return integer value
function row:GetAllianceAchievementID() end

---Sets the value of field 'AllianceAchievementID'.
---@param value integer
---@return dbc.row.v1215.PvpSeason self
function row:SetAllianceAchievementID(value) end

---Navigates foreign relationship to 'Achievement' via 'AllianceAchievementID'.
---@return dbc.row.v1215.Achievement|nil
function row:GetAllianceAchievement() end

---Creates a related 'Achievement' row and automatically links 'AllianceAchievementID'.
---@param data? table
---@return dbc.row.v1215.Achievement
function row:CreateRelated(data) end

---Gets the value of field 'HordeAchievementID'.
---@return integer value
function row:GetHordeAchievementID() end

---Sets the value of field 'HordeAchievementID'.
---@param value integer
---@return dbc.row.v1215.PvpSeason self
function row:SetHordeAchievementID(value) end

---Navigates foreign relationship to 'Achievement' via 'HordeAchievementID'.
---@return dbc.row.v1215.Achievement|nil
function row:GetHordeAchievement() end

---Creates a related 'Achievement' row and automatically links 'HordeAchievementID'.
---@param data? table
---@return dbc.row.v1215.Achievement
function row:CreateRelated(data) end

---Table container for PvpSeason (Build 12.1.5.69594).
---@class dbc.Table.v1215.PvpSeason : DbcTable
---@field [integer] dbc.row.v1215.PvpSeason
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PvpSeason
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PvpSeason|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PvpSeason
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PvpSeason>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PvpSeason[]
function tbl:GetByRelation(foreign_id) end

return {}
