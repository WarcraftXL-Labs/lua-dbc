# Intermediate Tutorial: Creating a Spell from Scratch with Animations and Visuals (3.3.5a)

This tutorial covers the complete creation of a new spell from scratch (*from 0*) for World of Warcraft 3.3.5a. Unlike cloning, building a spell from scratch requires setting up satellite relational tables: icon paths, cast duration, casting range, precast animation kits (hands glowing while channeling), and visual impact kits.

We will build a complete spell named **Fel Lightning**, featuring a 2.5-second cast time, a continuous channeling precast hand animation, and spell damage scaling.

---

## Contents

1. [Relational Spell Architecture](#1-relational-spell-architecture)
2. [Initializing the Multi-Table Workspace](#2-initializing-the-multi-table-workspace)
3. [Configuring the Spell Icon (SpellIcon)](#3-configuring-the-spell-icon-spellicon)
4. [Setting the Cast Duration (SpellCastTimes)](#4-setting-the-cast-duration-spellcasttimes)
5. [Configuring Cast Range (SpellRange)](#5-configuring-cast-range-spellrange)
6. [Creating Animations and Visual Effects (SpellVisual & Kits)](#6-creating-animations-and-visual-effects-spellvisual--kits)
7. [Building the Primary Spell Entry (Spell)](#7-building-the-primary-spell-entry-spell)
8. [Saving and Verifying Output](#8-saving-and-verifying-output)
9. [Complete Runnable Script](#9-complete-runnable-script)

---

## 1. Relational Spell Architecture

In the World of Warcraft engine, `Spell.dbc` delegates visual, temporal, and spatial properties to linked tables via foreign keys:

```
             ┌─────────────────────────┐
             │       Spell.dbc         │
             │   (ID, Name, Effects)   │
             └────────────┬────────────┘
        ┌─────────────────┼─────────────────┬─────────────────┐
        ▼                 ▼                 ▼                 ▼
┌──────────────┐  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐
│  SpellIcon   │  │SpellCastTimes│  │  SpellRange  │  │ SpellVisual  │
│(Texture Path)│  │ (Duration ms)│  │ (Distances)  │  │ (Assembly)   │
└──────────────┘  └──────────────┘  └──────────────┘  └───────┬──────┘
                                                              ▼
                                                     ┌──────────────────┐
                                                     │  SpellVisualKit  │
                                                     │(Precast/Anim/FX) │
                                                     └──────────────────┘
```

---

## 2. Initializing the Multi-Table Workspace

Create a file named `create_spell_from_scratch.lua`:

```lua
local dbc = require("dbc")

local ws = dbc.Workspace({
    source = "data/dbc",
    out    = "out/patched/dbc",
    build  = "3.3.5.12340"
})

-- Open all required tables
local tbl_spell      = ws:Open("Spell")
local tbl_icon       = ws:Open("SpellIcon")
local tbl_cast_times = ws:Open("SpellCastTimes")
local tbl_range      = ws:Open("SpellRange")
local tbl_visual     = ws:Open("SpellVisual")
local tbl_visual_kit = ws:Open("SpellVisualKit")
```

---

## 3. Configuring the Spell Icon (SpellIcon)

`SpellIcon.dbc` maps an integer ID to an interface texture path. We can search for an existing texture or create a new row:

```lua
local ICON_PATH = [[Interface\Icons\Spell_Shaman_ChainLightning]]

-- Check if the icon already exists using LINQ
local existing_icon = tbl_icon:Query()
    :Where(function(row) return row:GetTextureFilename():lower() == ICON_PATH:lower() end)
    :FirstOrDefault(nil, nil)

local icon_id
if existing_icon then
    icon_id = existing_icon:GetID()
else
    icon_id = tbl_icon:GetMaxID() + 1
    local new_icon = tbl_icon:Create(icon_id)
    new_icon:SetTextureFilename(ICON_PATH)
end

print("Icon ID ready: " .. icon_id)
```

---

## 4. Setting the Cast Duration (SpellCastTimes)

For a 2.5-second (2500 ms) cast time:

```lua
local CAST_TIME_MS = 2500

local cast_time_row = tbl_cast_times:Query()
    :Where(function(row) return row:GetBase() == CAST_TIME_MS end)
    :FirstOrDefault(nil, nil)

local cast_time_id
if cast_time_row then
    cast_time_id = cast_time_row:GetID()
else
    cast_time_id = tbl_cast_times:GetMaxID() + 1
    local new_ct = tbl_cast_times:Create(cast_time_id)
    new_ct:SetBase(CAST_TIME_MS)
    new_ct:SetMinimum(0)
end

print("Cast time ID ready: " .. cast_time_id)
```

---

## 5. Configuring Cast Range (SpellRange)

Standard casting distance in WotLK (0 to 30 yards) is pre-defined with index `4`:

```lua
local RANGE_ID = 4 -- Standard 30 yards range
local range_row = tbl_range:FindById(RANGE_ID)
assert(range_row, "Range entry 4 must exist in stock DBCs")
```

---

## 6. Creating Animations and Visual Effects (SpellVisual & Kits)

To render proper in-game animations:
1. **Precast Kit**: Plays while the character channels or casts (hands raised, glowing magic aura).
2. **Cast Kit**: Plays when the cast finishes and the spell discharges.
3. **SpellVisual**: Combines both kits and defines missiles and impacts.

```lua
-- 1. Precast Animation Kit (Continuous casting animation)
local PRECAST_KIT_ID = tbl_visual_kit:GetMaxID() + 1
local precast_kit = tbl_visual_kit:Create(PRECAST_KIT_ID)
-- Animation 16 = ReadySpellOMNI (arms raised, channeling spell energy)
precast_kit:SetStartAnimID(16)
precast_kit:SetAnimID(16)
precast_kit:SetFlags(0)

-- 2. Cast Animation Kit (Discharge release)
local CAST_KIT_ID = tbl_visual_kit:GetMaxID() + 1
local cast_kit = tbl_visual_kit:Create(CAST_KIT_ID)
-- Animation 17 = SpellCastDirected (forward cast release)
cast_kit:SetStartAnimID(17)
cast_kit:SetAnimID(17)

-- 3. SpellVisual linking both kits
local VISUAL_ID = tbl_visual:GetMaxID() + 1
local visual_row = tbl_visual:Create(VISUAL_ID)
visual_row:SetPrecastKit(PRECAST_KIT_ID)
visual_row:SetCastKit(CAST_KIT_ID)
visual_row:SetImpactKit(0)
visual_row:SetMissileModel(0)

print(string.format("Visual assembly ready (Visual ID: %d, Precast: %d, Cast: %d)",
    VISUAL_ID, PRECAST_KIT_ID, CAST_KIT_ID))
```

---

## 7. Building the Primary Spell Entry (Spell)

Now instantiate the spell row and link all foreign-key references:

```lua
local SPELL_ID = 76000
assert(not tbl_spell:Has(SPELL_ID), "Spell ID 76000 is already taken")

local spell = tbl_spell:Create(SPELL_ID)

-- 1. Localized names using dbc.Locale
spell:SetName({
    [dbc.Locale.ENUS] = "Fel Lightning",
    [dbc.Locale.FRFR] = "Éclair de Gangrefeu",
})

spell:SetDescription({
    [dbc.Locale.ENUS] = "Strikes the enemy with corrupt fel electricity, causing nature and shadow damage.",
    [dbc.Locale.FRFR] = "Frappe l'ennemi d'une décharge de foudre corrompue, infligeant des dégâts de nature et d'ombre.",
})

-- 2. Link foreign keys
spell:SetSpellIconID(icon_id)
spell:SetCastingTimeIndex(cast_time_id)
spell:SetRangeIndex(RANGE_ID)
spell:SetSpellVisualID(VISUAL_ID)

-- 3. Core attributes
-- School mask: Nature (8) + Shadow (32) = 40
spell:SetSchoolMask(40)

-- Resource cost: 320 mana (PowerType 0 = Mana)
spell:SetPowerType(0)
spell:SetManaCost(320)
spell:SetSpeed(0)

-- 4. Effect 1: Direct damage
-- EffectType 2 = SPELL_EFFECT_SCHOOL_DAMAGE
spell:SetEffectItem(1, 2)

-- Implicit target: Target Enemy (TARGET_UNIT_TARGET_ENEMY = 6)
spell:SetEffectImplicitTargetAItem(1, 6)
spell:SetEffectImplicitTargetBItem(1, 0)

-- Base damage formula: 500 to 650
-- EffectBasePoints is 0-indexed: Value = 499
spell:SetEffectBasePointsItem(1, 499)
spell:SetEffectDieSidesItem(1, 151)

-- Spell damage coefficient scaling: 85% bonus
spell:SetEffectBonusCoefficientItem(1, 0.85)

-- 5. Flags
spell:SetAttributes(0x00000010)   -- Must face target
spell:SetAttributesEx(0x00000004) -- Breaks stealth
```

---

## 8. Saving and Verifying Output

Calling `ws:Save()` writes all modified tables (`Spell`, `SpellVisual`, `SpellVisualKit`, etc.) to your output directory:

```lua
ws:Save()
print("Success: Spell 76000 and all satellite tables were written.")
```

---

## 9. Complete Runnable Script

```lua
local dbc = require("dbc")

local ws = dbc.Workspace({
    source = "data/dbc",
    out    = "out/patched/dbc",
    build  = "3.3.5.12340"
})

local tbl_spell      = ws:Open("Spell")
local tbl_icon       = ws:Open("SpellIcon")
local tbl_cast_times = ws:Open("SpellCastTimes")
local tbl_visual     = ws:Open("SpellVisual")
local tbl_visual_kit = ws:Open("SpellVisualKit")

-- 1. Icon
local ICON_PATH = [[Interface\Icons\Spell_Shaman_ChainLightning]]
local icon = tbl_icon:Query()
    :Where(function(r) return r:GetTextureFilename():lower() == ICON_PATH:lower() end)
    :FirstOrDefault(nil, nil)

local icon_id = icon and icon:GetID() or (tbl_icon:GetMaxID() + 1)
if not icon then
    local new_icon = tbl_icon:Create(icon_id)
    new_icon:SetTextureFilename(ICON_PATH)
end

-- 2. Cast duration (2500 ms)
local ct = tbl_cast_times:Query()
    :Where(function(r) return r:GetBase() == 2500 end)
    :FirstOrDefault(nil, nil)

local cast_time_id = ct and ct:GetID() or (tbl_cast_times:GetMaxID() + 1)
if not ct then
    local new_ct = tbl_cast_times:Create(cast_time_id)
    new_ct:SetBase(2500)
    new_ct:SetMinimum(0)
end

-- 3. Visual Kits (Precast & Cast)
local precast_id = tbl_visual_kit:GetMaxID() + 1
local precast_kit = tbl_visual_kit:Create(precast_id)
precast_kit:SetStartAnimID(16)
precast_kit:SetAnimID(16)

local cast_kit_id = tbl_visual_kit:GetMaxID() + 1
local cast_kit = tbl_visual_kit:Create(cast_kit_id)
cast_kit:SetStartAnimID(17)
cast_kit:SetAnimID(17)

local visual_id = tbl_visual:GetMaxID() + 1
local visual = tbl_visual:Create(visual_id)
visual:SetPrecastKit(precast_id)
visual:SetCastKit(cast_kit_id)

-- 4. Primary Spell entry
local SPELL_ID = 76000
local spell = tbl_spell:Create(SPELL_ID)

spell:SetName({
    [dbc.Locale.ENUS] = "Fel Lightning",
    [dbc.Locale.FRFR] = "Éclair de Gangrefeu",
})

spell:SetDescription({
    [dbc.Locale.ENUS] = "Strikes the target with corrupted fel lightning.",
    [dbc.Locale.FRFR] = "Frappe la cible d'un éclair de gangrefoudre corrompue.",
})

spell:SetSpellIconID(icon_id)
spell:SetCastingTimeIndex(cast_time_id)
spell:SetRangeIndex(4)
spell:SetSpellVisualID(visual_id)

spell:SetSchoolMask(40)
spell:SetManaCost(320)
spell:SetPowerType(0)

spell:SetEffectItem(1, 2)
spell:SetEffectImplicitTargetAItem(1, 6)
spell:SetEffectBasePointsItem(1, 499)
spell:SetEffectDieSidesItem(1, 151)
spell:SetEffectBonusCoefficientItem(1, 0.85)

ws:Save()
print("Creation finished successfully in out/patched/dbc/.")
```
