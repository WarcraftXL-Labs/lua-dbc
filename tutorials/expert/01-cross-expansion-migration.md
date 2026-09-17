# Expert Tutorial: Cross-Expansion Migration Pipeline (12.1.5 WDC5 to 3.3.5a WDBC)

This tutorial is intended for advanced developers building backporting pipelines and cross-client toolchains. We will construct a complete data bridge that concurrently opens:
1. A **modern source workspace (12.1.5 Midnight / TWW)** reading compressed, bitpacked multi-section **WDC5** `.db2` files.
2. A **legacy target workspace (3.3.5a WotLK)** authoring and serializing uncompressed **WDBC** `.dbc` files.

We will extract modern zones and maps from `areatable.db2` and `map.db2`, resolve their foreign-key parent relationships, adapt their schemas, and insert them into the 3.3.5a database with binary export.

---

## Contents

1. [Challenges in Cross-Expansion Backporting](#1-challenges-in-cross-expansion-backporting)
2. [Dual-Workspace Architecture in LuaJIT](#2-dual-workspace-architecture-in-luajit)
3. [Key Remapping and Integrity Strategy](#3-key-remapping-and-integrity-strategy)
4. [Step 1: Extraction and LINQ Filtering on 12.1.5](#4-step-1-extraction-and-linq-filtering-on-1215)
5. [Step 2: Migrating and Resolving Parent Maps (Map)](#5-step-2-migrating-and-resolving-parent-maps-map)
6. [Step 3: Injecting Child Zones (AreaTable)](#6-step-3-injecting-child-zones-areatable)
7. [Saving and Validating Binary Output](#7-saving-and-validating-binary-output)
8. [Complete Pipeline Script](#8-complete-pipeline-script)

---

## 1. Challenges in Cross-Expansion Backporting

Across 15 years of game client evolution, data structures changed significantly:
* **Binary Container**: 12.1.5 uses WDC5 with pallet arrays, signed bitpacking, and multi-section layouts; 3.3.5 uses WDBC with fixed-size flat rows.
* **Locales**: Modern DB2 files store a single string for the client's language; 3.3.5 stores 16 localized string slots accompanied by a 32-bit presence mask.
* **Relational Integrity**: A modern zone in `areatable.db2` references `ContinentID` (which points to `map.db2`). If an area is ported into 3.3.5 without its corresponding parent map, both the client and server will crash.

`lua-dbc` handles these disparities natively through build-scoped schema isolation and its format-agnostic abstraction layer.

---

## 2. Dual-Workspace Architecture in LuaJIT

Instantiate two independent workspaces within the same LuaJIT thread:

```lua
local dbc = require("dbc")

-- 1. Source Workspace: Retail 12.1.5 (WDC5 Read)
local ws_modern = dbc.Workspace({
    source = [[E:\World of Warcraft\2.Projects\TheEndOfTime\Client_Source\12.1.5\dbfilesclient]],
    build  = "12.1.5"
})

-- 2. Target Workspace: WotLK 3.3.5a (WDBC Read/Write)
local ws_wotlk = dbc.Workspace({
    source = "data/stock/3.3.5/dbc",
    out    = "out/migrated/3.3.5/dbc",
    build  = "3.3.5.12340"
})

-- Open tables
local modern_maps  = ws_modern:Open("map")
local modern_areas = ws_modern:Open("areatable")

local wotlk_maps   = ws_wotlk:Open("Map")
local wotlk_areas  = ws_wotlk:Open("AreaTable")

print(string.format("Connected: %d modern maps -> %d legacy maps",
    modern_maps:Count(), wotlk_maps:Count()))
```

---

## 3. Key Remapping and Integrity Strategy

To prevent collisions with official WotLK content (IDs 1 through 5000), allocate high ranges for backported assets:
* Backported maps: IDs starting at `2000`
* Backported zones: IDs starting at `60000`

Maintain translation lookups in memory:

```lua
local id_map_translation = {}  -- [ModernMapID]  -> WotlkMapID
local id_area_translation = {} -- [ModernAreaID] -> WotlkAreaID
```

---

## 4. Step 1: Extraction and LINQ Filtering on 12.1.5

Using the pull-based LINQ query engine, filter modern zones without loading the entire 10,000-record table into Lua tables:

```lua
-- Filter target modern areas (e.g. Dragon Isles / Valdrakken)
local target_modern_areas = modern_areas:Query()
    :Where(function(row)
        local name = row:GetAreaName()
        return name:find("Valdrakken") ~= nil or name:find("Forbidden Reach") ~= nil
    end)
    :ToList()

print(string.format("Selected %d modern zones for migration.", #target_modern_areas))
```

---

## 5. Step 2: Migrating and Resolving Parent Maps (Map)

For each selected zone, inspect its parent `ContinentID`. If that map does not exist in the 3.3.5 database, create it first:

```lua
local next_wotlk_map_id = math.max(2000, wotlk_maps:GetMaxID() + 1)

for _, modern_area in ipairs(target_modern_areas) do
    local modern_map_id = modern_area:GetContinentID()

    if not id_map_translation[modern_map_id] then
        local existing_wotlk_map = wotlk_maps:FindById(modern_map_id)
        if existing_wotlk_map then
            id_map_translation[modern_map_id] = modern_map_id
        else
            local modern_map = modern_maps:FindById(modern_map_id)
            if modern_map then
                local wotlk_map_id = next_wotlk_map_id
                next_wotlk_map_id = next_wotlk_map_id + 1

                -- Create new Map in 3.3.5
                local new_map = wotlk_maps:Create(wotlk_map_id)
                new_map:SetDirectory(modern_map:GetDirectoryName())
                new_map:SetMapName({
                    [dbc.Locale.ENUS] = modern_map:GetMapName(),
                    [dbc.Locale.FRFR] = modern_map:GetMapName(),
                })
                new_map:SetMapType(0)

                id_map_translation[modern_map_id] = wotlk_map_id
                print(string.format("  -> Ported Map: [%d] %s -> 3.3.5 ID %d",
                    modern_map_id, modern_map:GetMapName(), wotlk_map_id))
            end
        end
    end
end
```

---

## 6. Step 3: Injecting Child Zones (AreaTable)

Inject each child area into 3.3.5 `AreaTable.dbc` while linking the resolved parent map ID:

```lua
local next_wotlk_area_id = math.max(60000, wotlk_areas:GetMaxID() + 1)

for _, modern_area in ipairs(target_modern_areas) do
    local modern_id = modern_area:GetID()
    local modern_map_id = modern_area:GetContinentID()
    local target_map_id = id_map_translation[modern_map_id] or 0

    local wotlk_area_id = next_wotlk_area_id
    next_wotlk_area_id = next_wotlk_area_id + 1

    -- Create new row in AreaTable.dbc
    local new_area = wotlk_areas:Create(wotlk_area_id)

    -- 1. Link parent map foreign key
    new_area:SetContinentID(target_map_id)
    new_area:SetParentAreaID(0)

    -- 2. Transfer localized name using normalized API
    local modern_name = modern_area:GetAreaName()
    new_area:SetAreaName({
        [dbc.Locale.ENUS] = modern_name,
        [dbc.Locale.FRFR] = modern_name,
    })

    -- 3. Gameplay flags and exploration level
    new_area:SetExplorationLevel(70)
    new_area:SetFactionGroupMask(0)

    id_area_translation[modern_id] = wotlk_area_id
    print(string.format("  -> Ported Area: [%d] %-25s -> 3.3.5 AreaID %d (MapID %d)",
        modern_id, modern_name, wotlk_area_id, target_map_id))
end
```

---

## 7. Saving and Validating Binary Output

Calling `ws_wotlk:Save()` serializes both `Map.dbc` and `AreaTable.dbc` into valid 3.3.5a binary files ready for MPQ archiving:

```lua
ws_wotlk:Save()
print("Pipeline finished. Output files written to: out/migrated/3.3.5/dbc/")
```

---

## 8. Complete Pipeline Script

```lua
local dbc = require("dbc")

-- 1. Workspaces
local ws_modern = dbc.Workspace({
    source = [[E:\World of Warcraft\2.Projects\TheEndOfTime\Client_Source\12.1.5\dbfilesclient]],
    build  = "12.1.5"
})

local ws_wotlk = dbc.Workspace({
    source = "data/stock/3.3.5/dbc",
    out    = "out/migrated/3.3.5/dbc",
    build  = "3.3.5.12340"
})

-- 2. Tables
local modern_maps  = ws_modern:Open("map")
local modern_areas = ws_modern:Open("areatable")

local wotlk_maps   = ws_wotlk:Open("Map")
local wotlk_areas  = ws_wotlk:Open("AreaTable")

-- 3. Filter target modern areas
local target_areas = modern_areas:Query()
    :Where(function(r)
        local n = r:GetAreaName()
        return n:find("Valdrakken") ~= nil
    end)
    :ToList()

print(string.format("Starting migration for %d zones...", #target_areas))

local map_lookup = {}
local next_map_id = math.max(2000, wotlk_maps:GetMaxID() + 1)
local next_area_id = math.max(60000, wotlk_areas:GetMaxID() + 1)

-- 4. Port parent maps
for _, m_area in ipairs(target_areas) do
    local m_map_id = m_area:GetContinentID()
    if not map_lookup[m_map_id] then
        local w_map = wotlk_maps:FindById(m_map_id)
        if w_map then
            map_lookup[m_map_id] = m_map_id
        else
            local mod_map = modern_maps:FindById(m_map_id)
            local assigned_map_id = next_map_id
            next_map_id = next_map_id + 1

            local new_map = wotlk_maps:Create(assigned_map_id)
            new_map:SetDirectory(mod_map and mod_map:GetDirectoryName() or "CustomMap")
            new_map:SetMapName({
                [dbc.Locale.ENUS] = mod_map and mod_map:GetMapName() or "Modern Map",
                [dbc.Locale.FRFR] = mod_map and mod_map:GetMapName() or "Modern Map",
            })
            new_map:SetMapType(0)

            map_lookup[m_map_id] = assigned_map_id
            print(string.format("  [Map]   + ID %d : %s", assigned_map_id, new_map:GetMapName()))
        end
    end
end

-- 5. Port child areas
for _, m_area in ipairs(target_areas) do
    local assigned_area_id = next_area_id
    next_area_id = next_area_id + 1

    local new_area = wotlk_areas:Create(assigned_area_id)
    local parent_map = map_lookup[m_area:GetContinentID()] or 0

    new_area:SetContinentID(parent_map)
    new_area:SetParentAreaID(0)
    new_area:SetAreaName({
        [dbc.Locale.ENUS] = m_area:GetAreaName(),
        [dbc.Locale.FRFR] = m_area:GetAreaName(),
    })
    new_area:SetExplorationLevel(70)

    print(string.format("  [Area]  + ID %d : %s (Map %d)",
        assigned_area_id, new_area:GetAreaName(), parent_map))
end

-- 6. Save target workspace
ws_wotlk:Save()
print("Migration completed successfully in out/migrated/3.3.5/dbc/.")
```
