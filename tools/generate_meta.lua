--[[
    tools/generate_meta.lua
    Generates LuaLS (EmmyLua) annotations for lua-dbc.

    Usage:
        luajit tools/generate_meta.lua [definitions_dir] [meta_dir] [--builds auto|...]
]]

package.path = "?.lua;src/?.lua;src/?/init.lua;" .. package.path

local json       = require("tools.json_pretty")
local fs         = require("tools.fs")
local cli        = require("tools.cli")
local dbd_common = require("tools.dbd_common")

local LOG = "LuaLS Generator"

cli.log(LOG, "JSON backend: %s", json.backend_name())

-- ---------------------------------------------------------------------------
-- Type mapping
-- ---------------------------------------------------------------------------

local LUA_TYPE_MAP = {
    locstring = "string",
    string    = "string",
    float     = "number",
    bool      = "boolean",
    int       = "integer",
    uint      = "integer",
}

local function pascal_case(name)
    if not name or name == "" then return "" end
    return name:sub(1, 1):upper() .. name:sub(2)
end

-- ---------------------------------------------------------------------------
-- Field collection
-- ---------------------------------------------------------------------------

local function collect_fields(selected, col_defs)
    local fields = {}
    local seen = {}

    for _, d in ipairs(selected.definitions or {}) do
        local fname = d.name
        if fname and not seen[fname] then
            seen[fname] = true

            local cmeta = col_defs[fname] or {}
            local base_lua_type = LUA_TYPE_MAP[cmeta.type or "int"] or "any"
            local arr_len = tonumber(d.arrLength) or 0
            local lua_type = arr_len > 0 and (base_lua_type .. "[]") or base_lua_type

            local comment = d.comment or cmeta.comment or ""
            comment = comment:gsub("\n", " "):gsub("^%s+", ""):gsub("%s+$", "")

            local ftarget = cmeta.foreignTable
            if not ftarget and fname:sub(-2) == "ID" and fname ~= "ID" then
                ftarget = fname:sub(1, -3)
            end

            fields[#fields + 1] = {
                name           = fname,
                lua_type       = lua_type,
                base_lua_type  = base_lua_type,
                is_array       = arr_len > 0,
                foreign_table  = ftarget,
                foreign_column = cmeta.foreignColumn or "ID",
                comment        = comment,
            }
        end
    end

    return fields
end

-- ---------------------------------------------------------------------------
-- Emitters
-- ---------------------------------------------------------------------------

local function emit_fields(parts, fields)
    for _, f in ipairs(fields) do
        if f.comment ~= "" then
            parts[#parts + 1] = "---@field " .. f.name .. " " .. f.lua_type .. " " .. f.comment .. "\n"
        else
            parts[#parts + 1] = "---@field " .. f.name .. " " .. f.lua_type .. "\n"
        end
    end
end

local function emit_accessors(parts, fields, row_class, build_tag)
    for _, f in ipairs(fields) do
        local fname = f.name
        local pname = pascal_case(fname)
        local ltype = f.lua_type

        parts[#parts + 1] = "---Gets the value of field '" .. fname .. "'.\n"
        parts[#parts + 1] = "---@return " .. ltype .. " value\n"
        parts[#parts + 1] = "function row:Get" .. pname .. "() end\n\n"

        parts[#parts + 1] = "---Sets the value of field '" .. fname .. "'.\n"
        parts[#parts + 1] = "---@param value " .. ltype .. "\n"
        parts[#parts + 1] = "---@return " .. row_class .. " self\n"
        parts[#parts + 1] = "function row:Set" .. pname .. "(value) end\n\n"

        if f.is_array then
            parts[#parts + 1] = "---Gets element at 1-based index in '" .. fname .. "'.\n"
            parts[#parts + 1] = "---@param index integer\n"
            parts[#parts + 1] = "---@return " .. f.base_lua_type .. " value\n"
            parts[#parts + 1] = "function row:Get" .. pname .. "Item(index) end\n\n"
        end

        if f.foreign_table and f.foreign_table ~= "" then
            local target_row_class = "dbc.row." .. build_tag .. "." .. f.foreign_table

            local rel_name
            if fname:sub(-2) == "ID" and fname ~= "ID" then
                rel_name = fname:sub(1, -3)
            elseif fname:sub(-3) == "_ID" then
                rel_name = fname:sub(1, -4)
            else
                rel_name = fname
            end
            local rel_pname = pascal_case(rel_name)

            parts[#parts + 1] = "---Navigates foreign relationship to '"
                .. f.foreign_table .. "' via '" .. fname .. "'.\n"
            parts[#parts + 1] = "---@return " .. target_row_class .. "|nil\n"
            parts[#parts + 1] = "function row:Get" .. rel_pname .. "() end\n\n"

            parts[#parts + 1] = "---Creates a related '" .. f.foreign_table
                .. "' row and automatically links '" .. fname .. "'.\n"
            parts[#parts + 1] = "---@param data? table\n"
            parts[#parts + 1] = "---@return " .. target_row_class .. "\n"
            parts[#parts + 1] = "function row:CreateRelated(data) end\n\n"
        end
    end
end

local function emit_table_interface(parts, table_name, row_class, tbl_class, target_build)
    parts[#parts + 1] = "---Table container for " .. table_name
        .. " (Build " .. target_build .. ").\n"
    parts[#parts + 1] = "---@class " .. tbl_class .. " : DbcTable\n"
    parts[#parts + 1] = "---@field [integer] " .. row_class .. "\n"
    parts[#parts + 1] = "local tbl = {}\n\n"

    local methods = {
        { name = "Create", params = "id, data",
          doc = "Creates and appends a new row to the table.",
          lines = { "---@param id? integer Primary key",
                    "---@param data? table Optional initial values" },
          ret = row_class },
        { name = "FindById", params = "id",
          doc = "Finds a row by primary key (nil if not found).",
          lines = { "---@param id integer" },
          ret = row_class .. "|nil" },
        { name = "GetRowById", params = "id",
          doc = "Gets a row by primary key (throws if not found).",
          lines = { "---@param id integer" },
          ret = row_class },
        { name = "Query", params = "",
          doc = "Creates a LINQ query over rows in this table.",
          lines = {},
          ret = "dbc.Query<" .. row_class .. ">" },
        { name = "GetByRelation", params = "foreign_id",
          doc = "Returns all rows related to a foreign ID via the relationship block.",
          lines = { "---@param foreign_id integer" },
          ret = row_class .. "[]" },
    }

    for _, m in ipairs(methods) do
        parts[#parts + 1] = "---" .. m.doc .. "\n"
        for _, line in ipairs(m.lines) do
            parts[#parts + 1] = line .. "\n"
        end
        parts[#parts + 1] = "---@return " .. m.ret .. "\n"
        parts[#parts + 1] = "function tbl:" .. m.name .. "(" .. m.params .. ") end\n\n"
    end
end

-- ---------------------------------------------------------------------------
-- Table meta generation
-- ---------------------------------------------------------------------------

local function generate_table_meta(table_name, db_def, target_build, build_tag)
    local selected = dbd_common.select_version_definition(
        db_def.versionDefinitions or {}, target_build)
    if not selected or not selected.definitions then return nil end

    local col_defs = db_def.columnDefinitions or {}
    local row_class = "dbc.row." .. build_tag .. "." .. table_name
    local tbl_class = "dbc.Table." .. build_tag .. "." .. table_name

    local parts = {}
    parts[#parts + 1] = "---@meta\n"
    parts[#parts + 1] = "-- Generated LuaLS annotations for " .. table_name
        .. " (Build " .. target_build .. " [" .. build_tag .. "]). Do not edit.\n\n"
    parts[#parts + 1] = "---Row representation of " .. table_name
        .. " in build " .. target_build .. ".\n"
    parts[#parts + 1] = "---@class " .. row_class .. " : RowProxy\n"

    local fields = collect_fields(selected, col_defs)
    emit_fields(parts, fields)

    parts[#parts + 1] = "\nlocal row = {}\n\n"
    emit_accessors(parts, fields, row_class, build_tag)
    emit_table_interface(parts, table_name, row_class, tbl_class, target_build)

    parts[#parts + 1] = "return {}\n"
    return table.concat(parts)
end

-- ---------------------------------------------------------------------------
-- _workspace.lua
-- ---------------------------------------------------------------------------

local function generate_workspace_meta(builds_data)
    local parts = {}
    parts[#parts + 1] = "---@meta\n"
    parts[#parts + 1] = "-- Auto-generated overloads and table accessors for multi-version DbcWorkspace. Do not edit.\n\n"
    parts[#parts + 1] = "---@class DbcWorkspace\n"
    parts[#parts + 1] = "---@field build? string Configured target client build\n"
    parts[#parts + 1] = "---@field source_dir string Input directory\n"
    parts[#parts + 1] = "---@field output_dir string Output directory\n\n"

    -- Deterministic ordering
    local sorted_btags = {}
    for btag in pairs(builds_data) do sorted_btags[#sorted_btags + 1] = btag end
    table.sort(sorted_btags)

    for _, btag in ipairs(sorted_btags) do
        local binfo = builds_data[btag]
        local ws_class = "DbcWorkspace_" .. btag

        parts[#parts + 1] = "---Workspace for WoW Build " .. binfo.build_str
            .. " (" .. binfo.short_name .. ").\n"
        parts[#parts + 1] = "---@class " .. ws_class .. " : DbcWorkspace\n"

        local sorted_tables = {}
        for t in pairs(binfo.tables) do sorted_tables[#sorted_tables + 1] = t end
        table.sort(sorted_tables)

        for _, t in ipairs(sorted_tables) do
            parts[#parts + 1] = "---@field " .. t .. " dbc.Table." .. btag .. "." .. t .. "\n"
        end
        parts[#parts + 1] = "\n"

        for _, t in ipairs(sorted_tables) do
            parts[#parts + 1] = "---@overload fun(self: " .. ws_class
                .. ", name: '\"" .. t .. "\"'): dbc.Table." .. btag .. "." .. t .. "\n"
        end
        parts[#parts + 1] = "function " .. ws_class .. ":Open(name) end\n\n"

        for _, t in ipairs(sorted_tables) do
            parts[#parts + 1] = "---@overload fun(self: " .. ws_class
                .. ", name: '\"" .. t .. "\"'): dbc.Table." .. btag .. "." .. t .. "\n"
        end
        parts[#parts + 1] = "function " .. ws_class .. ":Create(name) end\n\n"
    end

    parts[#parts + 1] = "---@class dbc\n"
    for _, btag in ipairs(sorted_btags) do
        local binfo = builds_data[btag]
        local ws_class = "DbcWorkspace_" .. btag
        local bstr = binfo.build_str
        local sname = binfo.short_name
        parts[#parts + 1] = "---@overload fun(options: { build: '\"" .. bstr
            .. "\"'|'\"" .. sname .. "\"', source?: string, out?: string }): " .. ws_class .. "\n"
        parts[#parts + 1] = "---@overload fun(build_or_source: '\"" .. bstr
            .. "\"'|'\"" .. sname .. "\"'): " .. ws_class .. "\n"
    end
    parts[#parts + 1] = "function dbc.Workspace(options_or_source, output_dir) end\n\n"
    parts[#parts + 1] = "return {}\n"

    return table.concat(parts)
end

-- ---------------------------------------------------------------------------
-- Main
-- ---------------------------------------------------------------------------

local function main(argv)
    local opts = dbd_common.parse_cli(argv, {
        positional = { "def_dir", "meta_dir" },
    })
    local def_dir  = opts.positional.def_dir  or "definitions"
    local meta_dir = opts.positional.meta_dir or "meta"

    cli.log(LOG, "def_dir=%s meta_dir=%s builds=%s", def_dir, meta_dir, opts.builds)

    -- List JSON files, skipping those starting with _
    local json_files = {}
    for _, f in ipairs(fs.listdir(def_dir, ".json")) do
        if f:sub(1, 1) ~= "_" then
            json_files[#json_files + 1] = f
        end
    end

    if #json_files == 0 then
        cli.log(LOG, "No .json file found in %s", def_dir)
        return
    end

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

    -- Generate meta per build
    local builds_data = {}

    for _, bstr in ipairs(build_targets) do
        local timer = cli.timer()
        local btag = dbd_common.get_build_tag(bstr)
        local short_name = bstr:match("^(%d+%.%d+%.%d+)") or bstr

        local v_meta_dir = fs.join(meta_dir, "dbc", btag)
        fs.mkdir(v_meta_dir)

        local tables = {}
        local skipped = 0
        local errors  = 0

        for _, jf in ipairs(json_files) do
            local table_name = jf:gsub("%.json$", "")

            -- Read
            local content = fs.read(fs.join(def_dir, jf))
            if not content then
                errors = errors + 1
                cli.log(LOG, "  [read-fail] %s", jf)
                goto continue
            end

            -- Decode JSON
            local ok, db_def = pcall(json.decode, content)
            if not ok then
                errors = errors + 1
                cli.log(LOG, "  [json-fail] %s: %s", jf, tostring(db_def))
                goto continue
            end

            -- Generate
            local ok2, output = pcall(generate_table_meta,
                table_name, db_def, bstr, btag)
            if not ok2 then
                errors = errors + 1
                cli.log(LOG, "  [gen-fail] %s: %s", jf, tostring(output))
                goto continue
            end

            if not output then
                skipped = skipped + 1
                goto continue
            end

            -- Write
            local write_ok = fs.write(fs.join(v_meta_dir, table_name .. ".lua"), output)
            if not write_ok then
                errors = errors + 1
                cli.log(LOG, "  [write-fail] %s", table_name .. ".lua")
            else
                tables[table_name] = true
            end

            ::continue::
        end

        local table_count = 0
        for _ in pairs(tables) do table_count = table_count + 1 end

        builds_data[btag] = {
            build_str  = bstr,
            short_name = short_name,
            tables     = tables,
        }

        cli.log(LOG, "  %-16s %d tables, %d skipped, %d errors (%s)",
            bstr, table_count, skipped, errors, cli.format_duration(timer()))
    end

    -- _workspace.lua
    fs.write(fs.join(meta_dir, "_workspace.lua"), generate_workspace_meta(builds_data))

    -- _tables.lua (global table name alias)
    local all_tables = {}
    for _, info in pairs(builds_data) do
        for t in pairs(info.tables) do
            all_tables[t] = true
        end
    end
    local sorted_all = {}
    for t in pairs(all_tables) do sorted_all[#sorted_all + 1] = t end
    table.sort(sorted_all)

    local parts = {}
    parts[#parts + 1] = "---@meta\n"
    parts[#parts + 1] = "-- Auto-generated table name aliases for LuaLS. Do not edit.\n\n"
    parts[#parts + 1] = "---Every DBC/DB2 table supported by lua-dbc.\n"
    parts[#parts + 1] = "---@alias dbc.TableName\n"
    for _, t in ipairs(sorted_all) do
        parts[#parts + 1] = "---| '\"" .. t .. "\"'\n"
    end
    fs.write(fs.join(meta_dir, "_tables.lua"), table.concat(parts))

    cli.log(LOG, "Done: %d builds in '%s/'.", #build_targets, meta_dir)
end

main(arg or {})