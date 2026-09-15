--[[
    test/test_all.lua
    End-to-end integration and unit tests for lua-dbc.
    Run with: luajit test/test_all.lua
]]

-- Ensure package.path includes src (or your rocks folder)
package.path = "src/?.lua;src/?/init.lua;" .. package.path

local dbc = require("dbc")

local function assert_eq(actual, expected, msg)
    if actual ~= expected then
        error(string.format("Assertion failed: expected %s, got %s. (%s)",
            tostring(expected), tostring(actual), msg or ""))
    end
end

local function assert_true(val, msg)
    if not val then
        error(string.format("Assertion failed: expected true, got %s. (%s)",
            tostring(val), msg or ""))
    end
end

print("========================================")
print("Running lua-dbc test suite...")
print("========================================")

-- Test 1: Schemas & Enums loader
print("[Test 1] Schemas & Enums...")
local spell_schema = dbc.Schemas.Spell
assert_true(spell_schema ~= nil, "Spell schema should be loaded")
assert_eq(spell_schema.name, "Spell", "Schema name")

local item_quality = dbc.Enums.ItemQuality
assert_true(item_quality ~= nil, "ItemQuality enum should be loaded")
assert_eq(item_quality.PURPLE, 4, "ItemQuality.PURPLE value")

local spell_attrs = dbc.Enums.SpellAttributes
assert_true(spell_attrs.flags ~= nil, "SpellAttributes.flags should exist")
assert_eq(spell_attrs.flags.IS_PASSIVE, 64, "IS_PASSIVE flag bitmask (1 << 6 = 64)")
print("  -> Passed!")

-- Test 2: Blank table creation and custom row creation
print("[Test 2] Table creation & custom row IDs...")
local icon_table = dbc.Create("SpellIcon")
assert_eq(icon_table:Count(), 0, "Initial count should be 0")

local icon1 = icon_table:Create(100)
    :SetTextureFilename("Interface\\Icons\\Spell_Fire_Fireball")
assert_eq(icon_table:Count(), 1, "Count after 1 row")
assert_eq(icon1:GetID(), 100, "Row 1 ID")
assert_eq(icon1:GetTextureFilename(), "Interface\\Icons\\Spell_Fire_Fireball", "Texture filename getter")

local icon2 = icon_table:Create(200)
    :SetTextureFilename("Interface\\Icons\\Spell_Frost_Frostbolt")
assert_eq(icon_table:Count(), 2, "Count after 2 rows")
assert_eq(icon2:GetID(), 200, "Row 2 ID")

-- Fast O(1) ID lookup
local found_icon = icon_table:FindById(100)
assert_true(found_icon ~= nil, "FindById(100) should succeed")
assert_eq(found_icon:GetTextureFilename(), "Interface\\Icons\\Spell_Fire_Fireball", "Found icon text")

-- Sequential next ID creation
local icon_next = icon_table:CreateNext({ TextureFilename = "Interface\\Icons\\Spell_Arcane_Blast" })
assert_eq(icon_next:GetID(), 201, "Next sequential ID should be 201 (max 200 + 1)")
assert_eq(icon_next:GetTextureFilename(), "Interface\\Icons\\Spell_Arcane_Blast", "Created with FromTable data")
print("  -> Passed!")

-- Test 3: Cloning rows
print("[Test 3] Row cloning...")
local icon3 = icon_table:CloneRow(100, 300)
assert_eq(icon3:GetID(), 300, "Cloned row ID")
assert_eq(icon3:GetTextureFilename(), "Interface\\Icons\\Spell_Fire_Fireball", "Cloned row inherits values")
icon3:SetTextureFilename("Interface\\Icons\\Spell_Fire_Pyroblast")
assert_eq(icon3:GetTextureFilename(), "Interface\\Icons\\Spell_Fire_Pyroblast", "Cloned row updated")
assert_eq(icon1:GetTextureFilename(), "Interface\\Icons\\Spell_Fire_Fireball", "Original row intact")
print("  -> Passed!")

-- Test 4: LINQ Query Engine
print("[Test 4] LINQ Query Engine...")
local all_icons = icon_table:Query():ToList()
assert_eq(#all_icons, 4, "Query ToList count")

local fire_icons = icon_table:Query()
    :Where(function(row) return row:GetTextureFilename():find("Fire") ~= nil end)
    :OrderBy(function(row) return row:GetID() end)
    :ToList()

assert_eq(#fire_icons, 2, "Filtered fire icons count")
assert_eq(fire_icons[1]:GetID(), 100, "First fire icon ID")
assert_eq(fire_icons[2]:GetID(), 300, "Second fire icon ID")

local max_id = icon_table:Query():Max(function(row) return row:GetID() end)
assert_eq(max_id, 300, "Max ID")

local min_id = icon_table:Query():Min(function(row) return row:GetID() end)
assert_eq(min_id, 100, "Min ID")
print("  -> Passed!")

-- Test 5: Binary Serialization & Roundtrip
print("[Test 5] Binary Serialization & Roundtrip...")
local serialized = icon_table:GetFile():Serialize()
assert_true(#serialized > 0, "Serialized data length > 0")

local restored_file = dbc.File.new(serialized, dbc.Schemas.SpellIcon, "<test>")
local restored_table = dbc.Table.new(restored_file)
assert_eq(restored_table:Count(), 4, "Restored table row count")
local restored_row = restored_table:FindById(300)
assert_true(restored_row ~= nil, "Restored row 300 should exist")
assert_eq(restored_row:GetTextureFilename(), "Interface\\Icons\\Spell_Fire_Pyroblast", "Restored text")
print("  -> Passed!")

-- Test 6: Relations Catalog and Cascading Creation
print("[Test 6] Relations Catalog & Cascading Creation...")
local spell_rels = dbc.Relations.Get("Spell")
assert_true(#spell_rels > 0, "Spell should have outbound relations")

local inbound_icons = dbc.Relations.GetInbound("SpellIcon")
assert_true(#inbound_icons > 0, "SpellIcon should have inbound relations (from Spell, etc.)")

local workspace = dbc.Workspace({
    source = "./test/tmp/test_ws/source",
    out = "./test/tmp/test_ws/output"
})
workspace.tables["SpellIcon"] = icon_table

local spell_table = workspace:Create("Spell")
local test_spell = spell_table:Create(500)
    :SetName("Apocalypse", "enGB")

-- Effortlessly create a related SpellIcon row and automatically link it!
local created_icon = test_spell:CreateRelated("SpellIcon", {
    TextureFilename = "Interface\\Icons\\Spell_Fire_Apocalypse"
})

assert_true(created_icon ~= nil, "Created related icon should not be nil")
assert_eq(test_spell:GetSpellIconID(), created_icon:GetID(), "Spell foreign key linked to new icon")
assert_eq(created_icon:GetTextureFilename(), "Interface\\Icons\\Spell_Fire_Apocalypse", "Created icon field populated")

-- Navigate foreign key
local fetched_icon = test_spell:GetSpellIcon()
assert_eq(fetched_icon:GetID(), created_icon:GetID(), "Fetched linked icon ID")

-- Save to output directory
local bytes = spell_table:Save()
assert_true(bytes > 0, "Saved bytes > 0")

local saved_file = io.open("./test/tmp/test_ws/output/Spell.dbc", "rb")
assert_true(saved_file ~= nil, "Saved file exists in output dir")
if saved_file then saved_file:close() end

print("  -> Passed!")

print("========================================")
print("ALL TESTS PASSED SUCCESSFULLY! (100%)")
print("========================================")
