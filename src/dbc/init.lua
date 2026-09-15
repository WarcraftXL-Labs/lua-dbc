--[[
    init.lua
    High-level, fluent entry point for the lua-dbc library.
    Provides complete access to DBC file parsing, row proxies, schemas, enums,
    relationship traversal, workspace coordination, and LINQ-style querying for
    World of Warcraft (WotLK 3.3.5a).
]]

local function load_module(name)
    local ok, mod = pcall(require, "dbc." .. name)
    if ok then return mod end
    ok, mod = pcall(require, "src.dbc." .. name)
    if ok then return mod end
    return require(name)
end

local file_mod = load_module("file")
local proxy_mod = load_module("proxy")
local table_mod = load_module("table")
local query_mod = load_module("query")
local schema_mod = load_module("schema")
local enum_mod = load_module("enum")
local workspace_mod = load_module("workspace")
local relations_mod = load_module("relations")

local DbcFile = file_mod.DbcFile
local RowProxy = proxy_mod.RowProxy
local DbcTable = table_mod.DbcTable
local Query = query_mod.Query
local Schemas = schema_mod
local Enums = enum_mod
local DbcWorkspace = workspace_mod.DbcWorkspace
local Relations = relations_mod

---@class dbc
---The main lua-dbc toolkit table.
local dbc = {
    File = DbcFile,
    Table = DbcTable,
    RowProxy = RowProxy,
    Query = Query,
    Schemas = Schemas,
    Enums = Enums,
    Workspace = DbcWorkspace,
    Database = DbcWorkspace,
    Relations = Relations,
    Session = DbcWorkspace, -- Backwards compatibility alias
}

---Opens a DBC file from disk and returns an indexed DbcTable.
---@param path string Path to the .dbc file.
---@param schema_name dbc.TableName|string|nil Optional name of schema. If nil, inferred from file name.
---@return DbcTable table The loaded DBC table.
function dbc.Open(path, schema_name)
    local name = schema_name or string.match(path, "([^/\\]+)%.dbc$")
    local schema
    if name and Schemas.Has(name) then
        schema = Schemas.Get(name)
    end

    local raw_file = file_mod.open(path, schema)
    return DbcTable.new(raw_file)
end

---Creates a brand-new, empty DBC table directly from a schema definition.
---@param schema_name dbc.TableName|string The name of the schema (e.g. "Spell", "SpellIcon").
---@return DbcTable table The newly created empty table ready for row insertion.
function dbc.Create(schema_name)
    local schema = Schemas.Get(schema_name)
    local raw_file = DbcFile.create_empty(schema, "<memory:" .. schema_name .. ">")
    return DbcTable.new(raw_file)
end

---Creates a new DBC workspace managing source input and destination output directories.
---Can be called with:
---  dbc.Workspace("source/dir", "output/dir")
---  dbc.Workspace({ source = "source/dir", out = "output/dir" })
---  dbc.Workspace("same/dir/for/both")
---@param options_or_source table|string|nil Workspace options or source directory path.
---@param output_dir string|nil Destination directory where saved DBCs are written.
---@return DbcWorkspace workspace
function dbc.Workspace(options_or_source, output_dir)
    return DbcWorkspace.new(options_or_source, output_dir)
end

---Backwards compatibility alias for Workspace.
---@param options_or_source table|string|nil
---@param output_dir string|nil
---@return DbcWorkspace
function dbc.NewSession(options_or_source, output_dir)
    return DbcWorkspace.new(options_or_source, output_dir)
end

---Creates a LINQ Query over an array, generator, or DbcTable.
---@generic T
---@param source `T`[]|fun():`T`|DbcTable Collection to query.
---@return dbc.Query<T> query
function dbc.Query(source)
    return Query.new(source)
end

---Returns a list of foreign key relationships between tables for a given schema.
---@param schema_name dbc.TableName|string Name of the schema to inspect (e.g. "Spell").
---@return table[] relations Inferred and known relations.
function dbc.GetRelations(schema_name)
    return Relations.Get(schema_name)
end

return dbc
