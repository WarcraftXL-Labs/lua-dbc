# Tutoriel Intermédiaire : Créer un Sort de Zéro avec Animations et Effets Visuels (3.3.5a)

Ce tutoriel détaille la création intégrale d'un nouveau sort depuis zéro (*from scratch*) pour World of Warcraft 3.3.5a. Contrairement au clonage, créer un sort de zéro nécessite de configurer les tables relationnelles périphériques gérant l'icône, le temps d'incantation, la portée, les kits d'animation d'incantation (*precast*), et le rendu visuel.

Nous allons construire un sort complet nommé **Éclair de Gangrefeu** (*Fel Lightning*), avec une incantation de 2,5 secondes, une animation de canalisation sur les mains du lanceur, et un effet d'impact.

---

## Sommaire

1. [Architecture Relationnelle d'un Sort](#1-architecture-relationnelle-d'un-sort)
2. [Initialisation du Workspace Multi-Tables](#2-initialisation-du-workspace-multi-tables)
3. [Configuration de l'Icône (SpellIcon)](#3-configuration-de-licône-spellicon)
4. [Définition du Temps d'Incantation (SpellCastTimes)](#4-définition-du-temps-dincantation-spellcasttimes)
5. [Configuration de la Portée (SpellRange)](#5-configuration-de-la-portée-spellrange)
6. [Création des Animations et Effets Visuels (SpellVisual & Kits)](#6-création-des-animations-et-effets-visuels-spellvisual--kits)
7. [Création et Assemblage de la Ligne Principale (Spell)](#7-création-et-assemblage-de-la-ligne-principale-spell)
8. [Sauvegarde et Validation](#8-sauvegarde-et-validation)
9. [Script Complet Prêt à l'Emploi](#9-script-complet-prêt-à-lemploi)

---

## 1. Architecture Relationnelle d'un Sort

Dans le moteur client et serveur de World of Warcraft, la table principale `Spell.dbc` ne stocke pas directement les données visuelles ou temporelles. Elle pointe vers des tables satellites par clés étrangères :

```
             ┌─────────────────────────┐
             │       Spell.dbc         │
             │   (ID, Name, Effets)    │
             └────────────┬────────────┘
        ┌─────────────────┼─────────────────┬─────────────────┐
        ▼                 ▼                 ▼                 ▼
┌──────────────┐  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐
│ SpellIcon    │  │SpellCastTimes│  │  SpellRange  │  │ SpellVisual  │
│(Texture Path)│  │ (Durée en ms)│  │ (Distances)  │  │(Assemblage)  │
└──────────────┘  └──────────────┘  └──────────────┘  └───────┬──────┘
                                                              ▼
                                                     ┌──────────────────┐
                                                     │  SpellVisualKit  │
                                                     │(Precast/Anim/FX) │
                                                     └──────────────────┘
```

---

## 2. Initialisation du Workspace Multi-Tables

Créez un fichier `create_spell_from_scratch.lua` :

```lua
local dbc = require("dbc")

local ws = dbc.Workspace({
    source = "data/dbc",
    out    = "out/patched/dbc",
    build  = "3.3.5.12340"
})

-- Chargement de toutes les tables requises
local tbl_spell       = ws:Open("Spell")
local tbl_icon        = ws:Open("SpellIcon")
local tbl_cast_times  = ws:Open("SpellCastTimes")
local tbl_range       = ws:Open("SpellRange")
local tbl_visual      = ws:Open("SpellVisual")
local tbl_visual_kit  = ws:Open("SpellVisualKit")
```

---

## 3. Configuration de l'Icône (SpellIcon)

Dans `SpellIcon.dbc`, chaque ligne associe un ID numérique au chemin de texture dans l'interface du jeu. Réutilisons une icône existante ou créons-en une nouvelle :

```lua
local ICON_PATH = [[Interface\Icons\Spell_Shaman_ChainLightning]]

-- Recherche si l'icône existe déjà via le moteur LINQ
local existing_icon = tbl_icon:Query()
    :Where(function(row) return row:GetTextureFilename():lower() == ICON_PATH:lower() end)
    :FirstOrDefault(nil, nil)

local icon_id
if existing_icon then
    icon_id = existing_icon:GetID()
else
    -- Création d'un nouvel identifiant incrémental
    icon_id = tbl_icon:GetMaxID() + 1
    local new_icon = tbl_icon:Create(icon_id)
    new_icon:SetTextureFilename(ICON_PATH)
end

print("Icône prête (ID: " .. icon_id .. ")")
```

---

## 4. Définition du Temps d'Incantation (SpellCastTimes)

Pour un sort avec 2,5 secondes (2500 ms) d'incantation :

```lua
local CAST_TIME_MS = 2500

-- Vérification si la durée 2500 ms existe déjà dans SpellCastTimes
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

print("Temps d'incantation prêt (ID: " .. cast_time_id .. ")")
```

---

## 5. Configuration de la Portée (SpellRange)

La portée d'un sort classique à distance est souvent 0 à 30 mètres (ID standard `4` dans WotLK) ou 0 à 35 mètres :

```lua
local RANGE_ID = 4 -- Portée standard 0 à 30 mètres
local range_row = tbl_range:FindById(RANGE_ID)
assert(range_row, "La portée 4 doit exister dans les DBC stock")
```

---

## 6. Création des Animations et Effets Visuels (SpellVisual & Kits)

Pour obtenir une vraie incantation visuelle dans le client WoW :
1. **Kit Precast** : Déclenche l'animation de préparation sur le personnage et l'apparition de particules lumineuses sur ses mains.
2. **Kit Cast** : Animation d'envoi du sort lorsque la barre d'incantation se termine.
3. **SpellVisual** : Lie ces deux kits et définit le projectile.

```lua
-- 1. Kit d'animation Precast (Incantation continue)
local PRECAST_KIT_ID = tbl_visual_kit:GetMaxID() + 1
local precast_kit = tbl_visual_kit:Create(PRECAST_KIT_ID)
-- Animation 16 = ReadySpellOMNI (bras levés canalisant la magie)
precast_kit:SetStartAnimID(16)
precast_kit:SetAnimID(16)
precast_kit:SetFlags(0)

-- 2. Kit d'animation Cast (Décharge)
local CAST_KIT_ID = tbl_visual_kit:GetMaxID() + 1
local cast_kit = tbl_visual_kit:Create(CAST_KIT_ID)
-- Animation 17 = SpellCastDirected (projette le sort en avant)
cast_kit:SetStartAnimID(17)
cast_kit:SetAnimID(17)

-- 3. Entrée dans SpellVisual
local VISUAL_ID = tbl_visual:GetMaxID() + 1
local visual_row = tbl_visual:Create(VISUAL_ID)
visual_row:SetPrecastKit(PRECAST_KIT_ID) -- Animation et aura pendant le cast
visual_row:SetCastKit(CAST_KIT_ID)       -- Décharge à l'envoi
visual_row:SetImpactKit(0)               -- Impact par défaut
visual_row:SetMissileModel(0)            -- Modèle de projectile (ou 0 pour instant-hit)

print(string.format("Effet visuel créé (Visual ID: %d, Precast: %d, Cast: %d)",
    VISUAL_ID, PRECAST_KIT_ID, CAST_KIT_ID))
```

---

## 7. Création et Assemblage de la Ligne Principale (Spell)

Nous pouvons maintenant instancier le sort dans `Spell.dbc` et renseigner tous ses attributs :

```lua
local SPELL_ID = 76000
assert(not tbl_spell:Has(SPELL_ID), "L'ID 76000 est déjà utilisé")

local spell = tbl_spell:Create(SPELL_ID)

-- 1. Noms et descriptions avec la normalisation dbc.Locale
spell:SetName({
    [dbc.Locale.ENUS] = "Fel Lightning",
    [dbc.Locale.FRFR] = "Éclair de Gangrefeu",
})

spell:SetDescription({
    [dbc.Locale.ENUS] = "Strikes the enemy with corrupt fel electricity, causing nature and shadow damage.",
    [dbc.Locale.FRFR] = "Frappe l'ennemi d'une décharge de foudre corrompue, infligeant des dégâts de nature et d'ombre.",
})

-- 2. Liaison des relations
spell:SetSpellIconID(icon_id)
spell:SetCastingTimeIndex(cast_time_id)
spell:SetRangeIndex(RANGE_ID)
spell:SetSpellVisualID(VISUAL_ID)

-- 3. Attributs fondamentaux
-- Ecole magique : Nature (8) + Shadow (32) = 40
spell:SetSchoolMask(40)

-- Coût en ressource : 320 points de mana (PowerType 0 = Mana)
spell:SetPowerType(0)
spell:SetManaCost(320)

-- Vitesse du projectile (si applicable, 0 = immédiat)
spell:SetSpeed(0)

-- 4. Configuration de l'Effet 1 (Dégâts directs)
-- EffectType 2 = SPELL_EFFECT_SCHOOL_DAMAGE
spell:SetEffectItem(1, 2)

-- Cible implicite A : Ennemi ciblé (TARGET_UNIT_TARGET_ENEMY = 6)
spell:SetEffectImplicitTargetAItem(1, 6)
spell:SetEffectImplicitTargetBItem(1, 0)

-- Dégâts de base : 500 à 650
-- EffectBasePoints est 0-indexé : Valeur = 499
spell:SetEffectBasePointsItem(1, 499)
spell:SetEffectDieSidesItem(1, 151) -- Aléatoire : 499 + 1 + rand(151) -> 500 à 650

-- Ratio de puissance des sorts (Spell Damage Scaling) : 85% de bonus
spell:SetEffectBonusCoefficientItem(1, 0.85)

-- 5. Flags et Attributs de lancement
-- Attributes[1] = 0x10 (nécessite d'être face à la cible)
spell:SetAttributes(0x00000010)
-- AttributesEx[1] = 0x04 (annule la furtivité)
spell:SetAttributesEx(0x00000004)
```

---

## 8. Sauvegarde et Validation

L'appel à `ws:Save()` va sérialiser de façon synchrone toutes les tables modifiées (`Spell`, `SpellVisual`, `SpellVisualKit`, etc.) :

```lua
ws:Save()
print("Succès : Sort 76000 et toutes ses relations générés avec succès !")
```

---

## 9. Script Complet Prêt à l'Emploi

Voici le script exécutable autonome :

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

-- 1. Icône
local ICON_PATH = [[Interface\Icons\Spell_Shaman_ChainLightning]]
local icon = tbl_icon:Query()
    :Where(function(r) return r:GetTextureFilename():lower() == ICON_PATH:lower() end)
    :FirstOrDefault(nil, nil)

local icon_id = icon and icon:GetID() or (tbl_icon:GetMaxID() + 1)
if not icon then
    local new_icon = tbl_icon:Create(icon_id)
    new_icon:SetTextureFilename(ICON_PATH)
end

-- 2. Temps d'incantation 2.5s (2500 ms)
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

-- 4. Sort principal
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
spell:SetRangeIndex(4) -- 30 yards
spell:SetSpellVisualID(visual_id)

spell:SetSchoolMask(40) -- Nature (8) + Shadow (32)
spell:SetManaCost(320)
spell:SetPowerType(0)

spell:SetEffectItem(1, 2) -- Direct Damage
spell:SetEffectImplicitTargetAItem(1, 6) -- Target Enemy
spell:SetEffectBasePointsItem(1, 499)
spell:SetEffectDieSidesItem(1, 151)
spell:SetEffectBonusCoefficientItem(1, 0.85)

ws:Save()
print("Création terminée avec succès dans out/patched/dbc/ !")
```
