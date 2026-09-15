# Step-by-Step Tutorial: Spell Cloning, LINQ, and Custom Visuals

Welcome to the **Expert-level** guide for `lua-dbc`. In this tutorial, we will push the library to its limits by combining three of its most powerful advanced features:
1. **LINQ-style Queries**: Programmatically finding and extracting existing spells using complex filters.
2. **Dynamic Spell Cloning**: Cloning a stock spell with all its complex internal effects intact and modifying it on the fly.
3. **Custom Visual Pipeline Editing**: Creating a custom spell animation by modifying three interconnected client-side DBC files: **`SpellVisualEffectName.dbc`**, **`SpellVisualKit.dbc`**, and **`SpellVisual.dbc`**.

Our objective is to find the Mage's stock **"Pyroblast"** spell using LINQ, clone it to create a new spell called **"Shadowflame Pyroblast"**, and construct a completely custom dark purple shadow-fire visual effect for it.

---

## 📐 Understanding the WoW Client Visual Pipeline

To give a spell a custom visual effect (like changing its projectile or hand glow), we must navigate and modify the client's complex visual hierarchy:

```
[Spell.dbc]
  └── SpellVisualID ────────> [SpellVisual.dbc]
                                │
                                ├── CastKit / PrecastKit ──> [SpellVisualKit.dbc]
                                │                              └── Hand Effects (M2 particles)
                                │
                                └── MissileModel ──────────> [SpellVisualEffectName.dbc]
                                                               └── Projectile model file path (.M2)
```

By linking these tables together, we can change how the caster charges the spell, what projectile is thrown, and what happens upon impact!

---

## 🔍 Step 1: Using LINQ to Find and Clone Pyroblast

Let's initialize our workspace, open our tables, and use the **LINQ Query Engine** to locate the highest-ranking stock Mage "Pyroblast" spell.

```lua
local dbc = require("dbc")

local workspace = dbc.Workspace({
    source = "data/stock/dbc",
    out = "build/patched/dbc"
})

local spells = workspace:Open("Spell")

-- Use LINQ to find the highest rank of Pyroblast
local pyroblast = spells:Query()
    :Where(function(row) return row:GetName():find("Pyroblast") ~= nil end)
    :Where(function(row) return row:GetNameSubtext():find("Rank") ~= nil end)
    :OrderByDescending(function(row)
        -- Extract the rank number (e.g. "Rank 12" -> 12)
        local rank_num = tonumber(row:GetNameSubtext():match("(%d+)")) or 0
        return rank_num
    end)
    :First()

if not pyroblast then
    error("Could not locate a stock Pyroblast spell to clone!")
end

print(string.format("Found original spell: %s (%s) [ID: %d]", 
    pyroblast:GetName(), pyroblast:GetNameSubtext(), pyroblast:GetID()))
```

Now, instead of manually re-creating its complex coefficients, base damage, and spell family attributes, we can simply **clone** it directly:

```lua
local new_spell_id = 99200

-- Clone the entire row with all its properties into a new ID
local shadow_pyro = spells:CloneRow(pyroblast, new_spell_id)

-- Modify its basic properties
shadow_pyro:SetName("Shadowflame Pyroblast")
shadow_pyro:SetNameSubtext("Epic Rank")
shadow_pyro:SetDescription("Hurls an immense shadow-fire boulder, dealing massive Shadow and Fire damage.")
shadow_pyro:SetSchoolMask(dbc.Enums.SchoolMask.FIRE + dbc.Enums.SchoolMask.SHADOW)

print("Cloned Pyroblast into new Spell ID: " .. shadow_pyro:GetID())
```

---

## 🎨 Step 2: Designing the Custom Visual Pipeline

We want our "Shadowflame Pyroblast" to look like a dark purple shadow-fire ball. To do this, we need to create entries in three interconnected DBC files:

1. **`SpellVisualEffectName.dbc`**: Pointing to the purple fireball model file.
2. **`SpellVisualKit.dbc`**: To create a custom hands glow effect during casting.
3. **`SpellVisual.dbc`**: To combine the casting kit and the projectile model.

Let's open these files:

```lua
local effects = workspace:Open("SpellVisualEffectName")
local kits = workspace:Open("SpellVisualKit")
local visuals = workspace:Open("SpellVisual")
```

---

### 2.1. Creating the Custom Visual Effect Name

This table registers 3D `.m2` models or particle paths in the game client. We will register the file path for the **Shadow Orb** projectile model:

```lua
local effect_id = effects:GetNextId()

local shadow_missile_effect = effects:Create(effect_id)
    :SetName("ShadowflameProjectile")
    :SetFileName("Spells\\ShadowOrb_Missile.m2") -- Client model file path
    :SetScale(1.8)                              -- Scale up the projectile size
    :SetMinAllowedScale(1.0)
    :SetMaxAllowedScale(3.0)

print("Created SpellVisualEffectName ID: " .. shadow_missile_effect:GetID())
```

---

### 2.2. Creating the Custom Spell Visual Kit

Next, we want the player's hands to glow with purple shadow energy while casting. We do this by creating a **`SpellVisualKit`**:

```lua
local kit_id = kits:GetNextId()

local cast_glow_kit = kits:Create(kit_id)
    -- We can set animations using standard game anim IDs
    :SetAnimID(0) -- Standard standing animation
    -- Link hand effects to stock client particles (Shadow Hand glow is ID 281 in stock DBCs)
    :SetLeftHandEffect(281)
    :SetRightHandEffect(281)
    :SetChestEffect(0)
    :SetHeadEffect(0)

print("Created SpellVisualKit ID: " .. cast_glow_kit:GetID())
```

---

### 2.3. Assembling the Custom Spell Visual

Now, we will combine our custom casting hand glow (Step 2.2) and our projectile model (Step 2.1) into a single unified **`SpellVisual`** record:

```lua
local visual_id = visuals:GetNextId()

local custom_visual = visuals:Create(visual_id)
    -- 1. Use our custom hand glow kit during the precast phase
    :SetPrecastKit(cast_glow_kit:GetID())
    -- 2. Enable missile projectile
    :SetHasMissile(1)
    -- 3. Link our custom purple projectile effect model (from SpellVisualEffectName)
    :SetMissileModel(shadow_missile_effect:GetID())
    -- 4. Re-use stock Pyroblast impacts (Impact kit 478 represents a big fire explosion)
    :SetImpactKit(478)
    :SetTargetImpactKit(478)

print("Created SpellVisual ID: " .. custom_visual:GetID())
```

---

## ⚡ Step 3: Binding the Custom Visual to the Cloned Spell

Our custom visual system is complete! All we need to do is update our cloned spell row to use our new `SpellVisualID`:

```lua
-- Bind the newly constructed visual system to our custom spell!
shadow_pyro:SetSpellVisualID(custom_visual:GetID(), 1) -- Set for index 1

print(string.format("Successfully bound SpellVisual %d to Spell %d!", 
    custom_visual:GetID(), shadow_pyro:GetID()))
```

---

## 🚀 Complete Ready-to-Run Code

Here is the complete unified Expert script (`create_expert_spell.lua`):

```lua
-- ============================================================================
-- EXPERT SPELL SCRIPTING: CLONING PYROBLAST & CUSTOM VISUAL PIPELINE
-- ============================================================================

local dbc = require("dbc")

-- 1. Initialize Workspace
local workspace = dbc.Workspace({
    source = "data/stock/dbc",
    out = "build/patched/dbc"
})

-- 2. Open Tables
local spells = workspace:Open("Spell")
local effects = workspace:Open("SpellVisualEffectName")
local kits = workspace:Open("SpellVisualKit")
local visuals = workspace:Open("SpellVisual")

-- 3. Query existing Pyroblast spell using LINQ
print("[1/5] Querying Pyroblast spell...")
local pyroblast = spells:Query()
    :Where(function(row) return row:GetName():find("Pyroblast") ~= nil end)
    :Where(function(row) return row:GetNameSubtext():find("Rank") ~= nil end)
    :OrderByDescending(function(row)
        local rank_num = tonumber(row:GetNameSubtext():match("(%d+)")) or 0
        return rank_num
    end)
    :First()

if not pyroblast then
    error("Could not find a stock Pyroblast spell to clone!")
end

print(string.format(" -> Found Pyroblast Rank %s [ID: %d]", 
    pyroblast:GetNameSubtext(), pyroblast:GetID()))

-- 4. Clone Pyroblast into our Custom Spell ID
print("[2/5] Cloning Spell...")
local new_spell_id = 99200
local shadow_pyro = spells:CloneRow(pyroblast, new_spell_id)

shadow_pyro:SetName("Shadowflame Pyroblast")
shadow_pyro:SetNameSubtext("Epic Rank")
shadow_pyro:SetDescription("Hurls an immense shadow-fire boulder, dealing massive Shadow and Fire damage.")
shadow_pyro:SetSchoolMask(dbc.Enums.SchoolMask.FIRE + dbc.Enums.SchoolMask.SHADOW)

-- 5. Build the custom SpellVisualEffectName (Projectile Model)
print("[3/5] Building custom visual effect...")
local effect_id = effects:GetNextId()
local shadow_missile_effect = effects:Create(effect_id)
    :SetName("ShadowflameProjectile")
    :SetFileName("Spells\\ShadowOrb_Missile.m2") -- Client particle path
    :SetScale(1.8)                              -- Scale up missile size
    :SetMinAllowedScale(1.0)
    :SetMaxAllowedScale(3.0)

-- 6. Build the custom SpellVisualKit (Hands Casting Glow)
local kit_id = kits:GetNextId()
local cast_glow_kit = kits:Create(kit_id)
    :SetAnimID(0)
    :SetLeftHandEffect(281)  -- Shadow Hand Glow ID
    :SetRightHandEffect(281)

-- 7. Combine them into a new SpellVisual
print("[4/5] Assembling SpellVisual pipeline...")
local visual_id = visuals:GetNextId()
local custom_visual = visuals:Create(visual_id)
    :SetPrecastKit(cast_glow_kit:GetID())
    :SetHasMissile(1)
    :SetMissileModel(shadow_missile_effect:GetID())
    :SetImpactKit(478)       -- Keep the massive Pyroblast explosion on impact!
    :SetTargetImpactKit(478)

-- 8. Bind the new visual ID to our cloned spell
print("[5/5] Binding Visual ID to the Cloned Spell...")
shadow_pyro:SetSpellVisualID(custom_visual:GetID(), 1)

-- 9. Save all modified tables
workspace:SaveAll()
print("\n[SUCCESS] Custom Shadowflame Pyroblast and custom Visual Pipeline successfully patched!")
```

---

## 🛠️ Testing Your Expert Spell

1. Place your original stock client `.dbc` files (`Spell.dbc`, `SpellVisualEffectName.dbc`, `SpellVisualKit.dbc`, and `SpellVisual.dbc`) in your `data/stock/dbc/` folder.
2. Run your expert compiler script:
   ```bash
   luajit create_expert_spell.lua
   ```
3. Copy all generated DBC files from `build/patched/dbc/` into your client `DBFilesClient` and server `dbc/` directories.
4. Log into the game, type `.learn 99200`, select a target, and cast!
5. Admire your massive, scale-magnified, dark purple shadow orb flying through the air and exploding on impact! 🌌☄️
