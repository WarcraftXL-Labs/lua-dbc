--[[
    test/test_all.lua
    End-to-end integration and unit tests for lua-dbc.

    Usage:
        luajit test/test_all.lua
        luajit test/test_all.lua --verbose

    The suite exercises:
      - Schema and enum resolution
      - Table creation, custom IDs, auto-increment, cloning
      - Primary-key indexing and direct indexing via tbl[id]
      - LINQ-style query pipelines
      - WDBC and WDB2 binary roundtrips (including copy tables)
      - Relations catalog and cascading FK creation
      - Format sniffer magic detection
      - Dynamic DBDefs JSON schema loading
]]

-- ---------------------------------------------------------------------------
-- Path setup
-- ---------------------------------------------------------------------------

-- Ensure the source tree is on package.path. When installed via LuaRocks,
-- remove this line so the packaged modules are used instead.
package.path = "src/?.lua;src/?/init.lua;" .. package.path

local dbc = require("dbc")
local ffi = require("ffi")

-- ---------------------------------------------------------------------------
-- Tiny assertion helpers
-- ---------------------------------------------------------------------------

local function assert_eq(actual, expected, msg)
    if actual ~= expected then
        error(string.format(
            "Assertion failed: expected %s, got %s. (%s)",
            tostring(expected), tostring(actual), msg or ""))
    end
end

local function assert_true(val, msg)
    if not val then
        error(string.format(
            "Assertion failed: expected true, got %s. (%s)",
            tostring(val), msg or ""))
    end
end

local function assert_not_nil(val, msg)
    if val == nil then
        error(string.format(
            "Assertion failed: expected non-nil value. (%s)", msg or ""))
    end
end

-- ---------------------------------------------------------------------------
-- Runner
-- ---------------------------------------------------------------------------

local CURRENT_TEST = nil
local FAILED = 0

local function run_test(name, fn)
    CURRENT_TEST = name
    print(("[Test] %s"):format(name))
    local ok, err = pcall(fn)
    if ok then
        print("  -> Passed")
    else
        FAILED = FAILED + 1
        print("  !! FAILED: " .. tostring(err))
    end
end

-- ---------------------------------------------------------------------------
-- Setup: temporary workspace directory
-- ---------------------------------------------------------------------------

local TMP_ROOT = "test/tmp"
local TMP_WS = TMP_ROOT .. "/test_ws"

local is_windows = package.config:sub(1, 1) == "\\"

local function make_dirs()
    if is_windows then
        local base = TMP_WS:gsub("/", "\\")
        os.execute('if not exist "' .. base .. '\\source" mkdir "' .. base .. '\\source" >nul 2>nul')
        os.execute('if not exist "' .. base .. '\\output" mkdir "' .. base .. '\\output" >nul 2>nul')
    else
        os.execute('mkdir -p "' .. TMP_WS .. '/source" 2>/dev/null')
        os.execute('mkdir -p "' .. TMP_WS .. '/output" 2>/dev/null')
    end
end

local function cleanup_dirs()
    if is_windows then
        os.execute('rmdir /s /q "' .. TMP_ROOT:gsub("/", "\\") .. '" 2>nul')
    else
        os.execute('rm -rf "' .. TMP_ROOT .. '" 2>/dev/null')
    end
end

make_dirs()

-- ---------------------------------------------------------------------------
-- Test 1 — Schema and enum resolution
-- ---------------------------------------------------------------------------

run_test("Schemas and enums", function()
    local spell_schema = dbc.Schemas.Spell
    assert_not_nil(spell_schema, "Spell schema should be loadable")
    assert_eq(spell_schema.name, "Spell", "Schema name mismatch")

    local item_quality = dbc.Enums.ItemQuality
    assert_not_nil(item_quality, "ItemQuality enum should be loadable")
    assert_eq(item_quality.PURPLE, 4, "ItemQuality.PURPLE should be 4")

    local spell_attrs = dbc.Enums.SpellAttributes
    assert_not_nil(spell_attrs, "SpellAttributes enum should be loadable")
    assert_not_nil(spell_attrs.flags, "SpellAttributes.flags should exist")
    assert_eq(spell_attrs.flags.IS_PASSIVE, 64,
        "IS_PASSIVE should be bit 6 (1 << 6 == 64)")
end)

-- ---------------------------------------------------------------------------
-- Test 1b — Field widths
--
-- A field's width is what tells a caller how many bytes the field occupies,
-- which is what anything taking a raw snapshot of one needs. Checked against
-- the record layout rather than against a table of constants: the widths are
-- right exactly when the offsets they produce are the offsets the schema
-- assigned.
-- ---------------------------------------------------------------------------

run_test("A field publishes the width of one element", function()
    local schema = dbc.Schemas.Get("Spell", "3.3.5.12340")

    local expected = 0
    for _, f in ipairs(schema.fields) do
        assert_not_nil(f.width, "field " .. f.name .. " has no width")
        assert_true(f.width > 0, "field " .. f.name .. " has width " .. tostring(f.width))
        assert_eq(f.offset, expected, "field " .. f.name .. " starts elsewhere")

        if not f.is_non_inline then
            expected = expected + f.width * f.count
        end
    end

    assert_eq(schema.record_size, expected,
        "the widths do not add up to the record size")

    -- A pre-Cataclysm localized string is 16 string offsets and a flag word,
    -- not the 4 bytes its declared size suggests.
    assert_eq(schema.by_name["Name_lang"].width, 68, "loc field width")
    assert_eq(schema.by_name["ID"].width, 4, "u32 field width")
end)

-- ---------------------------------------------------------------------------
-- Test 2 — Table creation, custom IDs, auto-increment, cloning
-- ---------------------------------------------------------------------------

local icon_table  -- shared across subsequent tests
local icon1       -- kept for later assertions

run_test("Table creation and row mutation", function()
    icon_table = dbc.Create("SpellIcon")
    assert_eq(icon_table:Count(), 0, "Fresh table should be empty")

    icon1 = icon_table:Create(100)
        :SetTextureFilename("Interface\\Icons\\Spell_Fire_Fireball")

    assert_eq(icon_table:Count(), 1, "Count after 1 row")
    assert_eq(icon1:GetID(), 100, "Row ID mismatch")
    assert_eq(icon1:GetTextureFilename(),
        "Interface\\Icons\\Spell_Fire_Fireball", "Texture getter mismatch")

    local icon2 = icon_table:Create(200)
        :SetTextureFilename("Interface\\Icons\\Spell_Frost_Frostbolt")

    assert_eq(icon_table:Count(), 2, "Count after 2 rows")
    assert_eq(icon2:GetID(), 200, "Second row ID mismatch")

    -- Auto-increment uses max_id + 1
    local icon3 = icon_table:CreateNext({
        TextureFilename = "Interface\\Icons\\Spell_Nature_Lightning",
    })
    assert_eq(icon3:GetID(), 201, "Auto-increment ID should be max + 1")
    assert_eq(icon3:GetTextureFilename(),
        "Interface\\Icons\\Spell_Nature_Lightning",
        "Auto-increment field mismatch")

    -- Clone from an existing row with field override
    local icon4 = icon_table:CloneRow(100, 300, {
        TextureFilename = "Interface\\Icons\\Spell_Fire_Pyroblast",
    })
    assert_eq(icon4:GetID(), 300, "Cloned row ID mismatch")
    assert_eq(icon4:GetTextureFilename(),
        "Interface\\Icons\\Spell_Fire_Pyroblast", "Cloned override mismatch")
end)

-- ---------------------------------------------------------------------------
-- Test 3 — Primary-key indexing and direct tbl[id] access
-- ---------------------------------------------------------------------------

run_test("Primary-key lookups and direct indexing", function()
    assert_true(icon_table:Has(100), "Has(100)")
    assert_true(icon_table:Has(200), "Has(200)")
    assert_true(icon_table:Has(201), "Has(201)")
    assert_true(icon_table:Has(300), "Has(300)")
    assert_true(not icon_table:Has(999), "Has(999) should be false")

    local found = icon_table:GetRowById(200)
    assert_eq(found:GetTextureFilename(),
        "Interface\\Icons\\Spell_Frost_Frostbolt", "GetRowById mismatch")

    local direct = icon_table[100]
    assert_eq(direct:GetTextureFilename(),
        "Interface\\Icons\\Spell_Fire_Fireball",
        "Direct tbl[100] indexing mismatch")
end)

-- ---------------------------------------------------------------------------
-- Test 4 — LINQ-style query pipeline
-- ---------------------------------------------------------------------------

run_test("LINQ pipeline", function()
    local fire_icons = icon_table:Query()
        :Where(function(r)
            return string.find(r:GetTextureFilename(), "Fire") ~= nil
        end)
        :ToList()
    assert_eq(#fire_icons, 2, "Expected two Fire icons")

    local max_id = icon_table:Query():Max(function(r) return r:GetID() end)
    assert_eq(max_id, 300, "Max ID mismatch")

    local min_id = icon_table:Query():Min(function(r) return r:GetID() end)
    assert_eq(min_id, 100, "Min ID mismatch")

    -- FirstOrDefault short-circuit; must not materialize the whole table.
    local first = icon_table:Query():FirstOrDefault(
        function(r) return r:GetID() == 200 end, nil)
    assert_not_nil(first, "FirstOrDefault should find row 200")
    assert_eq(first:GetID(), 200, "FirstOrDefault returned wrong row")
end)

-- ---------------------------------------------------------------------------
-- Test 5 — WDBC serialization roundtrip
-- ---------------------------------------------------------------------------

run_test("WDBC serialization roundtrip", function()
    local serialized = icon_table:GetFile():Serialize()
    assert_true(#serialized > 0, "Serialized payload should be non-empty")

    local restored_file  = dbc.File.new(serialized, dbc.Schemas.SpellIcon, "<test>")
    local restored_table = dbc.Table.new(restored_file)

    assert_eq(restored_table:Count(), 4, "Restored physical row count")

    local restored_row = restored_table:FindById(300)
    assert_not_nil(restored_row, "Restored row 300 should exist")
    assert_eq(restored_row:GetTextureFilename(),
        "Interface\\Icons\\Spell_Fire_Pyroblast", "Restored field mismatch")
end)

-- ---------------------------------------------------------------------------
-- Test 6 — Relations catalog and cascading creation
-- ---------------------------------------------------------------------------

run_test("Relations catalog and cascading creation", function()
    local spell_rels = dbc.Relations.Get("Spell")
    assert_true(#spell_rels > 0, "Spell should have outbound relations")

    local inbound_icons = dbc.Relations.GetInbound("SpellIcon")
    assert_true(#inbound_icons > 0,
        "SpellIcon should have inbound relations (from Spell, etc.)")

    -- Build a workspace at a known build so relations and schemas agree.
    local workspace = dbc.Workspace({
        source = TMP_WS .. "/source",
        out    = TMP_WS .. "/output",
        build  = "3.3.5.12340",
    })

    -- Pre-register the in-memory icon table so cascading creation finds it.
    workspace.tables["SpellIcon"] = icon_table

    local spell_table = workspace:Create("Spell")
    local test_spell = spell_table:Create(500)
        :SetName("Apocalypse", "enGB")

    -- Cascading creation: creates a SpellIcon row and links SpellIconID.
    local created_icon = test_spell:CreateRelated("SpellIcon", {
        TextureFilename = "Interface\\Icons\\Spell_Fire_Apocalypse",
    })
    assert_not_nil(created_icon, "CreateRelated should return a row")
    assert_eq(test_spell:GetSpellIconID(), created_icon:GetID(),
        "Spell foreign key should point to the created icon")
    assert_eq(created_icon:GetTextureFilename(),
        "Interface\\Icons\\Spell_Fire_Apocalypse",
        "Created icon field mismatch")

    -- FK navigation
    local fetched_icon = test_spell:GetSpellIcon()
    assert_not_nil(fetched_icon, "GetSpellIcon should resolve the FK")
    assert_eq(fetched_icon:GetID(), created_icon:GetID(),
        "Resolved icon ID mismatch")

    -- Save to the workspace output directory
    local bytes = spell_table:Save()
    assert_true(bytes > 0, "Save should write bytes")

    local saved = io.open(TMP_WS .. "/output/Spell.dbc", "rb")
    assert_not_nil(saved, "Saved Spell.dbc should exist on disk")
    if saved then saved:close() end
end)

-- ---------------------------------------------------------------------------
-- Test 7 — Format sniffer
-- ---------------------------------------------------------------------------

run_test("Format sniffer magic detection", function()
    local sniffer = dbc.Formats.Sniffer
    local magics = {
        "WDBC", "WDB2", "WDB3", "WDB4", "WDB5", "WDB6",
        "WDC1", "WDC2", "WDC3", "WDC4", "WDC5",
    }

    for _, m in ipairs(magics) do
        -- Pad to at least 4 bytes so the sniffer does not confuse the input
        -- with a file path. The magic is the first 4 bytes.
        local detected_magic, format_name = sniffer.Detect(m .. "\0\0\0\0")
        assert_eq(detected_magic, m, "Magic mismatch for " .. m)
        assert_eq(format_name, m, "Format name mismatch for " .. m)
        assert_true(sniffer.IsSupported(m), "IsSupported false for " .. m)
    end
end)

-- ---------------------------------------------------------------------------
-- Test 8 — WDB2 creation, copy table, serialization roundtrip
-- ---------------------------------------------------------------------------

run_test("WDB2 copy table and roundtrip", function()
    local wdb2_tbl = dbc.Create("SpellIcon", "WDB2")
    assert_eq(wdb2_tbl:GetFile().format, "WDB2", "Format should be WDB2")

    wdb2_tbl:Create(10, { TextureFilename = "Interface\\Icons\\Inv_Sword_01" })
    wdb2_tbl:Create(20, { TextureFilename = "Interface\\Icons\\Inv_Shield_01" })

    -- Copy-table entry: id 30 is a virtual copy of id 10.
    wdb2_tbl:GetFile():AddCopy(30, 10)
    wdb2_tbl:RebuildIndex()

    assert_true(wdb2_tbl:Has(30), "Copy-table ID 30 should be indexed")

    local copy_row = wdb2_tbl:GetRowById(30)
    assert_eq(copy_row:GetID(), 30,
        "Copy row should expose its virtual ID via _id_override")
    assert_eq(copy_row:GetTextureFilename(),
        "Interface\\Icons\\Inv_Sword_01",
        "Copy row should inherit the source row's fields")

    local serialized_wdb2 = wdb2_tbl:GetFile():Serialize()
    local reloaded_file = dbc.File.new(serialized_wdb2, dbc.Schemas.SpellIcon, "<test_wdb2>")
    local reloaded_tbl  = dbc.Table.new(reloaded_file)

    assert_eq(reloaded_file.format, "WDB2", "Reloaded format should be WDB2")
    assert_eq(reloaded_tbl:Count(), 2, "Reloaded physical row count")

    assert_true(reloaded_tbl:Has(30),
        "Reloaded table should still index the copy-table ID 30")
    assert_eq(reloaded_tbl:GetRowById(30):GetTextureFilename(),
        "Interface\\Icons\\Inv_Sword_01",
        "Reloaded copy-table row field mismatch")
end)

-- ---------------------------------------------------------------------------
-- Test 9 — Dynamic DBDefs JSON schema loading
-- ---------------------------------------------------------------------------

run_test("Dynamic DBDefs JSON schema loading", function()
    -- Write a minimal but realistic DBDefs JSON to definitions/ and load it.
    if is_windows then
        os.execute('if not exist "definitions" mkdir "definitions" >nul 2>nul')
    else
        os.execute('mkdir -p "definitions" 2>/dev/null')
    end

    local sample_json = [[{
  "columnDefinitions": {
    "ID":          { "type": "int" },
    "Name_lang":   { "type": "locstring" },
    "SpellIconID": { "type": "int", "foreignTable": "SpellIcon", "foreignColumn": "ID" }
  },
  "versionDefinitions": [
    {
      "builds": [ "12.1.5.69594" ],
      "layoutHashes": [ "ABCD1234" ],
      "definitions": [
        { "name": "ID",           "size": 32, "isID": true, "isNonInline": true },
        { "name": "Name_lang",    "size": 32 },
        { "name": "SpellIconID",  "size": 32 }
      ]
    }
  ]
}]]

    local path = "definitions/TestTable.json"
    local f = io.open(path, "wb")
    f:write(sample_json)
    f:close()

    -- Load by layout hash so the loader selects the version we just wrote.
    local loaded_schema = dbc.Schemas.Get("TestTable", "ABCD1234")
    assert_not_nil(loaded_schema, "Schema should load from the JSON")
    assert_eq(loaded_schema.name, "TestTable", "Schema name mismatch")

    assert_not_nil(loaded_schema.by_name["Name_lang"],
        "Schema should expose the Name_lang field")
    assert_eq(loaded_schema.by_name["Name_lang"].kind, "loc",
        "Name_lang should map to kind 'loc'")

    assert_true(loaded_schema.by_name["ID"].is_non_inline,
        "ID should be flagged as non-inline")

    assert_eq(loaded_schema.by_name["SpellIconID"].foreign_table, "SpellIcon",
        "SpellIconID should carry foreignTable metadata")

    os.remove(path)
end)

run_test("LINQ streaming and generator short-circuiting", function()
    -- 1. Infinite generator stops at FirstOrDefault
    local counter = 0
    local function infinite_gen()
        counter = counter + 1
        return counter
    end

    local q = dbc.Query(infinite_gen)
    local first = q:Where(function(x) return x == 42 end):FirstOrDefault()
    assert_eq(first, 42, "Should find 42 from infinite generator")
    assert_eq(counter, 42, "Should only have pulled 42 elements, not hung")

    -- 2. Take(5) stops pulling at 5 items
    local pull_count = 0
    local function large_gen()
        pull_count = pull_count + 1
        return pull_count
    end
    local items = dbc.Query(large_gen):Take(5):ToList()
    assert_eq(#items, 5, "Should have taken 5 items")
    assert_eq(pull_count, 5, "Should only have pulled 5 items from source")

    -- 3. All() short-circuits on first failure
    local all_count = 0
    local function gen_for_all()
        all_count = all_count + 1
        return all_count
    end
    local all_positive = dbc.Query(gen_for_all):All(function(x) return x < 3 end)
    assert_eq(all_positive, false, "All should be false when element 3 is seen")
    assert_eq(all_count, 3, "All should stop immediately at element 3")

    -- 4. Any() short-circuits on first match
    local any_count = 0
    local function gen_for_any()
        any_count = any_count + 1
        return any_count
    end
    local has_four = dbc.Query(gen_for_any):Any(function(x) return x == 4 end)
    assert_eq(has_four, true, "Any should be true for 4")
    assert_eq(any_count, 4, "Any should stop immediately at element 4")
end)

run_test("Build version parsing with letter revisions", function()
    local build_util = require("dbc._build")
    local b1 = build_util.parse("3.3.5a.12340")
    assert_eq(b1.major, 3, "Major mismatch")
    assert_eq(b1.minor, 3, "Minor mismatch")
    assert_eq(b1.patch, 5, "Patch mismatch")
    assert_eq(b1.letter, "a", "Letter mismatch")
    assert_eq(b1.build, 12340, "Build number mismatch")

    local b2 = build_util.parse("3.3.5.12340")
    assert_eq(b2.letter, "", "Letter should be empty for 3.3.5.12340")

    -- Compare
    local cmp = build_util.cmp(b1, b2)
    assert_true(cmp > 0, "3.3.5a should sort after 3.3.5")

    local matched = build_util.matches("3.3.5a.12340", "3.3.5a")
    assert_true(matched, "Pattern match 3.3.5a against 3.3.5a.12340")
end)

run_test("Format sniffer on in-memory buffers", function()
    local wdbc_buf = "WDBC\x05\x00\x00\x00\x02\x00\x00\x00\x08\x00\x00\x00\x01\x00\x00\x00\x00"
    local fmt, magic = dbc.Formats.DetectData(wdbc_buf)
    assert_eq(fmt, "WDBC", "Should detect WDBC format from in-memory string")
    assert_eq(magic, "WDBC", "Magic should be WDBC")

    local wdb2_buf = "WDB2\x05\x00\x00\x00\x02\x00\x00\x00\x08\x00\x00\x00\x01\x00\x00\x00\x00"
    local fmt2, magic2 = dbc.Formats.DetectData(wdb2_buf)
    assert_eq(fmt2, "WDB2", "Should detect WDB2 format from in-memory string")
    assert_eq(magic2, "WDB2", "Magic should be WDB2")
end)

run_test("Modular dbc.enums namespace", function()
    local quality1 = require("dbc.enums.ItemQuality")
    assert_not_nil(quality1, "Should require dbc.enums.ItemQuality")
    assert_eq(quality1.values.PURPLE, 4, "ItemQuality.values.PURPLE should be 4")

    local quality2 = dbc.Enums.ItemQuality
    assert_not_nil(quality2, "Should access via dbc.Enums.ItemQuality")
    assert_eq(quality2.PURPLE, 4, "dbc.Enums.ItemQuality.PURPLE should be 4")

    local quality3 = dbc.Enums.Get("ItemQuality")
    assert_not_nil(quality3, "Should fetch via dbc.Enums.Get")
    assert_eq(quality3.ORANGE, 5, "ItemQuality.ORANGE should be 5")
end)

-- ---------------------------------------------------------------------------
-- Binary fixtures
--
-- The record bytes below were lifted verbatim from a 3.3.5.12340 client file,
-- so the values the tests expect are the client's own, not something this
-- library produced.
-- ---------------------------------------------------------------------------

local function from_hex(hex)
    return (hex:gsub("%s", ""):gsub("%x%x", function(cc)
        return string.char(tonumber(cc, 16))
    end))
end

local function u32le(n)
    return string.char(
        n % 256,
        math.floor(n / 256) % 256,
        math.floor(n / 65536) % 256,
        math.floor(n / 16777216) % 256)
end

---Wraps raw record bytes in a WDBC container the drivers can open.
local function make_wdbc(record_bytes, field_count, record_size, strings)
    strings = strings or "\0"
    return "WDBC"
        .. u32le(#record_bytes / record_size)
        .. u32le(field_count)
        .. u32le(record_size)
        .. u32le(#strings)
        .. record_bytes
        .. strings
end

-- CharBaseInfo: two i8 columns (RaceID, ClassID) in a 2-byte record.
local CHAR_BASE_INFO = from_hex("0101 0102 0104")

-- SpellItemEnchantmentCondition: four i8 arrays of 5 inside a 64-byte record.
-- Logic sits at offset 59, so a 4-byte stride would read past the record end.
local ENCHANT_COND = from_hex([[
    03000000 0400000000 0000000000000000000000000000000000000000
    0500000000 0000000000 0400000000000000000000000000000000000000
    0000000000
    1C000000 0102000000 0000000000000000000000000000000000000000
    0202000000 0203000000 0000000000000000000000000000000000000000
    0100000000
]])

local function open_fixture(name, bytes, record_size)
    local schema = dbc.Schemas.Get(name, "3.3.5.12340")
    local buf = make_wdbc(bytes, schema.field_count, record_size)
    return dbc.Table.new(dbc.File.new(buf, schema, "<fixture:" .. name .. ">"))
end

-- ---------------------------------------------------------------------------
-- Test 14 — Sub-32-bit integer columns
-- ---------------------------------------------------------------------------

run_test("Sub-32-bit integer columns read and write at their own width", function()
    local tbl = open_fixture("CharBaseInfo", CHAR_BASE_INFO, 2)
    assert_eq(tbl:Count(), 3, "Fixture should hold 3 records")

    local row1 = tbl:GetRowByIndex(1)
    assert_eq(row1:GetField("RaceID"), 1, "CharBaseInfo row 1 RaceID")
    assert_eq(row1:GetField("ClassID"), 1, "CharBaseInfo row 1 ClassID")
    assert_eq(tbl:GetRowByIndex(2):GetField("ClassID"), 2, "Row 2 ClassID")
    assert_eq(tbl:GetRowByIndex(3):GetField("ClassID"), 4, "Row 3 ClassID")

    -- A 1-byte column must write 1 byte: ClassID sits directly after RaceID.
    row1:SetField("RaceID", 7)
    assert_eq(row1:GetField("RaceID"), 7, "RaceID after write")
    assert_eq(row1:GetField("ClassID"), 1, "ClassID must survive a RaceID write")
    assert_eq(tbl:GetRowByIndex(2):GetField("RaceID"), 1,
        "Row 2 must survive a write to row 1")

    -- Arrays of a sub-32-bit kind must advance by that kind's width.
    local cond = open_fixture("SpellItemEnchantmentCondition", ENCHANT_COND, 64)
    local c1 = cond:GetRowByIndex(1)
    assert_eq(table.concat(c1:GetField("Lt_operandType"), ","), "4,0,0,0,0",
        "Lt_operandType of record ID 3")
    assert_eq(table.concat(c1:GetField("Operator"), ","), "5,0,0,0,0",
        "Operator of record ID 3")
    assert_eq(table.concat(c1:GetField("Logic"), ","), "0,0,0,0,0",
        "Logic of record ID 3 (offset 59, must stay inside the record)")

    local c2 = cond:GetRowByIndex(2)
    assert_eq(table.concat(c2:GetField("Lt_operandType"), ","), "1,2,0,0,0",
        "Lt_operandType of record ID 28")
    assert_eq(table.concat(c2:GetField("Rt_operandType"), ","), "2,3,0,0,0",
        "Rt_operandType of record ID 28")
    assert_eq(table.concat(c2:GetField("Logic"), ","), "1,0,0,0,0",
        "Logic of record ID 28")
end)

-- ---------------------------------------------------------------------------
-- Test 15 — Tables without an inline ID column
-- ---------------------------------------------------------------------------

run_test("Tables without an inline ID column", function()
    local inline = dbc.Schemas.Get("SpellIcon", "3.3.5.12340")
    assert_true(inline.has_id_inline, "SpellIcon stores its ID in the record")

    local schema = dbc.Schemas.Get("CharBaseInfo", "3.3.5.12340")
    assert_eq(schema.has_id_inline, false, "CharBaseInfo has no ID in the record")

    local tbl = open_fixture("CharBaseInfo", CHAR_BASE_INFO, 2)
    assert_eq(tbl:GetFile():GetIdOffset(), nil,
        "GetIdOffset must not hand back a fake offset")
    assert_eq(icon_table:GetFile():GetIdOffset(), inline.id_offset,
        "GetIdOffset should report the schema's offset when there is one")

    -- Offset 0 is RaceID here, so the key can only come from the ordinal.
    assert_eq(tbl:GetRowByIndex(2):GetID(), 2, "Row 2 keys on its ordinal")
    assert_eq(tbl:GetRowByIndex(3):GetID(), 3, "Row 3 keys on its ordinal")

    -- Create has nowhere to put the key and must refuse rather than write it
    -- over the first column.
    local ok, err = pcall(function() return tbl:Create(99) end)
    assert_true(not ok, "Create on a table with no ID column should raise")
    assert_true(tostring(err):find("no ID column", 1, true) ~= nil,
        "Error should name the cause, got: " .. tostring(err))
    assert_eq(tbl:Count(), 3, "A refused Create must not append a row")
    assert_eq(tbl:GetRowByIndex(1):GetField("RaceID"), 1, "RaceID must be intact")

    local ok_next = pcall(function() return tbl:CreateNext() end)
    assert_true(not ok_next, "CreateNext should raise for the same reason")

    local ok_clone = pcall(function() return tbl:CloneRow(1, 99) end)
    assert_true(not ok_clone, "CloneRow should raise for the same reason")
    assert_eq(tbl:Count(), 3, "A refused CloneRow must not append a row")
end)

-- ---------------------------------------------------------------------------
-- Test 16 — Workspace SaveAll
-- ---------------------------------------------------------------------------

run_test("Workspace SaveAll writes every loaded table", function()
    local ws = dbc.Workspace({
        source = TMP_WS .. "/source",
        out    = TMP_WS .. "/output/saveall",
        build  = "3.3.5.12340",
    })

    ws:Create("SpellIcon"):Create(1, { TextureFilename = "Interface/Icons/Q" })
    ws:Create("SpellDuration"):Create(1, { Duration = 1000 })

    local count = ws:SaveAll()
    assert_eq(count, 2, "SaveAll should report both tables")

    for _, name in ipairs({ "SpellIcon", "SpellDuration" }) do
        local fh = io.open(TMP_WS .. "/output/saveall/" .. name .. ".dbc", "rb")
        assert_not_nil(fh, name .. ".dbc should exist on disk")
        if fh then fh:close() end
    end
end)

-- ---------------------------------------------------------------------------
-- Test 17 — Saving only touches the filesystem layout when it has to
-- ---------------------------------------------------------------------------

run_test("Saving creates the output directory only when it is missing", function()
    local util = require("dbc._util")
    local real_ensure_dir = util.ensure_dir
    local calls = 0
    util.ensure_dir = function(path)
        calls = calls + 1
        return real_ensure_dir(path)
    end

    local ok, err = pcall(function()
        local tbl = dbc.Create("SpellDuration", "WDBC", "3.3.5.12340")
        tbl:Create(1, { Duration = 500 })

        -- TMP_WS/output already exists: two saves, no directory work at all.
        tbl:Save(TMP_WS .. "/output/probe.dbc")
        tbl:Save(TMP_WS .. "/output/probe.dbc")
        assert_eq(calls, 0, "Saving into an existing directory must not mkdir")

        -- A missing directory costs exactly one mkdir, and the write lands.
        tbl:Save(TMP_WS .. "/output/made/up/probe.dbc")
        assert_eq(calls, 1, "A missing directory should cost one mkdir")

        local fh = io.open(TMP_WS .. "/output/made/up/probe.dbc", "rb")
        assert_not_nil(fh, "The file should exist in the created directory")
        if fh then fh:close() end
    end)

    util.ensure_dir = real_ensure_dir
    if not ok then error(err, 0) end
end)

-- ---------------------------------------------------------------------------
-- Test 18 — Save clears the dirty flag
-- ---------------------------------------------------------------------------

run_test("Save clears the dirty flag", function()
    local ws = dbc.Workspace({
        source = TMP_WS .. "/source",
        out    = TMP_WS .. "/output/dirty",
        build  = "3.3.5.12340",
    })

    local tbl = ws:Create("SpellDuration")
    tbl:Create(1, { Duration = 1000 })
    assert_true(tbl:GetFile().dirty, "A created row marks the file dirty")

    assert_eq(ws:SaveAll({ only_dirty = true }), 1, "The dirty table is written")
    assert_eq(tbl:GetFile().dirty, false, "Save should clear the dirty flag")
    assert_eq(ws:SaveAll({ only_dirty = true }), 0,
        "A clean table should be skipped on the next only_dirty pass")

    tbl:GetRowById(1):SetField("Duration", 2000)
    assert_true(tbl:GetFile().dirty, "Editing a row marks the file dirty again")
    assert_eq(ws:SaveAll({ only_dirty = true }), 1, "The edit should be written")
end)

-- ---------------------------------------------------------------------------
-- Structural row editing
--
-- Helpers shared by tests 19-25. SpellIcon is the workhorse: an ID column and
-- a string column in 8 bytes, so every check below also exercises the string
-- heap rather than taking the "deletion never touches it" claim on trust.
-- ---------------------------------------------------------------------------

local function icon_text(id) return "Interface\\Icons\\Icon_" .. id end

local function make_icons(ids)
    local tbl = dbc.Create("SpellIcon", "WDBC", "3.3.5.12340")
    for _, id in ipairs(ids) do
        tbl:Create(id, { TextureFilename = icon_text(id) })
    end
    return tbl
end

---Row IDs in buffer order, which is what a structural edit rearranges.
local function id_order(tbl)
    local ids = {}
    for i = 1, tbl:Count() do
        ids[i] = tbl:GetFile():GetRowId(i)
    end
    return table.concat(ids, ",")
end

-- ---------------------------------------------------------------------------
-- Test 19 — Delete then reinsert is byte-identical
-- ---------------------------------------------------------------------------

run_test("Delete then reinsert restores the file byte for byte", function()
    -- The undo path, and the check that matters most: CopyRecord before the
    -- delete, InsertRow at the same index after it. It works because the
    -- string heap is append-only - the deleted record's text is still sitting
    -- at the offsets its bytes point at - so restoring the bytes restores the
    -- strings too.
    for _, index in ipairs({ 1, 3, 5 }) do
        local tbl  = make_icons({ 10, 20, 30, 40, 50 })
        local file = tbl:GetFile()
        local before = file:Serialize()

        local bytes = tbl:CopyRecord(index)
        assert_eq(#bytes, file.record_size, "CopyRecord returns exactly one record")

        tbl:DeleteRow(index)
        assert_eq(tbl:Count(), 4, "Delete drops exactly one row")
        assert_true(file:Serialize() ~= before,
            "The file must actually differ while the row is missing")

        tbl:InsertRow(index, bytes)
        assert_eq(tbl:Count(), 5, "Reinsert restores the row count")
        assert_eq(file:Serialize(), before, string.format(
            "Delete then reinsert at index %d must be byte-identical", index))

        -- Equal bytes is not the whole claim: the restored record's string
        -- offset has to still resolve through the heap.
        assert_eq(tbl:GetRowByIndex(index):GetTextureFilename(),
            icon_text(index * 10),
            "The reinserted row's string must still resolve")
    end

    -- Again with localized strings, which spend 17 offsets per field instead
    -- of one, on a table wide enough that a misaligned shift would show.
    local races = dbc.Create("ChrRaces", "WDBC", "3.3.5.12340")
    for id = 1, 4 do
        races:Create(id, {
            ClientPrefix = "Pre" .. id,
            Name_lang    = "Race " .. id,
        })
    end
    local races_file = races:GetFile()
    local races_before = races_file:Serialize()

    local race_bytes = races:CopyRecord(2)
    races:DeleteRow(2)
    races:InsertRow(2, race_bytes)
    assert_eq(races_file:Serialize(), races_before,
        "Delete then reinsert must be byte-identical with localized strings too")
    assert_eq(races:GetRowByIndex(2):GetName_lang(), "Race 2",
        "The localized string must still resolve after the reinsert")
    assert_eq(races:GetRowByIndex(2):GetClientPrefix(), "Pre2",
        "The plain string must still resolve after the reinsert")
end)

-- ---------------------------------------------------------------------------
-- Test 20 — Delete edge cases
-- ---------------------------------------------------------------------------

run_test("Deleting the first, last, middle and only row", function()
    -- A dense buffer has three cases, not one: deleting the last row moves no
    -- bytes at all, deleting the first moves every other record, and a middle
    -- row moves only its tail.
    local first = make_icons({ 10, 20, 30, 40 })
    first:DeleteRow(1)
    assert_eq(first:Count(), 3, "Deleting the first row leaves three")
    assert_eq(id_order(first), "20,30,40", "The tail must slide down one slot")
    assert_eq(first:GetRowByIndex(1):GetTextureFilename(), icon_text(20),
        "Row 1 must now be the old row 2, strings included")

    local last = make_icons({ 10, 20, 30, 40 })
    last:DeleteRow(4)
    assert_eq(id_order(last), "10,20,30", "Deleting the last row moves nothing")

    local mid = make_icons({ 10, 20, 30, 40 })
    mid:DeleteRow(2)
    assert_eq(id_order(mid), "10,30,40", "Only the rows after the hole move")
    assert_eq(mid:GetRowByIndex(2):GetTextureFilename(), icon_text(30),
        "The row that filled the hole must carry its own string")

    -- The only row: the compaction has no tail to move and the table empties.
    local single = make_icons({ 7 })
    single:DeleteRow(1)
    assert_eq(single:Count(), 0, "Deleting the only row empties the table")
    assert_eq(single:FindById(7), nil, "The last ID must stop resolving")
    local emptied = dbc.Table.new(dbc.File.new(
        single:GetFile():Serialize(), dbc.Schemas.SpellIcon, "<test_emptied>"))
    assert_eq(emptied:Count(), 0, "An emptied table must serialize and reload")

    -- Rows() reads the count on every step, so a table that shrinks under it
    -- ends the walk instead of running off the end. It still skips whichever
    -- row took the deleted one's place, which is why the note on Rows says to
    -- collect the indices first.
    local walked = make_icons({ 10, 20, 30, 40 })
    local seen, steps = {}, 0
    for index in walked:Rows() do
        steps = steps + 1
        assert_true(steps <= 4, "Rows() must terminate on a shrinking table")
        seen[#seen + 1] = walked:GetFile():GetRowId(index)
        if index == 1 then walked:DeleteRow(1) end
    end
    assert_eq(table.concat(seen, ","), "10,30,40",
        "Rows() must stop at the real end, having skipped the row that moved in")

    -- An out-of-range index must raise rather than shift bytes it should not.
    local guard = make_icons({ 10, 20, 30 })
    local intact = guard:GetFile():Serialize()
    for _, bad in ipairs({ 0, -1, 4, 99, 1.5 }) do
        local ok, err = pcall(function() return guard:DeleteRow(bad) end)
        assert_true(not ok, "DeleteRow(" .. tostring(bad) .. ") should raise")
        assert_true(tostring(err):find("out of range", 1, true) ~= nil,
            "Error should name the cause, got: " .. tostring(err))
    end
    assert_eq(guard:Count(), 3, "A refused delete must not change the count")
    assert_eq(guard:GetFile():Serialize(), intact,
        "A refused delete must not touch a single byte")
end)

-- ---------------------------------------------------------------------------
-- Test 21 — Lookups after a delete
-- ---------------------------------------------------------------------------

run_test("ID lookups follow the rows a delete moved", function()
    local tbl = make_icons({ 10, 20, 30, 40, 50 })
    tbl:DeleteRow(2) -- drops ID 20

    assert_eq(tbl:FindById(20), nil, "FindById must stop resolving the deleted ID")
    assert_eq(tbl[20], nil, "tbl[id] must stop resolving the deleted ID")
    assert_true(tbl:Has(20) == false, "Has must report the deleted ID gone")
    local ok = pcall(function() return tbl:GetRowById(20) end)
    assert_true(not ok, "GetRowById must raise for the deleted ID")

    -- The survivors after the hole moved down one slot; their IDs must follow
    -- them there rather than keep pointing at their old index.
    assert_eq(tbl:GetRowById(30):GetIndex(), 2, "ID 30 must now be row 2")
    assert_eq(tbl:GetRowById(50):GetIndex(), 4, "ID 50 must now be row 4")
    assert_eq(tbl:FindById(10):GetIndex(), 1, "ID 10 sat before the hole")

    -- And each of them must read its own record, not its neighbour's.
    for _, id in ipairs({ 10, 30, 40, 50 }) do
        assert_eq(tbl[id]:GetTextureFilename(), icon_text(id),
            "ID " .. id .. " must still read its own string")
    end

    -- Inserting the row back puts the key back with it.
    local tbl2 = make_icons({ 10, 20, 30 })
    local bytes = tbl2:CopyRecord(2)
    tbl2:DeleteRow(2)
    tbl2:InsertRow(2, bytes)
    assert_not_nil(tbl2:FindById(20), "The reinserted ID must resolve again")
    assert_eq(tbl2:GetRowById(20):GetIndex(), 2, "and at the index it went back to")
    assert_eq(tbl2:GetRowById(30):GetIndex(), 3, "and push the tail back up")
end)

-- ---------------------------------------------------------------------------
-- Test 22 — Proxy invalidation
-- ---------------------------------------------------------------------------

run_test("A structural edit invalidates the proxies it moved", function()
    local tbl = make_icons({ 10, 20, 30, 40, 50 })
    local before_point = tbl:GetRowByIndex(1)
    local at_point     = tbl:GetRowByIndex(3)
    local after_point  = tbl:GetRowByIndex(5)

    tbl:DeleteRow(3)

    -- Row 1 did not move, so its proxy still means what it meant.
    assert_eq(before_point:GetTextureFilename(), icon_text(10),
        "A proxy before the edit point must keep working")
    assert_eq(before_point:GetID(), 10, "and keep its ID")
    assert_true(before_point:IsValid(), "and report itself valid")

    -- Rows 3 and 5 did move. Reading them must raise, not hand back row 4's
    -- and row 6's data, which is the whole point of the generation stamp.
    for label, proxy in pairs({ ["at the edit point"] = at_point,
                                ["after the edit point"] = after_point }) do
        local ok, err = pcall(function() return proxy:GetTextureFilename() end)
        assert_true(not ok, "A proxy " .. label .. " must raise on read")
        assert_true(tostring(err):find("stale reference", 1, true) ~= nil,
            "Error should say what happened, got: " .. tostring(err))
        assert_true(tostring(err):find("inserted or deleted at index 3", 1, true) ~= nil,
            "Error should name the edit point, got: " .. tostring(err))
        assert_true(proxy:IsValid() == false,
            "IsValid must report a proxy " .. label .. " as dead")
        assert_true(not pcall(function() return proxy:GetIndex() end),
            "GetIndex must raise too - it hands out the index itself")
        assert_true(not pcall(function() return proxy:SetTextureFilename("x") end),
            "Writes through a stale proxy must raise as well")
    end

    -- The table hands out a fresh proxy for the index, so a caller that
    -- re-fetches is back in business immediately.
    assert_eq(tbl:GetRowByIndex(3):GetTextureFilename(), icon_text(40),
        "Re-fetching the index must give the record that lives there now")

    -- A second edit lower down must invalidate the proxy the first one spared.
    tbl:DeleteRow(1)
    local ok_again = pcall(function() return before_point:GetTextureFilename() end)
    assert_true(not ok_again,
        "An edit below a surviving proxy must invalidate it in turn")

    -- And a proxy minted between two edits is judged on the edits after it,
    -- not on every edit the file has ever seen.
    local fresh = make_icons({ 10, 20, 30, 40, 50 })
    fresh:DeleteRow(1)                     -- generation 1, floor 1
    local minted = fresh:GetRowByIndex(2)  -- now holds ID 30
    fresh:DeleteRow(4)                     -- generation 2, floor 4
    assert_eq(minted:GetTextureFilename(), icon_text(30),
        "A proxy below a later edit must stay valid despite an earlier one")

    -- Two edits at rising floors: a proxy must be judged against the lowest
    -- floor since it was minted, not the most recent one. Row 3 here sits
    -- above the first edit's floor and below the second's, so weighing it
    -- against the latest alone would call it valid and quietly serve the
    -- record that slid into its slot.
    local ladder = make_icons({ 10, 20, 30, 40, 50, 60 })
    local stranded = ladder:GetRowByIndex(3) -- ID 30, minted before both edits
    ladder:DeleteRow(2)                      -- floor 2: row 3 now holds ID 40
    ladder:DeleteRow(4)                      -- floor 4, which row 3 sits below
    local ok_ladder, err_ladder = pcall(function()
        return stranded:GetTextureFilename()
    end)
    assert_true(not ok_ladder,
        "The lowest floor since minting must decide, not the latest edit")
    assert_true(tostring(err_ladder):find("deleted at index 2", 1, true) ~= nil,
        "Error should name the edit that moved it, got: " .. tostring(err_ladder))

    -- An append moves no record, so it must invalidate nothing at all.
    local appended = make_icons({ 10, 20, 30 })
    local held = appended:GetRowByIndex(3)
    appended:Create(40, { TextureFilename = icon_text(40) })
    assert_eq(held:GetTextureFilename(), icon_text(30),
        "Appending must not invalidate the rows already there")
end)

-- ---------------------------------------------------------------------------
-- Test 23 — InsertRow
-- ---------------------------------------------------------------------------

run_test("InsertRow places a record and refuses a bad one", function()
    local tbl = make_icons({ 10, 20, 30 })
    local bytes = tbl:CopyRecord(3)

    -- Into the middle: everything from the index up moves one slot.
    local inserted = tbl:InsertRow(2, bytes)
    assert_eq(tbl:Count(), 4, "InsertRow adds a row")
    assert_eq(id_order(tbl), "10,30,20,30", "The tail must slide up one slot")
    assert_eq(inserted:GetIndex(), 2, "InsertRow returns the row it wrote")
    assert_eq(inserted:GetTextureFilename(), icon_text(30),
        "The inserted record's string must resolve")

    -- record_count + 1 appends; one past that does not.
    local tail = make_icons({ 10, 20 })
    tail:InsertRow(3, tail:CopyRecord(1))
    assert_eq(id_order(tail), "10,20,10", "Inserting at Count() + 1 appends")
    assert_true(not pcall(function() return tail:InsertRow(5, tail:CopyRecord(1)) end),
        "Inserting past Count() + 1 must raise")
    assert_true(not pcall(function() return tail:InsertRow(0, tail:CopyRecord(1)) end),
        "Inserting at index 0 must raise")

    -- nil bytes means a blank row, and the wrong number of bytes is refused
    -- rather than copied into a record it does not fit.
    local blank = make_icons({ 10, 20 })
    blank:InsertRow(1, nil)
    assert_eq(blank:Count(), 3, "A blank insert still adds a row")
    assert_eq(blank:GetFile():GetRowId(1), 0, "A blank row is zero bytes")
    assert_eq(id_order(blank), "0,10,20", "and the real rows move up")

    local intact = blank:GetFile():Serialize()
    local ok, err = pcall(function() return blank:InsertRow(1, "short") end)
    assert_true(not ok, "InsertRow must refuse bytes of the wrong length")
    assert_true(tostring(err):find("records are 8 bytes", 1, true) ~= nil,
        "Error should give both lengths, got: " .. tostring(err))
    assert_eq(blank:GetFile():Serialize(), intact,
        "A refused insert must not touch a single byte")
end)

-- ---------------------------------------------------------------------------
-- Test 24 — Duplicate by index
-- ---------------------------------------------------------------------------

run_test("DuplicateRowByIndex copies bytes on any table", function()
    local tbl = make_icons({ 10, 20, 30 })

    -- GetMaxID is an O(n) scan, so a duplicate may call it once and no more.
    local real_get_max_id = dbc.Table.GetMaxID
    local calls = 0
    dbc.Table.GetMaxID = function(self)
        calls = calls + 1
        return real_get_max_id(self)
    end

    local ok, err = pcall(function()
        local dup = tbl:DuplicateRowByIndex(2)
        assert_eq(calls, 1, "DuplicateRowByIndex must scan for the max ID once")
        assert_eq(tbl:Count(), 4, "The duplicate is appended")
        assert_eq(dup:GetIndex(), 4, "and lands at the end")
        assert_eq(dup:GetID(), 31, "and takes GetMaxID() + 1 by default")
        assert_eq(dup:GetTextureFilename(), icon_text(20),
            "and carries the source's string")
        assert_eq(tbl:GetRowByIndex(2):GetID(), 20, "The source must be untouched")
        assert_eq(tbl:GetRowById(31):GetIndex(), 4, "The new ID must be indexed")

        -- An explicit ID is honoured, and a colliding one refused.
        local pinned = tbl:DuplicateRowByIndex(1, 99)
        assert_eq(pinned:GetID(), 99, "An explicit ID must be written")
        assert_eq(pinned:GetTextureFilename(), icon_text(10),
            "An explicit ID must not disturb the rest of the record")
        assert_true(not pcall(function() return tbl:DuplicateRowByIndex(1, 10) end),
            "Duplicating onto an existing ID must raise")
        assert_true(not pcall(function() return tbl:DuplicateRowByIndex(99) end),
            "An out-of-range source index must raise")
    end)

    dbc.Table.GetMaxID = real_get_max_id
    if not ok then error(err, 0) end

    -- The point of the separate name: this works on the 22 tables CloneRow
    -- refuses, because it never has to invent a key.
    local plain = open_fixture("CharBaseInfo", CHAR_BASE_INFO, 2)
    assert_true(not pcall(function() return plain:CloneRow(1, 9) end),
        "CloneRow still refuses a table with no ID column")

    local dup = plain:DuplicateRowByIndex(3)
    assert_eq(plain:Count(), 4, "Duplicating by index works there anyway")
    assert_eq(dup:GetID(), 4, "and the copy keys on its own ordinal")
    assert_eq(dup:GetField("RaceID"), 1, "RaceID must be copied")
    assert_eq(dup:GetField("ClassID"), 4, "ClassID must be copied")
    assert_eq(plain:GetRowByIndex(3):GetField("ClassID"), 4,
        "The source must be untouched")

    local ok_id, err_id = pcall(function() return plain:DuplicateRowByIndex(1, 9) end)
    assert_true(not ok_id, "An explicit ID must be refused where there is nowhere to put it")
    assert_true(tostring(err_id):find("no ID column", 1, true) ~= nil,
        "Error should name the cause, got: " .. tostring(err_id))
end)

-- ---------------------------------------------------------------------------
-- Test 25 — Structural edits across formats
-- ---------------------------------------------------------------------------

run_test("Structural edits on WDB2, and refusal where they cannot be correct", function()
    local tbl = dbc.Create("SpellIcon", "WDB2", "3.3.5.12340")
    for _, id in ipairs({ 10, 20, 30 }) do
        tbl:Create(id, { TextureFilename = icon_text(id) })
    end

    -- WDB2 stamps its header with os.time() on every serialize, so the four
    -- bytes at offset 28 are compared out rather than compared.
    local function stable(bytes)
        return bytes:sub(1, 28) .. "\0\0\0\0" .. bytes:sub(33)
    end

    local file = tbl:GetFile()
    local before = stable(file:Serialize())
    local bytes = tbl:CopyRecord(2)
    tbl:DeleteRow(2)
    assert_eq(id_order(tbl), "10,30", "WDB2 compaction must move the tail down")
    tbl:InsertRow(2, bytes)
    assert_eq(stable(file:Serialize()), before,
        "WDB2 delete then reinsert must be byte-identical")

    -- A record other IDs are declared copies of cannot just be removed: the
    -- copies would vanish with it, so the driver refuses instead.
    file:AddCopy(40, 10)
    tbl:RebuildIndex()
    local ok, err = pcall(function() return tbl:DeleteRow(1) end)
    assert_true(not ok, "Deleting a copy-table source must raise")
    assert_true(tostring(err):find("copy-table ID 40", 1, true) ~= nil,
        "Error should name the copy, got: " .. tostring(err))
    assert_eq(tbl:Count(), 3, "The refused delete must leave the table alone")
    assert_true(tbl:Has(40), "and leave the copy resolvable")

    -- Formats that keep IDs or row indices outside the record buffer cannot
    -- be edited this way, and say so rather than desynchronising quietly.
    local wdbc = make_icons({ 10, 20, 30 })
    local wdbc_file = wdbc:GetFile()
    wdbc_file.id_list = { 10, 20, 30 }
    local ok_list, err_list = pcall(function() return wdbc:DeleteRow(2) end)
    wdbc_file.id_list = nil
    assert_true(not ok_list, "A driver with an id_list must refuse DeleteRow")
    assert_true(tostring(err_list):find("id_list", 1, true) ~= nil,
        "Error should name the obstacle, got: " .. tostring(err_list))
    assert_eq(wdbc:Count(), 3, "and leave the table alone")

    wdbc_file.is_compressed = true
    local ok_packed = pcall(function() return wdbc:InsertRow(1, wdbc:CopyRecord(1)) end)
    wdbc_file.is_compressed = nil
    assert_true(not ok_packed, "A bit-packed driver must refuse InsertRow")
end)

-- ---------------------------------------------------------------------------
-- Cleanup
-- ---------------------------------------------------------------------------

cleanup_dirs()

-- ---------------------------------------------------------------------------
-- Summary
-- ---------------------------------------------------------------------------

print("")
print("========================================")
if FAILED == 0 then
    print("ALL TESTS PASSED")
else
    print(string.format("TESTS FAILED: %d", FAILED))
    os.exit(1)
end
print("========================================")