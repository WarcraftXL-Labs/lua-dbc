---@meta
-- Generated LuaLS annotations for GarrAbilityEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrAbilityEffect in build 12.1.5.69594.
---@class dbc.row.v1215.GarrAbilityEffect : RowProxy
---@field ID integer
---@field GarrAbilityID integer
---@field AbilityAction integer GARR_ABILITY_ACTION: 0: COUNTER_MECHANIC; 1: SOLO_MISSION; 2: MOD_SUCCESS_CHANCE; 3: MOD_TRAVEL_TIME; 4: MOD_XP; 5: FRIENDLY_RACE; 6: LONG_MISSION; 7: SHORT_MISSION; 8: MOD_CURRENCY; 9: LONG_TRAVEL; 10: SHORT_TRAVEL; 11: MOD_BIAS; 12: PROFESSION; 13: MOD_BRONZE_LOOT_CHANCE; 14: MOD_SILVER_LOOT_CHANCE; 15: MOD_GOLD_LOOT_CHANCE; 16: MOD_ALL_LOOT_CHANCE; 17: MOD_MISSION_TIME; 18: MENTORING; 19: MOD_GOLD; 20: PREVENT_DEATH; 21: TREASURE_ON_MISSION_SUCCESS; 22: FRIENDLY_CLASS; 23: ADVANTAGE_MECHANIC; 24: MOD_SUCCESS_PER_DURABILITY; 25: MOD_SUCCESS_DURABILITY_IN_RANGE; 26: FRIENDLY_FOLLOWER; 27: KILL_TROOPS; 28: MOD_DURABILITY_COST; 29: MOD_BONUS_LOOT_CHANCE; 30: MOD_XP_FLAT; 31: MOD_ITEMLEVEL; 32: MOD_STARTING_DURABILITY; 33: UNIQUE_TROOPS; 34: MOD_CLASSSPEC_LIMIT; 35: TROOP_RESURRECTION; 36: MOD_COST_BY_RACE; 37: REWARD_ON_WORLD_QUEST_COMPLETE; 38: MOD_SUCCESS_BY_MISSIONS_IN_PROGRESS; 39: MOD_MISSION_COST
---@field AbilityTargetType integer GARR_ABILITY_TARGET_TYPE: 0: NONE; 1: SELF; 2: PARTY; 3: RACE; 4: CLASS; 5: GENDER; 6: PROFESSION; 7: NOTSELF; 8: NOTRACE; 9: NOTCLASS; 10: NOTPROFESSION
---@field GarrMechanicTypeID integer
---@field CombatWeightBase number
---@field CombatWeightMax number
---@field ActionValueFlat number
---@field ActionRace integer
---@field ActionHours integer
---@field ActionRecordID integer
---@field Flags integer GARR_ABILITY_EFFECT_FLAGS: &1: NOT_BENEFICIAL

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrAbilityEffect self
function row:SetID(value) end

---Gets the value of field 'GarrAbilityID'.
---@return integer value
function row:GetGarrAbilityID() end

---Sets the value of field 'GarrAbilityID'.
---@param value integer
---@return dbc.row.v1215.GarrAbilityEffect self
function row:SetGarrAbilityID(value) end

---Navigates foreign relationship to 'GarrAbility' via 'GarrAbilityID'.
---@return dbc.row.v1215.GarrAbility|nil
function row:GetGarrAbility() end

---Creates a related 'GarrAbility' row and automatically links 'GarrAbilityID'.
---@param data? table
---@return dbc.row.v1215.GarrAbility
function row:CreateRelated(data) end

---Gets the value of field 'AbilityAction'.
---@return integer value
function row:GetAbilityAction() end

---Sets the value of field 'AbilityAction'.
---@param value integer
---@return dbc.row.v1215.GarrAbilityEffect self
function row:SetAbilityAction(value) end

---Gets the value of field 'AbilityTargetType'.
---@return integer value
function row:GetAbilityTargetType() end

---Sets the value of field 'AbilityTargetType'.
---@param value integer
---@return dbc.row.v1215.GarrAbilityEffect self
function row:SetAbilityTargetType(value) end

---Gets the value of field 'GarrMechanicTypeID'.
---@return integer value
function row:GetGarrMechanicTypeID() end

---Sets the value of field 'GarrMechanicTypeID'.
---@param value integer
---@return dbc.row.v1215.GarrAbilityEffect self
function row:SetGarrMechanicTypeID(value) end

---Navigates foreign relationship to 'GarrMechanicType' via 'GarrMechanicTypeID'.
---@return dbc.row.v1215.GarrMechanicType|nil
function row:GetGarrMechanicType() end

---Creates a related 'GarrMechanicType' row and automatically links 'GarrMechanicTypeID'.
---@param data? table
---@return dbc.row.v1215.GarrMechanicType
function row:CreateRelated(data) end

---Gets the value of field 'CombatWeightBase'.
---@return number value
function row:GetCombatWeightBase() end

---Sets the value of field 'CombatWeightBase'.
---@param value number
---@return dbc.row.v1215.GarrAbilityEffect self
function row:SetCombatWeightBase(value) end

---Gets the value of field 'CombatWeightMax'.
---@return number value
function row:GetCombatWeightMax() end

---Sets the value of field 'CombatWeightMax'.
---@param value number
---@return dbc.row.v1215.GarrAbilityEffect self
function row:SetCombatWeightMax(value) end

---Gets the value of field 'ActionValueFlat'.
---@return number value
function row:GetActionValueFlat() end

---Sets the value of field 'ActionValueFlat'.
---@param value number
---@return dbc.row.v1215.GarrAbilityEffect self
function row:SetActionValueFlat(value) end

---Gets the value of field 'ActionRace'.
---@return integer value
function row:GetActionRace() end

---Sets the value of field 'ActionRace'.
---@param value integer
---@return dbc.row.v1215.GarrAbilityEffect self
function row:SetActionRace(value) end

---Gets the value of field 'ActionHours'.
---@return integer value
function row:GetActionHours() end

---Sets the value of field 'ActionHours'.
---@param value integer
---@return dbc.row.v1215.GarrAbilityEffect self
function row:SetActionHours(value) end

---Gets the value of field 'ActionRecordID'.
---@return integer value
function row:GetActionRecordID() end

---Sets the value of field 'ActionRecordID'.
---@param value integer
---@return dbc.row.v1215.GarrAbilityEffect self
function row:SetActionRecordID(value) end

---Navigates foreign relationship to 'ActionRecord' via 'ActionRecordID'.
---@return dbc.row.v1215.ActionRecord|nil
function row:GetActionRecord() end

---Creates a related 'ActionRecord' row and automatically links 'ActionRecordID'.
---@param data? table
---@return dbc.row.v1215.ActionRecord
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.GarrAbilityEffect self
function row:SetFlags(value) end

---Table container for GarrAbilityEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrAbilityEffect : DbcTable
---@field [integer] dbc.row.v1215.GarrAbilityEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrAbilityEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrAbilityEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrAbilityEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrAbilityEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrAbilityEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
