---@meta
-- Generated LuaLS annotations for GarrAutoCombatant (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrAutoCombatant in build 12.1.5.69594.
---@class dbc.row.v1215.GarrAutoCombatant : RowProxy
---@field ID integer
---@field HealthBase integer
---@field HealthGainPerLevel integer
---@field AttackBase integer
---@field AttackGainPerLevel integer
---@field AttackSpellID integer
---@field AbilitySpellID integer
---@field AbilitySpellID2 integer
---@field PassiveSpellID integer
---@field Role integer 0: None, 1: Melee, 2: RangedPhysical, 3: RangedMagic, 4: HealSupport, 5: Tank

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrAutoCombatant self
function row:SetID(value) end

---Gets the value of field 'HealthBase'.
---@return integer value
function row:GetHealthBase() end

---Sets the value of field 'HealthBase'.
---@param value integer
---@return dbc.row.v1215.GarrAutoCombatant self
function row:SetHealthBase(value) end

---Gets the value of field 'HealthGainPerLevel'.
---@return integer value
function row:GetHealthGainPerLevel() end

---Sets the value of field 'HealthGainPerLevel'.
---@param value integer
---@return dbc.row.v1215.GarrAutoCombatant self
function row:SetHealthGainPerLevel(value) end

---Gets the value of field 'AttackBase'.
---@return integer value
function row:GetAttackBase() end

---Sets the value of field 'AttackBase'.
---@param value integer
---@return dbc.row.v1215.GarrAutoCombatant self
function row:SetAttackBase(value) end

---Gets the value of field 'AttackGainPerLevel'.
---@return integer value
function row:GetAttackGainPerLevel() end

---Sets the value of field 'AttackGainPerLevel'.
---@param value integer
---@return dbc.row.v1215.GarrAutoCombatant self
function row:SetAttackGainPerLevel(value) end

---Gets the value of field 'AttackSpellID'.
---@return integer value
function row:GetAttackSpellID() end

---Sets the value of field 'AttackSpellID'.
---@param value integer
---@return dbc.row.v1215.GarrAutoCombatant self
function row:SetAttackSpellID(value) end

---Navigates foreign relationship to 'GarrAutoSpell' via 'AttackSpellID'.
---@return dbc.row.v1215.GarrAutoSpell|nil
function row:GetAttackSpell() end

---Creates a related 'GarrAutoSpell' row and automatically links 'AttackSpellID'.
---@param data? table
---@return dbc.row.v1215.GarrAutoSpell
function row:CreateRelated(data) end

---Gets the value of field 'AbilitySpellID'.
---@return integer value
function row:GetAbilitySpellID() end

---Sets the value of field 'AbilitySpellID'.
---@param value integer
---@return dbc.row.v1215.GarrAutoCombatant self
function row:SetAbilitySpellID(value) end

---Navigates foreign relationship to 'GarrAutoSpell' via 'AbilitySpellID'.
---@return dbc.row.v1215.GarrAutoSpell|nil
function row:GetAbilitySpell() end

---Creates a related 'GarrAutoSpell' row and automatically links 'AbilitySpellID'.
---@param data? table
---@return dbc.row.v1215.GarrAutoSpell
function row:CreateRelated(data) end

---Gets the value of field 'AbilitySpellID2'.
---@return integer value
function row:GetAbilitySpellID2() end

---Sets the value of field 'AbilitySpellID2'.
---@param value integer
---@return dbc.row.v1215.GarrAutoCombatant self
function row:SetAbilitySpellID2(value) end

---Navigates foreign relationship to 'GarrAutoSpell' via 'AbilitySpellID2'.
---@return dbc.row.v1215.GarrAutoSpell|nil
function row:GetAbilitySpellID2() end

---Creates a related 'GarrAutoSpell' row and automatically links 'AbilitySpellID2'.
---@param data? table
---@return dbc.row.v1215.GarrAutoSpell
function row:CreateRelated(data) end

---Gets the value of field 'PassiveSpellID'.
---@return integer value
function row:GetPassiveSpellID() end

---Sets the value of field 'PassiveSpellID'.
---@param value integer
---@return dbc.row.v1215.GarrAutoCombatant self
function row:SetPassiveSpellID(value) end

---Navigates foreign relationship to 'GarrAutoSpell' via 'PassiveSpellID'.
---@return dbc.row.v1215.GarrAutoSpell|nil
function row:GetPassiveSpell() end

---Creates a related 'GarrAutoSpell' row and automatically links 'PassiveSpellID'.
---@param data? table
---@return dbc.row.v1215.GarrAutoSpell
function row:CreateRelated(data) end

---Gets the value of field 'Role'.
---@return integer value
function row:GetRole() end

---Sets the value of field 'Role'.
---@param value integer
---@return dbc.row.v1215.GarrAutoCombatant self
function row:SetRole(value) end

---Table container for GarrAutoCombatant (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrAutoCombatant : DbcTable
---@field [integer] dbc.row.v1215.GarrAutoCombatant
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrAutoCombatant
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrAutoCombatant|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrAutoCombatant
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrAutoCombatant>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrAutoCombatant[]
function tbl:GetByRelation(foreign_id) end

return {}
