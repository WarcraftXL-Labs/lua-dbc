# Beginner Tutorial: Cloning and Customizing an Existing Spell (WotLK 3.3.5a)

This tutorial is intended for beginners who want to create a new spell by cloning an official World of Warcraft 3.3.5a (Wrath of the Lich King) spell and modifying its properties (localized name, mana cost, damage, cast time, and range).

Cloning is the recommended approach for creating custom spells: it copies all internal client attributes and flags from a known valid spell, preventing data corruption.

---

## Contents

1. [Prerequisites](#1-prerequisites)
2. [Initializing the Workspace](#2-initializing-the-workspace)
3. [Finding the Source Spell](#3-finding-the-source-spell)
4. [Cloning the Row with CloneRow](#4-cloning-the-row-with-clonerow)
5. [Setting Localized Names and Descriptions](#5-setting-localized-names-and-descriptions)
6. [Adjusting Spell Mechanics and Effects](#6-adjusting-spell-mechanics-and-effects)
7. [Saving and Exporting Binary Data](#7-saving-and-exporting-binary-data)
8. [Complete Runnable Script](#8-complete-runnable-script)

---

## 1. Prerequisites

Ensure you have:
* LuaJIT 2.1 installed and accessible in your `PATH`.
* The `lua-dbc` library in your workspace or installed via LuaRocks.
* Authentic 3.3.5a DBC files (specifically `Spell.dbc`) in a source directory (e.g., `data/dbc/`).

---

## 2. Initializing the Workspace

The `dbc.Workspace` object manages reading original database files from your input folder and saving patched files to your designated output directory.

Create a file named `clone_spell.lua`:

```lua
local dbc = require("dbc")

-- Define a build-scoped workspace for WotLK 3.3.5a
local ws = dbc.Workspace({
    source = "data/dbc",         -- Directory containing original 3.3.5a DBCs
    out    = "out/patched/dbc",  -- Directory where modified files are saved
    build  = "3.3.5.12340"
})

-- Open the Spell table
local spells = ws:Open("Spell")
print(string.format("Spell.dbc loaded (%d existing spells).", spells:Count()))
```

---

## 3. Finding the Source Spell

We will clone the classic **Fireball** (Rank 1, ID `133`) to create a custom spell: **Voidflame**.

Verify the existence of the source spell:

```lua
local SOURCE_SPELL_ID = 133
local source_spell = spells:FindById(SOURCE_SPELL_ID)

if not source_spell then
    error("Source spell ID " .. SOURCE_SPELL_ID .. " was not found.")
end

print("Found source spell: " .. source_spell:GetName() .. " (ID " .. source_spell:GetID() .. ")")
```

---

## 4. Cloning the Row with CloneRow

To avoid conflicts with official Blizzard spells (IDs 1 through 60000), choose an ID above `70000`.

The `CloneRow` method copies all binary record bytes into a new entry and assigns the new primary key:

```lua
local NEW_SPELL_ID = 75001

if spells:Has(NEW_SPELL_ID) then
    error("Spell ID " .. NEW_SPELL_ID .. " already exists.")
end

-- Duplicate the entire binary record
local custom_spell = spells:CloneRow(source_spell, NEW_SPELL_ID)
print("New record created with ID: " .. custom_spell:GetID())
```

---

## 5. Setting Localized Names and Descriptions

With normalized field access in `lua-dbc`, you do not need the `_lang` suffix to update localized columns. You can use the `dbc.Locale` enumeration:

```lua
-- 1. Set default English text (slot 0, enUS)
custom_spell:SetName("Voidflame")

-- 2. Set French translation (slot 2, frFR)
custom_spell:SetName("Flamme du Néant", dbc.Locale.FRFR)

-- 3. Batch update multiple locales with a single table
custom_spell:SetDescription({
    [dbc.Locale.ENUS] = "Unleashes concentrated void flames, inflicting shadow-fire damage.",
    [dbc.Locale.FRFR] = "Projette des flammes du néant concentrées, infligeant des dégâts d'ombrefeu.",
    [dbc.Locale.DEDE] = "Entfesselt konzentrierte Leerenflammen, die Schattenfeuerschaden verursachen.",
})

-- Set the spell rank
custom_spell:SetRank("Rank 1", dbc.Locale.ENUS)
custom_spell:SetRank("Rang 1", dbc.Locale.FRFR)
```

---

## 6. Adjusting Spell Mechanics and Effects

Now update spell attributes and combat numbers:

```lua
-- 1. Set spell school (Shadowflame: Fire (4) + Shadow (32) = 36)
custom_spell:SetSchoolMask(36)

-- 2. Modify mana cost
custom_spell:SetManaCost(250)

-- 3. Modify range (ID 4 = 30 yards)
custom_spell:SetRangeIndex(4)

-- 4. Modify base damage points for Effect 1
-- In WoW 3.3.5, EffectBasePoints is 0-indexed in damage calculations (Value - 1)
-- For 150 base damage points:
custom_spell:SetEffectBasePointsItem(1, 149)

-- 5. Set dispel type if applicable (1 = Magic)
custom_spell:SetDispelType(1)
```

---

## 7. Saving and Exporting Binary Data

When modifications are complete, call `ws:Save()`. Only modified tables will be serialized and written to your output directory:

```lua
ws:Save()
print("Saved modifications to: out/patched/dbc/Spell.dbc")
```

---

## 8. Complete Runnable Script

Below is the complete standalone script:

```lua
local dbc = require("dbc")

local ws = dbc.Workspace({
    source = "data/dbc",
    out    = "out/patched/dbc",
    build  = "3.3.5.12340"
})

local spells = ws:Open("Spell")

local SOURCE_ID = 133
local NEW_ID    = 75001

local source = spells:FindById(SOURCE_ID)
assert(source, "Source spell not found")

-- Clone the spell
local custom_spell = spells:CloneRow(source, NEW_ID)

-- Localized metadata using dbc.Locale
custom_spell:SetName({
    [dbc.Locale.ENUS] = "Voidflame",
    [dbc.Locale.FRFR] = "Flamme du Néant",
})

custom_spell:SetDescription({
    [dbc.Locale.ENUS] = "Hurls a bolt of dark fire that inflicts shadow-fire damage.",
    [dbc.Locale.FRFR] = "Projette un éclair de feu sombre infligeant des dégâts d'ombrefeu.",
})

custom_spell:SetRank("Rank 1", dbc.Locale.ENUS)
custom_spell:SetRank("Rang 1", dbc.Locale.FRFR)

-- Gameplay parameters
custom_spell:SetSchoolMask(36)       -- Fire (4) + Shadow (32)
custom_spell:SetManaCost(180)        -- Mana cost
custom_spell:SetRangeIndex(4)        -- 30 yards range
custom_spell:SetEffectBasePointsItem(1, 120) -- Base damage points

-- Save output
ws:Save()
print("Success: Spell 75001 ('Voidflame') was written to Spell.dbc.")
```
