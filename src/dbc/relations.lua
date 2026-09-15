--[[
    relations.lua
    Provides the DBC relations catalog and management engine.
    Maps foreign key relationships across World of Warcraft (WotLK 3.3.5a) DBC tables,
    enabling bidirectional navigation, child querying (has_many), and cascade row creation.
]]

---@class DbcRelationDescriptor
---@field field string The foreign key field in the source table.
---@field target string The target DBC table name.
---@field target_field string The primary key field in target table (default "ID").
---@field type "belongs_to"|"has_many"

--- Complete catalog of static and inferred foreign key relations in WotLK 3.3.5a DBCs.
local CATALOG = {
    Achievement = {
        { field = "CategoryID", target = "Achievement_Category", target_field = "ID", type = "belongs_to" },
        { field = "TitleReward", target = "CharTitles", target_field = "ID", type = "belongs_to" },
    },
    Achievement_Criteria = {
        { field = "Achievement_Id", target = "Achievement", target_field = "ID", type = "belongs_to" },
    },
    AreaPOI = {
        { field = "AreaID", target = "AreaTable", target_field = "ID", type = "belongs_to" },
    },
    AreaTable = {
        { field = "ContinentID", target = "Map", target_field = "ID", type = "belongs_to" },
        { field = "AreaTableID", target = "AreaTable", target_field = "ID", type = "belongs_to" },
    },
    AreaTrigger = {
        { field = "ContinentID", target = "Map", target_field = "ID", type = "belongs_to" },
    },
    BarberShopStyle = {
        { field = "Race", target = "ChrRaces", target_field = "ID", type = "belongs_to" },
    },
    BattlemasterList = {
        { field = "MapID", target = "Map", target_field = "ID", type = "belongs_to" },
        { field = "HolidayWorldState", target = "Holidays", target_field = "ID", type = "belongs_to" },
    },
    CharSections = {
        { field = "Race", target = "ChrRaces", target_field = "ID", type = "belongs_to" },
    },
    CharStartOutfit = {
        { field = "Race", target = "ChrRaces", target_field = "ID", type = "belongs_to" },
        { field = "Class", target = "ChrClasses", target_field = "ID", type = "belongs_to" },
    },
    CreatureDisplayInfo = {
        { field = "ModelID", target = "CreatureModelData", target_field = "ID", type = "belongs_to" },
        { field = "SoundID", target = "CreatureSoundData", target_field = "ID", type = "belongs_to" },
        { field = "ExtendedDisplayInfoID", target = "CreatureDisplayInfoExtra", target_field = "ID", type = "belongs_to" },
    },
    CreatureFamily = {
        { field = "SkillLine", target = "SkillLine", target_field = "ID", type = "belongs_to" },
        { field = "PetTalentType", target = "TalentTab", target_field = "ID", type = "belongs_to" },
    },
    CreatureSpellData = {
        { field = "Spells", target = "Spell", target_field = "ID", type = "belongs_to" },
    },
    DungeonEncounter = {
        { field = "MapID", target = "Map", target_field = "ID", type = "belongs_to" },
    },
    DungeonMap = {
        { field = "MapID", target = "Map", target_field = "ID", type = "belongs_to" },
    },
    Faction = {
        { field = "ParentFactionID", target = "Faction", target_field = "ID", type = "belongs_to" },
    },
    FactionTemplate = {
        { field = "Faction", target = "Faction", target_field = "ID", type = "belongs_to" },
        { field = "FactionGroup", target = "FactionGroup", target_field = "ID", type = "belongs_to" },
    },
    GameObjectDisplayInfo = {
        { field = "SoundID", target = "SoundEntries", target_field = "ID", type = "belongs_to" },
    },
    GemProperties = {
        { field = "SpellItemEnchantment", target = "SpellItemEnchantment", target_field = "ID", type = "belongs_to" },
    },
    GlyphProperties = {
        { field = "SpellID", target = "Spell", target_field = "ID", type = "belongs_to" },
        { field = "GlyphSlotFlags", target = "GlyphSlot", target_field = "ID", type = "belongs_to" },
        { field = "SpellIconID", target = "SpellIcon", target_field = "ID", type = "belongs_to" },
    },
    Holidays = {
        { field = "HolidayNameID", target = "HolidayNames", target_field = "ID", type = "belongs_to" },
        { field = "HolidayDescriptionID", target = "HolidayDescriptions", target_field = "ID", type = "belongs_to" },
    },
    Item = {
        { field = "Class", target = "ItemClass", target_field = "ID", type = "belongs_to" },
        { field = "SubClass", target = "ItemSubClass", target_field = "ID", type = "belongs_to" },
        { field = "DisplayInfoID", target = "ItemDisplayInfo", target_field = "ID", type = "belongs_to" },
        { field = "ItemSet", target = "ItemSet", target_field = "ID", type = "belongs_to" },
    },
    ItemDisplayInfo = {
        { field = "ItemVisual", target = "ItemVisuals", target_field = "ID", type = "belongs_to" },
        { field = "ParticleColorID", target = "ParticleColor", target_field = "ID", type = "belongs_to" },
    },
    ItemExtendedCost = {
        { field = "ItemID", target = "Item", target_field = "ID", type = "belongs_to" },
    },
    ItemSet = {
        { field = "SkillID", target = "SkillLine", target_field = "ID", type = "belongs_to" },
    },
    LfgDungeons = {
        { field = "Faction", target = "FactionGroup", target_field = "ID", type = "belongs_to" },
        { field = "Expansion", target = "LfgDungeonExpansion", target_field = "ID", type = "belongs_to" },
        { field = "GroupID", target = "LfgDungeonGroup", target_field = "ID", type = "belongs_to" },
    },
    Light = {
        { field = "ContinentID", target = "Map", target_field = "ID", type = "belongs_to" },
    },
    Map = {
        { field = "LoadingScreenID", target = "LoadingScreens", target_field = "ID", type = "belongs_to" },
    },
    MapDifficulty = {
        { field = "MapID", target = "Map", target_field = "ID", type = "belongs_to" },
    },
    QuestSort = {
        { field = "SortID", target = "QuestSort", target_field = "ID", type = "belongs_to" },
    },
    SkillLineAbility = {
        { field = "SkillLine", target = "SkillLine", target_field = "ID", type = "belongs_to" },
        { field = "Spell", target = "Spell", target_field = "ID", type = "belongs_to" },
    },
    SkillRaceClassInfo = {
        { field = "SkillID", target = "SkillLine", target_field = "ID", type = "belongs_to" },
        { field = "RaceID", target = "ChrRaces", target_field = "ID", type = "belongs_to" },
        { field = "ClassID", target = "ChrClasses", target_field = "ID", type = "belongs_to" },
    },
    Spell = {
        { field = "SpellIconID", target = "SpellIcon", target_field = "ID", type = "belongs_to" },
        { field = "CastingTimeIndex", target = "SpellCastTimes", target_field = "ID", type = "belongs_to" },
        { field = "DurationIndex", target = "SpellDuration", target_field = "ID", type = "belongs_to" },
        { field = "RangeIndex", target = "SpellRange", target_field = "ID", type = "belongs_to" },
        { field = "SpellVisual", target = "SpellVisual", target_field = "ID", type = "belongs_to" },
        { field = "SpellDescriptionVariableID", target = "SpellDescriptionVariables", target_field = "ID", type = "belongs_to" },
        { field = "SpellDifficultyID", target = "SpellDifficulty", target_field = "ID", type = "belongs_to" },
        { field = "SpellMissileID", target = "SpellMissile", target_field = "ID", type = "belongs_to" },
        { field = "PowerDisplayID", target = "PowerDisplay", target_field = "ID", type = "belongs_to" },
    },
    SpellChainEffects = {
        { field = "SpellID", target = "Spell", target_field = "ID", type = "belongs_to" },
    },
    SpellFocusObject = {
        { field = "FocusObjectID", target = "SpellFocusObject", target_field = "ID", type = "belongs_to" },
    },
    SpellItemEnchantment = {
        { field = "ItemVisual", target = "ItemVisuals", target_field = "ID", type = "belongs_to" },
    },
    SpellRuneCost = {
        { field = "RuneCostID", target = "SpellRuneCost", target_field = "ID", type = "belongs_to" },
    },
    Talent = {
        { field = "TabID", target = "TalentTab", target_field = "ID", type = "belongs_to" },
        { field = "SpellRank", target = "Spell", target_field = "ID", type = "belongs_to" },
    },
    TalentTab = {
        { field = "ClassMask", target = "ChrClasses", target_field = "ID", type = "belongs_to" },
        { field = "RaceMask", target = "ChrRaces", target_field = "ID", type = "belongs_to" },
    },
    TaxiNodes = {
        { field = "ContinentID", target = "Map", target_field = "ID", type = "belongs_to" },
    },
    TaxiPath = {
        { field = "FromTaxiNode", target = "TaxiNodes", target_field = "ID", type = "belongs_to" },
        { field = "ToTaxiNode", target = "TaxiNodes", target_field = "ID", type = "belongs_to" },
    },
    TaxiPathNode = {
        { field = "PathID", target = "TaxiPath", target_field = "ID", type = "belongs_to" },
        { field = "ContinentID", target = "Map", target_field = "ID", type = "belongs_to" },
    },
    Vehicle = {
        { field = "PowerDisplayID", target = "PowerDisplay", target_field = "ID", type = "belongs_to" },
        { field = "UIIndicatorID", target = "VehicleUIIndicator", target_field = "ID", type = "belongs_to" },
    },
    VehicleSeat = {
        { field = "CameraShakes", target = "CameraShakes", target_field = "ID", type = "belongs_to" },
    },
    WMOAreaTable = {
        { field = "WMOID", target = "WMOAreaTable", target_field = "ID", type = "belongs_to" },
        { field = "AreaTableID", target = "AreaTable", target_field = "ID", type = "belongs_to" },
    },
    WorldMapArea = {
        { field = "MapID", target = "Map", target_field = "ID", type = "belongs_to" },
        { field = "AreaID", target = "AreaTable", target_field = "ID", type = "belongs_to" },
    },
}

-- Inverted index: TargetTable -> list of { source = "...", field = "..." }
local INBOUND = {}

local function rebuild_inbound()
    INBOUND = {}
    for src_table, rel_list in pairs(CATALOG) do
        for _, rel in ipairs(rel_list) do
            local tgt = rel.target
            if not INBOUND[tgt] then
                INBOUND[tgt] = {}
            end
            table.insert(INBOUND[tgt], {
                source_table = src_table,
                field = rel.field,
                target_field = rel.target_field or "ID",
                type = "has_many",
            })
        end
    end
end

rebuild_inbound()

---@class DbcRelations
---Registry managing relationships between DBC tables.
local Relations = {}

--- Retrieves all outbound relationships from a table.
--- @param table_name string Name of the source DBC table (e.g. "Spell").
--- @return table[] relations List of relation descriptors.
function Relations.Get(table_name)
    return CATALOG[table_name] or {}
end

--- Retrieves all inbound relationships pointing to a table (has_many / children).
--- @param table_name string Name of the target DBC table (e.g. "SpellIcon").
--- @return table[] inbounds List of inbound relation descriptors.
function Relations.GetInbound(table_name)
    return INBOUND[table_name] or {}
end

--- Finds a specific relationship from a source table to a target table or field name.
--- @param source_table string Source DBC table name.
--- @param target_table_or_field string Target table name or foreign key field name.
--- @return table|nil relation The relation descriptor if found.
function Relations.Find(source_table, target_table_or_field)
    local rels = Relations.Get(source_table)
    for _, rel in ipairs(rels) do
        if rel.target == target_table_or_field or rel.field == target_table_or_field then
            return rel
        end
    end
    -- Fallback matching: SpellIcon -> SpellIconID
    local candidate = target_table_or_field .. "ID"
    for _, rel in ipairs(rels) do
        if rel.field == candidate then
            return rel
        end
    end
    return nil
end

--- Defines a new relation between two DBC tables at runtime.
--- @param source_table string Name of the source table.
--- @param field string Name of the foreign key field in source table.
--- @param target_table string Name of the target table.
--- @param target_field string|nil Primary key in target table (default "ID").
function Relations.Define(source_table, field, target_table, target_field)
    if not CATALOG[source_table] then
        CATALOG[source_table] = {}
    end
    local rel = {
        field = field,
        target = target_table,
        target_field = target_field or "ID",
        type = "belongs_to",
    }
    table.insert(CATALOG[source_table], rel)
    rebuild_inbound()
end

--- Returns the raw catalog table.
--- @return table catalog
function Relations.GetCatalog()
    return CATALOG
end

setmetatable(Relations, {
    __index = function(_, key)
        return Relations.Get(key)
    end
})

return Relations
