# Tutoriel Expert : Pipeline de Migration Cross-Expansion (12.1.5 WDC5 vers 3.3.5a WDBC)

Ce tutoriel s'adresse aux développeurs avancés concevant des pipelines de rétro-portage (*backporting*) et d'interopérabilité entre clients. Nous allons concevoir une passerelle complète capable de charger simultanément :
1. Un **Workspace source moderne (12.1.5 Midnight / TWW)** lisant des fichiers binaires `.db2` compressés en format **WDC5** (bitpacking, palettes multi-sections).
2. Un **Workspace cible legacy (3.3.5a WotLK)** manipulant et écrivant des fichiers `.dbc` au format **WDBC**.

Nous allons extraire des zones et cartes modernes depuis `areatable.db2` et `map.db2`, résoudre leurs relations de clés étrangères, adapter les schémas, et les injecter dans la base 3.3.5a avec sauvegarde binaire.

---

## Sommaire

1. [Problématique du Rétro-Portage Cross-Expansion](#1-problématique-du-rétro-portage-cross-expansion)
2. [Architecture Dual-Workspace en LuaJIT](#2-architecture-dual-workspace-en-luajit)
3. [Stratégie de Remapping des Identifiants et Relations](#3-stratégie-de-remapping-des-identifiants-et-relations)
4. [Étape 1 : Extraction et Filtrage LINQ sur 12.1.5](#4-étape-1--extraction-et-filtrage-linq-sur-1215)
5. [Étape 2 : Migration et Résolution de la Table Parente (Map)](#5-étape-2--migration-et-résolution-de-la-table-parente-map)
6. [Étape 3 : Injection des Sous-Zones (AreaTable)](#6-étape-3--injection-des-sous-zones-areatable)
7. [Sauvegarde et Validation](#7-sauvegarde-et-validation)
8. [Script Complet du Pipeline](#8-script-complet-du-pipeline)

---

## 1. Problématique du Rétro-Portage Cross-Expansion

En 15 ans d'évolution, les structures de données du client WoW ont radicalement changé :
* **Format binaire** : 12.1.5 utilise WDC5 avec compression de colonnes par palettes et sections multiples ; 3.3.5 utilise WDBC avec lignes plates de taille fixe.
* **Locales** : 12.1.5 stocke une seule chaîne par enregistrement (la langue du client) ; 3.3.5 stocke 16 slots de locales avec un masque binaire.
* **Relations d'intégrité** : Une zone dans `areatable.db2` pointe vers `ContinentID` (l'identifiant de la carte dans `map.db2`). Si on injecte la zone dans 3.3.5 sans créer la carte parente correspondante, le client et l'émulateur plantent.

`lua-dbc` permet de résoudre nativement ce problème grâce à l'isolation par workspace et son moteur de schéma build-scopé.

---

## 2. Architecture Dual-Workspace en LuaJIT

Instancions deux workspaces indépendants dans le même thread LuaJIT :

```lua
local dbc = require("dbc")

-- 1. Workspace Source : Retail 12.1.5 (Lecture WDC5)
local ws_modern = dbc.Workspace({
    source = [[E:\World of Warcraft\2.Projects\TheEndOfTime\Client_Source\12.1.5\dbfilesclient]],
    build  = "12.1.5"
})

-- 2. Workspace Cible : WotLK 3.3.5a (Lecture/Écriture WDBC)
local ws_wotlk = dbc.Workspace({
    source = "data/stock/3.3.5/dbc",
    out    = "out/migrated/3.3.5/dbc",
    build  = "3.3.5.12340"
})

-- Chargement des tables
local modern_maps  = ws_modern:Open("map")
local modern_areas = ws_modern:Open("areatable")

local wotlk_maps   = ws_wotlk:Open("Map")
local wotlk_areas  = ws_wotlk:Open("AreaTable")

print(string.format("Connecté : %d maps 12.1.5 -> %d maps 3.3.5",
    modern_maps:Count(), wotlk_maps:Count()))
```

---

## 3. Stratégie de Remapping des Identifiants et Relations

Pour éviter d'écraser les zones officielles de WotLK (IDs 1 à 5000), nous établissons une plage d'identifiants dédiée pour les éléments rétro-portés :
* Nouvelles cartes 3.3.5 : IDs à partir de `2000`
* Nouvelles zones 3.3.5 : IDs à partir de `60000`

Nous maintenons une table de traduction en mémoire pour réassocier les clés étrangères :

```lua
local id_map_translation = {}  -- [ModernMapID]  -> WotlkMapID
local id_area_translation = {} -- [ModernAreaID] -> WotlkAreaID
```

---

## 4. Étape 1 : Extraction et Filtrage LINQ sur 12.1.5

Grâce au moteur de streaming LINQ de `lua-dbc`, nous pouvons filtrer les zones modernes qui nous intéressent sans instancier l'intégralité des 10 000 zones en mémoire :

```lua
-- Filtrer les zones modernes correspondant à une recherche (ex: Valdrakken ou Plunderstorm)
local target_modern_areas = modern_areas:Query()
    :Where(function(row)
        local name = row:GetAreaName()
        return name:find("Valdrakken") or name:find("Forbidden Reach")
    end)
    :ToList()

print(string.format("Zones sélectionnées pour la migration : %d", #target_modern_areas))
```

---

## 5. Étape 2 : Migration et Résolution de la Table Parente (Map)

Pour chaque zone sélectionnée, nous inspectons son `ContinentID` (qui référence la carte dans `map.db2`). Si cette carte n'existe pas encore dans 3.3.5, nous la créons :

```lua
local next_wotlk_map_id = math.max(2000, wotlk_maps:GetMaxID() + 1)

for _, modern_area in ipairs(target_modern_areas) do
    local modern_map_id = modern_area:GetContinentID()

    if not id_map_translation[modern_map_id] then
        -- Vérifier si la carte existe déjà dans le DBC 3.3.5
        local existing_wotlk_map = wotlk_maps:FindById(modern_map_id)
        if existing_wotlk_map then
            id_map_translation[modern_map_id] = modern_map_id
        else
            -- Récupérer la ligne de carte moderne
            local modern_map = modern_maps:FindById(modern_map_id)
            if modern_map then
                local wotlk_map_id = next_wotlk_map_id
                next_wotlk_map_id = next_wotlk_map_id + 1

                -- Création de la nouvelle carte dans WotLK 3.3.5
                local new_map = wotlk_maps:Create(wotlk_map_id)

                -- Transfert du nom interne et du nom affiché
                new_map:SetDirectory(modern_map:GetDirectoryName())
                new_map:SetMapName({
                    [dbc.Locale.ENUS] = modern_map:GetMapName(),
                    [dbc.Locale.FRFR] = modern_map:GetMapName(),
                })

                -- Types de carte : 0 = Eastern/Kalimdor, 1 = Donjon, 2 = Raid, 3 = BG
                new_map:SetMapType(0)

                id_map_translation[modern_map_id] = wotlk_map_id
                print(string.format("  -> Carte migrée : [%d] %s -> 3.3.5 ID %d",
                    modern_map_id, modern_map:GetMapName(), wotlk_map_id))
            end
        end
    end
end
```

---

## 6. Étape 3 : Injection des Sous-Zones (AreaTable)

Nous pouvons maintenant injecter chaque zone dans `AreaTable.dbc` 3.3.5a en liant correctement la clé étrangère `ContinentID` résolue :

```lua
local next_wotlk_area_id = math.max(60000, wotlk_areas:GetMaxID() + 1)

for _, modern_area in ipairs(target_modern_areas) do
    local modern_id = modern_area:GetID()
    local modern_map_id = modern_area:GetContinentID()
    local target_map_id = id_map_translation[modern_map_id] or 0

    local wotlk_area_id = next_wotlk_area_id
    next_wotlk_area_id = next_wotlk_area_id + 1

    -- Création de la ligne dans AreaTable.dbc
    local new_area = wotlk_areas:Create(wotlk_area_id)

    -- 1. Liaison relationnelle vers la carte parente
    new_area:SetContinentID(target_map_id)
    new_area:SetParentAreaID(0)

    -- 2. Transfert du nom avec la normalisation multilingue
    local modern_name = modern_area:GetAreaName()
    new_area:SetAreaName({
        [dbc.Locale.ENUS] = modern_name,
        [dbc.Locale.FRFR] = modern_name,
    })

    -- 3. Flags et exploration
    new_area:SetExplorationLevel(70)
    new_area:SetFactionGroupMask(0) -- Neutre

    id_area_translation[modern_id] = wotlk_area_id
    print(string.format("  -> Zone migrée : [%d] %-25s -> 3.3.5 AreaID %d (MapID %d)",
        modern_id, modern_name, wotlk_area_id, target_map_id))
end
```

---

## 7. Sauvegarde et Validation

L'appel à `ws_wotlk:Save()` sérialise en binaire les tables 3.3.5 modifiées :

```lua
ws_wotlk:Save()
print("Pipeline terminé. Les fichiers 3.3.5 prêts pour MPQ sont dans out/migrated/3.3.5/dbc/")
```

---

## 8. Script Complet du Pipeline

Voici le script complet prêt à exécuter (`cross_expansion_migration.lua`) :

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

-- 3. Filtrage des zones cibles (ex: îles et capitales modernes)
local target_areas = modern_areas:Query()
    :Where(function(r)
        local n = r:GetAreaName()
        return n:find("Valdrakken") ~= nil
    end)
    :ToList()

print(string.format("Début de la migration de %d zones...", #target_areas))

local map_lookup = {}
local next_map_id = math.max(2000, wotlk_maps:GetMaxID() + 1)
local next_area_id = math.max(60000, wotlk_areas:GetMaxID() + 1)

-- 4. Résolution et migration des Maps parentes
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

-- 5. Migration des AreaTables
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

-- 6. Sauvegarde WotLK
ws_wotlk:Save()
print("Migration terminée avec succès dans out/migrated/3.3.5/dbc/ !")
```
