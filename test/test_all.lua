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