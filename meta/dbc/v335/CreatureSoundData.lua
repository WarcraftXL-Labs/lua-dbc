---@meta
-- Generated LuaLS annotations for CreatureSoundData (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of CreatureSoundData in build 3.3.5.12340.
---@class dbc.row.v335.CreatureSoundData : RowProxy
---@field ID integer
---@field SoundExertionID integer
---@field SoundExertionCriticalID integer
---@field SoundInjuryID integer
---@field SoundInjuryCriticalID integer
---@field SoundInjuryCrushingBlowID integer
---@field SoundDeathID integer
---@field SoundStunID integer
---@field SoundStandID integer
---@field SoundFootstepID integer
---@field SoundAggroID integer
---@field SoundWingFlapID integer
---@field SoundWingGlideID integer
---@field SoundAlertID integer
---@field SoundFidget integer[]
---@field CustomAttack integer[]
---@field NPCSoundID integer
---@field LoopSoundID integer
---@field CreatureImpactType integer
---@field SoundJumpStartID integer
---@field SoundJumpEndID integer
---@field SoundPetAttackID integer
---@field SoundPetOrderID integer
---@field SoundPetDismissID integer
---@field FidgetDelaySecondsMin number
---@field FidgetDelaySecondsMax number
---@field BirthSoundID integer
---@field SpellCastDirectedSoundID integer
---@field SubmergeSoundID integer
---@field SubmergedSoundID integer
---@field CreatureSoundDataIDPet integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.CreatureSoundData self
function row:SetID(value) end

---Gets the value of field 'SoundExertionID'.
---@return integer value
function row:GetSoundExertionID() end

---Sets the value of field 'SoundExertionID'.
---@param value integer
---@return dbc.row.v335.CreatureSoundData self
function row:SetSoundExertionID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundExertionID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetSoundExertion() end

---Creates a related 'SoundEntries' row and automatically links 'SoundExertionID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'SoundExertionCriticalID'.
---@return integer value
function row:GetSoundExertionCriticalID() end

---Sets the value of field 'SoundExertionCriticalID'.
---@param value integer
---@return dbc.row.v335.CreatureSoundData self
function row:SetSoundExertionCriticalID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundExertionCriticalID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetSoundExertionCritical() end

---Creates a related 'SoundEntries' row and automatically links 'SoundExertionCriticalID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'SoundInjuryID'.
---@return integer value
function row:GetSoundInjuryID() end

---Sets the value of field 'SoundInjuryID'.
---@param value integer
---@return dbc.row.v335.CreatureSoundData self
function row:SetSoundInjuryID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundInjuryID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetSoundInjury() end

---Creates a related 'SoundEntries' row and automatically links 'SoundInjuryID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'SoundInjuryCriticalID'.
---@return integer value
function row:GetSoundInjuryCriticalID() end

---Sets the value of field 'SoundInjuryCriticalID'.
---@param value integer
---@return dbc.row.v335.CreatureSoundData self
function row:SetSoundInjuryCriticalID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundInjuryCriticalID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetSoundInjuryCritical() end

---Creates a related 'SoundEntries' row and automatically links 'SoundInjuryCriticalID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'SoundInjuryCrushingBlowID'.
---@return integer value
function row:GetSoundInjuryCrushingBlowID() end

---Sets the value of field 'SoundInjuryCrushingBlowID'.
---@param value integer
---@return dbc.row.v335.CreatureSoundData self
function row:SetSoundInjuryCrushingBlowID(value) end

---Navigates foreign relationship to 'SoundInjuryCrushingBlow' via 'SoundInjuryCrushingBlowID'.
---@return dbc.row.v335.SoundInjuryCrushingBlow|nil
function row:GetSoundInjuryCrushingBlow() end

---Creates a related 'SoundInjuryCrushingBlow' row and automatically links 'SoundInjuryCrushingBlowID'.
---@param data? table
---@return dbc.row.v335.SoundInjuryCrushingBlow
function row:CreateRelated(data) end

---Gets the value of field 'SoundDeathID'.
---@return integer value
function row:GetSoundDeathID() end

---Sets the value of field 'SoundDeathID'.
---@param value integer
---@return dbc.row.v335.CreatureSoundData self
function row:SetSoundDeathID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundDeathID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetSoundDeath() end

---Creates a related 'SoundEntries' row and automatically links 'SoundDeathID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'SoundStunID'.
---@return integer value
function row:GetSoundStunID() end

---Sets the value of field 'SoundStunID'.
---@param value integer
---@return dbc.row.v335.CreatureSoundData self
function row:SetSoundStunID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundStunID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetSoundStun() end

---Creates a related 'SoundEntries' row and automatically links 'SoundStunID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'SoundStandID'.
---@return integer value
function row:GetSoundStandID() end

---Sets the value of field 'SoundStandID'.
---@param value integer
---@return dbc.row.v335.CreatureSoundData self
function row:SetSoundStandID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundStandID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetSoundStand() end

---Creates a related 'SoundEntries' row and automatically links 'SoundStandID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'SoundFootstepID'.
---@return integer value
function row:GetSoundFootstepID() end

---Sets the value of field 'SoundFootstepID'.
---@param value integer
---@return dbc.row.v335.CreatureSoundData self
function row:SetSoundFootstepID(value) end

---Navigates foreign relationship to 'FootstepTerrainLookup' via 'SoundFootstepID'.
---@return dbc.row.v335.FootstepTerrainLookup|nil
function row:GetSoundFootstep() end

---Creates a related 'FootstepTerrainLookup' row and automatically links 'SoundFootstepID'.
---@param data? table
---@return dbc.row.v335.FootstepTerrainLookup
function row:CreateRelated(data) end

---Gets the value of field 'SoundAggroID'.
---@return integer value
function row:GetSoundAggroID() end

---Sets the value of field 'SoundAggroID'.
---@param value integer
---@return dbc.row.v335.CreatureSoundData self
function row:SetSoundAggroID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundAggroID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetSoundAggro() end

---Creates a related 'SoundEntries' row and automatically links 'SoundAggroID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'SoundWingFlapID'.
---@return integer value
function row:GetSoundWingFlapID() end

---Sets the value of field 'SoundWingFlapID'.
---@param value integer
---@return dbc.row.v335.CreatureSoundData self
function row:SetSoundWingFlapID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundWingFlapID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetSoundWingFlap() end

---Creates a related 'SoundEntries' row and automatically links 'SoundWingFlapID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'SoundWingGlideID'.
---@return integer value
function row:GetSoundWingGlideID() end

---Sets the value of field 'SoundWingGlideID'.
---@param value integer
---@return dbc.row.v335.CreatureSoundData self
function row:SetSoundWingGlideID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundWingGlideID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetSoundWingGlide() end

---Creates a related 'SoundEntries' row and automatically links 'SoundWingGlideID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'SoundAlertID'.
---@return integer value
function row:GetSoundAlertID() end

---Sets the value of field 'SoundAlertID'.
---@param value integer
---@return dbc.row.v335.CreatureSoundData self
function row:SetSoundAlertID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundAlertID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetSoundAlert() end

---Creates a related 'SoundEntries' row and automatically links 'SoundAlertID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'SoundFidget'.
---@return integer[] value
function row:GetSoundFidget() end

---Sets the value of field 'SoundFidget'.
---@param value integer[]
---@return dbc.row.v335.CreatureSoundData self
function row:SetSoundFidget(value) end

---Gets element at 1-based index in 'SoundFidget'.
---@param index integer
---@return integer value
function row:GetSoundFidgetItem(index) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundFidget'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetSoundFidget() end

---Creates a related 'SoundEntries' row and automatically links 'SoundFidget'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'CustomAttack'.
---@return integer[] value
function row:GetCustomAttack() end

---Sets the value of field 'CustomAttack'.
---@param value integer[]
---@return dbc.row.v335.CreatureSoundData self
function row:SetCustomAttack(value) end

---Gets element at 1-based index in 'CustomAttack'.
---@param index integer
---@return integer value
function row:GetCustomAttackItem(index) end

---Navigates foreign relationship to 'SoundEntries' via 'CustomAttack'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetCustomAttack() end

---Creates a related 'SoundEntries' row and automatically links 'CustomAttack'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'NPCSoundID'.
---@return integer value
function row:GetNPCSoundID() end

---Sets the value of field 'NPCSoundID'.
---@param value integer
---@return dbc.row.v335.CreatureSoundData self
function row:SetNPCSoundID(value) end

---Navigates foreign relationship to 'NPCSound' via 'NPCSoundID'.
---@return dbc.row.v335.NPCSound|nil
function row:GetNPCSound() end

---Creates a related 'NPCSound' row and automatically links 'NPCSoundID'.
---@param data? table
---@return dbc.row.v335.NPCSound
function row:CreateRelated(data) end

---Gets the value of field 'LoopSoundID'.
---@return integer value
function row:GetLoopSoundID() end

---Sets the value of field 'LoopSoundID'.
---@param value integer
---@return dbc.row.v335.CreatureSoundData self
function row:SetLoopSoundID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'LoopSoundID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetLoopSound() end

---Creates a related 'SoundEntries' row and automatically links 'LoopSoundID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'CreatureImpactType'.
---@return integer value
function row:GetCreatureImpactType() end

---Sets the value of field 'CreatureImpactType'.
---@param value integer
---@return dbc.row.v335.CreatureSoundData self
function row:SetCreatureImpactType(value) end

---Gets the value of field 'SoundJumpStartID'.
---@return integer value
function row:GetSoundJumpStartID() end

---Sets the value of field 'SoundJumpStartID'.
---@param value integer
---@return dbc.row.v335.CreatureSoundData self
function row:SetSoundJumpStartID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundJumpStartID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetSoundJumpStart() end

---Creates a related 'SoundEntries' row and automatically links 'SoundJumpStartID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'SoundJumpEndID'.
---@return integer value
function row:GetSoundJumpEndID() end

---Sets the value of field 'SoundJumpEndID'.
---@param value integer
---@return dbc.row.v335.CreatureSoundData self
function row:SetSoundJumpEndID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundJumpEndID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetSoundJumpEnd() end

---Creates a related 'SoundEntries' row and automatically links 'SoundJumpEndID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'SoundPetAttackID'.
---@return integer value
function row:GetSoundPetAttackID() end

---Sets the value of field 'SoundPetAttackID'.
---@param value integer
---@return dbc.row.v335.CreatureSoundData self
function row:SetSoundPetAttackID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundPetAttackID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetSoundPetAttack() end

---Creates a related 'SoundEntries' row and automatically links 'SoundPetAttackID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'SoundPetOrderID'.
---@return integer value
function row:GetSoundPetOrderID() end

---Sets the value of field 'SoundPetOrderID'.
---@param value integer
---@return dbc.row.v335.CreatureSoundData self
function row:SetSoundPetOrderID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundPetOrderID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetSoundPetOrder() end

---Creates a related 'SoundEntries' row and automatically links 'SoundPetOrderID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'SoundPetDismissID'.
---@return integer value
function row:GetSoundPetDismissID() end

---Sets the value of field 'SoundPetDismissID'.
---@param value integer
---@return dbc.row.v335.CreatureSoundData self
function row:SetSoundPetDismissID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundPetDismissID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetSoundPetDismiss() end

---Creates a related 'SoundEntries' row and automatically links 'SoundPetDismissID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'FidgetDelaySecondsMin'.
---@return number value
function row:GetFidgetDelaySecondsMin() end

---Sets the value of field 'FidgetDelaySecondsMin'.
---@param value number
---@return dbc.row.v335.CreatureSoundData self
function row:SetFidgetDelaySecondsMin(value) end

---Gets the value of field 'FidgetDelaySecondsMax'.
---@return number value
function row:GetFidgetDelaySecondsMax() end

---Sets the value of field 'FidgetDelaySecondsMax'.
---@param value number
---@return dbc.row.v335.CreatureSoundData self
function row:SetFidgetDelaySecondsMax(value) end

---Gets the value of field 'BirthSoundID'.
---@return integer value
function row:GetBirthSoundID() end

---Sets the value of field 'BirthSoundID'.
---@param value integer
---@return dbc.row.v335.CreatureSoundData self
function row:SetBirthSoundID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'BirthSoundID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetBirthSound() end

---Creates a related 'SoundEntries' row and automatically links 'BirthSoundID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'SpellCastDirectedSoundID'.
---@return integer value
function row:GetSpellCastDirectedSoundID() end

---Sets the value of field 'SpellCastDirectedSoundID'.
---@param value integer
---@return dbc.row.v335.CreatureSoundData self
function row:SetSpellCastDirectedSoundID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SpellCastDirectedSoundID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetSpellCastDirectedSound() end

---Creates a related 'SoundEntries' row and automatically links 'SpellCastDirectedSoundID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'SubmergeSoundID'.
---@return integer value
function row:GetSubmergeSoundID() end

---Sets the value of field 'SubmergeSoundID'.
---@param value integer
---@return dbc.row.v335.CreatureSoundData self
function row:SetSubmergeSoundID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SubmergeSoundID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetSubmergeSound() end

---Creates a related 'SoundEntries' row and automatically links 'SubmergeSoundID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'SubmergedSoundID'.
---@return integer value
function row:GetSubmergedSoundID() end

---Sets the value of field 'SubmergedSoundID'.
---@param value integer
---@return dbc.row.v335.CreatureSoundData self
function row:SetSubmergedSoundID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SubmergedSoundID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetSubmergedSound() end

---Creates a related 'SoundEntries' row and automatically links 'SubmergedSoundID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'CreatureSoundDataIDPet'.
---@return integer value
function row:GetCreatureSoundDataIDPet() end

---Sets the value of field 'CreatureSoundDataIDPet'.
---@param value integer
---@return dbc.row.v335.CreatureSoundData self
function row:SetCreatureSoundDataIDPet(value) end

---Navigates foreign relationship to 'CreatureSoundData' via 'CreatureSoundDataIDPet'.
---@return dbc.row.v335.CreatureSoundData|nil
function row:GetCreatureSoundDataIDPet() end

---Creates a related 'CreatureSoundData' row and automatically links 'CreatureSoundDataIDPet'.
---@param data? table
---@return dbc.row.v335.CreatureSoundData
function row:CreateRelated(data) end

---Table container for CreatureSoundData (Build 3.3.5.12340).
---@class dbc.Table.v335.CreatureSoundData : DbcTable
---@field [integer] dbc.row.v335.CreatureSoundData
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.CreatureSoundData
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.CreatureSoundData|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.CreatureSoundData
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.CreatureSoundData>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.CreatureSoundData[]
function tbl:GetByRelation(foreign_id) end

return {}
