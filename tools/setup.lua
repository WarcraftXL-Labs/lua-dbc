--[[
    tools/setup.lua
    Verifies that vendor/WoWDBDefs is initialized and that the build
    artifacts (definitions, relations index, LuaLS meta) exist for the
    requested builds. Generates whatever is missing.

    Usage:
        luajit tools/setup.lua [--builds auto|3.3.5.12340,12.1.5.69594] [--force]

    Prerequisites:
        - vendor/WoWDBDefs must be populated (git submodule update --init --recursive).
        - tools/dbd_to_json.lua must exist.
]]

package.path = "?.lua;src/?.lua;src/?/init.lua;" .. package.path

local fs  = require("tools.fs")
local cli = require("tools.cli")

local DEFAULT_BUILDS = "3.3.5.12340,12.1.5.69594"
local DBD_SRC        = "vendor/WoWDBDefs/definitions"

-- ---------------------------------------------------------------------------
-- Argument parsing
-- ---------------------------------------------------------------------------

local function parse_args(argv)
    local opts = {
        builds = DEFAULT_BUILDS,
        force  = false,
    }
    local i = 1
    while i <= #argv do
        local a = argv[i]
        if a == "--builds" then
            opts.builds = argv[i + 1] or DEFAULT_BUILDS
            i = i + 2
        elseif a == "--force" then
            opts.force = true
            i = i + 1
        else
            i = i + 1
        end
    end
    return opts
end

-- ---------------------------------------------------------------------------
-- Sanity checks
-- ---------------------------------------------------------------------------

local function current_dir()
    return os.getenv("CD") or os.getenv("PWD") or "?"
end

local function check_submodule()
    if not fs.isdir(DBD_SRC) then
        print("[setup] ERROR: " .. DBD_SRC .. " is missing or is not a directory.")
        print("[setup] Current directory: " .. current_dir())
        print("")
        print("[setup] Two common causes:")
        print("  1. You are not running this script from the repository root")
        print("     that contains 'vendor/'. Try:")
        print("       cd <path-to-lua-dbc>")
        print("       luajit tools/setup.lua")
        print("")
        print("  2. The git submodule is not initialized. Try:")
        print("       git submodule update --init --recursive")
        os.exit(1)
    end

    local files = fs.listdir(DBD_SRC, ".dbd")
    if #files == 0 then
        print("[setup] ERROR: " .. DBD_SRC .. " exists but contains no .dbd file.")
        print("[setup] The submodule is probably empty. Run:")
        print("[setup]   git submodule update --init --recursive")
        os.exit(1)
    end

    print(string.format("[setup] WoWDBDefs: %d .dbd files found.", #files))
end

--- Returns true if at least one artifact needs to be regenerated.
local function needs_rebuild()
    -- No definitions directory at all
    if not fs.isdir("definitions") then return true end

    -- No JSON files inside
    local json_files = fs.listdir("definitions", ".json")
    if #json_files == 0 then return true end

    -- No relations index
    if not fs.exists("definitions/_relations/index.json") then return true end

    return false
end

-- ---------------------------------------------------------------------------
-- Pipeline
-- ---------------------------------------------------------------------------

local function run_step(label, cmd)
    print("[setup] >>> " .. label)
    print("[setup]     " .. cmd)
    local ok = cli.run(cmd)
    if not ok then
        print("[setup] FAILED while running: " .. label)
        os.exit(1)
    end
end

local function main(argv)
    local opts = parse_args(argv)

    check_submodule()

    local rebuild = opts.force or needs_rebuild()

    if not rebuild then
        print("[setup] Artifacts already present. Nothing to do.")
        print("[setup] (Use --force to regenerate.)")
        return
    end

    print("[setup] Generating build artifacts...")
    print("[setup] Target builds: " .. opts.builds)

    -- 1. DBD -> JSON
    if fs.exists("tools/dbd_to_json.lua") then
        run_step("dbd_to_json (Lua)",
            "luajit tools/dbd_to_json.lua " .. DBD_SRC .. " definitions")
    else
        print("[setup] ERROR: no dbd_to_json tool found.")
        print("[setup] Expected either tools/dbd_to_json.lua.")
        os.exit(1)
    end

    -- 2. Per-build relations index
    run_step("build_relations",
        "luajit tools/build_relations.lua definitions --builds " .. opts.builds)

    -- 3. Per-build LuaLS meta
    run_step("generate_meta",
        "luajit tools/generate_meta.lua definitions meta --builds " .. opts.builds)

    print("[setup] Done.")
end

main(arg or {})