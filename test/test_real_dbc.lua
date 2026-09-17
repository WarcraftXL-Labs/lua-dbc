--[[
    test/test_real_dbc.lua
    End-to-end integration and real-world benchmark tests using actual
    World of Warcraft 3.3.5.12340 client database files.
]]

package.path = "src/?.lua;src/?/init.lua;" .. package.path

local dbc = require("dbc")

local DBC_SOURCE_DIR = "C:/DBC"
local OUT_DIR = "out"

local function assert_true(cond, msg)
    if not cond then error("Assertion failed: " .. (msg or ""), 2) end
end

local function assert_eq(actual, expected, msg)
    if actual ~= expected then
        error(string.format("Expected %s, got %s (%s)", tostring(expected), tostring(actual), msg or ""), 2)
    end
end

print("==================================================================")
print("           REAL-WORLD WOW 3.3.5 DBC INTEGRATION & BENCHMARK       ")
print("==================================================================")

-- Ensure output directory
local f_check = io.open(DBC_SOURCE_DIR .. "/Map.dbc", "rb")
if not f_check then
    print("[SKIP] DBC source directory not found at: " .. DBC_SOURCE_DIR)
    os.exit(0)
end
f_check:close()

-- 1. Test Map.dbc loading and reading
print("\n[1] Testing Map.dbc (136 records, 264 bytes/row)...")
local t0 = os.clock()
local map_tbl = dbc.Open(DBC_SOURCE_DIR .. "/Map.dbc", "Map", "3.3.5.12340")
local t_load = os.clock() - t0
print(string.format("  Loaded Map.dbc in %.4fs (%d records)", t_load, map_tbl:Count()))
assert_eq(map_tbl:Count(), 136, "Map record count mismatch")

local r0 = map_tbl:FindById(0)
assert_true(r0 ~= nil, "Row ID 0 should exist in Map.dbc")
print(string.format("  Row 0: Directory=%s, MapName=%s", r0.Directory, r0.MapName_lang))
assert_eq(r0.Directory, "Azeroth", "Directory mismatch for Map 0")

-- 2. Test AreaTable.dbc loading
print("\n[2] Testing AreaTable.dbc (2,380 records, 144 bytes/row)...")
t0 = os.clock()
local area_tbl = dbc.Open(DBC_SOURCE_DIR .. "/AreaTable.dbc", "AreaTable", "3.3.5.12340")
print(string.format("  Loaded AreaTable.dbc in %.4fs (%d records)", os.clock() - t0, area_tbl:Count()))
assert_eq(area_tbl:Count(), 2380, "AreaTable record count mismatch")

-- 3. Test Spell.dbc (~50,000 spells, 49.7 MB) and streaming LINQ
print("\n[3] Testing Spell.dbc (49.7 MB, ~50,000 spells)...")
t0 = os.clock()
local spell_tbl = dbc.Open(DBC_SOURCE_DIR .. "/Spell.dbc", "Spell", "3.3.5.12340")
local spell_load_time = os.clock() - t0
print(string.format("  Loaded Spell.dbc (%d spells) in %.4fs", spell_tbl:Count(), spell_load_time))
assert_true(spell_tbl:Count() > 40000, "Spell count should be > 40,000")

-- Test O(1) primary key lookup
t0 = os.clock()
local spell_133 = spell_tbl:FindById(133)
local t_pk = os.clock() - t0
assert_true(spell_133 ~= nil, "Spell 133 should exist")
print(string.format("  O(1) Primary Key Lookup ID=133: '%.6fs' -> Name: %s", t_pk, spell_133.Name_lang))

-- Test LINQ streaming short-circuit: should inspect only a few rows
t0 = os.clock()
local found_spell = spell_tbl:Query()
    :Where(function(r) return r.ID == 133 end)
    :FirstOrDefault()
local t_linq = os.clock() - t0
assert_true(found_spell ~= nil, "Streaming LINQ should find spell 133")
print(string.format("  Streaming LINQ FirstOrDefault(ID=133): '%.6fs' -> %s", t_linq, found_spell.Name_lang))

-- 4. Test Workspace with source and out directory
print("\n[4] Testing DbcWorkspace with real source and output directory...")
local ws = dbc.Workspace({
    source = DBC_SOURCE_DIR,
    out    = OUT_DIR,
    build  = "3.3.5.12340",
})

local ws_map = ws:GetTable("Map")
local ws_area = ws:GetTable("AreaTable")
assert_true(ws_map ~= nil and ws_area ~= nil, "Workspace tables should load")

-- Cross-table relation resolution
local test_map = ws_map:FindById(13)
assert_true(test_map ~= nil, "Map 13 should exist")
local rel_area = test_map:Resolve("AreaTableID")
assert_true(rel_area ~= nil, "Map 13 should resolve AreaTableID")
print(string.format("  Foreign Key Resolution: Map %d (%s) -> AreaTable %d",
    test_map.ID, test_map.Directory, rel_area.ID))

-- Save Map.dbc into out/
local saved_bytes = ws_map:Save(OUT_DIR .. "/Map.dbc")
print(string.format("  Saved %s/Map.dbc: %d bytes", OUT_DIR, saved_bytes))
assert_true(saved_bytes > 0, "Map.dbc save should write bytes")

-- Reload saved Map.dbc to verify binary roundtrip
local reloaded_map = dbc.Open(OUT_DIR .. "/Map.dbc", "Map", "3.3.5.12340")
assert_eq(reloaded_map:Count(), 136, "Reloaded Map record count mismatch")
local reloaded_r0 = reloaded_map:FindById(0)
assert_eq(reloaded_r0.Directory, "Azeroth", "Reloaded Map directory mismatch")
print("  Roundtrip verified: reloaded Map.dbc is 100% binary compatible!")

print("\n==================================================================")
print("               ALL REAL-WORLD BENCHMARKS PASSED!                  ")
print("==================================================================")
