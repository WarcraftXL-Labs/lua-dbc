---@meta
-- Generated LuaLS annotations for Spell (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of Spell in build 3.3.5.12340.
---@class dbc.row.v335.Spell : RowProxy
---@field ID integer
---@field Category integer
---@field DispelType integer
---@field Mechanic integer
---@field Attributes integer
---@field AttributesEx integer
---@field AttributesExB integer
---@field AttributesExC integer
---@field AttributesExD integer
---@field AttributesExE integer
---@field AttributesExF integer
---@field AttributesExG integer
---@field ShapeshiftMask integer[]
---@field ShapeshiftExclude integer[]
---@field Targets integer
---@field TargetCreatureType integer
---@field RequiresSpellFocus integer
---@field FacingCasterFlags integer
---@field CasterAuraState integer
---@field TargetAuraState integer
---@field ExcludeCasterAuraState integer
---@field ExcludeTargetAuraState integer
---@field CasterAuraSpell integer
---@field TargetAuraSpell integer
---@field ExcludeCasterAuraSpell integer
---@field ExcludeTargetAuraSpell integer
---@field CastingTimeIndex integer
---@field RecoveryTime integer
---@field CategoryRecoveryTime integer
---@field InterruptFlags integer
---@field AuraInterruptFlags integer
---@field ChannelInterruptFlags integer
---@field ProcTypeMask integer
---@field ProcChance integer
---@field ProcCharges integer
---@field MaxLevel integer
---@field BaseLevel integer
---@field SpellLevel integer
---@field DurationIndex integer
---@field PowerType integer
---@field ManaCost integer
---@field ManaCostPerLevel integer
---@field ManaPerSecond integer
---@field ManaPerSecondPerLevel integer
---@field RangeIndex integer
---@field Speed number
---@field ModalNextSpell integer
---@field CumulativeAura integer
---@field Totem integer[]
---@field Reagent integer[]
---@field ReagentCount integer[]
---@field EquippedItemClass integer
---@field EquippedItemSubclass integer
---@field EquippedItemInvTypes integer
---@field Effect integer[]
---@field EffectDieSides integer[]
---@field EffectRealPointsPerLevel number[]
---@field EffectBasePoints integer[]
---@field EffectMechanic integer[]
---@field ImplicitTargetA integer[]
---@field ImplicitTargetB integer[]
---@field EffectRadiusIndex integer[]
---@field EffectAura integer[]
---@field EffectAuraPeriod integer[]
---@field EffectAmplitude number[]
---@field EffectChainTargets integer[]
---@field EffectItemType integer[]
---@field EffectMiscValue integer[]
---@field EffectMiscValueB integer[]
---@field EffectTriggerSpell integer[]
---@field EffectPointsPerCombo number[]
---@field EffectSpellClassMaskA integer[]
---@field EffectSpellClassMaskB integer[]
---@field EffectSpellClassMaskC integer[]
---@field SpellVisualID integer[]
---@field SpellIconID integer
---@field ActiveIconID integer
---@field SpellPriority integer
---@field Name_lang string
---@field NameSubtext_lang string
---@field Description_lang string
---@field AuraDescription_lang string
---@field ManaCostPct integer
---@field StartRecoveryCategory integer
---@field StartRecoveryTime integer
---@field MaxTargetLevel integer
---@field SpellClassSet integer
---@field SpellClassMask integer[]
---@field MaxTargets integer
---@field DefenseType integer
---@field PreventionType integer
---@field StanceBarOrder integer
---@field EffectChainAmplitude number[]
---@field MinFactionID integer
---@field MinReputation integer
---@field RequiredAuraVision integer
---@field RequiredTotemCategoryID integer[]
---@field RequiredAreasID integer
---@field SchoolMask integer
---@field RuneCostID integer
---@field SpellMissileID integer
---@field PowerDisplayID integer
---@field EffectBonusCoefficient number[]
---@field DescriptionVariablesID integer
---@field Difficulty integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetID(value) end

---Gets the value of field 'Category'.
---@return integer value
function row:GetCategory() end

---Sets the value of field 'Category'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetCategory(value) end

---Navigates foreign relationship to 'SpellCategory' via 'Category'.
---@return dbc.row.v335.SpellCategory|nil
function row:GetCategory() end

---Creates a related 'SpellCategory' row and automatically links 'Category'.
---@param data? table
---@return dbc.row.v335.SpellCategory
function row:CreateRelated(data) end

---Gets the value of field 'DispelType'.
---@return integer value
function row:GetDispelType() end

---Sets the value of field 'DispelType'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetDispelType(value) end

---Navigates foreign relationship to 'SpellDispelType' via 'DispelType'.
---@return dbc.row.v335.SpellDispelType|nil
function row:GetDispelType() end

---Creates a related 'SpellDispelType' row and automatically links 'DispelType'.
---@param data? table
---@return dbc.row.v335.SpellDispelType
function row:CreateRelated(data) end

---Gets the value of field 'Mechanic'.
---@return integer value
function row:GetMechanic() end

---Sets the value of field 'Mechanic'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetMechanic(value) end

---Navigates foreign relationship to 'SpellMechanic' via 'Mechanic'.
---@return dbc.row.v335.SpellMechanic|nil
function row:GetMechanic() end

---Creates a related 'SpellMechanic' row and automatically links 'Mechanic'.
---@param data? table
---@return dbc.row.v335.SpellMechanic
function row:CreateRelated(data) end

---Gets the value of field 'Attributes'.
---@return integer value
function row:GetAttributes() end

---Sets the value of field 'Attributes'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetAttributes(value) end

---Gets the value of field 'AttributesEx'.
---@return integer value
function row:GetAttributesEx() end

---Sets the value of field 'AttributesEx'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetAttributesEx(value) end

---Gets the value of field 'AttributesExB'.
---@return integer value
function row:GetAttributesExB() end

---Sets the value of field 'AttributesExB'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetAttributesExB(value) end

---Gets the value of field 'AttributesExC'.
---@return integer value
function row:GetAttributesExC() end

---Sets the value of field 'AttributesExC'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetAttributesExC(value) end

---Gets the value of field 'AttributesExD'.
---@return integer value
function row:GetAttributesExD() end

---Sets the value of field 'AttributesExD'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetAttributesExD(value) end

---Gets the value of field 'AttributesExE'.
---@return integer value
function row:GetAttributesExE() end

---Sets the value of field 'AttributesExE'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetAttributesExE(value) end

---Gets the value of field 'AttributesExF'.
---@return integer value
function row:GetAttributesExF() end

---Sets the value of field 'AttributesExF'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetAttributesExF(value) end

---Gets the value of field 'AttributesExG'.
---@return integer value
function row:GetAttributesExG() end

---Sets the value of field 'AttributesExG'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetAttributesExG(value) end

---Gets the value of field 'ShapeshiftMask'.
---@return integer[] value
function row:GetShapeshiftMask() end

---Sets the value of field 'ShapeshiftMask'.
---@param value integer[]
---@return dbc.row.v335.Spell self
function row:SetShapeshiftMask(value) end

---Gets element at 1-based index in 'ShapeshiftMask'.
---@param index integer
---@return integer value
function row:GetShapeshiftMaskItem(index) end

---Gets the value of field 'ShapeshiftExclude'.
---@return integer[] value
function row:GetShapeshiftExclude() end

---Sets the value of field 'ShapeshiftExclude'.
---@param value integer[]
---@return dbc.row.v335.Spell self
function row:SetShapeshiftExclude(value) end

---Gets element at 1-based index in 'ShapeshiftExclude'.
---@param index integer
---@return integer value
function row:GetShapeshiftExcludeItem(index) end

---Gets the value of field 'Targets'.
---@return integer value
function row:GetTargets() end

---Sets the value of field 'Targets'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetTargets(value) end

---Gets the value of field 'TargetCreatureType'.
---@return integer value
function row:GetTargetCreatureType() end

---Sets the value of field 'TargetCreatureType'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetTargetCreatureType(value) end

---Gets the value of field 'RequiresSpellFocus'.
---@return integer value
function row:GetRequiresSpellFocus() end

---Sets the value of field 'RequiresSpellFocus'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetRequiresSpellFocus(value) end

---Navigates foreign relationship to 'SpellFocusObject' via 'RequiresSpellFocus'.
---@return dbc.row.v335.SpellFocusObject|nil
function row:GetRequiresSpellFocus() end

---Creates a related 'SpellFocusObject' row and automatically links 'RequiresSpellFocus'.
---@param data? table
---@return dbc.row.v335.SpellFocusObject
function row:CreateRelated(data) end

---Gets the value of field 'FacingCasterFlags'.
---@return integer value
function row:GetFacingCasterFlags() end

---Sets the value of field 'FacingCasterFlags'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetFacingCasterFlags(value) end

---Gets the value of field 'CasterAuraState'.
---@return integer value
function row:GetCasterAuraState() end

---Sets the value of field 'CasterAuraState'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetCasterAuraState(value) end

---Gets the value of field 'TargetAuraState'.
---@return integer value
function row:GetTargetAuraState() end

---Sets the value of field 'TargetAuraState'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetTargetAuraState(value) end

---Gets the value of field 'ExcludeCasterAuraState'.
---@return integer value
function row:GetExcludeCasterAuraState() end

---Sets the value of field 'ExcludeCasterAuraState'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetExcludeCasterAuraState(value) end

---Gets the value of field 'ExcludeTargetAuraState'.
---@return integer value
function row:GetExcludeTargetAuraState() end

---Sets the value of field 'ExcludeTargetAuraState'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetExcludeTargetAuraState(value) end

---Gets the value of field 'CasterAuraSpell'.
---@return integer value
function row:GetCasterAuraSpell() end

---Sets the value of field 'CasterAuraSpell'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetCasterAuraSpell(value) end

---Gets the value of field 'TargetAuraSpell'.
---@return integer value
function row:GetTargetAuraSpell() end

---Sets the value of field 'TargetAuraSpell'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetTargetAuraSpell(value) end

---Gets the value of field 'ExcludeCasterAuraSpell'.
---@return integer value
function row:GetExcludeCasterAuraSpell() end

---Sets the value of field 'ExcludeCasterAuraSpell'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetExcludeCasterAuraSpell(value) end

---Gets the value of field 'ExcludeTargetAuraSpell'.
---@return integer value
function row:GetExcludeTargetAuraSpell() end

---Sets the value of field 'ExcludeTargetAuraSpell'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetExcludeTargetAuraSpell(value) end

---Gets the value of field 'CastingTimeIndex'.
---@return integer value
function row:GetCastingTimeIndex() end

---Sets the value of field 'CastingTimeIndex'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetCastingTimeIndex(value) end

---Navigates foreign relationship to 'SpellCastTimes' via 'CastingTimeIndex'.
---@return dbc.row.v335.SpellCastTimes|nil
function row:GetCastingTimeIndex() end

---Creates a related 'SpellCastTimes' row and automatically links 'CastingTimeIndex'.
---@param data? table
---@return dbc.row.v335.SpellCastTimes
function row:CreateRelated(data) end

---Gets the value of field 'RecoveryTime'.
---@return integer value
function row:GetRecoveryTime() end

---Sets the value of field 'RecoveryTime'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetRecoveryTime(value) end

---Gets the value of field 'CategoryRecoveryTime'.
---@return integer value
function row:GetCategoryRecoveryTime() end

---Sets the value of field 'CategoryRecoveryTime'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetCategoryRecoveryTime(value) end

---Gets the value of field 'InterruptFlags'.
---@return integer value
function row:GetInterruptFlags() end

---Sets the value of field 'InterruptFlags'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetInterruptFlags(value) end

---Gets the value of field 'AuraInterruptFlags'.
---@return integer value
function row:GetAuraInterruptFlags() end

---Sets the value of field 'AuraInterruptFlags'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetAuraInterruptFlags(value) end

---Gets the value of field 'ChannelInterruptFlags'.
---@return integer value
function row:GetChannelInterruptFlags() end

---Sets the value of field 'ChannelInterruptFlags'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetChannelInterruptFlags(value) end

---Gets the value of field 'ProcTypeMask'.
---@return integer value
function row:GetProcTypeMask() end

---Sets the value of field 'ProcTypeMask'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetProcTypeMask(value) end

---Gets the value of field 'ProcChance'.
---@return integer value
function row:GetProcChance() end

---Sets the value of field 'ProcChance'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetProcChance(value) end

---Gets the value of field 'ProcCharges'.
---@return integer value
function row:GetProcCharges() end

---Sets the value of field 'ProcCharges'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetProcCharges(value) end

---Gets the value of field 'MaxLevel'.
---@return integer value
function row:GetMaxLevel() end

---Sets the value of field 'MaxLevel'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetMaxLevel(value) end

---Gets the value of field 'BaseLevel'.
---@return integer value
function row:GetBaseLevel() end

---Sets the value of field 'BaseLevel'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetBaseLevel(value) end

---Gets the value of field 'SpellLevel'.
---@return integer value
function row:GetSpellLevel() end

---Sets the value of field 'SpellLevel'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetSpellLevel(value) end

---Gets the value of field 'DurationIndex'.
---@return integer value
function row:GetDurationIndex() end

---Sets the value of field 'DurationIndex'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetDurationIndex(value) end

---Navigates foreign relationship to 'SpellDuration' via 'DurationIndex'.
---@return dbc.row.v335.SpellDuration|nil
function row:GetDurationIndex() end

---Creates a related 'SpellDuration' row and automatically links 'DurationIndex'.
---@param data? table
---@return dbc.row.v335.SpellDuration
function row:CreateRelated(data) end

---Gets the value of field 'PowerType'.
---@return integer value
function row:GetPowerType() end

---Sets the value of field 'PowerType'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetPowerType(value) end

---Gets the value of field 'ManaCost'.
---@return integer value
function row:GetManaCost() end

---Sets the value of field 'ManaCost'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetManaCost(value) end

---Gets the value of field 'ManaCostPerLevel'.
---@return integer value
function row:GetManaCostPerLevel() end

---Sets the value of field 'ManaCostPerLevel'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetManaCostPerLevel(value) end

---Gets the value of field 'ManaPerSecond'.
---@return integer value
function row:GetManaPerSecond() end

---Sets the value of field 'ManaPerSecond'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetManaPerSecond(value) end

---Gets the value of field 'ManaPerSecondPerLevel'.
---@return integer value
function row:GetManaPerSecondPerLevel() end

---Sets the value of field 'ManaPerSecondPerLevel'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetManaPerSecondPerLevel(value) end

---Gets the value of field 'RangeIndex'.
---@return integer value
function row:GetRangeIndex() end

---Sets the value of field 'RangeIndex'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetRangeIndex(value) end

---Gets the value of field 'Speed'.
---@return number value
function row:GetSpeed() end

---Sets the value of field 'Speed'.
---@param value number
---@return dbc.row.v335.Spell self
function row:SetSpeed(value) end

---Gets the value of field 'ModalNextSpell'.
---@return integer value
function row:GetModalNextSpell() end

---Sets the value of field 'ModalNextSpell'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetModalNextSpell(value) end

---Gets the value of field 'CumulativeAura'.
---@return integer value
function row:GetCumulativeAura() end

---Sets the value of field 'CumulativeAura'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetCumulativeAura(value) end

---Gets the value of field 'Totem'.
---@return integer[] value
function row:GetTotem() end

---Sets the value of field 'Totem'.
---@param value integer[]
---@return dbc.row.v335.Spell self
function row:SetTotem(value) end

---Gets element at 1-based index in 'Totem'.
---@param index integer
---@return integer value
function row:GetTotemItem(index) end

---Gets the value of field 'Reagent'.
---@return integer[] value
function row:GetReagent() end

---Sets the value of field 'Reagent'.
---@param value integer[]
---@return dbc.row.v335.Spell self
function row:SetReagent(value) end

---Gets element at 1-based index in 'Reagent'.
---@param index integer
---@return integer value
function row:GetReagentItem(index) end

---Navigates foreign relationship to 'Item' via 'Reagent'.
---@return dbc.row.v335.Item|nil
function row:GetReagent() end

---Creates a related 'Item' row and automatically links 'Reagent'.
---@param data? table
---@return dbc.row.v335.Item
function row:CreateRelated(data) end

---Gets the value of field 'ReagentCount'.
---@return integer[] value
function row:GetReagentCount() end

---Sets the value of field 'ReagentCount'.
---@param value integer[]
---@return dbc.row.v335.Spell self
function row:SetReagentCount(value) end

---Gets element at 1-based index in 'ReagentCount'.
---@param index integer
---@return integer value
function row:GetReagentCountItem(index) end

---Gets the value of field 'EquippedItemClass'.
---@return integer value
function row:GetEquippedItemClass() end

---Sets the value of field 'EquippedItemClass'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetEquippedItemClass(value) end

---Gets the value of field 'EquippedItemSubclass'.
---@return integer value
function row:GetEquippedItemSubclass() end

---Sets the value of field 'EquippedItemSubclass'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetEquippedItemSubclass(value) end

---Gets the value of field 'EquippedItemInvTypes'.
---@return integer value
function row:GetEquippedItemInvTypes() end

---Sets the value of field 'EquippedItemInvTypes'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetEquippedItemInvTypes(value) end

---Gets the value of field 'Effect'.
---@return integer[] value
function row:GetEffect() end

---Sets the value of field 'Effect'.
---@param value integer[]
---@return dbc.row.v335.Spell self
function row:SetEffect(value) end

---Gets element at 1-based index in 'Effect'.
---@param index integer
---@return integer value
function row:GetEffectItem(index) end

---Gets the value of field 'EffectDieSides'.
---@return integer[] value
function row:GetEffectDieSides() end

---Sets the value of field 'EffectDieSides'.
---@param value integer[]
---@return dbc.row.v335.Spell self
function row:SetEffectDieSides(value) end

---Gets element at 1-based index in 'EffectDieSides'.
---@param index integer
---@return integer value
function row:GetEffectDieSidesItem(index) end

---Gets the value of field 'EffectRealPointsPerLevel'.
---@return number[] value
function row:GetEffectRealPointsPerLevel() end

---Sets the value of field 'EffectRealPointsPerLevel'.
---@param value number[]
---@return dbc.row.v335.Spell self
function row:SetEffectRealPointsPerLevel(value) end

---Gets element at 1-based index in 'EffectRealPointsPerLevel'.
---@param index integer
---@return number value
function row:GetEffectRealPointsPerLevelItem(index) end

---Gets the value of field 'EffectBasePoints'.
---@return integer[] value
function row:GetEffectBasePoints() end

---Sets the value of field 'EffectBasePoints'.
---@param value integer[]
---@return dbc.row.v335.Spell self
function row:SetEffectBasePoints(value) end

---Gets element at 1-based index in 'EffectBasePoints'.
---@param index integer
---@return integer value
function row:GetEffectBasePointsItem(index) end

---Gets the value of field 'EffectMechanic'.
---@return integer[] value
function row:GetEffectMechanic() end

---Sets the value of field 'EffectMechanic'.
---@param value integer[]
---@return dbc.row.v335.Spell self
function row:SetEffectMechanic(value) end

---Gets element at 1-based index in 'EffectMechanic'.
---@param index integer
---@return integer value
function row:GetEffectMechanicItem(index) end

---Navigates foreign relationship to 'SpellMechanic' via 'EffectMechanic'.
---@return dbc.row.v335.SpellMechanic|nil
function row:GetEffectMechanic() end

---Creates a related 'SpellMechanic' row and automatically links 'EffectMechanic'.
---@param data? table
---@return dbc.row.v335.SpellMechanic
function row:CreateRelated(data) end

---Gets the value of field 'ImplicitTargetA'.
---@return integer[] value
function row:GetImplicitTargetA() end

---Sets the value of field 'ImplicitTargetA'.
---@param value integer[]
---@return dbc.row.v335.Spell self
function row:SetImplicitTargetA(value) end

---Gets element at 1-based index in 'ImplicitTargetA'.
---@param index integer
---@return integer value
function row:GetImplicitTargetAItem(index) end

---Gets the value of field 'ImplicitTargetB'.
---@return integer[] value
function row:GetImplicitTargetB() end

---Sets the value of field 'ImplicitTargetB'.
---@param value integer[]
---@return dbc.row.v335.Spell self
function row:SetImplicitTargetB(value) end

---Gets element at 1-based index in 'ImplicitTargetB'.
---@param index integer
---@return integer value
function row:GetImplicitTargetBItem(index) end

---Gets the value of field 'EffectRadiusIndex'.
---@return integer[] value
function row:GetEffectRadiusIndex() end

---Sets the value of field 'EffectRadiusIndex'.
---@param value integer[]
---@return dbc.row.v335.Spell self
function row:SetEffectRadiusIndex(value) end

---Gets element at 1-based index in 'EffectRadiusIndex'.
---@param index integer
---@return integer value
function row:GetEffectRadiusIndexItem(index) end

---Navigates foreign relationship to 'SpellRadius' via 'EffectRadiusIndex'.
---@return dbc.row.v335.SpellRadius|nil
function row:GetEffectRadiusIndex() end

---Creates a related 'SpellRadius' row and automatically links 'EffectRadiusIndex'.
---@param data? table
---@return dbc.row.v335.SpellRadius
function row:CreateRelated(data) end

---Gets the value of field 'EffectAura'.
---@return integer[] value
function row:GetEffectAura() end

---Sets the value of field 'EffectAura'.
---@param value integer[]
---@return dbc.row.v335.Spell self
function row:SetEffectAura(value) end

---Gets element at 1-based index in 'EffectAura'.
---@param index integer
---@return integer value
function row:GetEffectAuraItem(index) end

---Gets the value of field 'EffectAuraPeriod'.
---@return integer[] value
function row:GetEffectAuraPeriod() end

---Sets the value of field 'EffectAuraPeriod'.
---@param value integer[]
---@return dbc.row.v335.Spell self
function row:SetEffectAuraPeriod(value) end

---Gets element at 1-based index in 'EffectAuraPeriod'.
---@param index integer
---@return integer value
function row:GetEffectAuraPeriodItem(index) end

---Gets the value of field 'EffectAmplitude'.
---@return number[] value
function row:GetEffectAmplitude() end

---Sets the value of field 'EffectAmplitude'.
---@param value number[]
---@return dbc.row.v335.Spell self
function row:SetEffectAmplitude(value) end

---Gets element at 1-based index in 'EffectAmplitude'.
---@param index integer
---@return number value
function row:GetEffectAmplitudeItem(index) end

---Gets the value of field 'EffectChainTargets'.
---@return integer[] value
function row:GetEffectChainTargets() end

---Sets the value of field 'EffectChainTargets'.
---@param value integer[]
---@return dbc.row.v335.Spell self
function row:SetEffectChainTargets(value) end

---Gets element at 1-based index in 'EffectChainTargets'.
---@param index integer
---@return integer value
function row:GetEffectChainTargetsItem(index) end

---Gets the value of field 'EffectItemType'.
---@return integer[] value
function row:GetEffectItemType() end

---Sets the value of field 'EffectItemType'.
---@param value integer[]
---@return dbc.row.v335.Spell self
function row:SetEffectItemType(value) end

---Gets element at 1-based index in 'EffectItemType'.
---@param index integer
---@return integer value
function row:GetEffectItemTypeItem(index) end

---Gets the value of field 'EffectMiscValue'.
---@return integer[] value
function row:GetEffectMiscValue() end

---Sets the value of field 'EffectMiscValue'.
---@param value integer[]
---@return dbc.row.v335.Spell self
function row:SetEffectMiscValue(value) end

---Gets element at 1-based index in 'EffectMiscValue'.
---@param index integer
---@return integer value
function row:GetEffectMiscValueItem(index) end

---Gets the value of field 'EffectMiscValueB'.
---@return integer[] value
function row:GetEffectMiscValueB() end

---Sets the value of field 'EffectMiscValueB'.
---@param value integer[]
---@return dbc.row.v335.Spell self
function row:SetEffectMiscValueB(value) end

---Gets element at 1-based index in 'EffectMiscValueB'.
---@param index integer
---@return integer value
function row:GetEffectMiscValueBItem(index) end

---Gets the value of field 'EffectTriggerSpell'.
---@return integer[] value
function row:GetEffectTriggerSpell() end

---Sets the value of field 'EffectTriggerSpell'.
---@param value integer[]
---@return dbc.row.v335.Spell self
function row:SetEffectTriggerSpell(value) end

---Gets element at 1-based index in 'EffectTriggerSpell'.
---@param index integer
---@return integer value
function row:GetEffectTriggerSpellItem(index) end

---Navigates foreign relationship to 'Spell' via 'EffectTriggerSpell'.
---@return dbc.row.v335.Spell|nil
function row:GetEffectTriggerSpell() end

---Creates a related 'Spell' row and automatically links 'EffectTriggerSpell'.
---@param data? table
---@return dbc.row.v335.Spell
function row:CreateRelated(data) end

---Gets the value of field 'EffectPointsPerCombo'.
---@return number[] value
function row:GetEffectPointsPerCombo() end

---Sets the value of field 'EffectPointsPerCombo'.
---@param value number[]
---@return dbc.row.v335.Spell self
function row:SetEffectPointsPerCombo(value) end

---Gets element at 1-based index in 'EffectPointsPerCombo'.
---@param index integer
---@return number value
function row:GetEffectPointsPerComboItem(index) end

---Gets the value of field 'EffectSpellClassMaskA'.
---@return integer[] value
function row:GetEffectSpellClassMaskA() end

---Sets the value of field 'EffectSpellClassMaskA'.
---@param value integer[]
---@return dbc.row.v335.Spell self
function row:SetEffectSpellClassMaskA(value) end

---Gets element at 1-based index in 'EffectSpellClassMaskA'.
---@param index integer
---@return integer value
function row:GetEffectSpellClassMaskAItem(index) end

---Gets the value of field 'EffectSpellClassMaskB'.
---@return integer[] value
function row:GetEffectSpellClassMaskB() end

---Sets the value of field 'EffectSpellClassMaskB'.
---@param value integer[]
---@return dbc.row.v335.Spell self
function row:SetEffectSpellClassMaskB(value) end

---Gets element at 1-based index in 'EffectSpellClassMaskB'.
---@param index integer
---@return integer value
function row:GetEffectSpellClassMaskBItem(index) end

---Gets the value of field 'EffectSpellClassMaskC'.
---@return integer[] value
function row:GetEffectSpellClassMaskC() end

---Sets the value of field 'EffectSpellClassMaskC'.
---@param value integer[]
---@return dbc.row.v335.Spell self
function row:SetEffectSpellClassMaskC(value) end

---Gets element at 1-based index in 'EffectSpellClassMaskC'.
---@param index integer
---@return integer value
function row:GetEffectSpellClassMaskCItem(index) end

---Gets the value of field 'SpellVisualID'.
---@return integer[] value
function row:GetSpellVisualID() end

---Sets the value of field 'SpellVisualID'.
---@param value integer[]
---@return dbc.row.v335.Spell self
function row:SetSpellVisualID(value) end

---Gets element at 1-based index in 'SpellVisualID'.
---@param index integer
---@return integer value
function row:GetSpellVisualIDItem(index) end

---Navigates foreign relationship to 'SpellVisual' via 'SpellVisualID'.
---@return dbc.row.v335.SpellVisual|nil
function row:GetSpellVisual() end

---Creates a related 'SpellVisual' row and automatically links 'SpellVisualID'.
---@param data? table
---@return dbc.row.v335.SpellVisual
function row:CreateRelated(data) end

---Gets the value of field 'SpellIconID'.
---@return integer value
function row:GetSpellIconID() end

---Sets the value of field 'SpellIconID'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetSpellIconID(value) end

---Navigates foreign relationship to 'SpellIcon' via 'SpellIconID'.
---@return dbc.row.v335.SpellIcon|nil
function row:GetSpellIcon() end

---Creates a related 'SpellIcon' row and automatically links 'SpellIconID'.
---@param data? table
---@return dbc.row.v335.SpellIcon
function row:CreateRelated(data) end

---Gets the value of field 'ActiveIconID'.
---@return integer value
function row:GetActiveIconID() end

---Sets the value of field 'ActiveIconID'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetActiveIconID(value) end

---Navigates foreign relationship to 'SpellIcon' via 'ActiveIconID'.
---@return dbc.row.v335.SpellIcon|nil
function row:GetActiveIcon() end

---Creates a related 'SpellIcon' row and automatically links 'ActiveIconID'.
---@param data? table
---@return dbc.row.v335.SpellIcon
function row:CreateRelated(data) end

---Gets the value of field 'SpellPriority'.
---@return integer value
function row:GetSpellPriority() end

---Sets the value of field 'SpellPriority'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetSpellPriority(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v335.Spell self
function row:SetName_lang(value) end

---Gets the value of field 'NameSubtext_lang'.
---@return string value
function row:GetNameSubtext_lang() end

---Sets the value of field 'NameSubtext_lang'.
---@param value string
---@return dbc.row.v335.Spell self
function row:SetNameSubtext_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v335.Spell self
function row:SetDescription_lang(value) end

---Gets the value of field 'AuraDescription_lang'.
---@return string value
function row:GetAuraDescription_lang() end

---Sets the value of field 'AuraDescription_lang'.
---@param value string
---@return dbc.row.v335.Spell self
function row:SetAuraDescription_lang(value) end

---Gets the value of field 'ManaCostPct'.
---@return integer value
function row:GetManaCostPct() end

---Sets the value of field 'ManaCostPct'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetManaCostPct(value) end

---Gets the value of field 'StartRecoveryCategory'.
---@return integer value
function row:GetStartRecoveryCategory() end

---Sets the value of field 'StartRecoveryCategory'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetStartRecoveryCategory(value) end

---Gets the value of field 'StartRecoveryTime'.
---@return integer value
function row:GetStartRecoveryTime() end

---Sets the value of field 'StartRecoveryTime'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetStartRecoveryTime(value) end

---Gets the value of field 'MaxTargetLevel'.
---@return integer value
function row:GetMaxTargetLevel() end

---Sets the value of field 'MaxTargetLevel'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetMaxTargetLevel(value) end

---Gets the value of field 'SpellClassSet'.
---@return integer value
function row:GetSpellClassSet() end

---Sets the value of field 'SpellClassSet'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetSpellClassSet(value) end

---Gets the value of field 'SpellClassMask'.
---@return integer[] value
function row:GetSpellClassMask() end

---Sets the value of field 'SpellClassMask'.
---@param value integer[]
---@return dbc.row.v335.Spell self
function row:SetSpellClassMask(value) end

---Gets element at 1-based index in 'SpellClassMask'.
---@param index integer
---@return integer value
function row:GetSpellClassMaskItem(index) end

---Gets the value of field 'MaxTargets'.
---@return integer value
function row:GetMaxTargets() end

---Sets the value of field 'MaxTargets'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetMaxTargets(value) end

---Gets the value of field 'DefenseType'.
---@return integer value
function row:GetDefenseType() end

---Sets the value of field 'DefenseType'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetDefenseType(value) end

---Gets the value of field 'PreventionType'.
---@return integer value
function row:GetPreventionType() end

---Sets the value of field 'PreventionType'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetPreventionType(value) end

---Gets the value of field 'StanceBarOrder'.
---@return integer value
function row:GetStanceBarOrder() end

---Sets the value of field 'StanceBarOrder'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetStanceBarOrder(value) end

---Gets the value of field 'EffectChainAmplitude'.
---@return number[] value
function row:GetEffectChainAmplitude() end

---Sets the value of field 'EffectChainAmplitude'.
---@param value number[]
---@return dbc.row.v335.Spell self
function row:SetEffectChainAmplitude(value) end

---Gets element at 1-based index in 'EffectChainAmplitude'.
---@param index integer
---@return number value
function row:GetEffectChainAmplitudeItem(index) end

---Gets the value of field 'MinFactionID'.
---@return integer value
function row:GetMinFactionID() end

---Sets the value of field 'MinFactionID'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetMinFactionID(value) end

---Navigates foreign relationship to 'Faction' via 'MinFactionID'.
---@return dbc.row.v335.Faction|nil
function row:GetMinFaction() end

---Creates a related 'Faction' row and automatically links 'MinFactionID'.
---@param data? table
---@return dbc.row.v335.Faction
function row:CreateRelated(data) end

---Gets the value of field 'MinReputation'.
---@return integer value
function row:GetMinReputation() end

---Sets the value of field 'MinReputation'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetMinReputation(value) end

---Gets the value of field 'RequiredAuraVision'.
---@return integer value
function row:GetRequiredAuraVision() end

---Sets the value of field 'RequiredAuraVision'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetRequiredAuraVision(value) end

---Gets the value of field 'RequiredTotemCategoryID'.
---@return integer[] value
function row:GetRequiredTotemCategoryID() end

---Sets the value of field 'RequiredTotemCategoryID'.
---@param value integer[]
---@return dbc.row.v335.Spell self
function row:SetRequiredTotemCategoryID(value) end

---Gets element at 1-based index in 'RequiredTotemCategoryID'.
---@param index integer
---@return integer value
function row:GetRequiredTotemCategoryIDItem(index) end

---Navigates foreign relationship to 'TotemCategory' via 'RequiredTotemCategoryID'.
---@return dbc.row.v335.TotemCategory|nil
function row:GetRequiredTotemCategory() end

---Creates a related 'TotemCategory' row and automatically links 'RequiredTotemCategoryID'.
---@param data? table
---@return dbc.row.v335.TotemCategory
function row:CreateRelated(data) end

---Gets the value of field 'RequiredAreasID'.
---@return integer value
function row:GetRequiredAreasID() end

---Sets the value of field 'RequiredAreasID'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetRequiredAreasID(value) end

---Navigates foreign relationship to 'AreaGroup' via 'RequiredAreasID'.
---@return dbc.row.v335.AreaGroup|nil
function row:GetRequiredAreas() end

---Creates a related 'AreaGroup' row and automatically links 'RequiredAreasID'.
---@param data? table
---@return dbc.row.v335.AreaGroup
function row:CreateRelated(data) end

---Gets the value of field 'SchoolMask'.
---@return integer value
function row:GetSchoolMask() end

---Sets the value of field 'SchoolMask'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetSchoolMask(value) end

---Gets the value of field 'RuneCostID'.
---@return integer value
function row:GetRuneCostID() end

---Sets the value of field 'RuneCostID'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetRuneCostID(value) end

---Navigates foreign relationship to 'SpellRuneCost' via 'RuneCostID'.
---@return dbc.row.v335.SpellRuneCost|nil
function row:GetRuneCost() end

---Creates a related 'SpellRuneCost' row and automatically links 'RuneCostID'.
---@param data? table
---@return dbc.row.v335.SpellRuneCost
function row:CreateRelated(data) end

---Gets the value of field 'SpellMissileID'.
---@return integer value
function row:GetSpellMissileID() end

---Sets the value of field 'SpellMissileID'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetSpellMissileID(value) end

---Navigates foreign relationship to 'SpellMissile' via 'SpellMissileID'.
---@return dbc.row.v335.SpellMissile|nil
function row:GetSpellMissile() end

---Creates a related 'SpellMissile' row and automatically links 'SpellMissileID'.
---@param data? table
---@return dbc.row.v335.SpellMissile
function row:CreateRelated(data) end

---Gets the value of field 'PowerDisplayID'.
---@return integer value
function row:GetPowerDisplayID() end

---Sets the value of field 'PowerDisplayID'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetPowerDisplayID(value) end

---Navigates foreign relationship to 'PowerDisplay' via 'PowerDisplayID'.
---@return dbc.row.v335.PowerDisplay|nil
function row:GetPowerDisplay() end

---Creates a related 'PowerDisplay' row and automatically links 'PowerDisplayID'.
---@param data? table
---@return dbc.row.v335.PowerDisplay
function row:CreateRelated(data) end

---Gets the value of field 'EffectBonusCoefficient'.
---@return number[] value
function row:GetEffectBonusCoefficient() end

---Sets the value of field 'EffectBonusCoefficient'.
---@param value number[]
---@return dbc.row.v335.Spell self
function row:SetEffectBonusCoefficient(value) end

---Gets element at 1-based index in 'EffectBonusCoefficient'.
---@param index integer
---@return number value
function row:GetEffectBonusCoefficientItem(index) end

---Gets the value of field 'DescriptionVariablesID'.
---@return integer value
function row:GetDescriptionVariablesID() end

---Sets the value of field 'DescriptionVariablesID'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetDescriptionVariablesID(value) end

---Navigates foreign relationship to 'SpellDescriptionVariables' via 'DescriptionVariablesID'.
---@return dbc.row.v335.SpellDescriptionVariables|nil
function row:GetDescriptionVariables() end

---Creates a related 'SpellDescriptionVariables' row and automatically links 'DescriptionVariablesID'.
---@param data? table
---@return dbc.row.v335.SpellDescriptionVariables
function row:CreateRelated(data) end

---Gets the value of field 'Difficulty'.
---@return integer value
function row:GetDifficulty() end

---Sets the value of field 'Difficulty'.
---@param value integer
---@return dbc.row.v335.Spell self
function row:SetDifficulty(value) end

---Table container for Spell (Build 3.3.5.12340).
---@class dbc.Table.v335.Spell : DbcTable
---@field [integer] dbc.row.v335.Spell
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.Spell
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.Spell|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.Spell
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.Spell>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.Spell[]
function tbl:GetByRelation(foreign_id) end

return {}
