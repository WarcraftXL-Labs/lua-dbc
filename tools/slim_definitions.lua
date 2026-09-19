--[[
    tools/slim_definitions.lua
    Writes a one-build subset of definitions/ into another directory.

        luajit tools/slim_definitions.lua definitions out/335 3.3.5.12340

    definitions/ carries every version of every table WoWDBDefs knows about,
    which is 193 MB and roughly 1300 files. An application that targets one
    client build reads one version definition out of each of them and never
    looks at the rest, so shipping the whole set costs two orders of magnitude
    in size for nothing.

    What survives, per table:

      - the single versionDefinitions entry matching the requested build, and
        nothing if none matches - a table that did not exist in that build is
        not written at all, which is what makes Schemas.Has answer correctly
        for a build rather than falling back to the newest layout it can find
      - the columnDefinitions that entry actually names
      - no comments, at either level: they are prose for a human reading the
        definition, they are most of the bytes, and nothing reads them

    Everything a schema is built from is kept, layout hashes included, so a
    table loaded from the subset is the same table it was.
]]

package.path = "src/?.lua;src/?/init.lua;" .. package.path

local ok_lfs, lfs = pcall(require, "lfs")
if not ok_lfs then
    io.stderr:write("slim_definitions needs LuaFileSystem (lfs)\n")
    os.exit(1)
end

local json = require("dbc.json")
local build_mod = require("dbc._build")

local source_dir, out_dir, build_spec = ...

if not source_dir or not out_dir then
    io.stderr:write(
        "usage: slim_definitions.lua <definitions-dir> <out-dir> [build]\n")
    os.exit(1)
end

build_spec = build_spec or "3.3.5.12340"

local target = build_mod.parse(build_spec)
if not target then
    io.stderr:write("unrecognised build: " .. tostring(build_spec) .. "\n")
    os.exit(1)
end

--- Returns the version definition covering `target`, or nil.
--- Builds first, then build ranges, and no fallback: a table with no entry for
--- this build is one the client of this build does not have.
local function select_version(db_def)
    for _, vdef in ipairs(db_def.versionDefinitions or {}) do
        for _, b in ipairs(vdef.builds or {}) do
            if build_mod.matches(b, target) then return vdef end
        end

        for _, range in ipairs(vdef.buildRanges or {}) do
            local lowest = build_mod.parse(range.minBuild)
            local highest = build_mod.parse(range.maxBuild)
            if lowest and highest
                and build_mod.cmp(target, lowest) >= 0
                and build_mod.cmp(target, highest) <= 0 then
                return vdef
            end
        end
    end
    return nil
end

--- The definition file trimmed to one build, or nil when it has no such build.
local function slim(content)
    local db_def = json.decode(content)
    if not db_def or not db_def.versionDefinitions then return nil end

    local vdef = select_version(db_def)
    if not vdef then return nil end

    local columns = {}
    for _, def in ipairs(vdef.definitions or {}) do
        def.comment = nil

        local meta = db_def.columnDefinitions and db_def.columnDefinitions[def.name]
        if meta then
            meta.comment = nil
            columns[def.name] = meta
        end
    end

    vdef.comment = nil

    return json.encode({
        columnDefinitions = columns,
        versionDefinitions = { vdef },
    })
end

lfs.mkdir(out_dir)

local kept, skipped, bytes = 0, 0, 0

local names = {}
for entry in lfs.dir(source_dir) do
    if entry:match("%.[jJ][sS][oO][nN]$") then names[#names + 1] = entry end
end
table.sort(names)

for _, entry in ipairs(names) do
    local file = assert(io.open(source_dir .. "/" .. entry, "rb"))
    local content = file:read("*a")
    file:close()

    -- A definition that cannot be parsed is reported rather than fatal: one
    -- malformed file upstream should not cost every other table.
    local ok, result = pcall(slim, content)
    if not ok then
        io.stderr:write(("slim_definitions: %s: %s\n"):format(entry, tostring(result)))
        skipped = skipped + 1
    elseif result then
        local out = assert(io.open(out_dir .. "/" .. entry, "wb"))
        out:write(result)
        out:close()
        kept = kept + 1
        bytes = bytes + #result
    else
        skipped = skipped + 1
    end
end

print(("slim_definitions: %d tables for %s, %.0f KB (%d had no %s definition)")
    :format(kept, build_spec, bytes / 1024, skipped, build_spec))
