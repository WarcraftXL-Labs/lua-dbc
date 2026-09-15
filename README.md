# lua-dbc

Fluent LuaJIT / FFI library for reading, editing, and querying World of Warcraft: Wrath of the Lich King (3.3.5a) DBC files.

Designed as the foundational DBC component of the **WarcraftXL** Lua stack, `lua-dbc` combines raw LuaJIT FFI memory speeds with a high-level, fluent PascalCase API, project workspaces with dedicated source/output directories, full cross-table relation navigation and cascading creation, and a powerful LINQ-style query engine.

---

## ✨ Features

- **Blazing Fast LuaJIT FFI Core**: Zero-copy in-memory record reading and writing directly with C pointers.
- **Project Workspaces (`dbc.Workspace`)**: Clean management of input (source stock DBCs) and output (patched DBCs) directories with automatic directory creation and batch saving (`SaveAll`).
- **DBC Relations Engine & Cascading Creation (`dbc.Relations`)**: Precomputed relationship catalog across 70+ tables with `row:CreateRelated("SpellIcon", ...)` to automatically create and link foreign rows in one step.
- **Fluent PascalCase API**: Clean, ergonomic method chaining (`row:SetName("Pyroblast"):SetCategory(12)`).
- **Zero-Overhead Dynamic Reflection**: Dynamic getters, setters, and bitmask checkers are dynamically compiled and cached per schema.
- **First-Class LuaLS Support**:
  - Auto-completion on all **246 DBC tables** (`workspace.Spell`, `dbc.Open("Spell")`).
  - Auto-completion on all **168 enums & bitmasks** (`dbc.Enums.ItemQuality.EPIC`, `dbc.Enums.SpellAttributes.flags.IS_PASSIVE`).
  - Auto-completion on all row methods, PascalCase getters, setters, and relations (`row:GetSpellIcon()`).
- **Linq-Style Query Engine**: Expressive queries over DBC tables (`Where`, `Select`, `OrderBy`, `First`, `Count`, `GroupBy`, `ToDictionary`, `ToList`).
- **Create Rows from Scratch**: Create brand-new rows with arbitrary custom IDs (`table:Create(id)`) or sequential IDs (`table:CreateNext(data)`).
- **Complete WotLK 3.3.5a Coverage**: Includes 246 validated schemas, 168 enumerations, and precomputed relation catalogs.

---

## 📦 Installation & Setup

### LuaRocks
```bash
luarocks install lua-dbc
```

### Lua Language Server (LuaLS) Configuration
`lua-dbc` comes with `.luarc.json` pre-configured. Ensure your workspace includes `meta/` for instant auto-completion:
```json
{
  "workspace": {
    "library": ["meta", "src"]
  }
}
```

---

## 🚀 Quick Start

### 1. Workspaces with Source & Output Directories

```lua
local dbc = require("dbc")

-- Configure workspace with separate stock DBC input and build output directories
local workspace = dbc.Workspace({
    source = "data/stock/dbc",
    out = "build/patched/dbc"
})

-- Open a table from the source directory
local spells = workspace:Open("Spell")

-- When saved without arguments, it automatically writes to the output directory!
-- e.g. "build/patched/dbc/Spell.dbc"
spells:Save()

-- Or batch save all modified tables at once:
workspace:SaveAll()
```

### 2. Relations & Cascading Row Creation

Easily create linked records across multiple tables without manual foreign key management:

```lua
-- Create a new spell
local spell = spells:Create(99999):SetName("Apocalypse Flame")

-- Effortlessly create a related SpellIcon row and automatically link it to this spell!
local icon = spell:CreateRelated("SpellIcon", {
    TextureFilename = "Interface\\Icons\\Spell_Fire_Apocalypse"
})

-- spell:GetSpellIconID() is now automatically set to icon:GetID()!
print("Linked Icon ID:", spell:GetSpellIconID())

-- Follow relations directly in Lua:
local resolved_icon = spell:GetSpellIcon()
print("Texture:", resolved_icon:GetTextureFilename())

-- Find all child rows in another table pointing to this spell (has_many):
local chain_effects = spell:GetChildren("SpellChainEffects")
```

### 3. LINQ Query Engine

```lua
-- Fluent filtering, sorting, and projection
local passive_fire_spells = spells:Query()
    :Where(function(row) return row:GetName():find("Fire") ~= nil end)
    :Where(function(row) return row:HasAttributes(dbc.Enums.SpellAttributes.flags.IS_PASSIVE) end)
    :OrderBy(function(row) return row:GetID() end)
    :ToList()

print(string.format("Found %d passive fire spells", #passive_fire_spells))
```

### 4. Enums and Bitmask Flags

```lua
-- Access any of the 168 pre-loaded enums with full IDE autocompletion
local quality = dbc.Enums.ItemQuality.EPIC
local passive_flag = dbc.Enums.SpellAttributes.flags.IS_PASSIVE

spell:AddAttributes(passive_flag)
if spell:HasAttributes(passive_flag) then
    print("Spell is passive!")
end
```

---

## 🛠️ Architecture

```
lua-dbc/
├── src/
│   ├── dbc/
│   │   ├── file.lua        # Low-level FFI binary encoder/decoder & string block intern
│   │   ├── proxy.lua       # RowProxy with PascalCase reflection & method caching
│   │   ├── table.lua       # DbcTable container with O(1) ID indexing & ID generators
│   │   ├── query.lua       # LINQ query pipeline
│   │   ├── relations.lua   # Cross-DBC relations catalog (belongs_to / has_many)
│   │   ├── workspace.lua   # Multi-DBC workspace & source/output directory manager
│   │   ├── session.lua     # Compatibility alias forwarding to workspace
│   │   ├── schema.lua      # Schemas registry & loader
│   │   ├── enum.lua        # Enums registry & bit flag precomputer
│   │   └── init.lua        # Main entry point
│   ├── schemas/            # 246 WotLK 3.3.5a DBC schemas
│   └── enums/              # 168 client enums & bitmasks
├── meta/                   # Full EmmyLua / LuaLS stubs
│   ├── core.lua            # Core class annotations
│   ├── _enums.lua          # Auto-complete definitions for all 168 enums
│   ├── _tables.lua         # Auto-complete aliases for table names
│   ├── _workspace.lua      # Auto-complete overloads & table accessors for Workspace
│   └── dbc/                # 246 typed row & table annotations
├── tools/
│   └── gen_meta.py         # LuaLS meta & relations generator
├── test/
│   └── test_all.lua        # Full integration test suite
├── lua-dbc-scm-1.rockspec  # LuaRocks manifest
└── .luarc.json             # LuaLS project configuration
```

---

## 📄 License

GPL-3.0 License. See `LICENSE` for details.
