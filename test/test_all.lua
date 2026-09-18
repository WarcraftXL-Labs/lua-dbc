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