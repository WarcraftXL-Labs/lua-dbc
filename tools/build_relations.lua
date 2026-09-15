--[[
    tools/app/build_relations.lua
    Builds per-build relations indexes.

    Usage:
        luajit tools/build_relations.lua [definitions_dir] [--builds auto|3.3.5.12340,12.1.5.69594]
]]

package.path = "?.lua;src/?.lua;src/?/init.lua;" .. package.path

local json       = require("tools.json_pretty")
local fs         = require("tools.fs")
local cli        = require("tools.cli")
local dbd_common = require("tools.dbd_common")

local LOG = "Relations"

cli.log(LOG, "JSON backend: %s", json.backend_name())

-- ---------------------------------------------------------------------------
-- Relation extraction for a given build
-- ---------------------------------------------------------------------------

local function extract_relations(db_def, target_build)
    local vdefs = db_def.versionDefinitions or {}
    local col_defs = db_def.columnDefinitions or {}
    local selected = dbd_common.select_version_definition(vdefs, target_build)
    if not selected then return nil end

    local seen = {}
    local relations = {}
    for _, d in ipairs(selected.definitions or {}) do
        local fname = d.name
        if fname and not seen[fname] then
            seen[fname] = true
            local cmeta = col_defs[fname]
            if cmeta and cmeta.foreignTable then
                relations[#relations + 1] = {
                    field = fname,
                    target = cmeta.foreignTable,
                    target_field = cmeta.foreignColumn or "ID",
                }
            end
        end
    end
    return relations
end

-- ---------------------------------------------------------------------------
-- Process one build
-- ---------------------------------------------------------------------------

local function process_build(def_dir, json_files, bstr, out_dir)
    local timer = cli.timer()
    local btag = dbd_common.get_build_tag(bstr)

    local outbound = {}
    local inbound = {}

    for _, jf in ipairs(json_files) do
        local table_name = jf:gsub("%.json$", "")
        local content = fs.read(fs.join(def_dir, jf))
        if content then
            local ok, db_def = pcall(json.decode, content)
            if ok and db_def then
                local rels = extract_relations(db_def, bstr)
                if rels and #rels > 0 then
                    outbound[table_name] = rels
                    for _, rel in ipairs(rels) do
                        local tgt = rel.target
                        if not inbound[tgt] then inbound[tgt] = {} end
                        inbound[tgt][#inbound[tgt] + 1] = {
                            source_table = table_name,
                            field = rel.field,
                            target_field = rel.target_field,
                        }
                    end
                end
            end
        end
    end

    local out_file = btag .. ".json"
    fs.write(fs.join(out_dir, out_file), json.encode({
        build = bstr,
        outbound = outbound,
        inbound = inbound,
    }, true))

    local n_out, n_in = 0, 0
    for _ in pairs(outbound) do n_out = n_out + 1 end
    for _ in pairs(inbound) do n_in = n_in + 1 end

    cli.log(LOG, "  %-16s -> %-12s out=%d in=%d (%s)",
        bstr, out_file, n_out, n_in, cli.format_duration(timer()))

    return out_file
end

-- ---------------------------------------------------------------------------
-- Main
-- ---------------------------------------------------------------------------

local function main(argv)
    local opts = dbd_common.parse_cli(argv, {
        positional = { "def_dir" },
    })
    local def_dir = opts.positional.def_dir or "definitions"
    local out_dir = fs.join(def_dir, "_relations")

    fs.mkdir(out_dir)

    -- List JSON files, skipping those starting with _
    local json_files = {}
    for _, f in ipairs(fs.listdir(def_dir, ".json")) do
        if f:sub(1, 1) ~= "_" then
            json_files[#json_files + 1] = f
        end
    end
    cli.log(LOG, "%d JSON files in %s", #json_files, def_dir)

    -- Resolve the build target list
    local build_targets
    if opts.builds == "auto" then
        cli.log(LOG, "Discovering builds...")
        build_targets = dbd_common.discover_builds(def_dir, json_files, fs, json)
        cli.log(LOG, "%d builds found.", #build_targets)
    else
        build_targets = dbd_common.split_builds(opts.builds)
    end

    if #build_targets == 0 then
        cli.log(LOG, "No builds to process.")
        return
    end

    -- Process each build
    local manifest = {}
    for _, bstr in ipairs(build_targets) do
        manifest[bstr] = process_build(def_dir, json_files, bstr, out_dir)
    end

    fs.write(fs.join(out_dir, "index.json"), json.encode(manifest, true))
    cli.log(LOG, "Manifest written to %s/index.json", out_dir)
end

main(arg or {})