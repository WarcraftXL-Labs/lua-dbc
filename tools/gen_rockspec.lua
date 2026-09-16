--[[
    tools/gen_rockspec.lua
    Generates lua-dbc-scm-1.rockspec by scanning the source tree.

    Scanned directories:
        src/dbc/          -> dbc.*
        src/dbc/formats/  -> dbc.formats.*
        src/enums/        -> dbc.enums.*
        tools/            -> tools.*

    Root modules that do not follow the standard prefix mapping (init.lua
    of src/ and src/dbc/) are declared explicitly in CONFIG.extra_modules.

    Usage:
        luajit tools/gen_rockspec.lua
        luajit tools/gen_rockspec.lua --output custom.rockspec

    Warnings:
        - Any declared module whose file does not exist on disk is reported
          at the end. This catches typos and forgotten files before running
          `luarocks make`.
        - The generator is idempotent: running it twice produces byte-identical
          output (module list is sorted alphabetically).
]]

package.path = "src/?.lua;src/?/init.lua;?.lua;?/init.lua;" .. package.path

local fs  = require("tools.fs")
local cli = require("tools.cli")

local LOG = "gen_rockspec"

-- ---------------------------------------------------------------------------
-- Configuration
-- ---------------------------------------------------------------------------

local CONFIG = {
    -- Package identity
    package      = "lua-dbc",
    version      = "scm-1",
    git_url      = "git+https://github.com/WarcraftXL-Labs/lua-dbc.git",
    branch       = "dev",

    -- Description
    summary      = "Fluent LuaJIT DBC/DB2 reader, editor and LINQ query engine for World of Warcraft",
    detailed_1   = "lua-dbc provides FFI-based reading, editing, and querying of World of Warcraft",
    detailed_2   = "client databases (WDBC, WDB2, WDB3/4, WDB5/6, WDC1-5) across every game version.",
    homepage     = "https://github.com/WarcraftXL-Labs/lua-dbc",
    license      = "GPL-3.0",

    -- Output
    default_output = "lua-dbc-scm-1.rockspec",

    -- Runtime dependencies
    dependencies = {
        "lua >= 5.1",
        "lua-cjson",
    },

    -- Root modules that do not follow the standard prefix mapping.
    -- Key: full module name. Value: filesystem path.
    extra_modules = {
        ["lua-dbc"] = "src/init.lua",
        ["dbc"]     = "src/dbc/init.lua",
    },

    -- Directories to scan. Each entry produces module names by prefixing the
    -- module suffix (path without .lua, with dots) with the given prefix.
    scan = {
        { dir = "src/dbc",         prefix = "dbc" },
        { dir = "src/dbc/formats", prefix = "dbc.formats" },
        { dir = "src/enums",       prefix = "dbc.enums" },
        { dir = "tools",           prefix = "tools" },
    },

    -- Data directories copied verbatim into the installed tree.
    -- These are NOT Lua modules; they are read at runtime with io.open().
    copy_directories = {
        "definitions",
        "meta",
    },
}

-- ---------------------------------------------------------------------------
-- Filesystem scanning
-- ---------------------------------------------------------------------------

---Recursively lists all .lua files under `root`.
---Returns paths relative to `root` using forward slashes.
---@param root string
---@return string[]
local function scan_lua_files(root)
    local out = {}

    local function walk(rel)
        local abs = rel == "" and root or (root .. "/" .. rel)
        for _, name in ipairs(fs.listdir(abs)) do
            local child_rel = rel == "" and name or (rel .. "/" .. name)
            local child_abs = root .. "/" .. child_rel

            if name:sub(-4) == ".lua" then
                out[#out + 1] = child_rel
            elseif name:sub(1, 1) ~= "." then
                -- Distinguish file from directory. io.open succeeds on files,
                -- fails on directories on Windows. On Unix, use fs.isdir.
                if not fs.exists(child_abs) then
                    walk(child_rel)
                end
            end
        end
    end

    walk("")
    return out
end

---Converts "formats/wdbc.lua" -> "formats.wdbc".
---@param rel string
---@return string
local function path_to_module_suffix(rel)
    local no_ext = rel:gsub("%.lua$", "")
    return no_ext:gsub("[/\\]", ".")
end

-- ---------------------------------------------------------------------------
-- Module collection
-- ---------------------------------------------------------------------------

---Builds the full module table by combining extra modules with scanned ones.
---@return table<string, string> module_name -> file_path
local function collect_modules()
    local modules = {}

    -- 1. Explicit roots
    for name, path in pairs(CONFIG.extra_modules) do
        modules[name] = path
    end

    -- 2. Scanned directories
    for _, entry in ipairs(CONFIG.scan) do
        local dir    = entry.dir
        local prefix = entry.prefix

        if not fs.isdir(dir) then
            cli.log(LOG, "Warning: scan directory not found, skipping: %s", dir)
        else
            for _, rel in ipairs(scan_lua_files(dir)) do
                -- init.lua of the scanned directory is mapped explicitly
                -- through extra_modules if it matters; skip it here.
                if rel ~= "init.lua" then
                    local suffix   = path_to_module_suffix(rel)
                    local mod_name = prefix .. "." .. suffix
                    local file_path = dir .. "/" .. rel
                    modules[mod_name] = file_path
                end
            end
        end
    end

    return modules
end

-- ---------------------------------------------------------------------------
-- Rockspec emission
-- ---------------------------------------------------------------------------

local function lua_escape(s)
    return s:gsub("\\", "\\\\"):gsub('"', '\\"')
end

local function emit_rockspec(modules)
    -- Sort module names alphabetically for stable output.
    local names = {}
    for name in pairs(modules) do names[#names + 1] = name end
    table.sort(names)

    local parts = {}

    parts[#parts + 1] = ('package = "%s"\n'):format(CONFIG.package)
    parts[#parts + 1] = ('version = "%s"\n'):format(CONFIG.version)

    parts[#parts + 1] = 'source = {\n'
    parts[#parts + 1] = ('   url = "%s",\n'):format(CONFIG.git_url)
    parts[#parts + 1] = ('   branch = "%s",\n'):format(CONFIG.branch)
    parts[#parts + 1] = '}\n'

    parts[#parts + 1] = 'description = {\n'
    parts[#parts + 1] = ('   summary = "%s",\n'):format(lua_escape(CONFIG.summary))
    parts[#parts + 1] = '   detailed = [[\n'
    parts[#parts + 1] = '      ' .. CONFIG.detailed_1 .. '\n'
    parts[#parts + 1] = '      ' .. CONFIG.detailed_2 .. '\n'
    parts[#parts + 1] = '   ]],\n'
    parts[#parts + 1] = ('   homepage = "%s",\n'):format(CONFIG.homepage)
    parts[#parts + 1] = ('   license = "%s",\n'):format(CONFIG.license)
    parts[#parts + 1] = '}\n'

    parts[#parts + 1] = 'dependencies = {\n'
    for _, dep in ipairs(CONFIG.dependencies) do
        parts[#parts + 1] = ('   "%s",\n'):format(dep)
    end
    parts[#parts + 1] = '}\n'

    parts[#parts + 1] = 'build = {\n'
    parts[#parts + 1] = '   type = "builtin",\n'

    parts[#parts + 1] = '   modules = {\n'
    for _, name in ipairs(names) do
        parts[#parts + 1] = ('      ["%s"] = "%s",\n'):format(name, modules[name])
    end
    parts[#parts + 1] = '   },\n'

    parts[#parts + 1] = '   copy_directories = {\n'
    for _, dir in ipairs(CONFIG.copy_directories) do
        parts[#parts + 1] = ('      "%s",\n'):format(dir)
    end
    parts[#parts + 1] = '   },\n'

    parts[#parts + 1] = '}\n'

    return table.concat(parts)
end

-- ---------------------------------------------------------------------------
-- Diagnostics
-- ---------------------------------------------------------------------------

---Returns a list of declared modules whose source file is missing.
---@param modules table<string, string>
---@return string[]
local function find_missing_files(modules)
    local missing = {}
    for name, path in pairs(modules) do
        if not fs.exists(path) then
            missing[#missing + 1] = name .. " -> " .. path
        end
    end
    table.sort(missing)
    return missing
end

---Counts entries of a hash-like table.
local function count(t)
    local n = 0
    for _ in pairs(t) do n = n + 1 end
    return n
end

-- ---------------------------------------------------------------------------
-- Argument parsing
-- ---------------------------------------------------------------------------

local function parse_args(argv)
    local opts = { output = CONFIG.default_output }
    local i = 1
    while i <= #argv do
        local a = argv[i]
        if a == "--output" then
            opts.output = argv[i + 1] or CONFIG.default_output
            i = i + 2
        else
            i = i + 1
        end
    end
    return opts
end

-- ---------------------------------------------------------------------------
-- Main
-- ---------------------------------------------------------------------------

local function main(argv)
    local opts = parse_args(argv)

    cli.log(LOG, "Scanning source tree...")
    local modules = collect_modules()

    -- Report per-directory counts for visibility.
    local per_prefix = {}
    for name in pairs(modules) do
        local prefix = name:match("^([^%.]+)")
        per_prefix[prefix] = (per_prefix[prefix] or 0) + 1
    end

    local prefixes = {}
    for p in pairs(per_prefix) do prefixes[#prefixes + 1] = p end
    table.sort(prefixes)
    for _, p in ipairs(prefixes) do
        cli.log(LOG, "  %-20s %d modules", p, per_prefix[p])
    end

    local content = emit_rockspec(modules)
    fs.write(opts.output, content)

    cli.log(LOG, "Wrote %s (%d modules).", opts.output, count(modules))

    -- Warn about any declared module whose file is missing on disk.
    local missing = find_missing_files(modules)
    if #missing > 0 then
        cli.log(LOG, "WARNING: %d declared modules are missing on disk:", #missing)
        for _, m in ipairs(missing) do
            print("  " .. m)
        end
        print("")
        print("This usually means a file was renamed or deleted but the scan")
        print("still references it. Check the paths above.")
    end
end

main(arg or {})