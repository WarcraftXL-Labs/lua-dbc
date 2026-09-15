--[[
    tools/app/dbd_common.lua
    Shared helpers for the lua-dbc Lua tools:
      - Build parsing (string | structured table)
      - Build comparison and matching
      - Version definition selection
      - Build discovery in a JSON folder
      - Simple CLI argument parser
]]

local dbd_common = {}

-- ---------------------------------------------------------------------------
-- Build parsing
-- ---------------------------------------------------------------------------

--- Normalizes a build entry into a tuple {expansion, major, minor, build}.
--- Accepts:
---   "3.3.5.12340"                    -> {3, 3, 5, 12340}
---   "3.3.5"                          -> {0, 3, 3, 5}
---   {expansion, major, minor, build} -> {exp, maj, min, build}
--- @param b string|table|nil
--- @return integer[]|nil
function dbd_common.parse_build(b)
    if not b then return nil end

    if type(b) == "table" then
        if b.expansion and b.major and b.minor and b.build then
            return {
                tonumber(b.expansion),
                tonumber(b.major),
                tonumber(b.minor),
                tonumber(b.build),
            }
        end
        return nil
    end

    if type(b) == "string" then
        local s = b:gsub("^%s+", ""):gsub("%s+$", "")
        -- Strip letter revision suffix: "3.3.5a.12340" -> "3.3.5.12340"
        s = s:gsub("(%d+%.%d+%.%d+)%a+(%.%d+)", "%1%2")
        s = s:gsub("(%d+%.%d+%.%d+)%a+$", "%1")

        local e, maj, min, bld = s:match("^(%d+)%.(%d+)%.(%d+)%.(%d+)$")
        if e then
            return { tonumber(e), tonumber(maj), tonumber(min), tonumber(bld) }
        end
        local maj2, min2, bld2 = s:match("^(%d+)%.(%d+)%.(%d+)$")
        if maj2 then
            return { 0, tonumber(maj2), tonumber(min2), tonumber(bld2) }
        end
    end

    return nil
end

--- Converts a build tuple back to its canonical string form.
function dbd_common.build_to_str(b)
    if not b then return nil end
    return string.format("%d.%d.%d.%d", b[1], b[2], b[3], b[4])
end

--- Compares two build tuples.
--- @return integer -1, 0 or 1
function dbd_common.cmp_build(a, b)
    for i = 1, 4 do
        if a[i] < b[i] then return -1
        elseif a[i] > b[i] then return 1 end
    end
    return 0
end

--- Tests whether a build entry (string, range string, or table) matches a target.
--- @param entry string|table
--- @param target integer[]
--- @return boolean
function dbd_common.build_matches(entry, target)
    if not target then return false end

    -- Range string "min-max"
    if type(entry) == "string" and entry:find("-") then
        local min_s, max_s = entry:match("^(.-)%-(.-)$")
        local min_b = dbd_common.parse_build(min_s)
        local max_b = dbd_common.parse_build(max_s)
        if min_b and max_b then
            return dbd_common.cmp_build(target, min_b) >= 0
               and dbd_common.cmp_build(target, max_b) <= 0
        end
        return false
    end

    local eb = dbd_common.parse_build(entry)
    if eb then
        return dbd_common.cmp_build(target, eb) == 0
    end
    return false
end

--- Returns a short tag for a build: "3.3.5.12340" -> "v335".
function dbd_common.get_build_tag(build_str)
    local parts = {}
    for p in build_str:gmatch("[^.]+") do parts[#parts + 1] = p end
    if #parts >= 3 then
        return string.format("v%d%d%d",
            tonumber(parts[1]), tonumber(parts[2]), tonumber(parts[3]))
    end
    return "v" .. build_str:gsub("%.", "_")
end

-- ---------------------------------------------------------------------------
-- Version definition selection
-- ---------------------------------------------------------------------------

--- Finds the version definition matching a target build (STRICT, no fallback).
--- @param vdefs table[]
--- @param target_build_str string
--- @return table|nil
function dbd_common.select_version_definition(vdefs, target_build_str)
    local target = dbd_common.parse_build(target_build_str)
    if not target then return nil end

    for _, vd in ipairs(vdefs) do
        for _, b in ipairs(vd.builds or {}) do
            if dbd_common.build_matches(b, target) then return vd end
        end
        for _, br in ipairs(vd.buildRanges or {}) do
            local min_b = dbd_common.parse_build(br.minBuild)
            local max_b = dbd_common.parse_build(br.maxBuild)
            if min_b and max_b
                and dbd_common.cmp_build(target, min_b) >= 0
                and dbd_common.cmp_build(target, max_b) <= 0 then
                return vd
            end
        end
    end
    return nil
end

-- ---------------------------------------------------------------------------
-- Build discovery
-- ---------------------------------------------------------------------------

--- Scans a JSON folder and returns all builds found (sorted).
--- @param def_dir string
--- @param json_files string[]|nil Filenames list. If nil, scans def_dir.
--- @param fs table tools.fs module
--- @param json table tools.json_pretty module
--- @return string[]
function dbd_common.discover_builds(def_dir, json_files, fs, json)
    local builds = {}

    local function scan_file(content)
        local ok, db_def = pcall(json.decode, content)
        if not ok or not db_def then return end

        for _, vd in ipairs(db_def.versionDefinitions or {}) do
            for _, b in ipairs(vd.builds or {}) do
                local parsed = dbd_common.parse_build(b)
                if parsed then builds[dbd_common.build_to_str(parsed)] = true end
            end
            for _, br in ipairs(vd.buildRanges or {}) do
                for _, key in ipairs({ "minBuild", "maxBuild" }) do
                    local parsed = dbd_common.parse_build(br[key])
                    if parsed then builds[dbd_common.build_to_str(parsed)] = true end
                end
            end
        end
    end

    if json_files then
        for _, jf in ipairs(json_files) do
            local content = fs.read(fs.join(def_dir, jf))
            if content then scan_file(content) end
        end
    else
        for _, jf in ipairs(fs.listdir(def_dir, ".json")) do
            if jf:sub(1, 1) ~= "_" then
                local content = fs.read(fs.join(def_dir, jf))
                if content then scan_file(content) end
            end
        end
    end

    local list = {}
    for b in pairs(builds) do list[#list + 1] = b end
    table.sort(list, function(a, b)
        return dbd_common.cmp_build(
            dbd_common.parse_build(a),
            dbd_common.parse_build(b)) < 0
    end)
    return list
end

-- ---------------------------------------------------------------------------
-- CLI helpers
-- ---------------------------------------------------------------------------

--- Parses a simple CLI argument list.
--- Supports:
---   --builds <a,b,c>
---   --jobs <n>
---   --force
---   positional args (in order of appearance)
---
--- @param argv table
--- @param spec table { positional = { "name1", "name2", ... } }
--- @return table options
function dbd_common.parse_cli(argv, spec)
    spec = spec or {}
    local positionals = spec.positional or {}

    local opts = {
        builds = "auto",
        force = false,
        jobs = 0,
        positional = {},
    }

    local positional_list = {}
    local i = 1
    while i <= #argv do
        local a = argv[i]
        if a == "--builds" then
            opts.builds = argv[i + 1] or "auto"
            i = i + 2
        elseif a == "--jobs" then
            opts.jobs = tonumber(argv[i + 1]) or 0
            i = i + 2
        elseif a == "--force" then
            opts.force = true
            i = i + 1
        elseif a:sub(1, 2) == "--" then
            -- Unknown option: ignored
            i = i + 1
        else
            positional_list[#positional_list + 1] = a
            i = i + 1
        end
    end

    for idx, name in ipairs(positionals) do
        opts.positional[name] = positional_list[idx]
    end
    opts._positional_list = positional_list

    return opts
end

--- Splits "3.3.5.12340,12.1.5.69594" into a list of build strings.
function dbd_common.split_builds(builds_spec)
    local list = {}
    for b in builds_spec:gmatch("[^,]+") do
        list[#list + 1] = b:gsub("^%s+", ""):gsub("%s+$", "")
    end
    return list
end

return dbd_common