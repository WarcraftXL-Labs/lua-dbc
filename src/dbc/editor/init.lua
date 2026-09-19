--[[
    editor/init.lua
    The editor descriptor surface of lua-dbc.

    lua-dbc's schemas are not written by hand: schema.lua builds them from the
    WoWDBDefs JSON at runtime, per (table, build). So this module does not hold
    a table of descriptors the way lua-m2 and lua-wmo do - it *classifies* the
    schema lua-dbc already produces into the shared convention, keeping every
    key schema.lua publishes (kind, width, count, offset, foreign_table,
    id_offset) and adding the widget family on top.

      Editor.version      descriptor convention version
      Editor.library      library name
      Editor.enums        the library enum registry ('enum'/'bitmask' resolve here)
      Editor.shapes       vector shape -> ordered component list
      Editor.owners       owner name -> the class whose methods are named
      Editor.types        table name -> TypeDescriptor (built on demand)
      Editor.collections  table name -> CollectionDescriptor (built on demand)
      Editor.actions      action name -> ActionDescriptor
      Editor.enum_map     table -> column -> { enum, family }

    A note on enum_map. The DBD definitions lua-dbc reads carry column types
    and foreign tables, but say nothing about which column holds which of the
    170 enums under src/dbc/enums. Nothing in the library declares that
    mapping either. Rather than guess it, enum_map starts empty and is filled
    by whoever does know, through Editor.RegisterEnum, which refuses an enum
    that does not resolve. Until then a dbc integer column is a scalar, even
    where it is really a flag field.

    See src/dbc/editor/_dsl.lua for the field families and what each carries.
]]

local load = require("dbc._loader")

local D        = load("editor._dsl")
local Schemas  = load("schema")
local Enums    = load("enum")
local table_m  = load("table")
local proxy_m  = load("proxy")
local ws_m     = load("workspace")
local file_m   = load("file")

local arg = D.arg

-- ---------------------------------------------------------------------------
-- Enum registry hook
-- ---------------------------------------------------------------------------

local enum_map = {}

-- ---------------------------------------------------------------------------
-- Field classification
-- ---------------------------------------------------------------------------

local KIND_REASON = {
    str = "text column: the six families name no text family",
    loc = "localized string set - one string column per locale plus a flag column: "
       .. "the six families name no text family, and none describes a per-locale value set",
    bool = "boolean toggle: the six families have no boolean family",
}

---Turns one schema field into one field descriptor.
---@param schema table
---@param f table A field as schema.lua publishes it.
---@return table
local function classify(schema, f)
    local opts = {
        count   = f.count or 1,
        comment = f.comment,
    }

    local out
    if KIND_REASON[f.kind] then
        opts.kind = f.kind
        out = D.unclassified(f.name, KIND_REASON[f.kind], opts)
    elseif f.foreign_table then
        out = D.ref(f.name, f.kind, f.foreign_table, {
            count      = opts.count,
            comment    = opts.comment,
            lookup     = "id",
            target_key = f.foreign_column or "ID",
        })
    else
        local mapped = enum_map[schema.name] and enum_map[schema.name][f.name]
        if mapped then
            local ctor = mapped.family == "bitmask" and D.bitmask or D.enum
            out = ctor(f.name, f.kind, mapped.enum, opts)
        else
            out = D.scalar(f.name, f.kind, opts)
        end
    end

    -- Keep everything schema.lua already publishes. width comes from the
    -- schema, not from the kind table, because a pre-Cataclysm locstring
    -- spans 68 bytes while its kind says nothing about that.
    out.width          = f.width
    out.offset         = f.offset
    out.is_id          = f.is_id or nil
    out.is_relation    = f.is_relation or nil
    out.is_non_inline  = f.is_non_inline or nil
    out.foreign_table  = f.foreign_table
    out.foreign_column = f.foreign_column
    out.verified       = f.verified
    return out
end

-- ---------------------------------------------------------------------------
-- Type descriptors
-- ---------------------------------------------------------------------------

local _type_cache = {}

---Builds the editor descriptor for one table, for one build.
---@param schema_or_name string|table
---@param build string|nil
---@return table
local function Describe(schema_or_name, build)
    local schema = schema_or_name
    if type(schema_or_name) == "string" then
        schema = Schemas.Get(schema_or_name, build)
    end

    local key = schema.name .. ":" .. tostring(schema.build or build)
    local cached = _type_cache[key]
    if cached and cached._schema == schema then return cached end

    local fields = {}
    for _, f in ipairs(schema.fields) do
        fields[#fields + 1] = classify(schema, f)
    end

    local desc = D.type({
        name   = schema.name,
        fields = fields,
    })

    -- Everything schema.lua publishes about the record as a whole.
    desc._schema      = schema
    desc.build        = schema.build
    desc.record_size  = schema.record_size
    desc.field_count  = schema.field_count
    desc.id_offset    = schema.id_offset
    desc.has_id_inline = schema.has_id_inline
    desc.id_field_name = schema.id_field_name
    desc.layout_hash  = schema.layout_hash
    desc.source_file  = schema.source_file
    desc.owner        = "RowProxy"

    _type_cache[key] = desc
    return desc
end

-- ---------------------------------------------------------------------------
-- Collection descriptors
-- ---------------------------------------------------------------------------

---Every dbc collection is a table, and every table is reached the same way,
---so one shape describes them all.
---@param table_name string
---@param build string|nil
---@return table
local function CollectionFor(table_name, build)
    return D.collection({
        name     = table_name,
        element  = table_name,
        owner    = "DbcTable",
        count    = "Count",
        get      = "Rows",
        get_one  = "GetRowById",
        set_one  = "CopyRecord",
        add      = "Create",
        remove   = "DeleteRow",
        api_base = 1,
        indexed_by = "workspace",
        comment  = string.format(
            "DbcWorkspace:GetTable(%q) yields the DbcTable these methods live on", table_name),
        build    = build,
    })
end

-- ---------------------------------------------------------------------------
-- Actions
-- ---------------------------------------------------------------------------

local actions = {}
local function act(def) actions[def.name] = D.action(def) end

act({ name = "Create", owner = "DbcTable",
      args = { arg("id", "integer"), arg("data", "table", { optional = true }) },
      returns = "RowProxy", comment = "Appends a row with an explicit primary key" })

act({ name = "CreateNext", owner = "DbcTable",
      args = { arg("data", "table", { optional = true }) },
      returns = "RowProxy", comment = "Appends a row keyed GetMaxID() + 1" })

act({ name = "CloneRow", owner = "DbcTable",
      args = { arg("source_id_or_row", "integer|RowProxy"), arg("new_id", "integer"),
               arg("data_override", "table", { optional = true }) },
      returns = "RowProxy" })

act({ name = "DuplicateRowByIndex", owner = "DbcTable",
      args = { arg("index", "integer"), arg("new_id", "integer", { optional = true }) },
      returns = "RowProxy",
      comment = "Copies a record by ordinal; works on the tables that keep no inline ID" })

act({ name = "DeleteRow", owner = "DbcTable",
      args = { arg("index", "integer") },
      comment = "Removes a row by 1-based ordinal and invalidates the proxies it moved" })

act({ name = "InsertRow", owner = "DbcTable",
      args = { arg("index", "integer"), arg("bytes", "string", { optional = true }) },
      returns = "RowProxy" })

act({ name = "CopyRecord", owner = "DbcTable",
      args = { arg("index", "integer") }, returns = "string",
      comment = "Raw record bytes; the unit an undo stack snapshots" })

act({ name = "RebuildIndex", owner = "DbcTable" })
act({ name = "Save", owner = "DbcTable", args = { arg("path", "string", { optional = true }) } })
act({ name = "Count", owner = "DbcTable", returns = "integer" })
act({ name = "GetMaxID", owner = "DbcTable", returns = "integer" })
act({ name = "GetRowById", owner = "DbcTable", args = { arg("id", "integer") }, returns = "RowProxy" })
act({ name = "GetRowByIndex", owner = "DbcTable", args = { arg("index", "integer") }, returns = "RowProxy" })
act({ name = "GetByRelation", owner = "DbcTable",
      args = { arg("field_name", "string"), arg("value", "any") }, returns = "RowProxy[]" })

act({ name = "SetField", owner = "RowProxy",
      args = { arg("name", "string"), arg("value", "any"),
               arg("extra", "any", { optional = true, comment = "Locale index for a locstring column" }) },
      comment = "The single write every generated field widget goes through" })

act({ name = "GetField", owner = "RowProxy",
      args = { arg("name", "string"), arg("extra", "any", { optional = true }) },
      returns = "any" })

act({ name = "Populate", owner = "RowProxy",
      args = { arg("values", "table") }, comment = "Writes many fields at once" })

act({ name = "SetID", owner = "RowProxy", args = { arg("id", "integer") } })
act({ name = "GetID", owner = "RowProxy", returns = "integer" })
act({ name = "IsValid", owner = "RowProxy", returns = "boolean" })

act({ name = "Resolve", owner = "RowProxy",
      args = { arg("field_name", "string") }, returns = "RowProxy",
      comment = "Follows one foreign key; this is what a ref dropdown reads" })

act({ name = "ResolveRelation", owner = "RowProxy",
      args = { arg("target_table", "string"), arg("foreign_id", "integer"),
               arg("target_column", "string", { optional = true }) },
      returns = "RowProxy" })

act({ name = "GetRelated", owner = "RowProxy",
      args = { arg("target_table_or_field", "string") }, returns = "RowProxy" })

act({ name = "CreateRelated", owner = "RowProxy",
      args = { arg("target_table_or_field", "string"),
               arg("row_data_or_id", "table|integer", { optional = true }) },
      returns = "RowProxy" })

act({ name = "GetChildren", owner = "RowProxy",
      args = { arg("child_table_name", "string", { optional = true }),
               arg("child_field_name", "string", { optional = true }) },
      returns = "RowProxy[]" })

act({ name = "GetRelations", owner = "RowProxy", returns = "table[]" })

act({ name = "WorkspaceOpen", owner = "DbcWorkspace", method = "Open",
      args = { arg("path_or_name", "string"), arg("schema_name", "string", { optional = true }) },
      returns = "DbcTable" })

act({ name = "WorkspaceCreate", owner = "DbcWorkspace", method = "Create",
      args = { arg("schema_name", "string"), arg("format_name", "string", { optional = true }) },
      returns = "DbcTable" })

act({ name = "GetTable", owner = "DbcWorkspace", args = { arg("name", "string") }, returns = "DbcTable" })
act({ name = "SaveAll", owner = "DbcWorkspace", args = { arg("options", "table", { optional = true }) } })
act({ name = "Close", owner = "DbcWorkspace" })
act({ name = "SetBuild", owner = "DbcWorkspace", args = { arg("build", "string") } })

-- ---------------------------------------------------------------------------
-- Public surface
-- ---------------------------------------------------------------------------

local Editor = {
    version  = D.VERSION,
    library  = "lua-dbc",
    enums    = Enums,
    shapes   = D.SHAPES,
    families = D.FAMILIES,
    actions  = actions,
    enum_map = enum_map,
    owners   = {
        DbcTable     = table_m.DbcTable,
        RowProxy     = proxy_m.RowProxy,
        DbcWorkspace = ws_m.DbcWorkspace,
        DbcFile      = file_m.DbcFile,
    },
}

Editor.Describe = Describe
Editor.CollectionFor = CollectionFor

---Declares that a column holds a named enum. The enum must resolve through
---dbc.Enums, or this raises: an editor dropdown built on a name that does not
---exist is worse than a plain number box.
---@param table_name string
---@param column string
---@param enum_name string
---@param family string|nil "enum" (default) or "bitmask"
function Editor.RegisterEnum(table_name, column, enum_name, family)
    family = family or "enum"
    if family ~= "enum" and family ~= "bitmask" then
        error(string.format("editor: %s.%s: family must be \"enum\" or \"bitmask\", got %q",
            table_name, column, tostring(family)))
    end
    if not Enums.Has(enum_name) then
        error(string.format("editor: %s.%s names enum %q, which dbc.Enums cannot load",
            table_name, column, tostring(enum_name)))
    end
    enum_map[table_name] = enum_map[table_name] or {}
    enum_map[table_name][column] = { enum = enum_name, family = family }
    _type_cache = {}
end

---Resolves the enum table a field names, or nil.
---@param field table
---@return table|nil
function Editor.ResolveEnum(field)
    if not field or not field.enum then return nil end
    if not Enums.Has(field.enum) then return nil end
    return Enums.Get(field.enum)
end

---Counts fields per family for one table, for reporting.
---@param table_name string
---@param build string|nil
---@return table<string, integer>
function Editor.FamilyCounts(table_name, build)
    local counts = {}
    for fam in pairs(D.FAMILIES) do counts[fam] = 0 end
    for _, f in ipairs(Describe(table_name, build).fields) do
        counts[f.family] = (counts[f.family] or 0) + 1
    end
    return counts
end

-- Dot access mirrors schema.lua's own idiom: Editor.types.Spell builds the
-- descriptor for Spell at the default build, on demand.
Editor.types = setmetatable({}, {
    __index = function(_, name) return Describe(name) end,
})

Editor.collections = setmetatable({}, {
    __index = function(_, name)
        if not Schemas.Has(name) then return nil end
        return CollectionFor(name)
    end,
})

return Editor
