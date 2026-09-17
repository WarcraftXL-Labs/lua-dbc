# lua-dbc

LuaJIT bindings and authoring library for World of Warcraft client database files.
Supports reading, editing, and querying database files from Classic 1.12 up to Midnight 12.x (WDBC, WDB2, WDB3, WDB4, WDB5, WDB6, WDC1, WDC2, WDC3, WDC4, and WDC5).

[![Lua](https://img.shields.io/badge/Lua-5.1-blue.svg)](https://www.lua.org)
[![LuaJIT](https://img.shields.io/badge/LuaJIT-2.1+-orange.svg)](https://luajit.org)
[![License](https://img.shields.io/badge/License-GPL--3.0-green.svg)](LICENSE)
[![LuaRocks](https://img.shields.io/badge/LuaRocks-lua--dbc-blueviolet.svg)](https://luarocks.org/modules/WarcraftXL-Labs/lua-dbc)

---

## Contents

- [Overview](#overview)
- [Architecture](#architecture)
- [Supported Formats](#supported-formats)
- [Installation](#installation)
- [Quick Start](#quick-start)
- [Tutorials](#tutorials)
- [Core API Reference](#core-api-reference)
- [Performance](#performance)
- [Development and Tooling](#development-and-tooling)
- [License](#license)

---

## Overview

`lua-dbc` provides programmatic access to client databases used across the history of World of Warcraft. Built on the LuaJIT Foreign Function Interface (FFI), it accesses binary records through direct memory pointers without intermediate string or table allocations for numeric fields.

### Key Capabilities

- **Unified Format Engine**: Automatic format detection by 4-byte magic signature.
- **Dynamic Schema Resolution**: Automatic schema binding using build strings or binary layout hashes from database headers.
- **Multi-Section and Compressed DB2 Handling**: Full support for bitpacked columns, signed bitpacking, pallet compression, pallet arrays, common data defaults, and non-inline primary keys.
- **Streaming LINQ Engine**: Pull-based query pipeline with early termination on short-circuit operators.
- **Cross-Table Relations**: Typed foreign-key navigation, reverse relation queries, and cascade row creation.
- **Type Annotations**: Automated generation of LuaLS definitions for static analysis and IDE autocomplete.

---

## Architecture

The codebase separates low-level binary drivers, dynamic schema definitions, row-level proxies, and query evaluation into distinct layers.

```
lua-dbc/
├── src/
│   ├── dbc/
│   │   ├── _loader.lua          # Module loader and resolution helper
│   │   ├── _build.lua           # Build comparison and matching
│   │   ├── _util.lua            # Filesystem and memory utilities
│   │   ├── json.lua             # CJSON parser wrapper
│   │   ├── schema.lua           # Dynamic schema registry and DBD loader
│   │   ├── enum.lua             # Enum access layer
│   │   ├── enums/               # Modular database enums and bitmasks
│   │   ├── relations.lua        # Foreign-key relations catalog
│   │   ├── proxy.lua            # RowProxy with compiled memoized accessors
│   │   ├── query.lua            # Streaming LINQ query pipeline
│   │   ├── table.lua            # DbcTable indexing and row management
│   │   ├── workspace.lua        # Multi-table build-scoped workspace
│   │   ├── file.lua             # Low-level driver facade
│   │   ├── formats/
│   │   │   ├── init.lua         # Driver registry and factory
│   │   │   ├── sniffer.lua      # Binary magic sniffer
│   │   │   ├── base.lua         # Base driver interface and string interning
│   │   │   ├── wdbc.lua         # WDBC driver (Classic to WotLK)
│   │   │   ├── wdb2.lua         # WDB2 driver (Cataclysm to MoP)
│   │   │   ├── wdb3.lua         # WDB3 and WDB4 driver (WoD)
│   │   │   ├── wdb5.lua         # WDB5 and WDB6 driver (Legion)
│   │   │   └── wdc.lua          # Universal WDC driver (BfA to Midnight)
│   │   └── init.lua             # Public entry point
│   └── init.lua                 # Package root
├── definitions/                 # Converted JSON schemas and relation indices
├── meta/                        # LuaLS IDE autocomplete definitions
├── test/                        # Automated unit and real-world test suites
└── tools/                       # Schema conversion and metadata generation tools
```

---

## Supported Formats

| Format | Expansion Range | Header Size | Compression Features | Write Support |
| :--- | :--- | :---: | :--- | :---: |
| **WDBC** | Classic 1.12 to WotLK 3.3.5a | 16 bytes | Uncompressed, inline strings | Yes |
| **WDB2** | Cataclysm 4.0.3 to MoP 5.4.8 | 48 bytes | Copy tables, inline strings | Yes |
| **WDB3 / WDB4** | WoD 6.0 to 6.2 | 48 bytes | Copy tables, non-inline IDs | Read |
| **WDB5 / WDB6** | Legion 7.0 to 7.3.5 | 48 bytes | Field structures, common data | Read |
| **WDC1** | BfA 8.0 alpha | 84 bytes | Bitpacking, pallets, relationship maps | Read |
| **WDC2 / WDC3** | BfA 8.0 to Shadowlands 9.2 | 72 bytes | Multi-sections, relative string offsets | Read |
| **WDC4** | Dragonflight 10.0 to 10.2 | 72 bytes | Multi-sections, encrypted section tracking | Read |
| **WDC5** | The War Within 11.x to Midnight 12.x | 204 bytes | Build tag, multi-sections, pallet arrays | Read |

---

## Installation

### Via LuaRocks

```bash
luarocks install lua-dbc
```

### From Source

Requirements:
- LuaJIT 2.1 or newer
- `lua-cjson` (installed automatically via LuaRocks)

```bash
git clone https://github.com/WarcraftXL-Labs/lua-dbc.git
cd lua-dbc
git submodule update --init --recursive

# Generate schemas and LuaLS definitions
luajit tools/setup.lua

# Build local rock
luarocks make --local
```

---

## Quick Start

### 1. Opening a Database File

Format detection and schema resolution happen automatically:

```lua
local dbc = require("dbc")

-- Auto-detects format (WDBC, WDB2, WDC5, etc.) and binds schema
local areas = dbc.Open("data/AreaTable.db2")

print("Record count:", areas:Count())
```

### 2. Reading Record Data

```lua
-- O(1) lookup by primary key
local dun_morogh = areas[1]

print("Zone Name:", dun_morogh:GetZoneName())
print("Localized Name:", dun_morogh:GetAreaName_lang())
print("Continent ID:", dun_morogh:GetContinentID())

-- Array column access (index 1 to N)
local flag_primary = dun_morogh:GetFlags(1)
local flags_all = dun_morogh:GetFlags() -- returns table array
```

### 3. LINQ Streaming Queries

Queries evaluate on demand through pull-based iteration:

```lua
-- Filter Kalimdor zones and collect matching records
local kalimdor_zones = areas:Query()
    :Where(function(r) return r:GetContinentID() == 1 end)
    :ToList()

-- Short-circuit evaluation stops on first match without scanning remaining rows
local first_orgrimmar = areas:Query()
    :Where(function(r)
        local name = r:GetZoneName()
        return name and name:find("Orgrimmar") ~= nil
    end)
    :FirstOrDefault()

if first_orgrimmar then
    print("Found area:", first_orgrimmar:GetAreaName())
end
```

### 4. Working with Workspaces

A workspace groups multiple tables under a specific client build with input and output directory bindings:

```lua
local ws = dbc.Workspace({
    source = "data/stock",
    out    = "data/patched",
    build  = "3.3.5.12340",
})

local spells = ws:Open("Spell")
local fireball = spells[133]

-- Update values
fireball:SetManaCost(200)

-- Save only modified tables
ws:SaveAll()
```

### 5. Foreign-Key Navigation and Cascade Creation

```lua
-- Navigate to foreign row
local icon = fireball:GetSpellIcon()
print("Icon texture:", icon:GetTextureFilename())

-- Create related row and automatically assign foreign key
local new_icon = fireball:CreateRelated("SpellIcon", {
    TextureFilename = "Interface\\Icons\\Spell_Fire_Custom",
})
```

### 6. Localized Strings and Locales

Columns with localization support (names, descriptions, titles) do not require the `_lang` suffix. The `dbc.Locale` enumeration provides standard slot IDs and aliases:

```lua
local area = areas[1]

-- 1. Read first populated non-empty text
local name = area:GetAreaName()

-- 2. Read specific locale text (returns exact slot value, even if empty)
local french_name = area:GetAreaName(dbc.Locale.FRFR)

-- 3. Write default locale (enUS, slot 0)
area:SetAreaName("Dun Morogh")

-- 4. Write specific locale
area:SetAreaName("Dun Morogh", dbc.Locale.FRFR)

-- 5. Batch update multiple locales with a table
area:SetAreaName({
    [dbc.Locale.ENUS] = "Dun Morogh",
    [dbc.Locale.FRFR] = "Dun Morogh",
    [dbc.Locale.DEDE] = "Dun Morogh",
})

-- Direct table indexing also works
area.AreaName = "Dun Morogh"
```

---

## Tutorials

Step-by-step practical guides are organized by difficulty in the [`tutorials/`](tutorials/) directory, with French translations available in their respective `frFR/` subdirectories:

- **[Beginner](tutorials/beginner/01-clone-and-modify-spell.md)** ([français](tutorials/beginner/frFR/01-cloner-et-modifier-un-sort.md)): Cloning and customizing an existing spell in 3.3.5a (names, mana cost, damage, range).
- **[Intermediate](tutorials/intermediate/01-create-spell-from-scratch.md)** ([français](tutorials/intermediate/frFR/01-creer-un-sort-de-zero.md)): Creating a complete spell from scratch with precast animations, visual kits, and multi-table relations.
- **[Expert](tutorials/expert/01-cross-expansion-migration.md)** ([français](tutorials/expert/frFR/01-migration-cross-expansion.md)): Building a cross-expansion migration pipeline between modern 12.1.5 WDC5 and 3.3.5a WDBC using dual workspaces and foreign key relations.

---

## Core API Reference

### Top-Level (`dbc`)

| Function | Signature | Description |
| :--- | :--- | :--- |
| `dbc.Open` | `(path, schema_name?, build?) -> DbcTable` | Opens a file from disk with automatic format detection. |
| `dbc.Create` | `(schema_name, format?, build?) -> DbcTable` | Creates an empty database in memory (WDBC or WDB2). |
| `dbc.Workspace` | `(options) -> DbcWorkspace` | Initializes a workspace bound to source, output, and build version. |
| `dbc.Query` | `(source) -> Query` | Wraps a table or iterator in a streaming LINQ query pipeline. |
| `dbc.Locale` | `Table` | Enumeration of client locale slots (enUS, frFR, etc.) and aliases. |
| `dbc.Schemas` | `Registry` | Accesses schema loading and definition directory management. |
| `dbc.Formats` | `Registry` | Accesses the format sniffer and driver registry. |
| `dbc.Enums` | `Registry` | Accesses precomputed enum constants and bitmask helpers. |

### Table Operations (`DbcTable`)

| Method | Signature | Description |
| :--- | :--- | :--- |
| `tbl[id]` | `tbl[id] -> RowProxy?` | Direct primary key lookup. |
| `tbl:Count` | `() -> integer` | Returns the total number of records. |
| `tbl:FindById` | `(id) -> RowProxy?` | Looks up a row by primary key; returns `nil` if missing. |
| `tbl:GetRowById` | `(id) -> RowProxy` | Looks up a row by primary key; raises error if missing. |
| `tbl:GetRowByIndex`| `(index) -> RowProxy` | Looks up a row by 1-based sequential index. |
| `tbl:Create` | `(id, data?) -> RowProxy` | Inserts a new row with the specified primary key. |
| `tbl:CreateNext` | `(data?) -> RowProxy` | Inserts a new row with `max_id + 1`. |
| `tbl:CloneRow` | `(source_row, new_id, overrides?) -> RowProxy` | Duplicates an existing row. |
| `tbl:Query` | `() -> Query` | Creates a streaming LINQ query over all rows. |
| `tbl:Save` | `(path?) -> boolean` | Serializes the table to disk (WDBC and WDB2). |

### Record Access (`RowProxy`)

| Method | Signature | Description |
| :--- | :--- | :--- |
| `row:GetID` | `() -> integer` | Returns the primary key. |
| `row:GetField` | `(name, extra?) -> any` | Dynamic field reader. |
| `row:SetField` | `(name, value, extra?) -> RowProxy` | Dynamic field writer. |
| `row:Get<Field>` | `(extra?) -> any` | Compiled memoized field getter. |
| `row:Set<Field>` | `(value, extra?) -> RowProxy` | Compiled memoized field setter. |
| `row:Get<Relation>`| `() -> RowProxy?` | Resolves foreign-key relationship target. |
| `row:CreateRelated`| `(target_table, data?) -> RowProxy` | Creates foreign row and updates local key. |
| `row:GetChildren` | `(child_table, fk_name?) -> RowProxy[]` | Performs reverse relation lookup. |

---

## Performance

Benchmarks executed on an AMD Ryzen 9 9950X (64 GB DDR5, NVMe storage) running Windows 11 with LuaJIT 2.1. Timings measured using the Windows hardware timer (`QueryPerformanceCounter`, 10 MHz resolution).

Detailed benchmark methodology and graphs are available in [BENCHMARK.md](BENCHMARK.md).

### Summary Results

| Task | Target | Records / Size | Execution Time | Throughput |
| :--- | :--- | :---: | :---: | :---: |
| **Parsing WDBC** | `Spell.dbc` (3.3.5) | 49,971 records / 47.41 MB | 39.76 ms | 1,192.5 MB/s |
| **Parsing WDC5** | `areatable.db2` (12.1.5) | 10,030 records / 0.64 MB | 0.36 ms | 1,771.5 MB/s |
| **Parsing WDC5** | `map.db2` (12.1.5) | 1,187 records / 0.13 MB | 0.10 ms | 1,207.1 MB/s |
| **Primary Key Lookup** | `Spell.dbc` | 1,000,000 lookups | 0.79 ns / op | 1.26 billion ops/s |
| **Primary Key Lookup** | `areatable.db2` | 1,000,000 lookups | 8.89 ns / op | 112.4 million ops/s |
| **Streaming Query** | `Spell.dbc:FirstOrDefault` | 49,971 records scanned | 66.8 µs | Instant exit on match |
| **Binary Serialization**| `Spell.dbc` save | 49,971 records / 47.41 MB | 56.81 ms | 834.6 MB/s |

---

## Development and Tooling

### Test Suites

```bash
# Run unit tests and regression checks (13/13 tests)
luajit test/test_all.lua

# Run 3.3.5 DBC real data tests (requires C:/DBC or configured path)
luajit test/test_real_dbc.lua

# Run 12.1.5 DB2 real data tests (WDC5 verification and benchmarks)
luajit test/test_real_db2.lua

# Run full performance benchmark suite
luajit test/benchmark.lua
```

### Regeneating Definitions and Metadata

```bash
# Update definitions from WoWDBDefs submodule
luajit tools/setup.lua

# Target specific client builds
luajit tools/generate_meta.lua --builds 3.3.5.12340,12.1.5.69594
```

### Editor Configuration (LuaLS)

Configure `.luarc.json` in your workspace root:

```json
{
  "workspace": {
    "library": [
      "meta",
      "src"
    ]
  }
}
```

---

## License

This project is licensed under the GNU General Public License v3.0. See [LICENSE](LICENSE) for details.
