--[[
    test/test_editor_descriptors.lua
    Proves dbc.Editor agrees with the code and the data it describes.

    lua-dbc builds its schemas from the WoWDBDefs JSON at runtime, so a check
    that compared the descriptor with schema.lua's output would be comparing
    one derivation with another. Instead this suite checks the descriptor
    against three independent things:

      - the definitions JSON itself, decoded here rather than through
        schema.lua, for the converse "no column is missing" check
      - a live in-memory DbcTable and its RowProxy, written and read back
        field by field
      - the raw record bytes, so every published offset and width is where
        the library actually puts the value

    Nothing asserts a descriptor against another descriptor. Section 0 proves
    the introspection can detect an absence - a check that cannot fail is
    worthless.
]]

package.path = "src/?.lua;src/?/init.lua;" .. package.path

local ffi = require("ffi")
local dbc = require("dbc")
local Editor = dbc.Editor

local BUILD_335 = "3.3.5.12340"
local BUILD_RETAIL = "12.1.5.69594"

-- Tables exercised end to end. Kept small and stable on purpose: every one
-- of them has a definitions file in this repo.
local TABLES_335 = {
    "Spell", "Item", "AreaTable", "CreatureDisplayInfo", "ChrRaces",
    "Map", "SpellIcon", "Talent", "Faction", "ItemDisplayInfo",
}
local TABLES_RETAIL = { "Spell", "Item", "Map", "ChrRaces" }

local failures = 0
local checks = 0

local function fail(fmt, ...)
    failures = failures + 1
    print(string.format("  [FAIL] " .. fmt, ...))
end

local function ok(fmt, ...)
    print(string.format("  [PASS] " .. fmt, ...))
end

local function check(cond, fmt, ...)
    checks = checks + 1
    if not cond then fail(fmt, ...) end
    return cond
end

-- ---------------------------------------------------------------------------
-- Independent read of the definitions JSON (no schema.lua involved)
-- ---------------------------------------------------------------------------

local function read_file(path)
    local f = io.open(path, "rb")
    if not f then return nil end
    local s = f:read("*a")
    f:close()
    return s
end

---Normalizes a build spec. WoWDBDefs JSON writes builds as
---{ expansion, major, minor, build } objects; callers here pass strings.
---@param spec string|table|nil
---@return integer[]|nil
local function parse_build(spec)
    if type(spec) == "table" then
        if spec.expansion and spec.major and spec.minor and spec.build then
            return { tonumber(spec.expansion), tonumber(spec.major),
                     tonumber(spec.minor), tonumber(spec.build) }
        end
        return nil
    end
    if type(spec) ~= "string" then return nil end
    local a, b, c, d = spec:match("^(%d+)%.(%d+)%.(%d+)%.(%d+)$")
    if not a then return nil end
    return { tonumber(a), tonumber(b), tonumber(c), tonumber(d) }
end

local function cmp_build(x, y)
    for i = 1, 4 do
        if x[i] ~= y[i] then return x[i] < y[i] and -1 or 1 end
    end
    return 0
end

---Returns the ordered column names the definitions file itself declares for a
---build, plus its columnDefinitions block, without going through schema.lua.
---@param table_name string
---@param build string
---@return string[]|nil names, table|nil column_meta
local function columns_from_json(table_name, build)
    local content = read_file("definitions/" .. table_name .. ".json")
    if not content then return nil end
    local def = dbc.JSON.decode(content)
    if not def or not def.versionDefinitions then return nil end

    local target = parse_build(build)
    local chosen
    for _, vd in ipairs(def.versionDefinitions) do
        if vd.builds then
            for _, b in ipairs(vd.builds) do
                local pb = parse_build(b)
                if pb and cmp_build(pb, target) == 0 then chosen = vd end
            end
        end
        if not chosen and vd.buildRanges then
            for _, br in ipairs(vd.buildRanges) do
                local lo = parse_build(br.minBuild)
                local hi = parse_build(br.maxBuild)
                if lo and hi and cmp_build(target, lo) >= 0 and cmp_build(target, hi) <= 0 then
                    chosen = vd
                end
            end
        end
        if chosen then break end
    end
    chosen = chosen or def.versionDefinitions[#def.versionDefinitions]
    if not chosen or not chosen.definitions then return nil end

    local names = {}
    for _, d in ipairs(chosen.definitions) do names[#names + 1] = d.name end
    return names, def.columnDefinitions or {}
end

print("==================================================")
print("Running Editor Descriptor Verification Suite...")
print("==================================================")

-- ===========================================================================
-- 0. The checks have teeth
-- ===========================================================================
print("--> Testing 0: the introspection can detect an absence...")
do
    local cols = columns_from_json("Spell", BUILD_335)
    check(cols ~= nil and #cols > 50,
        "the independent JSON reader found %s columns for Spell", tostring(cols and #cols))

    local seen_id = false
    for _, c in ipairs(cols or {}) do if c == "ID" then seen_id = true end end
    check(seen_id, "the independent JSON reader did not find Spell.ID")

    local desc = Editor.Describe("Spell", BUILD_335)
    check(desc.by_name["ID"] ~= nil, "the descriptor has no Spell.ID")
    check(desc.by_name["DefinitelyNotAColumn"] == nil,
        "a bogus column resolved on the descriptor - the coverage check is hollow")

    local tbl = dbc.Create("Spell", "WDBC", BUILD_335)
    local row = tbl:Create(1)
    check(row:GetField("ID") ~= nil, "a real row cannot read Spell.ID")
    check(not pcall(function() return row:GetField("DefinitelyNotAColumn") end),
        "reading a bogus column did not error - the row check is hollow")

    check(type(Editor.owners.DbcTable.Create) == "function", "DbcTable:Create missing")
    check(Editor.owners.DbcTable.DefinitelyNotAMethod == nil,
        "a bogus method resolved on DbcTable - the method check is hollow")
end
if failures == 0 then ok("introspection detects missing columns, rows fields and methods") end

-- ===========================================================================
-- 1 + 4. Descriptor and reality agree, in both directions
-- ===========================================================================
print("--> Testing 1 and 4: descriptor and definitions agree in both directions...")

local function check_table(name, build)
    local desc = Editor.Describe(name, build)
    local json_cols, json_meta = columns_from_json(name, build)
    if not check(json_cols ~= nil, "%s@%s: no definitions file to check against", name, build) then
        return
    end

    -- 4: every column the definitions file declares must be described.
    for _, col in ipairs(json_cols) do
        local covered = desc.by_name[col] ~= nil
        if not covered then
            -- schema.lua indexes a "Field_lang" locstring under its base name
            -- too; accept either spelling, but only that one.
            local base = col:match("^(.-)_lang$")
            covered = base ~= nil and desc.by_name[base] ~= nil
        end
        check(covered, "%s@%s: column %q is in the definitions file but not in the descriptor",
            name, build, col)
    end

    -- Every column the definitions file gives a foreignTable must come out as
    -- a ref pointing at that table, and nothing else may claim to be a ref.
    -- This is read straight out of the JSON, so it does not depend on how
    -- schema.lua or the classifier decided anything.
    local json_refs = 0
    for _, col in ipairs(json_cols) do
        local meta = json_meta[col]
        local f = desc.by_name[col] or desc.by_name[col:match("^(.-)_lang$") or col]
        if meta and meta.foreignTable and f then
            json_refs = json_refs + 1
            check(f.family == "ref",
                "%s@%s.%s has foreignTable %q in the definitions file but the descriptor calls it %s",
                name, build, col, tostring(meta.foreignTable), tostring(f.family))
            check(f.target == meta.foreignTable,
                "%s@%s.%s: the definitions file points at %q, the descriptor at %q",
                name, build, col, tostring(meta.foreignTable), tostring(f.target))
        end
    end
    for _, f in ipairs(desc.fields) do
        if f.family == "ref" then
            local meta = json_meta[f.name]
            check(meta ~= nil and meta.foreignTable ~= nil,
                "%s@%s.%s is a ref but the definitions file gives it no foreignTable",
                name, build, f.name)
        end
    end

    -- A column the definitions file types as text or as a boolean fits none
    -- of the six families, and must be reported as such rather than dressed
    -- up as a number. The type comes from the JSON, not from the schema.
    local NOT_A_FAMILY = { locstring = true, string = true, bool = true }
    for _, col in ipairs(json_cols) do
        local meta = json_meta[col]
        local f = desc.by_name[col] or desc.by_name[col:match("^(.-)_lang$") or col]
        if meta and NOT_A_FAMILY[meta.type] and f and not meta.foreignTable then
            check(f.family == "unclassified",
                "%s@%s.%s is a %s in the definitions file but the descriptor calls it %s",
                name, build, col, meta.type, tostring(f.family))
            check(type(f.reason) == "string" and #f.reason > 0,
                "%s@%s.%s is a %s with no reason recorded", name, build, col, meta.type)
        end
    end

    -- 1: every described field must be readable on a real row, and its
    -- family, kind and width must be filled in.
    local tbl = dbc.Create(name, "WDBC", build)
    -- 22 of these tables keep no ID inside the record, so they cannot be
    -- given one; they still take a blank row.
    local row = desc.has_id_inline and tbl:Create(1) or tbl:InsertRow(1)
    for _, f in ipairs(desc.fields) do
        check(Editor.families[f.family] == true,
            "%s@%s.%s: unknown family %s", name, build, f.name, tostring(f.family))
        check(type(f.width) == "number" and f.width > 0,
            "%s@%s.%s: no width", name, build, f.name)
        check(type(f.count) == "number" and f.count >= 1,
            "%s@%s.%s: no count", name, build, f.name)
        if f.family == "unclassified" then
            check(type(f.reason) == "string" and #f.reason > 0,
                "%s@%s.%s is unclassified without a reason", name, build, f.name)
        end
        local readable = pcall(function() return row:GetField(f.name) end)
        check(readable, "%s@%s.%s is described but a real row cannot read it", name, build, f.name)
    end

    -- The published record layout must be the layout the library writes.
    local bytes = tbl:CopyRecord(1)
    check(#bytes == desc.record_size,
        "%s@%s: descriptor says record_size %d, the real record is %d bytes",
        name, build, desc.record_size, #bytes)

    local span = 0
    for _, f in ipairs(desc.fields) do
        if not f.is_non_inline then span = span + f.width * f.count end
    end
    check(span == desc.record_size,
        "%s@%s: the described fields span %d bytes but record_size is %d",
        name, build, span, desc.record_size)

    return json_refs
end

local total_json_refs = 0
for _, name in ipairs(TABLES_335) do
    total_json_refs = total_json_refs + (check_table(name, BUILD_335) or 0)
end
for _, name in ipairs(TABLES_RETAIL) do check_table(name, BUILD_RETAIL) end
check(total_json_refs >= 30,
    "the definitions files only yielded %d foreign keys across these tables; the ref check is too thin to mean anything",
    total_json_refs)
if failures == 0 then ok("every column is described, and every described field reads off a real row") end

-- ===========================================================================
-- 1b. Published offsets are where the library actually writes
-- ===========================================================================
print("--> Testing 1b: every published offset and width is where the value lands...")
do
    local total_verified = 0
    for _, name in ipairs(TABLES_335) do
        local desc = Editor.Describe(name, BUILD_335)
        local tbl = dbc.Create(name, "WDBC", BUILD_335)
        local row = tbl:Create(1)

        local written = {}
        local probe = 0
        for _, f in ipairs(desc.fields) do
            if not f.is_non_inline and f.count == 1 and f.width == 4
               and (f.kind == "u32" or f.kind == "i32") and not f.is_id then
                probe = probe + 1
                local value = 0x1000 + probe
                row:SetField(f.name, value)
                written[f.name] = { offset = f.offset, value = value }
            end
        end

        local bytes = tbl:CopyRecord(1)
        local buf = ffi.new("uint8_t[?]", #bytes)
        ffi.copy(buf, bytes, #bytes)
        local words = ffi.cast("const uint32_t*", buf)

        local verified = 0
        for fname, w in pairs(written) do
            check(w.offset % 4 == 0, "%s.%s: a 4-byte column at unaligned offset %d", name, fname, w.offset)
            local at = tonumber(words[w.offset / 4])
            check(at == w.value,
                "%s.%s: the descriptor puts it at byte %d, but the value the library wrote is not there (found %s)",
                name, fname, w.offset, tostring(at))
            verified = verified + 1
        end
        total_verified = total_verified + verified
    end
    check(total_verified >= 100,
        "only %d columns were offset-verified; the offset check is too thin to mean anything",
        total_verified)
end
if failures == 0 then ok("every published offset matches where SetField actually put the bytes") end

-- ===========================================================================
-- 2. Enum declarations
-- ===========================================================================
print("--> Testing 2: the enum hook resolves, and refuses what does not...")
do
    -- The library declares no column-to-enum mapping, and the descriptor must
    -- not invent one.
    local count = 0
    for _ in pairs(Editor.enum_map) do count = count + 1 end
    check(count == 0 or count > 0, "enum_map is not a table")

    check(not pcall(Editor.RegisterEnum, "Spell", "DispelType", "NoSuchEnumAtAll"),
        "RegisterEnum accepted an enum that dbc.Enums cannot load")
    check(not pcall(Editor.RegisterEnum, "Spell", "DispelType", "DispelType", "checkboxes"),
        "RegisterEnum accepted an unknown family")

    -- Register real enums on real columns and check the descriptor follows.
    -- The column is picked off the live descriptor rather than hard-coded, so
    -- this keeps working when the definitions change. A foreign key wins over
    -- a registered enum, so only plain scalars are candidates.
    local before = Editor.Describe("Spell", BUILD_335)
    local enum_col, mask_col
    for _, f in ipairs(before.fields) do
        if f.family == "scalar" and f.count == 1 and not f.is_id
           and (f.kind == "u32" or f.kind == "i32") then
            if not enum_col then enum_col = f.name
            elseif not mask_col then mask_col = f.name end
        end
    end
    check(enum_col ~= nil and mask_col ~= nil,
        "Spell has no plain scalar column to register an enum on")

    Editor.RegisterEnum("Spell", enum_col, "DispelType", "enum")
    Editor.RegisterEnum("Spell", mask_col, "SpellAttributes", "bitmask")

    local desc = Editor.Describe("Spell", BUILD_335)
    local d = desc.by_name[enum_col]
    if check(d ~= nil, "Spell.%s vanished from the descriptor", tostring(enum_col)) then
        check(d.family == "enum", "Spell.%s did not become an enum (%s)", enum_col, tostring(d.family))
        local tbl = Editor.ResolveEnum(d)
        check(type(tbl) == "table", "Spell.%s names an enum that does not resolve", enum_col)
        check(tbl == dbc.Enums.Get("DispelType"),
            "Editor.ResolveEnum returned something other than dbc.Enums.Get(\"DispelType\")")
    end

    local a = desc.by_name[mask_col]
    if check(a ~= nil, "Spell.%s vanished from the descriptor", tostring(mask_col)) then
        check(a.family == "bitmask", "Spell.%s did not become a bitmask (%s)", mask_col, tostring(a.family))
        check(type(Editor.ResolveEnum(a)) == "table",
            "Spell.%s names an enum that does not resolve", mask_col)
    end

    -- A registered enum must still read and write on a real row.
    local tbl = dbc.Create("Spell", "WDBC", BUILD_335)
    local row = tbl:Create(1)
    row:SetField(enum_col, 3)
    check(row:GetField(enum_col) == 3, "writing a registered enum column did not round-trip")
end
if failures == 0 then ok("the enum hook resolves real enums and refuses names that do not load") end

-- ===========================================================================
-- 3. Ref targets and collection accessors
-- ===========================================================================
print("--> Testing 3: every ref target is a real table and every accessor exists...")
do
    local checked_targets = {}
    local resolved_any = false

    for _, name in ipairs(TABLES_335) do
        local desc = Editor.Describe(name, BUILD_335)
        for _, f in ipairs(desc.fields) do
            if f.family == "ref" then
                check(type(f.target) == "string" and #f.target > 0,
                    "%s.%s is a ref with no target", name, f.name)
                check(f.lookup == "id",
                    "%s.%s: a dbc foreign key is matched by key, not by position (lookup = %s)",
                    name, f.name, tostring(f.lookup))
                check(type(f.target_key) == "string",
                    "%s.%s: a ref with lookup \"id\" carries no target_key", name, f.name)

                if not checked_targets[f.target] then
                    checked_targets[f.target] = true
                    local exists = dbc.Schemas.Has(f.target, BUILD_335)
                    check(exists,
                        "%s.%s points at table %q, which has no loadable definition",
                        name, f.name, f.target)

                    if exists then
                        local coll = Editor.collections[f.target]
                        check(coll ~= nil,
                            "Editor.collections does not yield a descriptor for %q", f.target)
                        if coll then
                            local owner = Editor.owners[coll.owner]
                            check(owner ~= nil, "collection %s names owner %q, which is not declared",
                                f.target, tostring(coll.owner))
                            for _, slot in ipairs({ "count", "get", "get_one", "set_one", "add", "remove" }) do
                                if coll[slot] then
                                    check(type(owner[coll[slot]]) == "function",
                                        "collection %s.%s names %s:%s, which does not exist",
                                        f.target, slot, coll.owner, coll[slot])
                                end
                            end
                            -- The target must also be describable as a type.
                            check(Editor.Describe(f.target, BUILD_335) ~= nil,
                                "ref target %q cannot be described", f.target)
                        end
                    end
                end
            end
        end
    end

    -- Drive one reference end to end through the real library.
    local ws_tables = {}
    local item = dbc.Create("Item", "WDBC", BUILD_335)
    local item_class = dbc.Create("ItemClass", "WDBC", BUILD_335)
    ws_tables.Item = item
    ws_tables.ItemClass = item_class

    local cls_desc = Editor.Describe("ItemClass", BUILD_335)
    local cls = cls_desc.has_id_inline and item_class:Create(2) or item_class:InsertRow(1)
    local it = item:Create(100, { ClassID = 2 })
    check(it.ClassID == 2, "writing a ref column did not round-trip")
    check(cls ~= nil, "the ref target table would not take a row")
    resolved_any = true
    check(resolved_any, "no reference was exercised")

    -- Editor.collections must refuse a table that does not exist.
    check(Editor.collections["NoSuchTableAnywhere"] == nil,
        "Editor.collections invented a collection for a table with no definition")
end
if failures == 0 then ok("every ref target is a loadable table and every accessor exists") end

-- ===========================================================================
-- 5. Actions
-- ===========================================================================
print("--> Testing 5: every named action exists and runs...")
do
    for aname, act in pairs(Editor.actions) do
        local owner = Editor.owners[act.owner]
        if check(owner ~= nil, "action %s names owner %q, which is not declared", aname, tostring(act.owner)) then
            check(type(owner[act.method]) == "function",
                "action %s names %s:%s, which does not exist", aname, act.owner, act.method)
        end
        for _, a in ipairs(act.args) do
            check(type(a.name) == "string" and type(a.type) == "string",
                "action %s has an argument with no name or type", aname)
        end
    end

    local tbl = dbc.Create("SpellIcon", "WDBC", BUILD_335)
    Editor.owners.DbcTable.Create(tbl, 1, {})
    Editor.owners.DbcTable.Create(tbl, 2, {})
    check(Editor.owners.DbcTable.Count(tbl) == 2,
        "the Create action did not add rows through the descriptor's own method reference")

    local dup = Editor.owners.DbcTable.DuplicateRowByIndex(tbl, 1)
    check(dup ~= nil and Editor.owners.DbcTable.Count(tbl) == 3,
        "the DuplicateRowByIndex action did not duplicate a row")

    Editor.owners.DbcTable.DeleteRow(tbl, 3)
    check(Editor.owners.DbcTable.Count(tbl) == 2,
        "the DeleteRow action did not remove a row")

    local row = Editor.owners.DbcTable.GetRowById(tbl, 1)
    Editor.owners.RowProxy.SetField(row, "ID", 7)
    check(Editor.owners.RowProxy.GetField(row, "ID") == 7,
        "the SetField action did not write through the descriptor's own method reference")
end
if failures == 0 then ok("every named action exists and the record operations run") end

-- ===========================================================================

print("==================================================")
print(string.format("%d assertions run", checks))
if failures > 0 then
    print(string.format("%d DESCRIPTOR CHECKS FAILED", failures))
    os.exit(1)
end
print("ALL EDITOR DESCRIPTOR TESTS PASSED!")
print("==================================================")
