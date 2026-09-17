# Tutoriel Débutant : Cloner et Personnaliser un Sort Existant (WotLK 3.3.5a)

Ce tutoriel s'adresse aux développeurs débutants souhaitant créer un nouveau sort en clonant un sort officiel existant de World of Warcraft 3.3.5a (Wrath of the Lich King), en modifiant ses caractéristiques (nom multilingue, coût en mana, dégâts, temps d'incantation et portée).

Le clonage est la méthode recommandée pour créer des sorts personnalisés stables : il permet de réutiliser automatiquement tous les attributs internes et les configurations complexes d'un sort valide sans risque de corruption binaire.

---

## Sommaire

1. [Prérequis et Environnement](#1-prérequis-et-environnement)
2. [Initialisation du Workspace](#2-initialisation-du-workspace)
3. [Recherche du Sort Source](#3-recherche-du-sort-source)
4. [Clonage de la Ligne avec CloneRow](#4-clonage-de-la-ligne-avec-clonerow)
5. [Modification des Métadonnées et Locales](#5-modification-des-métadonnées-et-locales)
6. [Ajustement des Mécaniques et des Effets](#6-ajustement-des-mécaniques-et-des-effets)
7. [Sauvegarde et Export Binaire](#7-sauvegarde-et-export-binaire)
8. [Script Complet Prêt à l'Emploi](#8-script-complet-prêt-à-lemploi)

---

## 1. Prérequis et Environnement

Assurez-vous de disposer de :
* LuaJIT 2.1 installé dans votre variable d'environnement `PATH`.
* La bibliothèque `lua-dbc` dans votre répertoire de projet ou installée via LuaRocks.
* Les fichiers DBC originaux du client 3.3.5a (notamment `Spell.dbc`) placés dans un dossier source (ex: `data/dbc/`).

---

## 2. Initialisation du Workspace

Le module `dbc.Workspace` gère automatiquement la lecture depuis votre répertoire de fichiers originaux et l'écriture des fichiers modifiés dans un répertoire de sortie distinct.

Créez un fichier nommé `clone_spell.lua` :

```lua
local dbc = require("dbc")

-- Définition du workspace build-scopé pour WotLK 3.3.5a
local ws = dbc.Workspace({
    source = "data/dbc",         -- Dossier contenant les DBC 3.3.5 originaux
    out    = "out/patched/dbc",  -- Dossier où seront enregistrés les DBC modifiés
    build  = "3.3.5.12340"
})

-- Chargement de la table des sorts
local spells = ws:Open("Spell")
print(string.format("Spell.dbc chargé avec succès (%d sorts existants).", spells:Count()))
```

---

## 3. Recherche du Sort Source

Nous allons cloner le sort emblématique **Trait de feu** (Fireball - Rang 1, ID `133`) pour créer notre propre variante : **Flamme du Néant** (Voidflame).

Vérifions la présence du sort dans la table :

```lua
local SOURCE_SPELL_ID = 133
local source_spell = spells:FindById(SOURCE_SPELL_ID)

if not source_spell then
    error("Le sort source avec l'ID " .. SOURCE_SPELL_ID .. " est introuvable.")
end

print("Sort trouvé : " .. source_spell:GetName() .. " (ID " .. source_spell:GetID() .. ")")
```

---

## 4. Clonage de la Ligne avec CloneRow

Pour garantir qu'aucun conflit d'identifiant n'apparaisse, nous choisissons un nouvel identifiant libre supérieur à `70000` (les IDs 1 à 60000 sont réservés au jeu officiel).

La méthode `CloneRow` copie l'intégralité des octets de la ligne source dans un nouvel enregistrement binaire en lui assignant son nouvel identifiant :

```lua
local NEW_SPELL_ID = 75001

if spells:Has(NEW_SPELL_ID) then
    error("Le sort " .. NEW_SPELL_ID .. " existe déjà dans la base.")
end

-- Clonage de la structure binaire complète
local custom_spell = spells:CloneRow(source_spell, NEW_SPELL_ID)
print("Nouvel enregistrement créé avec l'ID : " .. custom_spell:GetID())
```

---

## 5. Modification des Métadonnées et Locales

Avec la normalisation de l'API `lua-dbc`, vous n'avez plus besoin d'utiliser le suffixe `_lang` pour manipuler les colonnes multilingues. Vous pouvez utiliser l'énumération `dbc.Locale` :

```lua
-- 1. Définir le nom principal enUS (par défaut)
custom_spell:SetName("Voidflame")

-- 2. Définir la localisation en français
custom_spell:SetName("Flamme du Néant", dbc.Locale.FRFR)

-- 3. Mise à jour groupée de plusieurs langues en un seul appel
custom_spell:SetDescription({
    [dbc.Locale.ENUS] = "Unleashes concentrated void flames, inflicting shadow-fire damage.",
    [dbc.Locale.FRFR] = "Projette des flammes du néant concentrées, infligeant des dégâts d'ombrefeu.",
    [dbc.Locale.DEDE] = "Entfesselt konzentrierte Leerenflammen, die Schattenfeuerschaden verursachen.",
})

-- Définir le rang du sort
custom_spell:SetRank("Rang 1", dbc.Locale.FRFR)
custom_spell:SetRank("Rank 1", dbc.Locale.ENUS)
```

---

## 6. Ajustement des Mécaniques et des Effets

Nous allons modifier les propriétés du sort pour en faire une technique d'Ombrefeu redoutable :

```lua
-- 1. Modifier l'école de magie (Ecole Ombrefeu : Fire (4) + Shadow (32) = 36)
custom_spell:SetSchoolMask(36)

-- 2. Modifier le coût en ressource (Mana)
custom_spell:SetManaCost(250)

-- 3. Modifier la portée (ID 4 = 30 mètres)
custom_spell:SetRangeIndex(4)

-- 4. Modifier les dégâts de base du premier effet
-- Dans WoW 3.3.5, EffectBasePoints est 0-indexé dans la formule de dégâts (Valeur - 1)
-- Pour 150 points de dégâts de base :
custom_spell:SetEffectBasePointsItem(1, 149)

-- 5. Modifier le type de débuff / mécanique si désiré
custom_spell:SetDispelType(1) -- Magic
```

---

## 7. Sauvegarde et Export Binaire

Une fois vos modifications terminées, appelez simplement la méthode `Save()` du workspace. Seules les tables marquées comme modifiées seront sérialisées et écrites dans votre dossier de sortie `out/patched/dbc/` :

```lua
ws:Save()
print("Modifications enregistrées avec succès dans : out/patched/dbc/Spell.dbc")
```

---

## 8. Script Complet Prêt à l'Emploi

Voici le script autonome complet pouvant être exécuté directement avec `luajit clone_spell.lua` :

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
assert(source, "Sort source introuvable")

-- Clonage du sort
local custom_spell = spells:CloneRow(source, NEW_ID)

-- Noms et descriptions multilingues avec dbc.Locale
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

-- Paramètres de jeu
custom_spell:SetSchoolMask(36)       -- Fire (4) + Shadow (32)
custom_spell:SetManaCost(180)        -- Coût en mana
custom_spell:SetRangeIndex(4)        -- Portée 30 yards
custom_spell:SetEffectBasePointsItem(1, 120) -- Dégâts de base augmentés

-- Sauvegarde automatique
ws:Save()
print("Succès : Le sort 75001 ('Voidflame') a été ajouté à Spell.dbc.")
```
