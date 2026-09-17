---@meta
-- Auto-generated LuaLS annotations for lua-dbc core library API. Do not edit.

---@class dbc
---@field File table Low-level DbcFile interface
---@field Table DbcTable Table class
---@field RowProxy RowProxy Record wrapper class
---@field Query dbc.Query LINQ query constructor
---@field Schemas dbc.Schemas Schema registry
---@field Enums dbc.Enums Enum registry
---@field Workspace DbcWorkspace Workspace constructor
---@field Database DbcWorkspace Workspace alias
---@field Session DbcWorkspace Legacy workspace alias
---@field Relations dbc.Relations Relations catalog
---@field Formats table Formats dispatcher & drivers
---@field JSON table JSON encoder/decoder
local dbc = {}

---Opens a single DBC or DB2 file from disk with automatic format detection.
---@param path string Path to the .dbc or .db2 file on disk
---@param schema_name? string Optional schema name (e.g. "Spell"). Inferred from filename if omitted.
---@param build? string Optional client build (e.g. "3.3.5.12340")
---@return DbcTable table Opened table instance
function dbc.Open(path, schema_name, build) end

---Creates a blank in-memory database table.
---@param schema_name string Schema name (e.g. "Spell", "Item")
---@param format_name? string Format identifier (defaults to "WDBC"). Supports "WDBC", "WDB2".
---@param build? string Optional client build (e.g. "3.3.5.12340")
---@return DbcTable table Blank table instance
function dbc.Create(schema_name, format_name, build) end

---Creates a new build-scoped workspace.
---@param options_or_source? table|string Options table `{ source = "...", out = "...", build = "..." }` or source directory path
---@param output_dir? string Output directory path (if first argument was a string)
---@return DbcWorkspace workspace
function dbc.Workspace(options_or_source, output_dir) end

---Creates a new build-scoped workspace (legacy alias).
---@param options_or_source? table|string
---@param output_dir? string
---@return DbcWorkspace
function dbc.NewSession(options_or_source, output_dir) end

---Wraps any table, array, or iterator function into a LINQ query pipeline.
---@generic T
---@param source T[]|fun():T|DbcTable
---@return dbc.Query<T>
function dbc.Query(source) end

---Overrides the primary definitions search directory.
---@param path string Directory path
function dbc.SetDefinitionsDir(path) end

---Adds a fallback definitions search directory.
---@param path string Directory path
function dbc.AddDefinitionsDir(path) end

---Adds an additional directory to search for relation indexes.
---@param path string Directory path
function dbc.AddRelationsIndexDir(path) end

---Fetches outbound relations declared for a given table and build.
---@param schema_name string Table name
---@param build? string Client build
---@return table[]
function dbc.GetRelations(schema_name, build) end

-- ---------------------------------------------------------------------------
-- DbcTable
-- ---------------------------------------------------------------------------

---High-level DBC/DB2 table wrapper around binary records.
---@class DbcTable
---@field _file table Low-level DbcFile driver
---@field _workspace? DbcWorkspace Owning workspace, if any
---@field [integer] RowProxy Direct primary-key row access (e.g. tbl[133])
local DbcTable = {}

---Returns the total number of records in the table.
---@return integer count
function DbcTable:Count() end

---Returns a cached RowProxy for a 1-based physical row index.
---@param row integer 1-based index (1..Count())
---@return RowProxy
function DbcTable:GetRowByIndex(row) end

---Fetches a row by primary key (ID). Raises an error if the ID does not exist.
---@param id integer Primary key
---@return RowProxy
function DbcTable:GetRowById(id) end

---Fetches a row by primary key (ID). Returns nil if not found.
---@param id integer Primary key
---@return RowProxy|nil
function DbcTable:FindById(id) end

---Checks whether a record with the given primary key exists in the table.
---@param id integer Primary key
---@return boolean exists
function DbcTable:Has(id) end

---Returns the highest primary key ID currently in the table (0 if empty).
---@return integer max_id
function DbcTable:GetMaxID() end

---Creates a new row with an explicit numeric primary key.
---@param id integer Primary key
---@param data? table Optional field values table
---@return RowProxy created_row
function DbcTable:Create(id, data) end

---Creates a new row with an auto-incremented primary key (max_id + 1).
---@param data? table Optional field values table
---@return RowProxy created_row
function DbcTable:NewRow(data) end

---Appends an existing row copy into this table.
---@param row RowProxy|table Row object to clone into this table
---@param new_id? integer Optional new primary key ID
---@return RowProxy inserted_row
function DbcTable:AddRow(row, new_id) end

---Deletes a record by primary key ID.
---@param id integer Primary key
---@return boolean success
function DbcTable:DeleteRow(id) end

---Deletes a record by 1-based physical index.
---@param row integer 1-based index
---@return boolean success
function DbcTable:DeleteRowByIndex(row) end

---Saves the table back to its original file or explicit path.
---@param path? string Optional target path
---@return boolean success
function DbcTable:Save(path) end

---Saves the table to a specified file path.
---@param path string Target file path
---@return boolean success
function DbcTable:SaveAs(path) end

---Reloads the table data from its underlying file.
---@return boolean success
function DbcTable:Reload() end

---Exports records as an array of plain Lua tables.
---@param start_index? integer 1-based start index (default 1)
---@param count? integer Number of records to extract
---@return table[]
function DbcTable:Extract(start_index, count) end

---Converts all records to an array of plain Lua tables.
---@return table[]
function DbcTable:ToTable() end

---Prints a formatted summary of table records to stdout.
---@param limit? integer Maximum rows to dump
---@param columns? string[] Optional subset of column names
function DbcTable:DumpRows(limit, columns) end

---Returns an array of field names declared in the schema.
---@return string[]
function DbcTable:GetColumnNames() end

---Returns the 32-bit layout hash of the table schema if defined.
---@return string|nil
function DbcTable:GetLayoutHash() end

---Returns the byte size of a field by column index or name.
---@param col integer|string Column index or name
---@return integer bytes
function DbcTable:GetFieldSize(col) end

---Returns the raw header structure of the table format.
---@return table
function DbcTable:GetHeader() end

---Returns the format identifier string (e.g. "WDBC", "WDB2", "WDC1").
---@return string
function DbcTable:GetFormatName() end

---Returns the file path from which the table was loaded, if any.
---@return string|nil
function DbcTable:GetFileName() end

---Returns the schema definition attached to this table.
---@return table|nil
function DbcTable:GetSchema() end

---Returns the parent workspace, if this table belongs to one.
---@return DbcWorkspace|nil
function DbcTable:GetWorkspace() end

---Filters table rows matching a predicate.
---@param predicate fun(row: RowProxy, index: integer): boolean
---@return dbc.Query<RowProxy>
function DbcTable:Where(predicate) end

---Projects table rows into a new sequence.
---@generic R
---@param selector fun(row: RowProxy, index: integer): R
---@return dbc.Query<R>
function DbcTable:Select(selector) end

---Returns the first row matching an optional predicate. Raises if not found.
---@param predicate? fun(row: RowProxy): boolean
---@return RowProxy
function DbcTable:First(predicate) end

---Returns the first row matching an optional predicate, or default.
---@param predicate? fun(row: RowProxy): boolean
---@param default_val? any
---@return RowProxy|any
function DbcTable:FirstOrDefault(predicate, default_val) end

---Returns the single matching row. Raises if 0 or >1 rows match.
---@param predicate? fun(row: RowProxy): boolean
---@return RowProxy
function DbcTable:Single(predicate) end

---Checks if any row matches an optional predicate.
---@param predicate? fun(row: RowProxy): boolean
---@return boolean
function DbcTable:Any(predicate) end

---Checks if all rows match a predicate.
---@param predicate fun(row: RowProxy): boolean
---@return boolean
function DbcTable:All(predicate) end

---Sorts table rows in ascending order by key.
---@param key_selector? fun(row: RowProxy): any
---@return dbc.Query<RowProxy>
function DbcTable:OrderBy(key_selector) end

---Sorts table rows in descending order by key.
---@param key_selector? fun(row: RowProxy): any
---@return dbc.Query<RowProxy>
function DbcTable:OrderByDescending(key_selector) end

---Bypasses count records.
---@param count integer
---@return dbc.Query<RowProxy>
function DbcTable:Skip(count) end

---Takes count records.
---@param count integer
---@return dbc.Query<RowProxy>
function DbcTable:Take(count) end

---Returns unique rows by key selector.
---@param key_selector? fun(row: RowProxy): any
---@return dbc.Query<RowProxy>
function DbcTable:Distinct(key_selector) end

---Executes an action on each row.
---@param action fun(row: RowProxy, index: integer)
function DbcTable:ForEach(action) end

---Groups rows by a key selector.
---@param key_selector fun(row: RowProxy): any
---@return table<any, RowProxy[]>
function DbcTable:GroupBy(key_selector) end

---Computes the sum of sequence values extracted by selector.
---@param selector? fun(row: RowProxy): number
---@return number
function DbcTable:Sum(selector) end

---Computes the average of sequence values extracted by selector.
---@param selector? fun(row: RowProxy): number
---@return number
function DbcTable:Average(selector) end

---Returns the minimum value extracted by selector.
---@param selector? fun(row: RowProxy): number
---@return number
function DbcTable:Min(selector) end

---Returns the maximum value extracted by selector.
---@param selector? fun(row: RowProxy): number
---@return number
function DbcTable:Max(selector) end

---Sets the output format for subsequent Save operations.
---@param format_name string E.g. "WDBC", "WDB2"
---@return DbcTable self
function DbcTable:SetFormat(format_name) end

---Converts this table into a new format, returning a new DbcTable instance.
---@param format_name string E.g. "WDBC", "WDB2"
---@return DbcTable
function DbcTable:ToFormat(format_name) end

---Begins a batch modification transaction.
---@return table batch
function DbcTable:BeginBatch() end

---Returns outbound relations declared for this table's schema.
---@return table[]
function DbcTable:GetRelations() end

---Returns the underlying DbcFile driver.
---@return table
function DbcTable:GetFile() end

---Returns an iterator over all records: `for id, row in tbl:iter() do ... end`.
---@return fun(): integer, RowProxy
function DbcTable:iter() end

-- ---------------------------------------------------------------------------
-- RowProxy
-- ---------------------------------------------------------------------------

---Dynamic flyweight proxy wrapping a binary record inside a DbcTable.
---@class RowProxy
---@field ID integer Primary key of the record
---@field [string] any Dynamic field read/write access (e.g. row.SpellName, row.MinRange)
local RowProxy = {}

---Gets a field value by column name or 1-based index.
---@param field string|integer
---@return any
function RowProxy:Get(field) end

---Sets a field value by column name or 1-based index.
---@param field string|integer
---@param value any
function RowProxy:Set(field, value) end

---Checks if a field exists in the schema.
---@param field string
---@return boolean
function RowProxy:HasField(field) end

---Gets a field value by column name or 1-based index.
---@param field string|integer
---@return any
function RowProxy:GetField(field) end

---Sets a field value by column name or 1-based index.
---@param field string|integer
---@param value any
function RowProxy:SetField(field, value) end

---Copies the record into a plain Lua key-value table.
---@return table<string, any>
function RowProxy:ToTable() end

---Creates a detached clone of this record's field values.
---@return table<string, any>
function RowProxy:Clone() end

---Populates multiple fields from a key-value table.
---@param values table<string, any>
---@return RowProxy self
function RowProxy:Populate(values) end

---Resolves a foreign key to a record in another table.
---@param target_table string Foreign table name
---@param foreign_id integer Foreign ID
---@param target_column? string Target column name (defaults to "ID")
---@return RowProxy|nil
function RowProxy:ResolveRelation(target_table, foreign_id, target_column) end

---Resolves a foreign key using the column name on this record (e.g. "SpellIconID").
---@param field_name string Field name containing the foreign key
---@return RowProxy|nil
function RowProxy:Resolve(field_name) end

---Resolves a relation by target table name or field name.
---@param target_table_or_field string
---@return RowProxy|nil
function RowProxy:GetRelated(target_table_or_field) end

---Creates a related row in the target table and automatically assigns this row's foreign key.
---@param target_table_or_field string Target table name (e.g. "SpellIcon")
---@param row_data_or_id? table|integer Data table for the new row or specific ID
---@return RowProxy created_row
function RowProxy:CreateRelated(target_table_or_field, row_data_or_id) end

---Returns child rows from other tables referencing this record's primary key.
---@param child_table_name? string Specific child table name
---@param child_field_name? string Specific foreign key field name on child
---@return RowProxy[] children
function RowProxy:GetChildren(child_table_name, child_field_name) end

---Returns all relations currently declared for this record.
---@return table[]
function RowProxy:GetRelations() end

---Returns true if the record pointer and row index are valid.
---@return boolean
function RowProxy:IsValid() end

---Returns the 1-based physical row index of this record.
---@return integer
function RowProxy:GetIndex() end

---Returns the attached schema for this record's table.
---@return table|nil
function RowProxy:GetSchema() end

---Returns the parent DbcTable.
---@return DbcTable|nil
function RowProxy:GetTable() end

---Returns the parent DbcFile driver.
---@return table
function RowProxy:GetFile() end

-- ---------------------------------------------------------------------------
-- dbc.Query<T>
-- ---------------------------------------------------------------------------

---LINQ-style query pipeline engine.
---@class dbc.Query<T>
local Query = {}

---Filters elements by a predicate function.
---@param predicate fun(item: T, index: integer): boolean
---@return dbc.Query<T>
function Query:Where(predicate) end

---Projects each element into a new form.
---@generic R
---@param selector fun(item: T, index: integer): R
---@return dbc.Query<R>
function Query:Select(selector) end

---Sorts elements in ascending order by key.
---@param key_selector? fun(item: T): any Key extractor function
---@param descending? boolean Set true for descending order
---@return dbc.Query<T>
function Query:OrderBy(key_selector, descending) end

---Sorts elements in descending order by key.
---@param key_selector? fun(item: T): any Key extractor function
---@return dbc.Query<T>
function Query:OrderByDescending(key_selector) end

---Bypasses a specified number of elements and returns the remaining elements.
---@param count integer Elements to skip
---@return dbc.Query<T>
function Query:Skip(count) end

---Returns a specified number of contiguous elements from the start of a sequence.
---@param count integer Elements to take
---@return dbc.Query<T>
function Query:Take(count) end

---Returns distinct elements from a sequence based on an optional key selector.
---@param key_selector? fun(item: T): any
---@return dbc.Query<T>
function Query:Distinct(key_selector) end

---Materializes the query into an array table.
---@return T[]
function Query:ToList() end

---Creates a lookup dictionary grouped by key.
---@param key_selector fun(item: T): any
---@param element_selector? fun(item: T): any
---@return table<any, any[]>
function Query:ToLookup(key_selector, element_selector) end

---Returns the first element matching an optional predicate. Raises if none.
---@param predicate? fun(item: T): boolean
---@return T
function Query:First(predicate) end

---Returns the first element matching an optional predicate, or default value.
---@generic D
---@param predicate? fun(item: T): boolean|nil
---@param default_value? D
---@return T|D
function Query:FirstOrDefault(predicate, default_value) end

---Returns the last element matching an optional predicate. Raises if none.
---@param predicate? fun(item: T): boolean
---@return T
function Query:Last(predicate) end

---Returns the last element matching an optional predicate, or default value.
---@generic D
---@param predicate? fun(item: T): boolean|nil
---@param default_value? D
---@return T|D
function Query:LastOrDefault(predicate, default_value) end

---Returns the single, specific element of a sequence. Raises if sequence contains 0 or >1 elements.
---@param predicate? fun(item: T): boolean
---@return T
function Query:Single(predicate) end

---Determines whether any element satisfies a condition.
---@param predicate? fun(item: T): boolean
---@return boolean
function Query:Any(predicate) end

---Determines whether all elements satisfy a condition.
---@param predicate fun(item: T): boolean
---@return boolean
function Query:All(predicate) end

---Returns the number of elements matching an optional predicate.
---@param predicate? fun(item: T): boolean
---@return integer
function Query:Count(predicate) end

---Returns the maximum value extracted by selector.
---@param selector? fun(item: T): number
---@return number
function Query:Max(selector) end

---Returns the minimum value extracted by selector.
---@param selector? fun(item: T): number
---@return number
function Query:Min(selector) end

---Computes the sum of sequence values extracted by selector.
---@param selector? fun(item: T): number
---@return number
function Query:Sum(selector) end

---Computes the average of sequence values extracted by selector.
---@param selector? fun(item: T): number
---@return number
function Query:Average(selector) end

---Groups elements by key.
---@param key_selector fun(item: T): any
---@return table<any, T[]>
function Query:GroupBy(key_selector) end

---Performs an action on each element of the materialized sequence.
---@param action fun(item: T, index: integer)
function Query:ForEach(action) end

-- ---------------------------------------------------------------------------
-- dbc.Schemas
-- ---------------------------------------------------------------------------

---WoWDBDefs schema registry.
---@class dbc.Schemas
---@field [string] table Dynamic schema access via dot syntax (e.g. Schemas.Spell)
local Schemas = {}

---Retrieves and caches a schema definition for a table and build.
---@param name string Table name (e.g. "Spell")
---@param build_or_hash? string Client build or layout hash
---@return table schema
function Schemas.Get(name, build_or_hash) end

---Checks if a schema definition exists for a table and build.
---@param name string Table name
---@param build_or_hash? string Client build or layout hash
---@return boolean exists
function Schemas.Has(name, build_or_hash) end

---Returns all foreign key relations declared in a schema.
---@param schema_or_name string|table
---@param build_or_hash? string
---@return table[]
function Schemas.GetRelations(schema_or_name, build_or_hash) end

---Sets the primary directory for definitions JSON files.
---@param path string
function Schemas.SetDefinitionsDir(path) end

---Registers an additional definitions search directory.
---@param path string
function Schemas.AddDefinitionsDir(path) end

---Sets the fallback build used when none is specified.
---@param build string
function Schemas.SetDefaultBuild(build) end

---Returns the configured fallback client build.
---@return string build
function Schemas.GetDefaultBuild() end

-- ---------------------------------------------------------------------------
-- dbc.Relations
-- ---------------------------------------------------------------------------

---Bidirectional foreign-key relations catalog.
---@class dbc.Relations
local Relations = {}

---Returns outbound relations from a given table for a client build.
---@param table_name string Table name
---@param build_str? string Client build
---@return table[]
function Relations.Get(table_name, build_str) end

---Returns inbound relations (tables pointing to this target table).
---@param target_table string Target table name
---@param build_str? string Client build
---@return table[]
function Relations.GetInbound(target_table, build_str) end

---Finds a specific relation by source table and target or field name.
---@param table_name string Source table name
---@param target_or_field string Target table or foreign key field name
---@param build_str? string Client build
---@return table|nil
function Relations.Find(table_name, target_or_field, build_str) end

---Adds a search directory for _relations index files.
---@param path string Directory path
function Relations.AddIndexDir(path) end

-- ---------------------------------------------------------------------------
-- dbc.Enums
-- ---------------------------------------------------------------------------

---Enum registry providing lazy loading and bitmask precomputations.
---@class dbc.Enums
---@field [string] table Dynamic enum access via dot syntax (e.g. Enums.ItemQuality)
local Enums = {}

---Retrieves an enum table by name.
---@param name string Enum name
---@return table enum
function Enums.Get(name) end

---Checks if an enum with the given name exists.
---@param name string
---@return boolean
function Enums.Has(name) end

return dbc
