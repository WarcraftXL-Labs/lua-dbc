---@meta
-- Generated LuaLS annotations for MapChallengeModeAffixCriteria (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MapChallengeModeAffixCriteria in build 12.1.5.69594.
---@class dbc.row.v1215.MapChallengeModeAffixCriteria : RowProxy
---@field ID integer
---@field MapChallengeModeID integer
---@field KeystoneAffix integer
---@field CriteriaCountBonus integer
---@field MinChallengeLevel integer
---@field MaxChallengeLevel integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MapChallengeModeAffixCriteria self
function row:SetID(value) end

---Gets the value of field 'MapChallengeModeID'.
---@return integer value
function row:GetMapChallengeModeID() end

---Sets the value of field 'MapChallengeModeID'.
---@param value integer
---@return dbc.row.v1215.MapChallengeModeAffixCriteria self
function row:SetMapChallengeModeID(value) end

---Navigates foreign relationship to 'MapChallengeMode' via 'MapChallengeModeID'.
---@return dbc.row.v1215.MapChallengeMode|nil
function row:GetMapChallengeMode() end

---Creates a related 'MapChallengeMode' row and automatically links 'MapChallengeModeID'.
---@param data? table
---@return dbc.row.v1215.MapChallengeMode
function row:CreateRelated(data) end

---Gets the value of field 'KeystoneAffix'.
---@return integer value
function row:GetKeystoneAffix() end

---Sets the value of field 'KeystoneAffix'.
---@param value integer
---@return dbc.row.v1215.MapChallengeModeAffixCriteria self
function row:SetKeystoneAffix(value) end

---Navigates foreign relationship to 'KeystoneAffix' via 'KeystoneAffix'.
---@return dbc.row.v1215.KeystoneAffix|nil
function row:GetKeystoneAffix() end

---Creates a related 'KeystoneAffix' row and automatically links 'KeystoneAffix'.
---@param data? table
---@return dbc.row.v1215.KeystoneAffix
function row:CreateRelated(data) end

---Gets the value of field 'CriteriaCountBonus'.
---@return integer value
function row:GetCriteriaCountBonus() end

---Sets the value of field 'CriteriaCountBonus'.
---@param value integer
---@return dbc.row.v1215.MapChallengeModeAffixCriteria self
function row:SetCriteriaCountBonus(value) end

---Gets the value of field 'MinChallengeLevel'.
---@return integer value
function row:GetMinChallengeLevel() end

---Sets the value of field 'MinChallengeLevel'.
---@param value integer
---@return dbc.row.v1215.MapChallengeModeAffixCriteria self
function row:SetMinChallengeLevel(value) end

---Gets the value of field 'MaxChallengeLevel'.
---@return integer value
function row:GetMaxChallengeLevel() end

---Sets the value of field 'MaxChallengeLevel'.
---@param value integer
---@return dbc.row.v1215.MapChallengeModeAffixCriteria self
function row:SetMaxChallengeLevel(value) end

---Table container for MapChallengeModeAffixCriteria (Build 12.1.5.69594).
---@class dbc.Table.v1215.MapChallengeModeAffixCriteria : DbcTable
---@field [integer] dbc.row.v1215.MapChallengeModeAffixCriteria
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MapChallengeModeAffixCriteria
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MapChallengeModeAffixCriteria|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MapChallengeModeAffixCriteria
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MapChallengeModeAffixCriteria>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MapChallengeModeAffixCriteria[]
function tbl:GetByRelation(foreign_id) end

return {}
