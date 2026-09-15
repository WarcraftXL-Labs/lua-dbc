<h1 align="center">lua-dbc</h1>

<p align="center">
  <strong>Fluent LuaJIT bindings for World of Warcraft client databases.</strong><br>
  Read, edit, and query WDBC-WDC5 / WDB2-WDB6 files across every expansion - from Classic 1.12 to The War Within 11.x and Midnight 12.x.
</p>

<p align="center">
  <img alt="Lua" src="https://img.shields.io/badge/Lua-5.1-blue.svg">
  <img alt="LuaJIT" src="https://img.shields.io/badge/LuaJIT-2.1+-orange.svg">
  <img alt="License" src="https://img.shields.io/badge/License-GPL--3.0-green.svg">
  <img alt="LuaRocks" src="https://img.shields.io/badge/LuaRocks-lua--dbc-blueviolet.svg">
</p>

<p align="center">
  <a href="#-features">Features</a> ·
  <a href="#-installation">Installation</a> ·
  <a href="#-quick-start">Quick Start</a> ·
  <a href="#-api-at-a-glance">API</a> ·
  <a href="#%EF%B8%8F-architecture">Architecture</a> ·
  <a href="#-development">Development</a>
</p>

<hr>

<h2 id="-features">✨ Features</h2>

<h3>Core</h3>

<table>
  <tr>
    <th align="left" width="220">Feature</th>
    <th align="left">Description</th>
  </tr>
  <tr>
    <td><strong>Zero-copy FFI core</strong></td>
    <td>Records live in C memory and are accessed via <code>uint8_t*</code> pointers. Reads, writes, and indexing do not allocate Lua strings or tables except when you ask for them.</td>
  </tr>
  <tr>
    <td><strong>Every WoW format</strong></td>
    <td>Automatic detection through a 4-byte magic sniffer. Handles WDBC, WDB2, WDB3, WDB4, WDB5, WDB6, and WDC1 through WDC5 with a single, uniform API.</td>
  </tr>
  <tr>
    <td><strong>Multi-build support</strong></td>
    <td>Bind a workspace to a specific client build (for example <code>3.3.5.12340</code> or <code>12.1.5.69594</code>). Schemas, relations, and generated autocomplete stay coherent across builds.</td>
  </tr>
</table>

<h3>Authoring</h3>

<table>
  <tr>
    <th align="left" width="220">Feature</th>
    <th align="left">Description</th>
  </tr>
  <tr>
    <td><strong>Fluent PascalCase API</strong></td>
    <td>Method chaining for readability: <code>spell:SetName_lang("Pyroblast"):SetSpellIconID(42)</code></td>
  </tr>
  <tr>
    <td><strong>Dynamic reflection</strong></td>
    <td>Getters, setters, relation navigators, and flag checkers are compiled once per table and reused. No runtime reflection cost after the first access.</td>
  </tr>
  <tr>
    <td><strong>Cascading row creation</strong></td>
    <td>Create a foreign row and link it in one call: <code>spell:CreateRelated("SpellIcon", { ... })</code></td>
  </tr>
  <tr>
    <td><strong>LINQ-style queries</strong></td>
    <td><code>Where</code>, <code>Select</code>, <code>OrderBy</code>, <code>GroupBy</code>, <code>FirstOrDefault</code>, <code>Distinct</code>, <code>Sum</code>, <code>Average</code> - with short-circuit evaluation for terminal operators.</td>
  </tr>
</table>

<h3>Tooling</h3>

<table>
  <tr>
    <th align="left" width="220">Feature</th>
    <th align="left">Description</th>
  </tr>
  <tr>
    <td><strong>Workspaces</strong></td>
    <td>A <code>DbcWorkspace</code> binds a source directory (stock files) and an output directory (patched files). <code>SaveAll()</code> writes every modified table in one pass.</td>
  </tr>
  <tr>
    <td><strong>Relations catalog</strong></td>
    <td>A precomputed, per-build index of every foreign-key relationship in the game. Used for FK resolution, cascade creation, and reverse lookups (<code>GetChildren</code>).</td>
  </tr>
  <tr>
    <td><strong>Full LuaLS support</strong></td>
    <td>Generated <code>---@class</code> / <code>---@field</code> stubs for every table and every build, so your editor autocompletes field names, method signatures, and relation targets.</td>
  </tr>
  <tr>
    <td><strong>Pure Lua tooling</strong></td>
    <td>The definition converter, relations-index builder, and LuaLS meta generator are Lua scripts. No language runtime beyond LuaJIT and <code>lua-cjson</code> is required.</td>
  </tr>
</table>

<hr>

<h2 id="-installation">📦 Installation</h2>

<h3>Via LuaRocks</h3>

<pre><code class="language-bash">luarocks install lua-dbc</code></pre>

<blockquote>
  <p><code>lua-dbc</code> targets <strong>LuaJIT 2.1</strong> and requires <code>lua-cjson</code> for the tooling scripts. Both are available on LuaRocks.</p>
</blockquote>

<h3>From source (development)</h3>

<pre><code class="language-bash">git clone https://github.com/WarcraftXL-Labs/lua-dbc.git
cd lua-dbc
git submodule update --init --recursive   # fetches WoWDBDefs

# Generate definitions/, relations index, and LuaLS meta
luajit tools/setup.lua

# Optional: install into your local LuaRocks tree
luarocks make --local</code></pre>

<blockquote>
  <p>The <code>vendor/WoWDBDefs</code> submodule is only needed to regenerate definitions. If you clone from a release tarball, the <code>definitions/</code> directory is already populated.</p>
</blockquote>

<hr>

<h2 id="-quick-start">🚀 Quick Start</h2>

<h3>1. Open a file</h3>

<pre><code class="language-lua">local dbc = require("dbc")

-- Auto-detects the format from the file's magic bytes
local spells = dbc.Open("data/Spell.dbc")

print("Spell count:", spells:Count())</code></pre>

<h3>2. Bind a workspace</h3>

<pre><code class="language-lua">local ws = dbc.Workspace({
    source = "data/stock/dbc",
    out    = "build/patched/dbc",
    build  = "3.3.5.12340",
})

local spells = ws:Open("Spell")
local icons  = ws:Open("SpellIcon")</code></pre>

<h3>3. Read and edit rows</h3>

<pre><code class="language-lua">-- Read
local fireball = spells:FindById(133)
print(fireball:GetName_lang())        -- "Fireball"

-- Edit
fireball:SetManaCost(200)
fireball:AddAttributes(dbc.Enums.SpellAttributes.flags.IS_ABILITY)</code></pre>

<h3>4. Follow relations</h3>

<pre><code class="language-lua">local icon = fireball:GetSpellIcon()
print("Icon texture:", icon:GetTextureFilename())</code></pre>

<h3>5. Create a linked row</h3>

<pre><code class="language-lua">local new_icon = fireball:CreateRelated("SpellIcon", {
    TextureFilename = "Interface\\Icons\\Spell_Fire_Apocalypse",
})
print("Linked icon ID:", fireball:GetSpellIconID())</code></pre>

<h3>6. Query</h3>

<pre><code class="language-lua">local passive_fire_spells = spells:Query()
    :Where(function(r) return r:GetName_lang():find("Fire") ~= nil end)
    :Where(function(r) return r:HasAttributes(0x40) end)  -- IS_PASSIVE
    :OrderBy(function(r) return r:GetID() end)
    :ToList()

print(("Found %d passive fire spells"):format(#passive_fire_spells))</code></pre>

<h3>7. Save</h3>

<pre><code class="language-lua">-- Single table
spells:Save()

-- Or every modified table in the workspace
ws:SaveAll()</code></pre>

<hr>

<h2 id="-api-at-a-glance">🧭 API at a glance</h2>

<h3>Top-level (<code>dbc</code>)</h3>

<table>
  <tr><th align="left">Function</th><th align="left">Purpose</th></tr>
  <tr><td><code>dbc.Open(path[, schema[, build]])</code></td><td>Open a single file with auto-detected format</td></tr>
  <tr><td><code>dbc.Create(schema, format[, build])</code></td><td>Create a blank in-memory table</td></tr>
  <tr><td><code>dbc.Workspace(options)</code></td><td>Create a build-scoped workspace</td></tr>
  <tr><td><code>dbc.Query(source)</code></td><td>Wrap any collection in a LINQ pipeline</td></tr>
  <tr><td><code>dbc.SetDefinitionsDir(path)</code></td><td>Override the definitions directory</td></tr>
  <tr><td><code>dbc.AddDefinitionsDir(path)</code></td><td>Add a fallback definitions directory</td></tr>
  <tr><td><code>dbc.Relations</code></td><td>Access the global relations catalog</td></tr>
  <tr><td><code>dbc.Schemas</code></td><td>Access the global schema registry</td></tr>
  <tr><td><code>dbc.Enums</code></td><td>Access the enum registry</td></tr>
</table>

<h3>Workspace</h3>

<table>
  <tr><th align="left">Method</th><th align="left">Purpose</th></tr>
  <tr><td><code>ws:Open(path_or_name[, schema])</code></td><td>Open and bind a table to the workspace build</td></tr>
  <tr><td><code>ws:Create(schema[, format])</code></td><td>Create a blank table</td></tr>
  <tr><td><code>ws:GetTable(name)</code></td><td>Fetch a cached table or auto-open from source</td></tr>
  <tr><td><code>ws:SaveAll([options])</code></td><td>Save every modified table</td></tr>
  <tr><td><code>ws:GetBuild()</code> / <code>ws:SetBuild(build)</code></td><td>Read or change the target build</td></tr>
</table>

<h3>DbcTable</h3>

<table>
  <tr><th align="left">Method</th><th align="left">Purpose</th></tr>
  <tr><td><code>tbl:Count()</code></td><td>Row count</td></tr>
  <tr><td><code>tbl:GetRowByIndex(row)</code></td><td>Row by 1-based index (cached proxy)</td></tr>
  <tr><td><code>tbl:GetRowById(id)</code></td><td>Row by primary key (throws if missing)</td></tr>
  <tr><td><code>tbl:FindById(id)</code></td><td>Row by primary key or <code>nil</code></td></tr>
  <tr><td><code>tbl:Has(id)</code></td><td>ID existence check</td></tr>
  <tr><td><code>tbl:Create(id[, data])</code></td><td>Create a row with a specific ID</td></tr>
  <tr><td><code>tbl:CreateNext([data])</code></td><td>Create a row with <code>max_id + 1</code></td></tr>
  <tr><td><code>tbl:CloneRow(source, new_id[, override])</code></td><td>Clone an existing row</td></tr>
  <tr><td><code>tbl:Query()</code></td><td>LINQ pipeline over all rows</td></tr>
  <tr><td><code>tbl:GetByRelation(foreign_id)</code></td><td>Rows linked via the binary relationship block</td></tr>
</table>

<h3>RowProxy</h3>

<table>
  <tr><th align="left">Category</th><th align="left">Examples</th></tr>
  <tr><td><strong>Field access</strong></td><td><code>row:GetField(name)</code>, <code>row:SetField(name, v)</code>, <code>row.Field</code></td></tr>
  <tr><td><strong>Compiled getters</strong></td><td><code>row:GetManaCost()</code>, <code>row:GetName_lang()</code></td></tr>
  <tr><td><strong>Compiled setters</strong></td><td><code>row:SetManaCost(200)</code>, <code>row:SetName_lang("X")</code></td></tr>
  <tr><td><strong>Array access</strong></td><td><code>row:GetEffect(1)</code>, <code>row:SetEffect(2, 1)</code></td></tr>
  <tr><td><strong>Flag helpers</strong></td><td><code>row:HasAttributes(flag)</code>, <code>row:AddAttributes(flag)</code></td></tr>
  <tr><td><strong>Relation navigation</strong></td><td><code>row:GetSpellIcon()</code>, <code>row:GetCastingTime()</code></td></tr>
  <tr><td><strong>Relation authoring</strong></td><td><code>row:CreateRelated("SpellIcon", data)</code></td></tr>
  <tr><td><strong>Reverse relations</strong></td><td><code>row:GetChildren("SpellChainEffects")</code></td></tr>
</table>

<hr>

<h2 id="%EF%B8%8F-architecture">🏗️ Architecture</h2>

<details>
<summary><strong>Click to expand the file tree</strong></summary>

<pre><code>lua-dbc/
├── src/
│   ├── dbc/
│   │   ├── _loader.lua         # Internal module resolver
│   │   ├── _util.lua           # Small shared helpers
│   │   ├── file.lua            # DbcFile facade over the format dispatcher
│   │   ├── formats/
│   │   │   ├── base.lua        # BaseFormatDriver: strings, schema, save
│   │   │   ├── sniffer.lua     # 4-byte magic detection
│   │   │   ├── wdbc.lua        # Classic → WotLK
│   │   │   ├── wdb2.lua        # Cataclysm → MoP
│   │   │   ├── wdb3.lua        # Warlords of Draenor (WDB3/WDB4)
│   │   │   ├── wdb5.lua        # Legion (WDB5/WDB6)
│   │   │   └── wdc.lua         # BfA → Midnight (WDC1–WDC5)
│   │   ├── proxy.lua           # RowProxy and compiled reflection
│   │   ├── table.lua           # DbcTable: indexing, creation, cloning
│   │   ├── query.lua           # LINQ pipeline
│   │   ├── relations.lua       # Relations catalog loader
│   │   ├── workspace.lua       # Multi-table, build-scoped workspace
│   │   ├── schema.lua          # WoWDBDefs JSON schema loader
│   │   ├── enum.lua            # Enum registry with bitmask precompute
│   │   ├── json.lua            # Pure-Lua JSON decoder (runtime)
│   │   └── init.lua            # Public entry point
│   └── init.lua                # `lua-dbc` package alias
├── definitions/                # Generated: WoWDBDefs JSON + relations index
│   ├── *.json
│   └── _relations/
│       ├── index.json
│       └── v335.json           # One file per build
├── meta/                       # Generated: LuaLS autocomplete
│   ├── _workspace.lua
│   ├── _tables.lua
│   └── dbc/v335/*.lua
├── tools/
│   ├── fs.lua                  # Cross-platform filesystem helpers
│   ├── cli.lua                 # Logging and command helpers
│   ├── json_pretty.lua         # cjson wrapper with pretty output
│   ├── dbd_common.lua          # Shared build/CLI utilities
│   ├── dbd_to_json.lua         # Convert WoWDBDefs .dbd → .json
│   ├── build_relations.lua     # Build the per-build relations index
│   ├── generate_meta.lua       # Generate LuaLS stubs
│   └── setup.lua               # One-shot pipeline orchestrator
├── test/
│   └── test_all.lua            # End-to-end integration test suite
├── vendor/
│   └── WoWDBDefs/              # Git submodule (schemas source)
├── lua-dbc-scm-1.rockspec
├── .luarc.json
└── README.md</code></pre>

</details>

<details>
<summary><strong>Click to expand the data flow diagram</strong></summary>

<pre><code>vendor/WoWDBDefs/definitions/*.dbd
       │
       │  tools/dbd_to_json.lua
       ▼
definitions/*.json                    ← schema, columns, FK metadata
       │
       ├── tools/build_relations.lua
       │      ▼
       │   definitions/_relations/*.json   ← per-build FK index
       │
       └── tools/generate_meta.lua
              ▼
           meta/dbc/v335/*.lua         ← LuaLS autocomplete

runtime:
       definitions/*.json  ────►  dbc.Schemas
       definitions/_relations/*.json ────►  dbc.Relations</code></pre>

</details>

<hr>

<h2 id="-development">🧑‍💻 Development</h2>

<h3>Building</h3>

<pre><code class="language-bash">git submodule update --init --recursive
luajit tools/setup.lua</code></pre>

<p>The setup pipeline runs <code>dbd_to_json</code> → <code>build_relations</code> → <code>generate_meta</code>. It is idempotent: once artifacts exist, subsequent runs are no-ops unless <code>--force</code> is passed.</p>

<h3>Running tests</h3>

<pre><code class="language-bash">luajit test/test_all.lua</code></pre>

<p>The suite exercises schema resolution, table creation and mutation, primary-key indexing, LINQ pipelines, WDBC and WDB2 serialization roundtrips, cascading relations, format detection, and dynamic DBDefs JSON loading.</p>

<h3>Editor setup (LuaLS)</h3>

<p><code>lua-dbc</code> ships with <code>.luarc.json</code>. Ensure your editor's LuaLS configuration includes the <code>meta/</code> directory:</p>

<pre><code class="language-json">{
  "workspace": {
    "library": ["meta", "src"]
  }
}</code></pre>

<hr>

<h2>🤝 Contributing</h2>

<ul>
  <li>Lua code follows the standard Lua 5.1 style (<code>snake_case</code> for locals, <code>PascalCase</code> for public API).</li>
  <li>Comments are in English, use the <code>---</code> doc-comment style, and include <code>@param</code> / <code>@return</code> annotations where useful.</li>
  <li>Every PR that adds a new tool should regenerate the rockspec.</li>
  <li>Bug reports should include the output of <code>luajit test/test_all.lua</code> and the client build the issue occurs on.</li>
</ul>

<hr>

<h2>📄 License</h2>

<p>GPL-3.0 - see <a href="LICENSE">LICENSE</a> for details.</p>
