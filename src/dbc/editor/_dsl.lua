--[[
    editor/_dsl.lua
    Constructors for the shared editor descriptor convention (version 1).

    The convention generalises what dbc/schema.lua already publishes per column
    (kind, width, count, foreign_table) and adds the one thing a generic editor
    needs on top of it: the widget family. Every descriptor produced here is a
    plain Lua table - the application reads data, never annotations.

    Families:
      scalar        numeric input            kind + width (+ signed, count)
      enum          dropdown of named values enum = <name in lib.Enums>
      bitmask       checkbox list            enum = <name in lib.Enums>
      vector        component inputs         shape + components
      track         keyframe editor          value_type (or value_type_from)
      ref           resolved dropdown        target = <name in Editor.collections>
      unclassified  nothing is generated     reason = why no family fits

    'unclassified' is deliberately not a widget family. It exists so a field
    that fits none of the six is still *named* and still counted by the
    coverage check, instead of being quietly dropped or bent into a family it
    does not belong to.
]]

local D = {}

D.VERSION = 1

-- Bytes per element, by storage kind. Same vocabulary as dbc/schema.lua's
-- map_dbd_type, extended with the widths the binary model formats use.
D.KIND_WIDTH = {
    u8 = 1, i8 = 1,
    u16 = 2, i16 = 2,
    u32 = 4, i32 = 4,
    u64 = 8, i64 = 8,
    f32 = 4, f64 = 8,
    bool = 1,
}

D.KIND_SIGNED = {
    i8 = true, i16 = true, i32 = true, i64 = true,
    f32 = true, f64 = true,
}

-- Component layout per vector shape. The first five are the canonical shapes
-- named by the convention; the ones marked extension = true are additions a
-- concrete format forced and are flagged as such in the field descriptor too.
D.SHAPES = {
    C2Vector     = { components = { "x", "y" },                kind = "f32" },
    C3Vector     = { components = { "x", "y", "z" },           kind = "f32" },
    C4Vector     = { components = { "x", "y", "z", "w" },      kind = "f32" },
    quat         = { components = { "x", "y", "z", "w" },      kind = "f32" },
    CAaBox       = { components = { "min", "max" },            kind = "C3Vector", nested = true },
    CImVector    = { components = { "r", "g", "b", "a" },      kind = "u8", extension = true, hint = "color" },
}

D.FAMILIES = {
    scalar = true, enum = true, bitmask = true,
    vector = true, track = true, ref = true,
    unclassified = true,
}

local function base_field(name, family, opts)
    opts = opts or {}
    local f = {
        name         = name,
        family       = family,
        count        = opts.count or 1,
        comment      = opts.comment,
        struct_field = opts.struct_field,
        readonly     = opts.readonly or nil,
        extension    = opts.extension or nil,
        reason       = opts.reason,
    }
    return f
end

local function apply_kind(f, kind)
    f.kind = kind
    f.width = D.KIND_WIDTH[kind]
    f.signed = D.KIND_SIGNED[kind] or false
    return f
end

---Numeric field: integer or float, with width and signedness.
function D.scalar(name, kind, opts)
    return apply_kind(base_field(name, "scalar", opts), kind)
end

---Names a library enum; the UI renders a dropdown of its named values.
function D.enum(name, kind, enum_name, opts)
    local f = apply_kind(base_field(name, "enum", opts), kind)
    f.enum = enum_name
    return f
end

---Names a library enum whose values are bit flags; the UI renders checkboxes.
function D.bitmask(name, kind, enum_name, opts)
    local f = apply_kind(base_field(name, "bitmask", opts), kind)
    f.enum = enum_name
    return f
end

---Fixed-component numeric group; the UI renders one input per component.
function D.vector(name, shape, opts)
    opts = opts or {}
    local layout = D.SHAPES[shape]
    if not layout then
        error(string.format("editor: unknown vector shape %q for field %q", tostring(shape), name))
    end
    local f = base_field(name, "vector", opts)
    f.shape = shape
    f.components = layout.components
    f.kind = layout.kind
    f.width = D.KIND_WIDTH[layout.kind]
    f.hint = opts.hint or layout.hint
    if layout.extension then
        f.extension = true
        f.reason = opts.reason or (layout.hint == "color"
            and "colour channels; the six families name no colour family, so it is published as a vector with hint = \"color\""
            or "integer pair; the six families name no range family, so it is published as a vector")
    end
    return f
end

---An animation curve; the UI renders a keyframe editor.
---value_type_from names an instance key to read the value type off at runtime.
function D.track(name, value_type, opts)
    opts = opts or {}
    local f = base_field(name, "track", opts)
    f.value_type = value_type
    f.value_type_from = opts.value_type_from
    return f
end

---A reference into another collection. target must be a key of
---Editor.collections.
---
---lookup says how the stored value finds its row:
---  "index"  the value is a position in the collection (the default)
---  "id"     the value is a key, matched against target_key on the target
---base is the origin of a positional value (0 for file indices, 1 where the
---library stores 1-based values). none, when given, is the sentinel meaning
---"unset" (for example -1 on a bone parent, 0xFF on a WMO polygon material).
function D.ref(name, kind, target, opts)
    opts = opts or {}
    local f = apply_kind(base_field(name, "ref", opts), kind)
    f.target = target
    f.lookup = opts.lookup or "index"
    f.target_key = opts.target_key
    f.base = opts.base or 0
    f.none = opts.none
    return f
end

---Fits none of the six families. reason is mandatory and is what gets reported.
function D.unclassified(name, reason, opts)
    opts = opts or {}
    local f = base_field(name, "unclassified", opts)
    f.reason = reason
    f.kind = opts.kind
    f.width = opts.kind and D.KIND_WIDTH[opts.kind] or nil
    return f
end

---Builds a type descriptor and its by_name index.
---@param def table { name, class, struct, fields, ignored, struct_unmapped, role, probe }
---@return table
function D.type(def)
    assert(type(def.name) == "string", "editor: type descriptor needs a name")
    assert(type(def.fields) == "table", "editor: type descriptor needs fields")

    local by_name = {}
    for _, f in ipairs(def.fields) do
        if not D.FAMILIES[f.family] then
            error(string.format("editor: %s.%s has unknown family %q",
                def.name, tostring(f.name), tostring(f.family)))
        end
        if f.family == "unclassified" and not f.reason then
            error(string.format("editor: %s.%s is unclassified without a reason",
                def.name, tostring(f.name)))
        end
        if by_name[f.name] then
            error(string.format("editor: %s declares field %q twice", def.name, f.name))
        end
        by_name[f.name] = f
    end

    return {
        name            = def.name,
        class           = def.class,
        struct          = def.struct,
        role            = def.role,
        fields          = def.fields,
        by_name         = by_name,
        ignored         = def.ignored or {},
        struct_unmapped = def.struct_unmapped or {},
        probe           = def.probe,
    }
end

---Builds a collection descriptor.
---api_base is the index base of get_one/set_one (these libraries are 1-based on
---the accessor even where the stored index is 0-based).
function D.collection(def)
    assert(type(def.name) == "string", "editor: collection needs a name")
    return {
        name     = def.name,
        element  = def.element,
        owner    = def.owner,
        count    = def.count,
        get      = def.get,
        get_one  = def.get_one,
        set_one  = def.set_one,
        add      = def.add,
        remove   = def.remove,
        api_base = def.api_base or 1,
        indexed_by = def.indexed_by,
        comment  = def.comment,
    }
end

---Builds an action descriptor: an operation that is not a field write.
function D.action(def)
    assert(type(def.name) == "string", "editor: action needs a name")
    assert(type(def.owner) == "string", "editor: action needs an owner class name")
    return {
        name    = def.name,
        owner   = def.owner,
        method  = def.method or def.name,
        args    = def.args or {},
        returns = def.returns,
        comment = def.comment,
    }
end

---Argument descriptor for an action.
function D.arg(name, type_name, opts)
    opts = opts or {}
    return {
        name     = name,
        type     = type_name,
        optional = opts.optional or nil,
        target   = opts.target,
        enum     = opts.enum,
        shape    = opts.shape,
        comment  = opts.comment,
    }
end

return D
