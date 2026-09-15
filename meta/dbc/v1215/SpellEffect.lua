---@meta
-- Generated LuaLS annotations for SpellEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellEffect in build 12.1.5.69594.
---@class dbc.row.v1215.SpellEffect : RowProxy
---@field ID integer
---@field EffectAura integer
---@field DifficultyID integer
---@field EffectIndex integer
---@field Effect integer
---@field EffectAmplitude number
---@field EffectAttributes integer
---@field EffectAuraPeriod integer
---@field EffectBonusCoefficient number
---@field EffectChainAmplitude number
---@field EffectChainTargets integer
---@field EffectItemType integer
---@field EffectMechanic integer
---@field EffectPointsPerResource number
---@field EffectPos_facing number
---@field EffectRealPointsPerLevel number
---@field EffectTriggerSpell integer
---@field BonusCoefficientFromAP number
---@field PvpMultiplier number
---@field Coefficient number
---@field Variance number
---@field ResourceCoefficient number
---@field GroupSizeBasePointsCoefficient number
---@field EffectBasePointsF number
---@field ScalingClass integer
---@field Node__Field_12_0_0_63534_001 integer
---@field EffectMiscValue integer[] EA=260: [ScreenEffectID, ScreenEffectTypeID], EA=313: [AnimReplacementSetID, 0]
---@field EffectRadiusIndex integer[]
---@field EffectSpellClassMask integer[]
---@field ImplicitTarget integer[]
---@field SpellID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellEffect self
function row:SetID(value) end

---Gets the value of field 'EffectAura'.
---@return integer value
function row:GetEffectAura() end

---Sets the value of field 'EffectAura'.
---@param value integer
---@return dbc.row.v1215.SpellEffect self
function row:SetEffectAura(value) end

---Gets the value of field 'DifficultyID'.
---@return integer value
function row:GetDifficultyID() end

---Sets the value of field 'DifficultyID'.
---@param value integer
---@return dbc.row.v1215.SpellEffect self
function row:SetDifficultyID(value) end

---Navigates foreign relationship to 'Difficulty' via 'DifficultyID'.
---@return dbc.row.v1215.Difficulty|nil
function row:GetDifficulty() end

---Creates a related 'Difficulty' row and automatically links 'DifficultyID'.
---@param data? table
---@return dbc.row.v1215.Difficulty
function row:CreateRelated(data) end

---Gets the value of field 'EffectIndex'.
---@return integer value
function row:GetEffectIndex() end

---Sets the value of field 'EffectIndex'.
---@param value integer
---@return dbc.row.v1215.SpellEffect self
function row:SetEffectIndex(value) end

---Gets the value of field 'Effect'.
---@return integer value
function row:GetEffect() end

---Sets the value of field 'Effect'.
---@param value integer
---@return dbc.row.v1215.SpellEffect self
function row:SetEffect(value) end

---Gets the value of field 'EffectAmplitude'.
---@return number value
function row:GetEffectAmplitude() end

---Sets the value of field 'EffectAmplitude'.
---@param value number
---@return dbc.row.v1215.SpellEffect self
function row:SetEffectAmplitude(value) end

---Gets the value of field 'EffectAttributes'.
---@return integer value
function row:GetEffectAttributes() end

---Sets the value of field 'EffectAttributes'.
---@param value integer
---@return dbc.row.v1215.SpellEffect self
function row:SetEffectAttributes(value) end

---Gets the value of field 'EffectAuraPeriod'.
---@return integer value
function row:GetEffectAuraPeriod() end

---Sets the value of field 'EffectAuraPeriod'.
---@param value integer
---@return dbc.row.v1215.SpellEffect self
function row:SetEffectAuraPeriod(value) end

---Gets the value of field 'EffectBonusCoefficient'.
---@return number value
function row:GetEffectBonusCoefficient() end

---Sets the value of field 'EffectBonusCoefficient'.
---@param value number
---@return dbc.row.v1215.SpellEffect self
function row:SetEffectBonusCoefficient(value) end

---Gets the value of field 'EffectChainAmplitude'.
---@return number value
function row:GetEffectChainAmplitude() end

---Sets the value of field 'EffectChainAmplitude'.
---@param value number
---@return dbc.row.v1215.SpellEffect self
function row:SetEffectChainAmplitude(value) end

---Gets the value of field 'EffectChainTargets'.
---@return integer value
function row:GetEffectChainTargets() end

---Sets the value of field 'EffectChainTargets'.
---@param value integer
---@return dbc.row.v1215.SpellEffect self
function row:SetEffectChainTargets(value) end

---Gets the value of field 'EffectItemType'.
---@return integer value
function row:GetEffectItemType() end

---Sets the value of field 'EffectItemType'.
---@param value integer
---@return dbc.row.v1215.SpellEffect self
function row:SetEffectItemType(value) end

---Gets the value of field 'EffectMechanic'.
---@return integer value
function row:GetEffectMechanic() end

---Sets the value of field 'EffectMechanic'.
---@param value integer
---@return dbc.row.v1215.SpellEffect self
function row:SetEffectMechanic(value) end

---Gets the value of field 'EffectPointsPerResource'.
---@return number value
function row:GetEffectPointsPerResource() end

---Sets the value of field 'EffectPointsPerResource'.
---@param value number
---@return dbc.row.v1215.SpellEffect self
function row:SetEffectPointsPerResource(value) end

---Gets the value of field 'EffectPos_facing'.
---@return number value
function row:GetEffectPos_facing() end

---Sets the value of field 'EffectPos_facing'.
---@param value number
---@return dbc.row.v1215.SpellEffect self
function row:SetEffectPos_facing(value) end

---Gets the value of field 'EffectRealPointsPerLevel'.
---@return number value
function row:GetEffectRealPointsPerLevel() end

---Sets the value of field 'EffectRealPointsPerLevel'.
---@param value number
---@return dbc.row.v1215.SpellEffect self
function row:SetEffectRealPointsPerLevel(value) end

---Gets the value of field 'EffectTriggerSpell'.
---@return integer value
function row:GetEffectTriggerSpell() end

---Sets the value of field 'EffectTriggerSpell'.
---@param value integer
---@return dbc.row.v1215.SpellEffect self
function row:SetEffectTriggerSpell(value) end

---Navigates foreign relationship to 'Spell' via 'EffectTriggerSpell'.
---@return dbc.row.v1215.Spell|nil
function row:GetEffectTriggerSpell() end

---Creates a related 'Spell' row and automatically links 'EffectTriggerSpell'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'BonusCoefficientFromAP'.
---@return number value
function row:GetBonusCoefficientFromAP() end

---Sets the value of field 'BonusCoefficientFromAP'.
---@param value number
---@return dbc.row.v1215.SpellEffect self
function row:SetBonusCoefficientFromAP(value) end

---Gets the value of field 'PvpMultiplier'.
---@return number value
function row:GetPvpMultiplier() end

---Sets the value of field 'PvpMultiplier'.
---@param value number
---@return dbc.row.v1215.SpellEffect self
function row:SetPvpMultiplier(value) end

---Gets the value of field 'Coefficient'.
---@return number value
function row:GetCoefficient() end

---Sets the value of field 'Coefficient'.
---@param value number
---@return dbc.row.v1215.SpellEffect self
function row:SetCoefficient(value) end

---Gets the value of field 'Variance'.
---@return number value
function row:GetVariance() end

---Sets the value of field 'Variance'.
---@param value number
---@return dbc.row.v1215.SpellEffect self
function row:SetVariance(value) end

---Gets the value of field 'ResourceCoefficient'.
---@return number value
function row:GetResourceCoefficient() end

---Sets the value of field 'ResourceCoefficient'.
---@param value number
---@return dbc.row.v1215.SpellEffect self
function row:SetResourceCoefficient(value) end

---Gets the value of field 'GroupSizeBasePointsCoefficient'.
---@return number value
function row:GetGroupSizeBasePointsCoefficient() end

---Sets the value of field 'GroupSizeBasePointsCoefficient'.
---@param value number
---@return dbc.row.v1215.SpellEffect self
function row:SetGroupSizeBasePointsCoefficient(value) end

---Gets the value of field 'EffectBasePointsF'.
---@return number value
function row:GetEffectBasePointsF() end

---Sets the value of field 'EffectBasePointsF'.
---@param value number
---@return dbc.row.v1215.SpellEffect self
function row:SetEffectBasePointsF(value) end

---Gets the value of field 'ScalingClass'.
---@return integer value
function row:GetScalingClass() end

---Sets the value of field 'ScalingClass'.
---@param value integer
---@return dbc.row.v1215.SpellEffect self
function row:SetScalingClass(value) end

---Gets the value of field 'Node__Field_12_0_0_63534_001'.
---@return integer value
function row:GetNode__Field_12_0_0_63534_001() end

---Sets the value of field 'Node__Field_12_0_0_63534_001'.
---@param value integer
---@return dbc.row.v1215.SpellEffect self
function row:SetNode__Field_12_0_0_63534_001(value) end

---Gets the value of field 'EffectMiscValue'.
---@return integer[] value
function row:GetEffectMiscValue() end

---Sets the value of field 'EffectMiscValue'.
---@param value integer[]
---@return dbc.row.v1215.SpellEffect self
function row:SetEffectMiscValue(value) end

---Gets element at 1-based index in 'EffectMiscValue'.
---@param index integer
---@return integer value
function row:GetEffectMiscValueItem(index) end

---Gets the value of field 'EffectRadiusIndex'.
---@return integer[] value
function row:GetEffectRadiusIndex() end

---Sets the value of field 'EffectRadiusIndex'.
---@param value integer[]
---@return dbc.row.v1215.SpellEffect self
function row:SetEffectRadiusIndex(value) end

---Gets element at 1-based index in 'EffectRadiusIndex'.
---@param index integer
---@return integer value
function row:GetEffectRadiusIndexItem(index) end

---Navigates foreign relationship to 'SpellRadius' via 'EffectRadiusIndex'.
---@return dbc.row.v1215.SpellRadius|nil
function row:GetEffectRadiusIndex() end

---Creates a related 'SpellRadius' row and automatically links 'EffectRadiusIndex'.
---@param data? table
---@return dbc.row.v1215.SpellRadius
function row:CreateRelated(data) end

---Gets the value of field 'EffectSpellClassMask'.
---@return integer[] value
function row:GetEffectSpellClassMask() end

---Sets the value of field 'EffectSpellClassMask'.
---@param value integer[]
---@return dbc.row.v1215.SpellEffect self
function row:SetEffectSpellClassMask(value) end

---Gets element at 1-based index in 'EffectSpellClassMask'.
---@param index integer
---@return integer value
function row:GetEffectSpellClassMaskItem(index) end

---Gets the value of field 'ImplicitTarget'.
---@return integer[] value
function row:GetImplicitTarget() end

---Sets the value of field 'ImplicitTarget'.
---@param value integer[]
---@return dbc.row.v1215.SpellEffect self
function row:SetImplicitTarget(value) end

---Gets element at 1-based index in 'ImplicitTarget'.
---@param index integer
---@return integer value
function row:GetImplicitTargetItem(index) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.SpellEffect self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Table container for SpellEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellEffect : DbcTable
---@field [integer] dbc.row.v1215.SpellEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
