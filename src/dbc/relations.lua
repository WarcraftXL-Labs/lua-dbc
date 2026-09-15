--[[
    relations.lua
    Bidirectional DBC relations catalog.

    Reads per-build indexes at definitions/_relations/<tag>.json, which are
    produced by tools/build_relations.lua. When an index is missing for a
    given build, this module falls back to schema introspection via
    Schemas.GetRelations().

    The build is always passed explicitly by the caller (typically
    DbcWorkspace), so multiple builds can coexist without state leakage.
]]

local load = require("dbc._loader")
local Schemas = load("schema")
local json_mod = load("json")

-- ---------------------------------------------------------------------------
-- Index location and loading
-- ---------------------------------------------------------------------------

local _index_dirs = {
    "definitions",
    "definitions/json",
    "data/definitions",
    "../definitions",
}

-- Cache: build string -> index table, or false if known-missing.
local _index_cache = {}

-- Cache: full manifest table (build -> filename).
local _manifest = nil
local _manifest_loaded = false

local Relations = {}

---Registers an additional directory to search for _relations/.
---@param path string
function Relations.AddIndexDir(path)
    if path and path ~= "" then
        table.insert(_index_dirs, 1, path)
    end
end

local function load_manifest()
    if _manifest_loaded then return _manifest end
    _manifest_loaded = true

    for _, dir in ipairs(_index_dirs) do
        local path = dir .. "/_relations/index.json"
        local f = io.open(path, "rb")
        if f then
            local content = f:read("*a")
            f:close()
            local ok, parsed = pcall(json_mod.decode, content)
            if ok and parsed then
                _manifest = parsed
                return _manifest
            end
        end
    end

    _manifest = {}
    return _manifest
end

local function load_index(build_str)
    if not build_str then return nil end

    local cached = _index_cache[build_str]
    if cached ~= nil then
        return cached or nil
    end

    local manifest = load_manifest()
    local filename = manifest[build_str]
    if not filename then
        _index_cache[build_str] = false
        return nil
    end

    for _, dir in ipairs(_index_dirs) do
        local path = dir .. "/_relations/" .. filename
        local f = io.open(path, "rb")
        if f then
            local content = f:read("*a")
            f:close()
            local ok, parsed = pcall(json_mod.decode, content)
            if ok and parsed then
                local idx = {
                    outbound = parsed.outbound or {},
                    inbound  = parsed.inbound  or {},
                    build    = parsed.build,
                }
                _index_cache[build_str] = idx
                return idx
            end
        end
    end

    _index_cache[build_str] = false
    return nil
end

-- ---------------------------------------------------------------------------
-- Manual overrides (rare)
-- ---------------------------------------------------------------------------

-- Manual overrides for relations that cannot be derived from schema metadata
-- or the per-build index. Format:
--   OVERRIDES["Spell"] = { { field = "FooID", target = "Foo", target_field = "ID" }, ... }
local OVERRIDES = {}

-- ---------------------------------------------------------------------------
-- Public API
-- ---------------------------------------------------------------------------

---Returns outbound relations for a table in a given build.
---@param table_name string
---@param build_str string|nil Falls back to Schemas.GetDefaultBuild().
---@return table[]
function Relations.Get(table_name, build_str)
    build_str = build_str or Schemas.GetDefaultBuild()

    local result = {}
    local seen = {}

    -- 1. Per-build index (authoritative when present)
    local idx = load_index(build_str)
    if idx then
        local indexed = idx.outbound[table_name]
        if indexed then
            for _, rel in ipairs(indexed) do
                if not seen[rel.field] then
                    seen[rel.field] = true
                    result[#result + 1] = {
                        field        = rel.field,
                        target       = rel.target,
                        target_field = rel.target_field or "ID",
                        type         = "belongs_to",
                    }
                end
            end
        end
    end

    -- 2. Schema introspection fallback
    if #result == 0 and Schemas.Has(table_name, build_str) then
        local ok, schema = pcall(Schemas.Get, table_name, build_str)
        if ok and schema then
            for _, rel in ipairs(Schemas.GetRelations(schema)) do
                if rel.field and rel.target_table and not seen[rel.field] then
                    seen[rel.field] = true
                    result[#result + 1] = {
                        field        = rel.field,
                        target       = rel.target_table,
                        target_field = rel.target_field or "ID",
                        type         = "belongs_to",
                    }
                end
            end
        end
    end

    -- 3. Manual overrides
    local overrides = OVERRIDES[table_name]
    if overrides then
        for _, rel in ipairs(overrides) do
            if not seen[rel.field] then
                seen[rel.field] = true
                result[#result + 1] = rel
            end
        end
    end

    return result
end

---Returns inbound relations (has_many) pointing to a table in a given build.
---@param table_name string
---@param build_str string|nil
---@return table[]
function Relations.GetInbound(table_name, build_str)
    build_str = build_str or Schemas.GetDefaultBuild()
    local idx = load_index(build_str)
    if not idx then return {} end
    return idx.inbound[table_name] or {}
end

---Finds a specific relation by target table name or field name.
---@param source_table string
---@param target_table_or_field string
---@param build_str string|nil
---@return table|nil
function Relations.Find(source_table, target_table_or_field, build_str)
    local rels = Relations.Get(source_table, build_str)
    for _, rel in ipairs(rels) do
        if rel.target == target_table_or_field or rel.field == target_table_or_field then
            return rel
        end
    end
    -- Fallback: "SpellIcon" -> "SpellIconID"
    local candidate = target_table_or_field .. "ID"
    for _, rel in ipairs(rels) do
        if rel.field == candidate then return rel end
    end
    return nil
end

---Defines a runtime override for a relation.
---@param source_table string
---@param field string
---@param target_table string
---@param target_field string|nil Defaults to "ID".
function Relations.Define(source_table, field, target_table, target_field)
    if not OVERRIDES[source_table] then
        OVERRIDES[source_table] = {}
    end
    OVERRIDES[source_table][#OVERRIDES[source_table] + 1] = {
        field        = field,
        target       = target_table,
        target_field = target_field or "ID",
        type         = "belongs_to",
    }
end

---@return table Raw overrides table.
function Relations.GetCatalog()
    return OVERRIDES
end

---@param build_str string|nil
---@return table|nil
function Relations.GetIndex(build_str)
    return load_index(build_str or Schemas.GetDefaultBuild())
end

---@return string[] List of builds that have an index file available.
function Relations.GetIndexedBuilds()
    local manifest = load_manifest()
    local list = {}
    for b in pairs(manifest) do list[#list + 1] = b end
    table.sort(list)
    return list
end

return Relations