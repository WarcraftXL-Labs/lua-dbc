--[[
    test_real_db2.lua
    Integration test suite and performance benchmark for real World of Warcraft 12.1.5 DB2 files (WDC5).
    Tests layout hash auto-detection, multi-section reading, bitpacking, pallet decompression,
    relative string tables, and LINQ streaming queries.
]]

package.path = "src/?.lua;src/?/init.lua;" .. package.path

local ffi = require("ffi")
local dbc = require("dbc")

-- High-resolution Windows timer
ffi.cdef[[
    int QueryPerformanceFrequency(int64_t *lpFrequency);
    int QueryPerformanceCounter(int64_t *lpPerformanceCount);
]]

local freq_buf = ffi.new("int64_t[1]")
local count_buf = ffi.new("int64_t[1]")
local has_qpc = pcall(function() ffi.C.QueryPerformanceFrequency(freq_buf) end)
local timer_freq = tonumber(freq_buf[0])

local function get_time_ns()
    if has_qpc and timer_freq > 0 then
        ffi.C.QueryPerformanceCounter(count_buf)
        return tonumber(count_buf[0]) * 1000000000 / timer_freq
    else
        return os.clock() * 1000000000
    end
end

local DB2_DIR = [[E:\World of Warcraft\2.Projects\TheEndOfTime\Client_Source\12.1.5\dbfilesclient\]]

local function check_dir()
    local f = io.open(DB2_DIR .. "areatable.db2", "rb")
    if f then
        f:close()
        return true
    end
    return false
end

if not check_dir() then
    print("==================================================================")
    print("       REAL-WORLD WOW 12.1.5 DB2 INTEGRATION & BENCHMARK          ")
    print("==================================================================")
    print("[SKIP] DB2 source directory not found at: " .. DB2_DIR)
    os.exit(0)
end

print("==================================================================")
print("       REAL-WORLD WOW 12.1.5 DB2 INTEGRATION & BENCHMARK          ")
print("==================================================================")
print("Source directory: " .. DB2_DIR)
print()

-- ---------------------------------------------------------------------------
-- 1. Format Sniffer & Auto-Schema Resolution
-- ---------------------------------------------------------------------------
print("[Step 1] Sniffing formats and auto-resolving schemas...")
local tables_to_probe = {
    { file = "areatable.db2",  expected_magic = "WDC5", expected_hash = "5DB1A3FF", expected_recs = 10030 },
    { file = "chrclasses.db2", expected_magic = "WDC5", expected_hash = "AFC9B0C2", expected_recs = 15 },
    { file = "gamemode.db2",   expected_magic = "WDC5", expected_hash = "BB298117", expected_recs = 2 },
    { file = "map.db2",        expected_magic = "WDC5", expected_hash = "75863E23", expected_recs = 1187 },
}

for _, t in ipairs(tables_to_probe) do
    local full_path = DB2_DIR .. t.file
    local magic, format_name = dbc.Formats.Detect(full_path)
    assert(magic == t.expected_magic, string.format("%s magic mismatch: expected %s, got %s", t.file, t.expected_magic, tostring(magic)))

    local db = dbc.Open(full_path)
    local schema = db:GetSchema()
    assert(schema ~= nil, "Schema should be resolved for " .. t.file)
    assert(schema.layout_hash == t.expected_hash, string.format("%s layout hash mismatch: expected %s, got %s", t.file, t.expected_hash, tostring(schema.layout_hash)))
    assert(db:Count() == t.expected_recs, string.format("%s count mismatch: expected %d, got %d", t.file, t.expected_recs, db:Count()))

    print(string.format("  -> %-16s | Format: %-4s | Layout: %s | Fields: %2d | Records: %5d [OK]",
        t.file, format_name, schema.layout_hash, #schema.fields, db:Count()))
end
print("  -> Format sniffing and schema auto-binding passed!\n")

-- ---------------------------------------------------------------------------
-- 2. Data Correctness Verification
-- ---------------------------------------------------------------------------
print("[Step 2] Verifying record decoding correctness...")

-- AreaTable verification
local area_db = dbc.Open(DB2_DIR .. "areatable.db2")

-- Dun Morogh
local dun_morogh = area_db[1]
assert(dun_morogh ~= nil, "Dun Morogh (ID 1) should exist")
assert(dun_morogh:GetZoneName() == "DunMorogh", "Expected DunMorogh, got " .. tostring(dun_morogh:GetZoneName()))
assert(dun_morogh:GetAreaName_lang() == "Dun Morogh", "Expected 'Dun Morogh', got " .. tostring(dun_morogh:GetAreaName_lang()))
assert(dun_morogh:GetContinentID() == 0, "Dun Morogh should be Continent 0")
local flags_arr = dun_morogh:GetFlags()
assert(type(flags_arr) == "table" and #flags_arr == 2, "Flags should be array of length 2")
assert(dun_morogh:GetFlags(1) == 16449, "Flags[1] for Dun Morogh should be 16449 (0x4041)")

-- Durotar
local durotar = area_db[14]
assert(durotar ~= nil, "Durotar (ID 14) should exist")
assert(durotar:GetZoneName() == "Durotar", "Expected Durotar, got " .. tostring(durotar:GetZoneName()))
assert(durotar:GetContinentID() == 1, "Durotar should be Continent 1 (Kalimdor)")

-- Booty Bay
local booty_bay = area_db[35]
assert(booty_bay ~= nil, "Booty Bay (ID 35) should exist")
assert(booty_bay:GetZoneName() == "BootyBay", "Expected BootyBay, got " .. tostring(booty_bay:GetZoneName()))
assert(booty_bay:GetAreaName_lang() == "Booty Bay", "Expected 'Booty Bay', got " .. tostring(booty_bay:GetAreaName_lang()))

print("  -> AreaTable (Dun Morogh, Durotar, Booty Bay, Pallet Arrays) verified [OK]")

-- ChrClasses verification (15 classes)
local class_db = dbc.Open(DB2_DIR .. "chrclasses.db2")
assert(class_db[1]:GetName_lang() == "Warrior" and class_db[1]:GetFilename() == "WARRIOR", "Class 1 Warrior mismatch")
assert(class_db[2]:GetName_lang() == "Paladin" and class_db[2]:GetFilename() == "PALADIN", "Class 2 Paladin mismatch")
assert(class_db[6]:GetName_lang() == "Death Knight" and class_db[6]:GetFilename() == "DEATHKNIGHT", "Class 6 DK mismatch")
assert(class_db[10]:GetName_lang() == "Monk" and class_db[10]:GetFilename() == "MONK", "Class 10 Monk mismatch")
assert(class_db[12]:GetName_lang() == "Demon Hunter" and class_db[12]:GetFilename() == "DEMONHUNTER", "Class 12 DH mismatch")
assert(class_db[13]:GetName_lang() == "Evoker" and class_db[13]:GetFilename() == "EVOKER", "Class 13 Evoker mismatch")

print("  -> ChrClasses (Warrior, Paladin, Monk, Demon Hunter, Evoker) verified [OK]")

-- Map verification
local map_db = dbc.Open(DB2_DIR .. "map.db2")
assert(map_db[0]:GetDirectory() == "Azeroth" and map_db[0]:GetMapName_lang() == "Eastern Kingdoms", "Map 0 mismatch")
assert(map_db[1]:GetDirectory() == "Kalimdor" and map_db[1]:GetMapName_lang() == "Kalimdor", "Map 1 mismatch")
assert(map_db[530]:GetDirectory() == "Expansion01" and map_db[530]:GetMapName_lang() == "Outland", "Map 530 mismatch")
assert(map_db[571]:GetDirectory() == "Northrend" and map_db[571]:GetMapName_lang() == "Northrend", "Map 571 mismatch")

print("  -> Map (Azeroth, Kalimdor, Outland, Northrend) verified [OK]")

-- GameMode verification
local gm_db = dbc.Open(DB2_DIR .. "gamemode.db2")
assert(gm_db[8]:GetTag() == "standard", "GameMode 8 mismatch")
assert(gm_db[9]:GetTag() == "ps", "GameMode 9 Plunderstorm mismatch")

print("  -> GameMode (standard, Plunderstorm) verified [OK]")
print("  -> All data correctness assertions passed!\n")

-- ---------------------------------------------------------------------------
-- 3. Streaming LINQ Query Engine Tests
-- ---------------------------------------------------------------------------
print("[Step 3] Testing streaming LINQ queries on modern DB2...")

-- Where + Count
local kalimdor_count = area_db:Query():Where(function(r) return r:GetContinentID() == 1 end):Count()
assert(kalimdor_count == 952, "Expected 952 Kalimdor areas, got " .. tostring(kalimdor_count))
print(string.format("  -> Query():Where(Continent == 1):Count() = %d [OK]", kalimdor_count))

-- Where + ToList
local org_areas = area_db:Query():Where(function(r)
    local zn = r:GetZoneName()
    return zn and zn:find("Orgrimmar")
end):ToList()
assert(#org_areas == 22, "Expected 22 Orgrimmar areas, got " .. tostring(#org_areas))
print(string.format("  -> Query():Where(name:find('Orgrimmar')):ToList() = %d areas [OK]", #org_areas))

-- FirstOrDefault short-circuiting
local t0 = get_time_ns()
local first_org = area_db:Query():Where(function(r)
    local zn = r:GetZoneName()
    return zn and zn:find("Orgrimmar")
end):FirstOrDefault()
local t_first = (get_time_ns() - t0) / 1000
assert(first_org ~= nil and first_org:GetID() == 407, "Expected Orgrimmar ID 407")
print(string.format("  -> Query():Where(...):FirstOrDefault() = ID %d in %.2f us [OK]", first_org:GetID(), t_first))

-- Map projection
local map_names = map_db:Query():Where(function(r)
    return r:GetID() < 10
end):Select(function(r)
    return string.format("[%d] %s", r:GetID(), r:GetMapName_lang())
end):ToList()
print(string.format("  -> Map projection (first %d maps): %s", #map_names, table.concat(map_names, ", ")))
print("  -> Streaming LINQ query engine passed!\n")

-- ---------------------------------------------------------------------------
-- 4. High-Resolution Performance Benchmarks
-- ---------------------------------------------------------------------------
print("[Step 4] Running high-resolution performance benchmarks...")

local function benchmark_table(file_name, iterations)
    local path = DB2_DIR .. file_name
    local f = io.open(path, "rb")
    local size_bytes = f:seek("end")
    f:close()
    local size_mb = size_bytes / (1024 * 1024)

    -- Benchmark Loading & Parsing
    local parse_times = {}
    local db_instance = nil
    for _ = 1, iterations do
        collectgarbage("collect")
        local t_start = get_time_ns()
        db_instance = dbc.Open(path)
        local t_end = get_time_ns()
        table.insert(parse_times, (t_end - t_start) / 1000000) -- ms
    end
    table.sort(parse_times)
    local min_parse = parse_times[1]
    local throughput_mb = size_mb / (min_parse / 1000)

    -- Benchmark Primary Key Lookups (1,000,000 lookups)
    local all_ids = {}
    for _, row in db_instance:Rows() do
        table.insert(all_ids, row:GetID())
    end
    local num_ids = #all_ids
    local lookup_iters = 1000000
    local t_lookup_start = get_time_ns()
    local sum = 0
    for i = 1, lookup_iters do
        local id = all_ids[(i % num_ids) + 1]
        local row = db_instance[id]
        if row then sum = sum + 1 end
    end
    local t_lookup_end = get_time_ns()
    local total_lookup_ns = t_lookup_end - t_lookup_start
    local ns_per_lookup = total_lookup_ns / lookup_iters
    local lookups_per_sec = (lookup_iters / (total_lookup_ns / 1000000000))

    print(string.format("  Table: %-16s | Size: %6.2f MB | Records: %6d", file_name, size_mb, db_instance:Count()))
    print(string.format("    - Parse Duration  : %6.2f ms (Best of %d runs)", min_parse, iterations))
    print(string.format("    - Load Throughput : %6.1f MB/s", throughput_mb))
    print(string.format("    - PK Lookup Latency: %6.2f ns / lookup (%6.1f million ops/sec)", ns_per_lookup, lookups_per_sec / 1000000))
    print()
end

benchmark_table("areatable.db2", 5)
benchmark_table("map.db2", 5)
benchmark_table("chrclasses.db2", 5)

print("==================================================================")
print("       ALL REAL-WORLD WOW 12.1.5 DB2 TESTS & BENCHMARKS PASSED    ")
print("==================================================================")
