package = "lua-dbc"
version = "scm-1"

source = {
   url = "git+https://github.com/WarcraftXL-Labs/lua-dbc.git",
   branch = "dev",
}

description = {
   summary = "Fluent LuaJIT DBC/DB2 reader, editor and LINQ query engine for World of Warcraft",
   detailed = [[
      lua-dbc provides FFI-based reading, editing, and querying of World of Warcraft
      client databases (WDBC, WDB2, WDB3/4, WDB5/6, WDC1-5) across every game version.

      Features:
        - Multi-build support (Classic 1.12 through Midnight 12.x) driven by WoWDBDefs JSON
        - Fluent PascalCase reflection with dynamic method compilation
        - Per-build foreign-key relations index (bidirectional navigation, cascade creation)
        - LINQ-style query engine (Where, Select, OrderBy, GroupBy, ...)
        - Full LuaLS autocomplete via generated meta/ annotations
   ]],
   homepage = "https://github.com/WarcraftXL-Labs/lua-dbc",
   license = "GPL-3.0",
}

dependencies = {
   "lua >= 5.1",
   "lua-cjson",  -- required by tools/ (build_relations, generate_meta)
}

build = {
   type = "builtin",
   modules = {
      -- Library core
      ["lua-dbc"]               = "src/init.lua",
      ["dbc"]                   = "src/dbc/init.lua",
      ["dbc._loader"]           = "src/dbc/_loader.lua",
      ["dbc._util"]             = "src/dbc/_util.lua",
      ["dbc.file"]              = "src/dbc/file.lua",
      ["dbc.proxy"]             = "src/dbc/proxy.lua",
      ["dbc.table"]             = "src/dbc/table.lua",
      ["dbc.query"]             = "src/dbc/query.lua",
      ["dbc.workspace"]         = "src/dbc/workspace.lua",
      ["dbc.relations"]         = "src/dbc/relations.lua",
      ["dbc.schema"]            = "src/dbc/schema.lua",
      ["dbc.enum"]              = "src/dbc/enum.lua",
      ["dbc.json"]              = "src/dbc/json.lua",

      -- Formats
      ["dbc.formats"]           = "src/dbc/formats/init.lua",
      ["dbc.formats.base"]      = "src/dbc/formats/base.lua",
      ["dbc.formats.sniffer"]   = "src/dbc/formats/sniffer.lua",
      ["dbc.formats.wdbc"]      = "src/dbc/formats/wdbc.lua",
      ["dbc.formats.wdb2"]      = "src/dbc/formats/wdb2.lua",
      ["dbc.formats.wdb3"]      = "src/dbc/formats/wdb3.lua",
      ["dbc.formats.wdb5"]      = "src/dbc/formats/wdb5.lua",
      ["dbc.formats.wdc"]       = "src/dbc/formats/wdc.lua",

      -- Tools (Lua)
      ["tools.fs"]              = "tools/fs.lua",
      ["tools.cli"]             = "tools/cli.lua",
      ["tools.json_pretty"]     = "tools/json_pretty.lua",
      ["tools.dbd_common"]      = "tools/dbd_common.lua",
      ["tools.dbd_to_json"]     = "tools/dbd_to_json.lua",
      ["tools.build_relations"] = "tools/build_relations.lua",
      ["tools.generate_meta"]   = "tools/generate_meta.lua",
      ["tools.setup"]           = "tools/setup.lua",
   },
   copy_directories = {
      "definitions",
      "meta",
   },
}