--[[
    init.lua
    High-level entry point for lua-dbc.

    Exposes:
      - dbc.Open / dbc.Create for one-shot file access
      - dbc.Workspace for multi-table, build-scoped projects
      - dbc.Query for LINQ-style queries over arbitrary collections
      - Direct access to Schemas, Relations, Formats and Enums
]]

local load = require("dbc._loader")

local file_mod      = load("file")
local proxy_mod     = load("proxy")
local table_mod     = load("table")
local query_mod     = load("query")
local schema_mod    = load("schema")
local enum_mod      = load("enum")
local workspace_mod = load("workspace")
local relations_mod = load("relations")
local formats_mod   = file_mod.Formats or load("formats")
local json_mod      = load("json")

local DbcFile     = file_mod.DbcFile
local RowProxy    = proxy_mod.RowProxy
local DbcTable    = table_mod.DbcTable
local Query       = query_mod.Query
local Schemas     = schema_mod
local Enums       = enum_mod
local DbcWorkspace = workspace_mod.DbcWorkspace
local Relations   = relations_mod
local Formats     = formats_mod

---@class dbc
local dbc = {
    File        = DbcFile,
    Table       = DbcTable,
    RowProxy    = RowProxy,
    Query       = Query,
    Schemas     = Schemas,
    Enums       = Enums,
    Workspace   = DbcWorkspace,
    Database    = DbcWorkspace,     -- alias
    Session     = DbcWorkspace,     -- legacy alias
    Relations   = Relations,
    Formats     = Formats,
    JSON        = json_mod,
}

-- ---------------------------------------------------------------------------
-- Configuration forwarders
-- ---------------------------------------------------------------------------

function dbc.SetDefinitionsDir(path)
    Schemas.SetDefinitionsDir(path)
    Relations.AddIndexDir(path)
end

function dbc.AddDefinitionsDir(path)
    Schemas.AddDefinitionsDir(path)
    Relations.AddIndexDir(path)
end

function dbc.AddRelationsIndexDir(path)
    Relations.AddIndexDir(path)
end

-- ---------------------------------------------------------------------------
-- One-shot helpers
-- ---------------------------------------------------------------------------

---Opens a single DBC/DB2 file.
---@param path string
---@param schema_name string|nil
---@param build string|nil
---@return DbcTable
function dbc.Open(path, schema_name, build)
    local name = schema_name or string.match(path, "([^/\\]+)%.db[c2]$")

    local schema
    if name then
        local ok, resolved = pcall(Schemas.Get, name, build)
        if ok then schema = resolved end
    end

    local raw_file = file_mod.open(path, schema)
    raw_file._build = build
    return DbcTable.new(raw_file)
end

---Creates a blank in-memory table.
---@param schema_name string
---@param format_name string|nil
---@param build string|nil
---@return DbcTable
function dbc.Create(schema_name, format_name, build)
    local schema = Schemas.Get(schema_name, build)
    format_name = format_name or "WDBC"

    local raw_file = DbcFile.create_empty_format(
        format_name, schema, "<memory:" .. schema_name .. ">")
    raw_file._build = build
    return DbcTable.new(raw_file)
end

---Creates a new build-scoped workspace.
---@param options_or_source table|string|nil
---@param output_dir string|nil
---@return DbcWorkspace
function dbc.Workspace(options_or_source, output_dir)
    return DbcWorkspace.new(options_or_source, output_dir)
end

---Legacy alias.
---@param options_or_source table|string|nil
---@param output_dir string|nil
---@return DbcWorkspace
function dbc.NewSession(options_or_source, output_dir)
    return DbcWorkspace.new(options_or_source, output_dir)
end

---@param source any
---@return dbc.Query
function dbc.Query(source)
    return Query.new(source)
end

---@param schema_name string
---@param build string|nil
---@return table[]
function dbc.GetRelations(schema_name, build)
    return Relations.Get(schema_name, build)
end

return dbc