--[[
    schema.lua
    Provides the schema registry and lazy loader for World of Warcraft WotLK DBC definitions.
]]

local SPECIAL_RELATIONS = {
    CastingTimeIndex = "SpellCastTimes",
    DurationIndex = "SpellDuration",
    RangeIndex = "SpellRange",
    SpellVisual = "SpellVisual",
    SpellVisualID = "SpellVisual",
    SpellDescriptionVariableID = "SpellDescriptionVariables",
    AreaID = "AreaTable",
    AreaTableID = "AreaTable",
    ModelID = "CreatureModelData",
    DisplayID = "CreatureDisplayInfo",
    CreatureDisplayInfoID = "CreatureDisplayInfo",
    TotemCategory = "TotemCategory",
    ItemClass = "ItemClass",
    ItemSubClass = "ItemSubClass",
}

local _cache = {}

local Schemas = {}

--- Retrieves and caches a schema definition by DBC table name.
--- @param name string Name of the schema (e.g. "Spell", "Item").
--- @return table schema The parsed schema table.
function Schemas.Get(name)
    if _cache[name] then
        return _cache[name]
    end

    local ok, schema = pcall(require, "dbc.schemas." .. name)
    if not ok then
        ok, schema = pcall(require, "schemas." .. name)
    end
    if not ok then
        ok, schema = pcall(require, "src.schemas." .. name)
    end
    if not ok then
        error(string.format("Schema %q could not be loaded: %s", name, tostring(schema)))
    end

    -- Ensure by_name lookup table is built
    if not schema.by_name then
        schema.by_name = {}
        for _, f in ipairs(schema.fields) do
            schema.by_name[f.name] = f
        end
    end

    _cache[name] = schema
    return schema
end

--- Checks if a schema with the given name is available.
--- @param name string Name of the schema.
--- @return boolean exists
function Schemas.Has(name)
    local ok, _ = pcall(Schemas.Get, name)
    return ok
end

--- Analyzes a schema and returns all inferred and explicit foreign key relationships.
--- @param schema_or_name string|table Schema name or schema table.
--- @return table relations List of foreign key relation descriptors.
function Schemas.GetRelations(schema_or_name)
    local schema = type(schema_or_name) == "string" and Schemas.Get(schema_or_name) or schema_or_name
    local relations = {}
    if not schema or not schema.fields then
        return relations
    end

    for _, f in ipairs(schema.fields) do
        if f.name ~= "ID" then
            local target = SPECIAL_RELATIONS[f.name]
                or string.match(f.name, "^(.-)ID$")
                or string.match(f.name, "^(.-)_ID$")

            if target and target ~= "" then
                table.insert(relations, {
                    field = f.name,
                    target_table = target,
                    target_field = "ID",
                    kind = f.kind,
                    count = f.count,
                })
            end
        end
    end

    return relations
end

-- Allow dot-syntax access: Schemas.Spell, Schemas.Item
setmetatable(Schemas, {
    __index = function(_, key)
        return Schemas.Get(key)
    end
})

return Schemas
