# Step-by-Step Tutorial: Advanced Spells, Auras, and Procs in Lua

In our previous tutorial, we created a basic direct-damage spell. Now, we are going to dive into the deep end of World of Warcraft (WotLK 3.3.5a) spell mechanics. 

This advanced tutorial will guide you through creating a complex multi-stage spell: **"Mark of the Firelord"**. This legendary spell features:
1. **An Instant Fire Strike** (Direct damage).
2. **A Periodic Damage-over-Time (DoT) Aura** (Applies a burning effect to the target over 18 seconds).
3. **A Triggered "Proc" Mechanic** (Every time the DoT ticks, it has a 30% chance to trigger a secondary spell, **"Firelord's Blessing"**, which heals the caster).

By completing this tutorial, you will master **Auras**, **Spell Durations**, **Proc Masks**, **Triggered Spells**, and **multi-DBC relationship chaining** using `lua-dbc`.

---

## 📐 The Architecture of complex Spells

To build a multi-stage spell with procs, we cannot fit everything into a single spell ID. WoW's engine solves this by dividing complex behaviors into **interconnected spells**:

```
[Main Spell: Mark of the Firelord (ID: 99100)]
  │
  ├── Effect 1: Direct Fire Damage
  │
  └── Effect 2: APPLY_AURA -> PERIODIC_DAMAGE (DoT)
        │
        └── Procs on Tick (30% Chance) ──> Triggers ──> [Secondary Spell: Firelord's Blessing (ID: 99101)]
                                                          │
                                                          └── Effect 1: HEAL (Direct healing to caster)
```

To implement this, we must configure:
1. **`SpellDuration.dbc`**: To define custom buff/debuff durations.
2. **`Spell.dbc`**: For both the parent spell and the triggered sub-spell.
3. **Proc Flags & Masks**: To detect when damage ticks occur and trigger the secondary spell.

---

## 🛠️ Step 1: Initializing the Workspace

Let's load the library and open our tables:

```lua
local dbc = require("dbc")

local workspace = dbc.Workspace({
    source = "data/stock/dbc",
    out = "build/patched/dbc"
})

local spells = workspace:Open("Spell")
local icons = workspace:Open("SpellIcon")
```

---

## ⏱️ Step 2: Registering a Custom Duration

Every aura needs a duration. While we can reuse existing durations, it is much safer to create a custom one in the `SpellDuration` table to avoid altering stock spells.

We want our DoT to last **18 seconds (18,000 milliseconds)**:

```lua
local durations = workspace:Open("SpellDuration")

-- Generate a unique ID for our custom duration
local duration_id = durations:GetNextId()

-- Create the duration row (values are in milliseconds)
local my_duration = durations:Create(duration_id)
    :SetDuration(18000)      -- Base duration: 18 seconds
    :SetMaxDuration(18000)   -- Maximum duration (for spell mods/talents)

print("Created SpellDuration ID: " .. my_duration:GetID())
```

---

## 💖 Step 3: Creating the Triggered Spell (The Proc)

Before creating the main spell, we must define the spell it will trigger: **"Firelord's Blessing"** (ID: `99101`). This is a direct-healing spell targeted back at the caster.

```lua
local SpellEffectType = dbc.Enums.SpellEffectType
local SpellImplicitTarget = dbc.Enums.SpellImplicitTarget
local SchoolMask = dbc.Enums.SchoolMask
local SpellAttributes = dbc.Enums.SpellAttributes

local proc_spell_id = 99101
local proc_spell = spells:Create(proc_spell_id)

-- 1. Identity & Visuals
proc_spell:SetName("Firelord's Blessing")
proc_spell:SetDescription("Heals the caster for 200 health.")
proc_spell:SetSpellIconID(136) -- Reusing a standard holy/fire icon from stock DBCs

-- 2. Configuration (Instant cast, self-targeted, costs nothing)
proc_spell:SetSchoolMask(SchoolMask.HOLY) -- Healing magic school
proc_spell:SetCastingTimeIndex(1)         -- 1 = Instant cast in stock DBCs
proc_spell:SetRangeIndex(1)               -- 1 = Self-only range

-- 3. Healing Effect (Effect 1)
proc_spell:SetEffect(SpellEffectType.HEAL, 1)
proc_spell:SetImplicitTargetA(SpellImplicitTarget.UNIT_CASTER, 1) -- Target: Caster
proc_spell:SetEffectBasePoints(199, 1)                           -- Heals exactly 200 HP (200 - 1)

-- 4. Attributes (Hide it from the spellbook since it is an automated proc)
proc_spell:AddAttributes(SpellAttributes.flags.IS_HIDDEN_IN_SPELLBOOK)
proc_spell:AddAttributes(SpellAttributes.flags.IS_HIDDEN_FROM_LOG)

print("Created Proc Spell ID: " .. proc_spell:GetID())
```

---

## 🔥 Step 4: Creating the Legendary Spell

Now, let's create our main spell: **"Mark of the Firelord"** (ID: `99100`). It will have:
- An instant fire strike (Effect 1).
- An 18-second periodic damage aura (Effect 2) that triggers our proc spell.

### 4.1. Identity, Cost & Range

```lua
local main_spell_id = 99100
local main_spell = spells:Create(main_spell_id)

-- Naming and visuals
main_spell:SetName("Mark of the Firelord")
main_spell:SetNameSubtext("Rank 1")
main_spell:SetDescription("Strikes the enemy for 80 Fire damage and marks them, causing 300 Fire damage over 18 sec. Every time the target burns, the caster has a 30% chance to be healed for 200 health.")
main_spell:SetAuraDescription("Taking Fire damage periodically. Each tick has a chance to heal the caster.")

-- Set the custom duration we created in Step 2
main_spell:SetDurationIndex(my_duration:GetID())

-- Set icon, resource cost, range, and cast time
main_spell:SetSpellIconID(my_icon and my_icon:GetID() or 136) -- Link spell icon
main_spell:SetPowerType(dbc.Enums.SpellPowerType.MANA)
main_spell:SetManaCost(250)                                   -- Costs 250 Mana
main_spell:SetRangeIndex(5)                                   -- Standard 30-yard range
main_spell:SetCastingTimeIndex(4)                             -- 2.0-second cast time
main_spell:SetSchoolMask(SchoolMask.FIRE)
```

### 4.2. Effect 1: Direct Fire Damage

```lua
-- Effect 1: Direct Fire Damage on hit
main_spell:SetEffect(SpellEffectType.SCHOOL_DAMAGE, 1)
main_spell:SetImplicitTargetA(SpellImplicitTarget.UNIT_TARGET_ENEMY, 1)
main_spell:SetEffectBasePoints(79, 1) -- Deals exactly 80 damage (80 - 1)
```

### 4.3. Effect 2: Periodic Damage over Time (DoT)

To create a DoT, we use `APPLY_AURA` coupled with `PERIODIC_DAMAGE`. We also specify **how often** the damage occurs using `EffectAuraPeriod` (in milliseconds):

```lua
local AuraType = dbc.Enums.AuraType

-- Effect 2: Apply Aura -> Periodic Damage
main_spell:SetEffect(SpellEffectType.APPLY_AURA, 2)
main_spell:SetEffectAura(AuraType.PERIODIC_DAMAGE, 2)
main_spell:SetImplicitTargetA(SpellImplicitTarget.UNIT_TARGET_ENEMY, 2)

-- Damage configuration: We want 300 total damage over 18 seconds.
-- If the DoT ticks every 3 seconds (3000 ms), there will be 6 ticks total (18 / 3).
-- 300 damage / 6 ticks = 50 damage per tick.
main_spell:SetEffectAuraPeriod(3000, 2)     -- Tick interval: Every 3000 ms (3 seconds)
main_spell:SetEffectBasePoints(49, 2)       -- Deals 50 damage per tick (50 - 1)
```

---

## ⚡ Step 5: Setting Up the Triggered Proc

This is where the magic happens. We want our DoT ticks to trigger our secondary healing spell (`proc_spell_id`) with a **30% chance**.

In WoW's DBC structure, a proc is set up on the spell row by specifying:
- **`ProcChance`**: The percentage chance to trigger (0 to 100).
- **`EffectTriggerSpell`**: The ID of the spell to cast when the proc succeeds.
- **`ProcTypeMask`**: A bitmask defining **what actions** trigger the proc.

```lua
local SpellProcFlags = dbc.Enums.SpellProcFlags

-- 1. Define the success chance (30%)
main_spell:SetProcChance(30)

-- 2. Link our healing spell as the triggered action for Effect 2
main_spell:SetEffectTriggerSpell(proc_spell_id, 2)

-- 3. Set the Proc Mask
-- We want the spell to proc specifically when our periodic damage ticks inflict damage.
-- 'SpellProcFlags' provides pre-configured bitmasks.
-- We will use the mask for PERIODIC_DAMAGE_DEALT (and/or custom bit values).
-- For WotLK 3.3.5a, the mask for "On periodic spell tick (harmful)" is 0x00010000 (65536)
local periodic_tick_flag = 65536
main_spell:SetProcTypeMask(periodic_tick_flag)

-- Note: We can also add default proc flags if needed using:
-- main_spell:AddProcTypeMask(SpellProcFlags.flags.HEARTBEAT_RESIST_CHECK)
```

---

## 🌟 Step 6: Completing and Saving

Finally, register system attributes to make our spell an active ability in our spellbook, and save all modifications:

```lua
-- Add attributes to make it an active spellbook ability
main_spell:AddAttributes(SpellAttributes.flags.IS_ABILITY)
main_spell:RemoveAttributes(SpellAttributes.flags.IS_PASSIVE)

-- Save everything!
workspace:SaveAll()
print("[SUCCESS] Legendary Spell and Proc system saved successfully!")
```

---

## 🚀 Complete Lua Script

Here is the complete unified script (`create_advanced_spell.lua`):

```lua
-- ============================================================================
-- ADVANCED SPELL CREATION: MARK OF THE FIRELORD WITH AUTO-PROC
-- ============================================================================

local dbc = require("dbc")

-- 1. Initialize Workspace
local workspace = dbc.Workspace({
    source = "data/stock/dbc",
    out = "build/patched/dbc"
})

-- 2. Open Tables
local spells = workspace:Open("Spell")
local durations = workspace:Open("SpellDuration")

-- 3. Create Custom 18-Second Duration
local duration_id = durations:GetNextId()
local my_duration = durations:Create(duration_id)
    :SetDuration(18000)      -- 18s
    :SetMaxDuration(18000)

print("[INFO] Created custom duration ID: " .. my_duration:GetID())

-- 4. Create Triggered Healing Spell (The Blessing)
local proc_spell_id = 99101
local proc_spell = spells:Create(proc_spell_id)

local SpellEffectType = dbc.Enums.SpellEffectType
local SpellImplicitTarget = dbc.Enums.SpellImplicitTarget
local SchoolMask = dbc.Enums.SchoolMask
local SpellAttributes = dbc.Enums.SpellAttributes

proc_spell:SetName("Firelord's Blessing")
proc_spell:SetDescription("Heals the caster for 200 health.")
proc_spell:SetSpellIconID(136) -- Standard holy/fire icon
proc_spell:SetSchoolMask(SchoolMask.HOLY)
proc_spell:SetCastingTimeIndex(1) -- Instant Cast
proc_spell:SetRangeIndex(1)       -- Self Range

proc_spell:SetEffect(SpellEffectType.HEAL, 1)
proc_spell:SetImplicitTargetA(SpellImplicitTarget.UNIT_CASTER, 1)
proc_spell:SetEffectBasePoints(199, 1) -- Heals exactly 200 HP

-- Hide proc spell from spellbook
proc_spell:AddAttributes(SpellAttributes.flags.IS_HIDDEN_IN_SPELLBOOK)
proc_spell:AddAttributes(SpellAttributes.flags.IS_HIDDEN_FROM_LOG)

print("[INFO] Created Proc Spell ID: " .. proc_spell:GetID())

-- 5. Create Main Spell (Mark of the Firelord)
local main_spell_id = 99100
local main_spell = spells:Create(main_spell_id)

main_spell:SetName("Mark of the Firelord")
main_spell:SetNameSubtext("Rank 1")
main_spell:SetDescription("Strikes the enemy for 80 Fire damage and marks them, causing 300 Fire damage over 18 sec. Every time the target burns, the caster has a 30% chance to be healed for 200 health.")
main_spell:SetAuraDescription("Taking Fire damage periodically. Each tick has a chance to heal the caster.")

-- Set duration, visuals, and costs
main_spell:SetDurationIndex(my_duration:GetID())
main_spell:SetSpellIconID(136)
main_spell:SetPowerType(dbc.Enums.SpellPowerType.MANA)
main_spell:SetManaCost(250)       -- 250 Mana
main_spell:SetRangeIndex(5)       -- ~30 yards
main_spell:SetCastingTimeIndex(4) -- ~2.0s cast
main_spell:SetSchoolMask(SchoolMask.FIRE)

-- Effect 1: Direct Fire Strike (80 Damage)
main_spell:SetEffect(SpellEffectType.SCHOOL_DAMAGE, 1)
main_spell:SetImplicitTargetA(SpellImplicitTarget.UNIT_TARGET_ENEMY, 1)
main_spell:SetEffectBasePoints(79, 1)

-- Effect 2: DoT (300 Damage over 18 seconds = 50 damage every 3s)
local AuraType = dbc.Enums.AuraType
main_spell:SetEffect(SpellEffectType.APPLY_AURA, 2)
main_spell:SetEffectAura(AuraType.PERIODIC_DAMAGE, 2)
main_spell:SetImplicitTargetA(SpellImplicitTarget.UNIT_TARGET_ENEMY, 2)
main_spell:SetEffectAuraPeriod(3000, 2) -- Ticks every 3 seconds
main_spell:SetEffectBasePoints(49, 2)   -- 50 Damage per tick

-- 6. Configure Triggered Proc on Effect 2 Ticks
main_spell:SetProcChance(30)                    -- 30% success chance
main_spell:SetEffectTriggerSpell(proc_spell_id, 2) -- Trigger "Firelord's Blessing" on tick
local periodic_tick_flag = 65536                -- Hook on harmful periodic ticks
main_spell:SetProcTypeMask(periodic_tick_flag)

-- Spellbook visible active ability attributes
main_spell:AddAttributes(SpellAttributes.flags.IS_ABILITY)
main_spell:RemoveAttributes(SpellAttributes.flags.IS_PASSIVE)

-- 7. Save and compile
workspace:SaveAll()
print("[INFO] Saved all patched DBCs successfully!")
```

---

## 💡 Customizing This Further

Now that you have this advanced system running, here are some ideas to expand your knowledge:
- **Multiple procs**: Set different trigger spells on Effect 1 (instant strike) and Effect 2 (the DoT ticks).
- **Procs on attacks**: Change the `ProcTypeMask` to trigger when you land a melee hit or crit (using `dbc.Enums.SpellProcFlags` constants).
- **Proc charges**: Use `spell:SetProcCharges(5)` to make the mark expire after triggering 5 times.

Happy hacking! 🐉
