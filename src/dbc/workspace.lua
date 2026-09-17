--[[
    workspace.lua
    DbcWorkspace manages a project's DBC/DB2 tables bound to a specific
    game build. It provides:
      - Source and output directory configuration
      - Per-workspace table cache (name -> DbcTable)
      - Automatic schema binding using the workspace's build
      - Relation lookups scoped to the workspace build
]]

local load = require("dbc._loader")

local file_mod      = load("file")
local table_mod     = load("table")
local schema_mod    = load("schema")
local relations_mod = load("relations")

local DbcFile   = file_mod.DbcFile
local DbcTable  = table_mod.DbcTable
local Schemas   = schema_mod
local Relations = relations_mod

---@class DbcWorkspace
---@field source_dir string
---@field output_dir string
---@field build string Target client build (e.g. "3.3.5.12340").
---@field tables table<string, DbcTable>
local DbcWorkspace = {}
DbcWorkspace.__index = DbcWorkspace

---Creates a new workspace.
---@param options_or_source table|string|nil
---@param output_dir string|nil
---@return DbcWorkspace
function DbcWorkspace.new(options_or_source, output_dir)
    local self = setmetatable({}, DbcWorkspace)
    self.tables = {}

    if type(options_or_source) == "table" then
        self.source_dir = options_or_source.source
            or options_or_source.source_dir
            or "."
        self.output_dir = options_or_source.out
            or options_or_source.output_dir
            or self.source_dir
        self.build = options_or_source.build or Schemas.GetDefaultBuild()
    elseif type(options_or_source) == "string" then
        self.source_dir = options_or_source
        self.output_dir = output_dir or options_or_source
        self.build = Schemas.GetDefaultBuild()
    else
        self.source_dir = "."
        self.output_dir = "."
        self.build = Schemas.GetDefaultBuild()
    end

    return self
end

function DbcWorkspace:GetSourceDir() return self.source_dir end
function DbcWorkspace:GetOutputDir() return self.output_dir end
function DbcWorkspace:GetBuild()     return self.build end

function DbcWorkspace:SetSourceDir(path) self.source_dir = path; return self end
function DbcWorkspace:SetOutputDir(path) self.output_dir = path; return self end

---Changes the target build. Drops loaded tables so the next access
---re-binds to the new build's schema.
---@param build string
---@return DbcWorkspace self
function DbcWorkspace:SetBuild(build)
    self.build = build
    self.tables = {}
    return self
end

---Returns an already-loaded table or opens it from the source directory.
---@param name string
---@return DbcTable|nil
function DbcWorkspace:GetTable(name)
    local cached = self.tables[name]
    if cached then return cached end

    for _, ext in ipairs({ ".db2", ".dbc" }) do
        local path = self.source_dir .. "/" .. name .. ext
        local f = io.open(path, "rb")
        if f then
            f:close()
            return self:Open(path, name)
        end
    end

    return nil
end

---Opens a DBC/DB2 file, binding it to this workspace's build.
---Accepts either a full path or a bare table name (resolved against source_dir).
---@param path_or_name string
---@param schema_name string|nil
---@return DbcTable
function DbcWorkspace:Open(path_or_name, schema_name)
    local path = path_or_name
    local name = schema_name

    if not string.match(path_or_name, "%.db[c2]$") then
        name = name or path_or_name
        local p_db2 = self.source_dir .. "/" .. path_or_name .. ".db2"
        local f = io.open(p_db2, "rb")
        if f then
            f:close()
            path = p_db2
        else
            path = self.source_dir .. "/" .. path_or_name .. ".dbc"
        end
    else
        name = name or string.match(path_or_name, "([^/\\]+)%.db[c2]$")
    end

    local cached = self.tables[name]
    if cached then return cached end

    -- Resolve schema once. If the schema is missing, proceed with a nil
    -- schema so the caller can still inspect the binary.
    local schema
    local ok, resolved = pcall(Schemas.Get, name, self.build)
    if ok then schema = resolved end

    local raw_file = file_mod.open(path, schema)
    raw_file._workspace = self
    raw_file._build = self.build

    local tbl = DbcTable.new(raw_file, self)
    self.tables[name] = tbl
    return tbl
end

---Creates a blank table using this workspace's build schema.
---@param schema_name string
---@param format_name string|nil Defaults to "WDBC".
---@return DbcTable
function DbcWorkspace:Create(schema_name, format_name)
    local schema = Schemas.Get(schema_name, self.build)
    format_name = format_name or "WDBC"

    local raw_file = DbcFile.create_empty_format(
        format_name, schema, "<workspace:" .. schema_name .. ">")
    raw_file._workspace = self
    raw_file._build = self.build

    local tbl = DbcTable.new(raw_file, self)
    self.tables[schema_name] = tbl
    return tbl
end

---Writes all loaded tables to the output directory.
---@param options table|nil { only_dirty = boolean }
---@return integer count Number of files written.
function DbcWorkspace:SaveAll(options)
    local only_dirty = (options and options.only_dirty == true)
    local count = 0

    ensure_dir(self.output_dir .. "/dummy")

    for name, tbl in pairs(self.tables) do
        if not only_dirty or tbl._file.dirty then
            local ext = (tbl._file.format == "WDBC" and "dbc") or "db2"
            tbl:Save(self.output_dir .. "/" .. name .. "." .. ext)
            count = count + 1
        end
    end

    return count
end

function DbcWorkspace:Close()
    self.tables = {}
end

---@param table_name string
---@return table[]
function DbcWorkspace:GetRelations(table_name)
    return Relations.Get(table_name, self.build)
end

---@param table_name string
---@return table[]
function DbcWorkspace:GetInboundRelations(table_name)
    return Relations.GetInbound(table_name, self.build)
end

---Enables `ws.Spell` -> ws:GetTable("Spell").
function DbcWorkspace:__index(key)
    if DbcWorkspace[key] ~= nil then
        return DbcWorkspace[key]
    end
    if type(key) == "string" then
        return self:GetTable(key)
    end
    return nil
end

return {
    DbcWorkspace = DbcWorkspace,
}