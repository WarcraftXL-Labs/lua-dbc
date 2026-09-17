--[[
    test_locale_normalization.lua
    Tests normalized localized string column access in lua-dbc.
    Validates:
    - dbc.Locale enums (camelCase, UPPERCASE, reverse mapping).
    - Getting without _lang: row:GetAreaName() (first populated) vs row:GetAreaName(locale).
    - Setting without _lang: default to enUS, specific locale, and table of locales.
    - Direct table indexing: row.AreaName and row.AreaName = ...
    - Backward compatibility: row:GetAreaName_lang() and row:SetAreaName_lang(...).
    - Modern WDC5 DB2 behavior with locale checks.
]]

package.path = "src/?.lua;src/?/init.lua;" .. package.path

local dbc = require("dbc")

print("==================================================================")
print("             LOCALIZED COLUMN NORMALIZATION TEST SUITE            ")
print("==================================================================")

-- ---------------------------------------------------------------------------
-- 1. Test dbc.Locale Constants
-- ---------------------------------------------------------------------------
print("[Test 1] Validating dbc.Locale enumeration...")
assert(dbc.Locale ~= nil, "dbc.Locale should exist")
assert(dbc.LOCALE ~= nil, "dbc.LOCALE alias should exist")
assert(dbc.Locale.enUS == 0, "enUS should be slot 0")
assert(dbc.Locale.enGB == 0, "enGB should be slot 0")
assert(dbc.Locale.ENUS == 0, "ENUS alias should be slot 0")
assert(dbc.Locale.frFR == 2, "frFR should be slot 2")
assert(dbc.Locale.FRFR == 2, "FRFR alias should be slot 2")
assert(dbc.Locale.deDE == 3, "deDE should be slot 3")
assert(dbc.Locale.DEDE == 3, "DEDE alias should be slot 3")
assert(dbc.Locale[0] == "enUS", "Reverse lookup for slot 0 should be enUS")
assert(dbc.Locale[2] == "frFR", "Reverse lookup for slot 2 should be frFR")
assert(dbc.Locale.ALL == -1, "Locale.ALL should be -1")
print("  -> dbc.Locale constants and aliases verified [OK]\n")

-- ---------------------------------------------------------------------------
-- 2. Test In-Memory 3.3.5 DBC with Localized Columns
-- ---------------------------------------------------------------------------
print("[Test 2] Testing localized operations on in-memory 3.3.5 DBC...")

local tbl = dbc.Create("AreaTable", "WDBC", "3.3.5.12340")
local row = tbl:Create(1001)

-- Verify initial state: empty string
assert(row:GetAreaName() == "", "Initial GetAreaName() should be empty")
assert(row:GetAreaName(dbc.Locale.FRFR) == "", "Initial frFR should be empty")
assert(row:GetAreaName(dbc.Locale.ENUS) == "", "Initial enUS should be empty")

-- Form 1: SetAreaName("Bob") defaults to enUS (slot 0)
row:SetAreaName("Bob")
assert(row:GetAreaName(dbc.Locale.ENUS) == "Bob", "enUS should now be 'Bob'")
assert(row:GetAreaName(dbc.Locale.FRFR) == "", "frFR should remain empty")
assert(row:GetAreaName() == "Bob", "GetAreaName() should return first populated ('Bob')")

-- Form 2: SetAreaName("Robert", dbc.Locale.FRFR) updates only frFR
row:SetAreaName("Robert", dbc.Locale.FRFR)
assert(row:GetAreaName(dbc.Locale.FRFR) == "Robert", "frFR should now be 'Robert'")
assert(row:GetAreaName(dbc.Locale.ENUS) == "Bob", "enUS should remain 'Bob'")

-- Form 3: Table of locales { [Locale.FRFR] = "Hurlevent", [Locale.ENUS] = "Stormwind" }
row:SetAreaName({
    [dbc.Locale.FRFR] = "Hurlevent",
    [dbc.Locale.ENUS] = "Stormwind",
    [dbc.Locale.DEDE] = "Sturmwind",
})
assert(row:GetAreaName(dbc.Locale.FRFR) == "Hurlevent", "Batch frFR mismatch")
assert(row:GetAreaName(dbc.Locale.ENUS) == "Stormwind", "Batch enUS mismatch")
assert(row:GetAreaName(dbc.Locale.DEDE) == "Sturmwind", "Batch deDE mismatch")
assert(row:GetAreaName(dbc.Locale.ESES) == "", "Unspecified esES should be empty")
assert(row:GetAreaName() == "Stormwind", "GetAreaName() should return first populated (slot 0)")

-- Also support string keys in table: { frFR = "OrgrimmarFR", enUS = "OrgrimmarUS" }
row:SetAreaName({ frFR = "OrgrimmarFR", enUS = "OrgrimmarUS" })
assert(row:GetAreaName("frFR") == "OrgrimmarFR", "String key frFR mismatch")
assert(row:GetAreaName("enUS") == "OrgrimmarUS", "String key enUS mismatch")

-- Form 4: Set to ALL
row:SetAreaName("UniversalName", "all")
assert(row:GetAreaName(dbc.Locale.ENUS) == "UniversalName", "All slot 0 mismatch")
assert(row:GetAreaName(dbc.Locale.FRFR) == "UniversalName", "All slot 2 mismatch")
assert(row:GetAreaName(dbc.Locale.RURU) == "UniversalName", "All slot 8 mismatch")

-- Direct table indexing (__index and __newindex)
row.AreaName = "DirectAssigned"
assert(row.AreaName == "DirectAssigned", "Direct table read mismatch")
assert(row:GetAreaName(dbc.Locale.ENUS) == "DirectAssigned", "Direct table write should update enUS")

-- Backward compatibility: _lang methods
assert(row:GetAreaName_lang(dbc.Locale.ENUS) == "DirectAssigned", "GetAreaName_lang failed")
row:SetAreaName_lang("LegacyAssigned", dbc.Locale.FRFR)
assert(row:GetAreaName(dbc.Locale.FRFR) == "LegacyAssigned", "SetAreaName_lang failed")

print("  -> In-memory 3.3.5 DBC localized operations passed [OK]\n")

-- ---------------------------------------------------------------------------
-- 3. Test Real 3.3.5 DBC File
-- ---------------------------------------------------------------------------
local REAL_DBC_PATH = [[E:\World of Warcraft\1.Client\Wrath of the Lich King\Data\Patch-WowZomboid.MPQ\DBFilesClient\AreaTable.dbc]]
local f_dbc = io.open(REAL_DBC_PATH, "rb")
if f_dbc then
    f_dbc:close()
    print("[Test 3] Testing real 3.3.5 AreaTable.dbc file...")
    local area_table = dbc.Open(REAL_DBC_PATH, "AreaTable", "3.3.5.12340")
    local row_5001 = area_table:FindById(5001)
    assert(row_5001 ~= nil, "Row 5001 should exist")

    -- Check that GetAreaName() returns the populated name
    local name = row_5001:GetAreaName()
    assert(name == "Longrivage", "Expected 'Longrivage', got: " .. tostring(name))

    -- Check with explicit locale
    assert(row_5001:GetAreaName(dbc.Locale.FRFR) == "Longrivage", "Expected 'Longrivage' for frFR")
    assert(row_5001:GetAreaName(dbc.Locale.ENUS) == "Longrivage", "Expected 'Longrivage' for enUS")

    -- Direct property access
    assert(row_5001.AreaName == "Longrivage", "Expected row_5001.AreaName to be 'Longrivage'")
    print("  -> Real 3.3.5 AreaTable.dbc verified [OK]\n")
else
    print("[Test 3] (Skipped: 3.3.5 AreaTable.dbc file not found)\n")
end

-- ---------------------------------------------------------------------------
-- 4. Test Real 12.1.5 WDC5 DB2 File
-- ---------------------------------------------------------------------------
local REAL_DB2_PATH = [[E:\World of Warcraft\2.Projects\TheEndOfTime\Client_Source\12.1.5\dbfilesclient\areatable.db2]]
local f_db2 = io.open(REAL_DB2_PATH, "rb")
if f_db2 then
    f_db2:close()
    print("[Test 4] Testing real 12.1.5 WDC5 areatable.db2 file...")
    local area_db2 = dbc.Open(REAL_DB2_PATH)
    local dun_morogh = area_db2[1]
    assert(dun_morogh ~= nil, "Dun Morogh (ID 1) should exist")

    -- Call without _lang
    assert(dun_morogh:GetAreaName() == "Dun Morogh", "GetAreaName() should return 'Dun Morogh'")
    assert(dun_morogh.AreaName == "Dun Morogh", "dun_morogh.AreaName should return 'Dun Morogh'")

    -- Call with explicit matching locale (file is enUS)
    assert(dun_morogh:GetAreaName(dbc.Locale.ENUS) == "Dun Morogh", "GetAreaName(ENUS) should return 'Dun Morogh'")

    -- Call with non-matching locale on monolingual enUS client file
    assert(dun_morogh:GetAreaName(dbc.Locale.FRFR) == "", "GetAreaName(FRFR) on enUS DB2 should return empty string")

    -- Backward compatibility
    assert(dun_morogh:GetAreaName_lang() == "Dun Morogh", "GetAreaName_lang() backward compatibility failed")

    print("  -> Real 12.1.5 WDC5 areatable.db2 verified [OK]\n")
else
    print("[Test 4] (Skipped: 12.1.5 areatable.db2 file not found)\n")
end

print("==================================================================")
print("              ALL LOCALIZATION TESTS PASSED 100%                 ")
print("==================================================================")
