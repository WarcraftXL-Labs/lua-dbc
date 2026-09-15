# Step-by-Step Tutorial: Creating a Basic Spell in Lua with `lua-dbc`

This tutorial is designed for beginners who want to learn how to modify and add World of Warcraft client and server data (Wrath of the Lich King - 3.3.5a) using the **`lua-dbc`** library.

We will create, step-by-step, a classic direct-damage fire spell: **"Ember Bolt"**. This spell will hurl a concentrated fire bolt at a target from a distance, costing mana, requiring a cast time, dealing damage, and using a custom icon.

---

## 🧐 What is a DBC?

In World of Warcraft, **DBC** files are binary databases read by both the game client and server to define structural database entries. They define things like spells, items, classes, races, icons, ranges, visual effects, and maps.

To create or modify a spell, we primarily interact with the `Spell` table, but also linked tables like:
- `SpellIcon`: Maps file paths to spell icon IDs.
- `SpellCastTimes`: Defines casting times (e.g., 2.0s).
- `SpellRange`: Defines minimum and maximum casting distances.

Normally, editing these files requires complex, manual hex editing or outdated DBC editors. With `lua-dbc`, we can write clean, automated, and readable Lua scripts.

---

## 🛠️ Step 1: Initializing the Workspace

To start, we need to load the `lua-dbc` library and define our **Workspace**. The Workspace manages directory paths, automatically reading stock DBC files from your input folder (*source*) and saving patched files to your output folder (*out*).

Create a file named `create_spell.lua` in your project folder:

```lua
-- Load the lua-dbc library
local dbc = require("dbc")

-- Configure the workspace
-- 'source': directory containing stock/original DBCs extracted from the game
-- 'out': directory where our patched DBCs will be saved
local workspace = dbc.Workspace({
    source = "data/stock/dbc",
    out = "build/patched/dbc"
})
```

---

## 📦 Step 2: Loading DBC Tables

To create a spell, we need to load the main spell table:

```lua
-- Open the Spell table from our source directory
local spells = workspace:Open("Spell")
```

*Note: Since `lua-dbc` includes a precomputed relations catalog, related tables (such as `SpellIcon` or `SpellRange`) are linked automatically under the hood!*

---

## 🎨 Step 3: Creating a Spell Icon

WoW uses `SpellIcon.dbc` to assign a numeric ID to a client-side texture file path. Let's load the `SpellIcon` table, determine a new ID, and register a clean fire icon path:

```lua
-- Open the SpellIcon table to create a new icon entry
local icons = workspace:Open("SpellIcon")

-- Get the next available unique ID in the table
local new_icon_id = icons:GetNextId()

-- Create the icon row
local my_icon = icons:Create(new_icon_id)
    :SetTextureFilename("Interface\\Icons\\Spell_Fire_Firebolt")

print("Created SpellIcon with ID: " .. my_icon:GetID())
```

---

## 🔥 Step 4: Creating and Configuring the Main Spell

Now we can create our new spell in the `Spell` table. We'll assign it a unique ID (e.g., `99999` if that ID is free, or use `spells:GetNextId()`).

We will use `lua-dbc`'s fluent, chainable **PascalCase** API to configure all its properties:

```lua
-- Determine a unique ID for our spell
local spell_id = 99999

-- Create the new spell row
local spell = spells:Create(spell_id)

-- 1. Identity & Naming Configuration
spell:SetName("Ember Bolt")
spell:SetNameSubtext("Rank 1")
spell:SetDescription("Hurls a concentrated bolt of fiery energy at the enemy, causing 150 to 180 Fire damage.")
spell:SetAuraDescription("") -- No persistent buff/debuff aura description needed

-- 2. Link our custom icon created in Step 3
spell:SetSpellIconID(my_icon:GetID())
```

---

## ⚙️ Step 5: Setting Costs, Cast Time, and Range

A spell needs clear gameplay rules: a resource cost (mana), a cast time, and a range of action.

```lua
-- Load useful enums
local SpellPowerType = dbc.Enums.SpellPowerType
local SchoolMask = dbc.Enums.SchoolMask

-- 1. Resource and cost (Mana)
spell:SetPowerType(SpellPowerType.MANA)
spell:SetManaCost(120) -- Costs 120 Mana

-- 2. Range (ID 5 corresponds to a standard 30-yard ranged distance in stock DBCs)
spell:SetRangeIndex(5)

-- 3. Cast Time (ID 4 corresponds to a 2.0-second cast time)
spell:SetCastingTimeIndex(4)

-- 4. Magic School
spell:SetSchoolMask(SchoolMask.FIRE)
```

---

## ⚡ Step 6: Adding an Effect (Inflicting Damage)

Every spell in Wrath of the Lich King can have up to 3 simultaneous effects. Effect fields are indexed `1` to `3` (using 1-based arrays in Lua).

For our spell, we want the first effect (**Effect 1**) to deal direct Fire damage to our target:

```lua
local SpellEffectType = dbc.Enums.SpellEffectType
local SpellImplicitTarget = dbc.Enums.SpellImplicitTarget

-- Activate the first effect: Direct School Damage
spell:SetEffect(SpellEffectType.SCHOOL_DAMAGE, 1)

-- Set the target: The selected enemy target
spell:SetImplicitTargetA(SpellImplicitTarget.UNIT_TARGET_ENEMY, 1)

-- Configure damage range (Formula: BasePoints + random roll)
-- We want to deal 150 to 180 damage.
-- 
-- How WoW handles damage math:
-- BasePoints is the minimum damage minus 1.
-- DieSides represents the randomized range amplitude (Max - Min + 1).
-- 
-- For 150 to 180 => Min: 150, Max: 180.
-- BasePoints = 150 - 1 = 149
-- DieSides = (180 - 150) + 1 = 31

spell:SetEffectBasePoints(149, 1) -- Set base points for effect 1
spell:SetEffectDieSides(31, 1)    -- Set die sides for effect 1
```

---

## 🌟 Step 7: Making the Spell Visible and Saving

Finally, we need to assign system attributes so the spell displays and behaves correctly (for example, marking it as an active ability in the spellbook instead of a passive spell).

```lua
local SpellAttributes = dbc.Enums.SpellAttributes

-- Add the ability attribute (allows it to appear in the Spellbook)
-- 'AddAttributes' handles bitwise OR operations automatically!
spell:AddAttributes(SpellAttributes.flags.IS_ABILITY)

-- Ensure it is not flagged as a passive spell
spell:RemoveAttributes(SpellAttributes.flags.IS_PASSIVE)
```

Once everything is configured, we save all modified tables at once using the Workspace. The newly patched DBC files will be written directly to the `build/patched/dbc/` folder!

```lua
-- Save all modified tables to the output folder
workspace:SaveAll()

print("Success! Your spell 'Ember Bolt' has been created and saved.")
```

---

## 🚀 Complete Ready-to-Run Code

Here is the complete code for `create_spell.lua`:

```lua
-- ============================================================================
-- FIRE SPELL CREATION: EMBER BOLT
-- ============================================================================

local dbc = require("dbc")

-- 1. Initialize Workspace
local workspace = dbc.Workspace({
    source = "data/stock/dbc",
    out = "build/patched/dbc"
})

-- 2. Open tables
local spells = workspace:Open("Spell")
local icons = workspace:Open("SpellIcon")

-- 3. Create a unique SpellIcon
local new_icon_id = icons:GetNextId()
local my_icon = icons:Create(new_icon_id)
    :SetTextureFilename("Interface\\Icons\\Spell_Fire_Firebolt")

print("[INFO] Created Icon ID: " .. my_icon:GetID())

-- 4. Create the main spell
local spell_id = 99999
local spell = spells:Create(spell_id)

-- 5. Identity & Visuals
spell:SetName("Ember Bolt")
spell:SetNameSubtext("Rank 1")
spell:SetDescription("Hurls a concentrated bolt of fiery energy at the enemy, causing 150 to 180 Fire damage.")
spell:SetSpellIconID(my_icon:GetID())

-- 6. Cost, Range, and Cast Time
local SpellPowerType = dbc.Enums.SpellPowerType
local SchoolMask = dbc.Enums.SchoolMask

spell:SetPowerType(SpellPowerType.MANA)
spell:SetManaCost(120)       -- 120 Mana Cost
spell:SetRangeIndex(5)       -- Range (~30 yards)
spell:SetCastingTimeIndex(4) -- Cast Time (~2.0s)
spell:SetSchoolMask(SchoolMask.FIRE)

-- 7. Configure Spell Effect 1 (School Damage)
local SpellEffectType = dbc.Enums.SpellEffectType
local SpellImplicitTarget = dbc.Enums.SpellImplicitTarget

spell:SetEffect(SpellEffectType.SCHOOL_DAMAGE, 1)
spell:SetImplicitTargetA(SpellImplicitTarget.UNIT_TARGET_ENEMY, 1)

-- Damage range (150 to 180)
spell:SetEffectBasePoints(149, 1) -- BasePoints
spell:SetEffectDieSides(31, 1)    -- Random range roll amplitude

-- 8. System Attributes
local SpellAttributes = dbc.Enums.SpellAttributes
spell:AddAttributes(SpellAttributes.flags.IS_ABILITY)

-- 9. Save all modified tables
workspace:SaveAll()
print("[INFO] Spell created and saved successfully in build/patched/dbc/!")
```

---

## 🛠️ How to Test Your Spell?

1. Place your original stock `.dbc` files in the `data/stock/dbc/` folder (you will need at least `Spell.dbc` and `SpellIcon.dbc` files extracted from your client).
2. Run your script using the LuaJIT interpreter:
   ```bash
   luajit create_spell.lua
   ```
3. Copy the generated DBC files from the `build/patched/dbc/` folder to:
   - Your WoW client's `DBFilesClient` folder (often packaged inside a custom `.MPQ` patch file).
   - Your emulator server's `dbc` directory (TrinityCore, AzerothCore, etc.).
4. In-game, use the following admin command to learn the spell:
   ```text
   .learn 99999
   ```

Enjoy casting your brand-new custom spell! 🎉