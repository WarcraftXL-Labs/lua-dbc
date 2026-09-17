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
local _build = require("dbc._build")

dbd_common.parse_build   = _build.parse
dbd_common.build_to_str  = _build.to_str
dbd_common.cmp_build     = _build.cmp
dbd_common.build_matches = _build.matches
dbd_common.get_build_tag = _build.get_tag

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
        elseif a:sub(1, 9) == "--builds=" then
            opts.builds = a:sub(10)
            i = i + 1
        elseif a == "--jobs" then
            opts.jobs = tonumber(argv[i + 1]) or 0
            i = i + 2
        elseif a:sub(1, 7) == "--jobs=" then
            opts.jobs = tonumber(a:sub(8)) or 0
            i = i + 1
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