--[[
    workspace.lua
    Provides the DbcWorkspace class for managing multiple DBC tables within a project,
    handling separate input (source) and output directories, cross-table relation lookups,
    and automatic batch saving.
]]

local function load_module(name)
    local ok, mod = pcall(require, "dbc." .. name)
    if ok then return mod end
    ok, mod = pcall(require, "src.dbc." .. name)
    if ok then return mod end
    return require(name)
end

local file_mod = load_module("file")
local table_mod = load_module("table")
local schema_mod = load_module("schema")

local DbcFile = file_mod.DbcFile
local DbcTable = table_mod.DbcTable
local Schemas = schema_mod

--- Ensures the directory for a file path exists before writing.
--- @param file_path string Target path to create directories for.
local is_windows = package.config:sub(1, 1) == "\\"

local function ensure_dir(file_path)
    local dir = string.match(file_path, "^(.*)[/\\][^/\\]+$")
    if dir and dir ~= "" then
        if is_windows then
            local win_dir = dir:gsub("/", "\\")
            os.execute('if not exist "' .. win_dir .. '" mkdir "' .. win_dir .. '" >nul 2>nul')
        else
            os.execute('mkdir -p "' .. dir .. '" 2>/dev/null')
        end
    end
end

--- @class DbcWorkspace
--- Project workspace coordinator managing source and output directories,
--- cached DBC tables, and relational navigation.
--- @field source_dir string Directory holding input/stock DBC files.
--- @field output_dir string Directory where edited/patched DBC files are saved.
--- @field tables table<string, DbcTable> Map of table name to loaded DbcTable instance.
local DbcWorkspace = {}
DbcWorkspace.__index = DbcWorkspace

--- Creates a new DbcWorkspace instance.
--- Can be initialized with a table options { source = "...", out = "..." }
--- or with string arguments (source_dir, output_dir).
--- @param options_or_source table|string|nil Workspace configuration or source directory.
--- @param output_dir string|nil Optional output directory when first argument is a string.
--- @return DbcWorkspace workspace
function DbcWorkspace.new(options_or_source, output_dir)
    local self = setmetatable({}, DbcWorkspace)
    self.tables = {}

    if type(options_or_source) == "table" then
        self.source_dir = options_or_source.source or options_or_source.source_dir or "."
        self.output_dir = options_or_source.out or options_or_source.output_dir or self.source_dir
    elseif type(options_or_source) == "string" then
        self.source_dir = options_or_source
        self.output_dir = output_dir or options_or_source
    else
        self.source_dir = "."
        self.output_dir = "."
    end

    return self
end

--- Returns the configured source directory.
--- @return string source_dir
function DbcWorkspace:GetSourceDir()
    return self.source_dir
end

--- Sets a new source directory for loading DBC files.
--- @param path string Directory path.
--- @return DbcWorkspace self For chaining.
function DbcWorkspace:SetSourceDir(path)
    self.source_dir = path
    return self
end

--- Returns the configured output directory.
--- @return string output_dir
function DbcWorkspace:GetOutputDir()
    return self.output_dir
end

--- Sets a new output directory for saving DBC files.
--- @param path string Directory path.
--- @return DbcWorkspace self For chaining.
function DbcWorkspace:SetOutputDir(path)
    self.output_dir = path
    return self
end

--- Retrieves an already loaded table or automatically opens it from the source directory.
--- @param name dbc.TableName|string DBC table name (e.g. "Spell", "SpellIcon").
--- @return DbcTable|nil table The table instance if found.
function DbcWorkspace:GetTable(name)
    if self.tables[name] then
        return self.tables[name]
    end

    -- Attempt to auto-open the DBC file from source_dir
    local path = self.source_dir .. "/" .. name .. ".dbc"
    local f = io.open(path, "rb")
    if f then
        f:close()
        return self:Open(path, name)
    end

    return nil
end

--- Opens a DBC file, binds its schema, wraps it in DbcTable, and tracks it in the workspace.
--- If only a table name is provided, loads from source_dir/<name>.dbc.
--- @param path_or_name string|dbc.TableName File path or table name.
--- @param schema_name dbc.TableName|string|nil Optional explicit schema name.
--- @return DbcTable table The loaded DBC table.
function DbcWorkspace:Open(path_or_name, schema_name)
    local path = path_or_name
    local name = schema_name

    -- If path does not end in .dbc, treat it as a table name in source_dir
    if not string.match(path_or_name, "%.dbc$") then
        name = name or path_or_name
        path = self.source_dir .. "/" .. path_or_name .. ".dbc"
    else
        name = name or string.match(path_or_name, "([^/\\]+)%.dbc$")
    end

    if self.tables[name] then
        return self.tables[name]
    end

    local schema = Schemas.Get(name)
    local raw_file = file_mod.open(path, schema)
    local tbl = DbcTable.new(raw_file, self)

    self.tables[name] = tbl
    return tbl
end

--- Creates a blank DBC table from its schema definition within this workspace.
--- @param schema_name dbc.TableName|string The name of the schema to create.
--- @return DbcTable table The newly created empty table.
function DbcWorkspace:Create(schema_name)
    local schema = Schemas.Get(schema_name)
    local raw_file = DbcFile.create_empty(schema, "<workspace:" .. schema_name .. ">")
    local tbl = DbcTable.new(raw_file, self)

    self.tables[schema_name] = tbl
    return tbl
end

--- Saves a specific table to the workspace output directory.
--- @param name_or_table string|DbcTable Name of the table or DbcTable instance.
--- @param custom_path string|nil Optional custom file destination.
--- @return integer bytes_written
function DbcWorkspace:Save(name_or_table, custom_path)
    local tbl
    local name
    if type(name_or_table) == "string" then
        name = name_or_table
        tbl = self.tables[name]
        if not tbl then
            error(string.format("Workspace: cannot save table %q: not loaded", name))
        end
    else
        tbl = name_or_table
        local schema = tbl:GetSchema()
        name = schema and schema.name or "output"
    end

    local dest = custom_path or (self.output_dir .. "/" .. name .. ".dbc")
    ensure_dir(dest)
    return tbl:Save(dest)
end

--- Saves all modified DBC tables tracked by this workspace into the output directory.
--- @param destination_dir string|nil Optional directory to override workspace output_dir.
--- @return string[] saved List of saved table names.
function DbcWorkspace:SaveAll(destination_dir)
    local out_dir = destination_dir or self.output_dir
    local saved = {}

    for name, tbl in pairs(self.tables) do
        local file = tbl:GetFile()
        if file.dirty then
            local dest = out_dir .. "/" .. name .. ".dbc"
            ensure_dir(dest)
            tbl:Save(dest)
            table.insert(saved, name)
        end
    end

    return saved
end

--- Returns all currently active DbcTable instances in this workspace.
--- @return table<string, DbcTable> tables
function DbcWorkspace:GetAllTables()
    return self.tables
end

setmetatable(DbcWorkspace, {
    __call = function(_, options_or_source, output_dir)
        return DbcWorkspace.new(options_or_source, output_dir)
    end
})

return {
    DbcWorkspace = DbcWorkspace,
}
