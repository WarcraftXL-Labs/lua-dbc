---@meta
-- Generated LuaLS annotations for GarrAutoSpellEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrAutoSpellEffect in build 12.1.5.69594.
---@class dbc.row.v1215.GarrAutoSpellEffect : RowProxy
---@field ID integer
---@field SpellID integer
---@field EffectIndex integer
---@field Effect integer 0: ?, 1: DealAutoDamage, 2: Heal, 3: DealDamage, 4: Heal, 5: like-7, 6: like-7, 7: Dot, 8: Hot, 9: like-10, 10: taunt/become untargetable, 11: like-12, 12: damage dealt multiplier, 13: like-12, 14: damage taken multiplier, 15: JasonTest Passive, 16: like-15, 17: JasonTest Ability Spell, 18: increase max health
---@field Points number
---@field TargetType integer 2|4: all allies; 1|4: farthest enemy, 1|2|4|8: all enemies in melee range; 1|2: the closest enemy; 1|4: all enemies at range; 1|8: adjacent enemies; 2: closest ally, 1: self, 2: closest ally, 1|2: melee, 1|4: ranged, 1|8: all adjacent enemies, 16: all ranged allies, 2|4: all allies and self, 16|1: all ranged enemies, 1|2|4: all enemies
---@field Flags integer &1: ???, &2: ???
---@field Period integer 2: "every other round"

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrAutoSpellEffect self
function row:SetID(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.GarrAutoSpellEffect self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'GarrAutoSpell' via 'SpellID'.
---@return dbc.row.v1215.GarrAutoSpell|nil
function row:GetSpell() end

---Creates a related 'GarrAutoSpell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.GarrAutoSpell
function row:CreateRelated(data) end

---Gets the value of field 'EffectIndex'.
---@return integer value
function row:GetEffectIndex() end

---Sets the value of field 'EffectIndex'.
---@param value integer
---@return dbc.row.v1215.GarrAutoSpellEffect self
function row:SetEffectIndex(value) end

---Gets the value of field 'Effect'.
---@return integer value
function row:GetEffect() end

---Sets the value of field 'Effect'.
---@param value integer
---@return dbc.row.v1215.GarrAutoSpellEffect self
function row:SetEffect(value) end

---Gets the value of field 'Points'.
---@return number value
function row:GetPoints() end

---Sets the value of field 'Points'.
---@param value number
---@return dbc.row.v1215.GarrAutoSpellEffect self
function row:SetPoints(value) end

---Gets the value of field 'TargetType'.
---@return integer value
function row:GetTargetType() end

---Sets the value of field 'TargetType'.
---@param value integer
---@return dbc.row.v1215.GarrAutoSpellEffect self
function row:SetTargetType(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.GarrAutoSpellEffect self
function row:SetFlags(value) end

---Gets the value of field 'Period'.
---@return integer value
function row:GetPeriod() end

---Sets the value of field 'Period'.
---@param value integer
---@return dbc.row.v1215.GarrAutoSpellEffect self
function row:SetPeriod(value) end

---Table container for GarrAutoSpellEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrAutoSpellEffect : DbcTable
---@field [integer] dbc.row.v1215.GarrAutoSpellEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrAutoSpellEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrAutoSpellEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrAutoSpellEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrAutoSpellEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrAutoSpellEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
