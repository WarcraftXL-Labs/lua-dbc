--[[
    schema.lua
    Dynamic schema registry. Loads WoWDBDefs JSON definitions on demand.

    The build is passed explicitly by callers (typically DbcWorkspace).
    A default build can be set for convenience but is not required.

    Caching:
      - Parsed schemas are cached per (table_name, build) key.
      - Each schema carries its own compiled-method cache (see proxy.lua),
        so multi-build usage does not cross-contaminate method offsets.
]]

local load = require("dbc._loader")
local json_mod = load("json")
local build_mod = load("_build")

local parse_build = build_mod.parse
local cmp_build = build_mod.cmp
local build_matches = build_mod.matches

-- Directories searched (in order) when resolving definitions/<name>.json.
local _definitions_dirs = {
    "definitions",
    "definitions/json",
    "data/definitions",
    "../definitions",
}

-- Parsed schema cache: key = "<name>:<build>", value = schema table.
local _cache = {}

-- Fallback build used when callers do not pass one.
local _default_build = "3.3.5.12340"

local Schemas = {}

-- ---------------------------------------------------------------------------
-- Configuration
-- ---------------------------------------------------------------------------

---Registers an additional directory to search for DBDefs JSON files.
---@param path string
function Schemas.AddDefinitionsDir(path)
    if path and path ~= "" then
        table.insert(_definitions_dirs, 1, path)
    end
end

---Overrides the primary definitions directory (keeps two sensible fallbacks).
---@param path string
function Schemas.SetDefinitionsDir(path)
    _definitions_dirs = { path, "definitions", "definitions/json" }
end

---Sets a fallback build used when none is provided by the caller.
---@param build string
function Schemas.SetDefaultBuild(build)
    _default_build = build
end

---@return string
function Schemas.GetDefaultBuild()
    return _default_build
end

-- ---------------------------------------------------------------------------
-- DBD type -> lua-dbc kind mapping
-- ---------------------------------------------------------------------------

local function map_dbd_type(col_type, size_bits, is_signed)
    if col_type == "locstring" then return "loc"
    elseif col_type == "string" then return "str"
    elseif col_type == "float" then return "f32"
    elseif col_type == "bool" then return "bool"
    elseif col_type == "int" or col_type == "uint" then
        if size_bits == 64 then return "u64"
        elseif size_bits == 16 then return is_signed and "i16" or "u16"
        elseif size_bits == 8 then return is_signed and "i8" or "u8"
        else return is_signed and "i32" or "u32" end
    end
    return "u32"
end

-- ---------------------------------------------------------------------------
-- Version definition selection
-- ---------------------------------------------------------------------------

---Selects the version definition matching a target build or layout hash.
---@param vdefs table[]
---@param target_spec string|nil
---@param strict boolean When true, no fallback to the last definition.
---@return table|nil
local function select_vdef(vdefs, target_spec, strict)
    if not vdefs or #vdefs == 0 then return nil end

    local target_str = target_spec and tostring(target_spec) or nil
    local target_parsed = target_str and parse_build(target_str) or nil

    -- Layout hash match (case-insensitive)
    if target_str then
        for _, vd in ipairs(vdefs) do
            if vd.layoutHashes then
                for _, lh in ipairs(vd.layoutHashes) do
                    if string.lower(lh) == string.lower(target_str) then
                        return vd
                    end
                end
            end
        end
    end

    -- Explicit build or build range match
    if target_parsed then
        for _, vd in ipairs(vdefs) do
            if vd.builds then
                for _, b in ipairs(vd.builds) do
                    if build_matches(b, target_parsed) then return vd end
                end
            end
            if vd.buildRanges then
                for _, br in ipairs(vd.buildRanges) do
                    local min_b = parse_build(br.minBuild)
                    local max_b = parse_build(br.maxBuild)
                    if min_b and max_b
                        and cmp_build(target_parsed, min_b) >= 0
                        and cmp_build(target_parsed, max_b) <= 0 then
                        return vd
                    end
                end
            end
        end
    end

    -- Fallback (only when not strict)
    if not strict then return vdefs[#vdefs] end
    return nil
end

-- ---------------------------------------------------------------------------
-- JSON loading
-- ---------------------------------------------------------------------------

local function find_definition_file(table_name)
    for _, dir in ipairs(_definitions_dirs) do
        for _, ext in ipairs({ ".json", ".JSON" }) do
            local path = dir .. "/" .. table_name .. ext
            local f = io.open(path, "rb")
            if f then
                local content = f:read("*a")
                f:close()
                return content, path
            end
        end
    end
    return nil, nil
end

local function load_from_json(table_name, build_or_hash)
    local content, resolved_path = find_definition_file(table_name)
    if not content then return nil end

    local db_def = json_mod.decode(content)
    if not db_def or not db_def.versionDefinitions then return nil end

    local col_defs = db_def.columnDefinitions or {}
    local vdefs = db_def.versionDefinitions

    local selected_vdef = select_vdef(vdefs, build_or_hash or _default_build, false)
    if not selected_vdef or not selected_vdef.definitions then
        return nil
    end

    local fields = {}
    local by_name = {}
    local cur_offset = 0
    local id_offset = 0
    local has_id_inline = false
    local id_field_name = "ID"

    local is_pre_cata = false
    local b_check = (build_or_hash and parse_build(build_or_hash))
                 or (selected_vdef.builds and selected_vdef.builds[1] and parse_build(selected_vdef.builds[1]))
                 or (selected_vdef.buildRanges and selected_vdef.buildRanges[1] and parse_build(selected_vdef.buildRanges[1].minBuild))
    if b_check and b_check[1] < 4 then
        is_pre_cata = true
    end

    for _, def in ipairs(selected_vdef.definitions) do
        local col_name = def.name
        local col_meta = col_defs[col_name] or {}
        local col_type = col_meta.type or "int"
        local size_bits = def.size or 32
        local arr_len = (def.arrLength and def.arrLength > 0) and def.arrLength or 1
        local kind = map_dbd_type(col_type, size_bits, def.isSigned)
        local width
        if is_pre_cata and kind == "loc" then
            width = 68 -- 16 localized strings + 1 flag field (4 bytes each)
        else
            width = math.floor(size_bits / 8)
            if width == 0 then width = 4 end
        end

        local foreign_table = col_meta.foreignTable
        local foreign_column = col_meta.foreignColumn

        local f = {
            name            = col_name,
            kind            = kind,
            offset          = cur_offset,
            count           = arr_len,

            -- One element, in bytes: the span of the whole field is
            -- width * count. Published rather than left as a local because a
            -- caller that wants a field's raw bytes - an undo stack taking a
            -- snapshot, a differ - has no other way to know how far a field
            -- reaches. Deriving it from the next field's offset is wrong for
            -- the last field and for any isNonInline column, both of which
            -- leave the offset where it was.
            width           = width,
            is_id           = def.isID or false,
            is_relation     = def.isRelation or (foreign_table ~= nil),
            is_non_inline   = def.isNonInline or false,
            foreign_table   = foreign_table,
            foreign_column  = foreign_column,
            comment         = def.comment or col_meta.comment,
            verified        = col_meta.verified,
        }

        if def.isID then
            id_field_name = col_name
            if not def.isNonInline then
                has_id_inline = true
                id_offset = cur_offset
            end
        end

        fields[#fields + 1] = f
        by_name[col_name] = f
        local base_name = string.match(col_name, "^(.-)_lang$")
        if base_name and not by_name[base_name] then
            by_name[base_name] = f
        end

        if not def.isNonInline then
            cur_offset = cur_offset + width * arr_len
        end
    end

    return {
        name            = table_name,
        record_size     = cur_offset,
        field_count     = #fields,
        fields          = fields,
        by_name         = by_name,
        id_offset       = id_offset,
        has_id_inline   = has_id_inline,
        id_field_name   = id_field_name,
        layout_hash     = selected_vdef.layoutHashes and selected_vdef.layoutHashes[1],
        source_file     = resolved_path,
        build           = build_or_hash,

        -- Populated lazily by proxy.lua. Kept here so the cache lives on
        -- the schema object and cannot cross-contaminate between builds.
        _method_cache   = nil,
    }
end

-- ---------------------------------------------------------------------------
-- Public API
-- ---------------------------------------------------------------------------

---Gets a schema. The build parameter should be passed by workspace-aware callers.
---@param name string
---@param build_or_hash string|nil
---@return table
function Schemas.Get(name, build_or_hash)
    build_or_hash = build_or_hash or _default_build
    local key = name .. ":" .. tostring(build_or_hash)

    local cached = _cache[key]
    if cached then return cached end

    local schema = load_from_json(name, build_or_hash)
    if schema then
        _cache[key] = schema
        return schema
    end

    error(string.format(
        "Schema %q could not be loaded for build %q (no matching definition in 'definitions/%s.json').",
        name, tostring(build_or_hash), name))
end

---Returns true when a schema can be loaded without raising.
---@param name string
---@param build_or_hash string|nil
---@return boolean
function Schemas.Has(name, build_or_hash)
    local ok = pcall(Schemas.Get, name, build_or_hash)
    return ok
end

---Returns all foreign-key relations declared in a schema.
---Prefers explicit columnDefinitions.foreignTable; falls back to a
---name-based heuristic ("...ID" / "..._ID") for legacy definitions.
---@param schema_or_name string|table
---@param build_or_hash string|nil
---@return table[]
function Schemas.GetRelations(schema_or_name, build_or_hash)
    local schema
    if type(schema_or_name) == "string" then
        schema = Schemas.Get(schema_or_name, build_or_hash)
    else
        schema = schema_or_name
    end

    local relations = {}
    if not schema or not schema.fields then return relations end

    for _, f in ipairs(schema.fields) do
        if f.name ~= "ID" then
            local target = f.foreign_table
            if not target then
                target = string.match(f.name, "^(.-)ID$")
                    or string.match(f.name, "^(.-)_ID$")
            end
            if target and target ~= "" then
                relations[#relations + 1] = {
                    field        = f.name,
                    target_table = target,
                    target_field = f.foreign_column or "ID",
                    kind         = f.kind,
                    count        = f.count,
                }
            end
        end
    end

    return relations
end

-- Allow dot-syntax access: Schemas.Spell, Schemas.Item
setmetatable(Schemas, {
    __index = function(_, key)
        return Schemas.Get(key)
    end,
})

return Schemas