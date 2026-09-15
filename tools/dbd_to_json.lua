--[[
    tools/dbd_to_json.lua
    Converts WoWDBDefs .dbd files into the JSON format consumed by lua-dbc.

    Input:
        A single .dbd file or a directory containing .dbd files.
    Output:
        One .json file per .dbd, written into the output directory.

    The produced JSON mirrors the schema used by the Python converter and by
    the WoWDBDefs upstream format:

        {
          "columnDefinitions": {
            "<colName>": {
              "type":          "int"|"uint"|"float"|"string"|"locstring"|"bool",
              "verified":      boolean,
              "foreignTable":  "<target table>"   (optional),
              "foreignColumn": "<target column>"  (optional),
              "comment":       "<text>"           (optional)
            }, ...
          },
          "versionDefinitions": [
            {
              "builds":       [ { expansion, major, minor, build }, ... ],
              "buildRanges":  [ { minBuild:{...}, maxBuild:{...} }, ... ],
              "layoutHashes": [ "ABCD1234", ... ],
              "comment":      "<text>"  (optional),
              "definitions":  [
                {
                  "name":         "<colName>",
                  "size":         32,
                  "arrLength":    0,
                  "isID":         boolean,
                  "isRelation":   boolean,
                  "isNonInline":  boolean,
                  "isSigned":     boolean,
                  "comment":      "<text>"  (optional)
                }, ...
              ]
            }, ...
          ]
        }

    Usage:
        luajit tools/dbd_to_json.lua <dbd_path_or_dir> [output_dir] [--jobs N]

    Notes:
        - Section headers (COLUMNS, LAYOUT, BUILD, BUILD_RANGE, COMMENT) are
          case-sensitive and must appear at the start of a line.
        - Blank lines separate consecutive version definitions.
        - The default output directory is "definitions".
]]

package.path = "?.lua;src/?.lua;src/?/init.lua;" .. package.path

local fs    = require("tools.fs")
local cli   = require("tools.cli")
local json  = require("tools.json_pretty")

local LOG = "dbd_to_json"

-- ---------------------------------------------------------------------------
-- Argument parsing
-- ---------------------------------------------------------------------------

local function parse_args(argv)
    local opts = {
        input  = nil,
        output = "definitions",
        jobs   = 0,
    }

    local positional = {}
    local i = 1
    while i <= #argv do
        local a = argv[i]
        if a == "--jobs" then
            opts.jobs = tonumber(argv[i + 1]) or 0
            i = i + 2
        elseif a:sub(1, 2) == "--" then
            i = i + 1  -- ignore unknown options
        else
            positional[#positional + 1] = a
            i = i + 1
        end
    end

    opts.input  = positional[1]
    opts.output = positional[2] or opts.output

    return opts
end

-- ---------------------------------------------------------------------------
-- Lexer helpers
-- ---------------------------------------------------------------------------

--- Splits a comma-separated list into trimmed, non-empty tokens.
---@param s string
---@return string[]
local function split_csv(s)
    local out = {}
    for tok in s:gmatch("[^,]+") do
        tok = tok:gsub("^%s+", ""):gsub("%s+$", "")
        if tok ~= "" then out[#out + 1] = tok end
    end
    return out
end

--- Parses a WoW build string "X.Y.Z.N" into a structured build object.
---@param s string
---@return table|nil
local function parse_build(s)
    if not s then return nil end
    s = s:gsub("^%s+", ""):gsub("%s+$", "")

    -- Strip a letter revision suffix on the minor version:
    -- "3.3.5a.12340" -> "3.3.5.12340"
    s = s:gsub("(%d+%.%d+%.%d+)%a+(%.%d+)", "%1%2")
    s = s:gsub("(%d+%.%d+%.%d+)%a+$", "%1")

    local e, maj, min, bld = s:match("^(%d+)%.(%d+)%.(%d+)%.(%d+)$")
    if e then
        return {
            expansion = tonumber(e),
            major     = tonumber(maj),
            minor     = tonumber(min),
            build     = tonumber(bld),
        }
    end

    local maj2, min2, bld2 = s:match("^(%d+)%.(%d+)%.(%d+)$")
    if maj2 then
        return {
            expansion = 0,
            major     = tonumber(maj2),
            minor     = tonumber(min2),
            build     = tonumber(bld2),
        }
    end

    return nil
end

-- ---------------------------------------------------------------------------
-- COLUMNS section parser
-- ---------------------------------------------------------------------------

--- Parses a single column definition line from the COLUMNS block.
--- Grammar (informal):
---     <type>[<fk>] <name>[?]  [// comment]
--- where <fk> can be "<table>::<column>", "<table>", or empty.
--- The trailing '?' on <name> marks the column as unverified.
---
---@param line string
---@return string|nil name
---@return table|nil meta
local function parse_column_line(line)
    -- Strip trailing comment
    local comment = nil
    local code = line
    local cidx = code:find("//")
    if cidx then
        comment = code:sub(cidx + 2):gsub("^%s+", "")
        code = code:sub(1, cidx - 1)
    end

    -- Match: type[<fk>] name[?]  (name is a single token)
    local ctype, fk, cname = code:match("^(%w+)%s*<?([^>]*)>?%s+(%S+)%s*$")
    if not ctype or not cname then return nil, nil end

    local verified = true
    if cname:sub(-1) == "?" then
        cname = cname:sub(1, -2)
        verified = false
    end

    local meta = {
        type     = ctype,
        verified = verified,
    }

    if fk and fk ~= "" then
        local tbl, col = fk:match("^(.-)::(.*)$")
        if tbl and col then
            meta.foreignTable  = tbl
            meta.foreignColumn = col
        else
            meta.foreignTable = fk
        end
    end

    if comment and comment ~= "" then
        meta.comment = comment
    end

    return cname, meta
end

-- ---------------------------------------------------------------------------
-- Definition line parser (inside a version definition block)
-- ---------------------------------------------------------------------------

--- Parses one column definition line inside a version definition block.
--- Grammar (informal):
---     <name>[<size>][[arrLen]]  [markers]  [// comment]
--- Markers include: $id$, $noninline$, $relation$
---
--- The `size` token may appear as "<32>", "<u8>", "<i16>", etc. A leading
--- 'u' means unsigned; otherwise the integer is the bit size and the column
--- is treated as signed.
---
---@param line string
---@return table|nil
local function parse_definition_line(line)
    -- Extract trailing comment
    local comment = nil
    local code = line
    local cidx = code:find("//")
    if cidx then
        comment = code:sub(cidx + 2):gsub("^%s+", "")
        code = code:sub(1, cidx - 1)
    end

    code = code:gsub("^%s+", ""):gsub("%s+$", "")
    if code == "" then return nil end

    -- Detect markers before stripping them
    local is_id         = code:find("%$id%$") ~= nil
    local is_non_inline = code:find("noninline") ~= nil
    local is_relation   = code:find("relation") ~= nil

    -- Strip all $marker$ tokens
    code = code:gsub("%$[^$]+%$", ""):gsub("^%s+", ""):gsub("%s+$", "")

    -- Extract array length: [N]
    local arr_len = 0
    local arr_str = code:match("%[(%d+)%]")
    if arr_str then
        arr_len = tonumber(arr_str)
        code = code:gsub("%[%d+%]", ""):gsub("^%s+", ""):gsub("%s+$", "")
    end

    -- Extract size: <uN>, <iN>, or <N>
    local size     = 32
    local is_signed = true
    local size_str = code:match("<([^>]+)>")
    if size_str then
        code = code:gsub("<[^>]+>", ""):gsub("^%s+", ""):gsub("%s+$", "")
        if size_str:sub(1, 1) == "u" then
            is_signed = false
            size = tonumber(size_str:sub(2)) or 32
        elseif size_str:sub(1, 1) == "i" then
            is_signed = true
            size = tonumber(size_str:sub(2)) or 32
        else
            size = tonumber(size_str) or 32
        end
    end

    -- The remaining token(s) are the field name. Take the first token.
    local name = code:match("^(%S+)")
    if not name then return nil end

    local def = {
        name        = name,
        size        = size,
        arrLength   = arr_len,
        isID        = is_id,
        isRelation  = is_relation,
        isNonInline = is_non_inline,
        isSigned    = is_signed,
    }
    if comment and comment ~= "" then
        def.comment = comment
    end
    return def
end

-- ---------------------------------------------------------------------------
-- Whole-file parser
-- ---------------------------------------------------------------------------

--- Parses the full contents of a .dbd file into a table matching the JSON
--- structure consumed by lua-dbc.
---@param content string
---@return table|nil result
---@return string|nil err
local function parse_dbd(content)
    -- Normalize line endings
    content = content:gsub("\r\n", "\n"):gsub("\r", "\n")

    local lines = {}
    for l in content:gmatch("([^\n]*)\n?") do
        lines[#lines + 1] = l
    end

    local i = 1
    while i <= #lines and lines[i]:match("^%s*$") do i = i + 1 end

    if i > #lines or not lines[i]:match("^COLUMNS") then
        return nil, "missing COLUMNS header"
    end
    i = i + 1  -- skip COLUMNS line

    -- ---- Parse COLUMNS block (until a blank line) ----
    local col_defs = {}
    while i <= #lines do
        local line = lines[i]
        i = i + 1
        if line:match("^%s*$") then break end
        local name, meta = parse_column_line(line)
        if name then col_defs[name] = meta end
    end

    -- ---- Parse version definitions ----
    local vdefs = {}
    local cur_vdef = nil

    local function flush_vdef()
        if cur_vdef then
            vdefs[#vdefs + 1] = cur_vdef
            cur_vdef = nil
        end
    end

    local function ensure_vdef()
        if not cur_vdef then
            cur_vdef = {
                builds       = {},
                buildRanges  = {},
                layoutHashes = {},
                definitions  = {},
            }
        end
    end

    while i <= #lines do
        local line = lines[i]
        i = i + 1

        if line:match("^%s*$") then
            flush_vdef()
        elseif line:match("^LAYOUT") then
            ensure_vdef()
            local hashes = split_csv(line:sub(7))
            for _, h in ipairs(hashes) do
                cur_vdef.layoutHashes[#cur_vdef.layoutHashes + 1] = h
            end
        elseif line:match("^BUILD_RANGE") then
            ensure_vdef()
            -- BUILD_RANGE min-max
            local min_s, max_s = line:sub(12):match("^%s*(.-)%s*%-%s*(.-)%s*$")
            if min_s and max_s then
                local min_b = parse_build(min_s)
                local max_b = parse_build(max_s)
                if min_b and max_b then
                    cur_vdef.buildRanges[#cur_vdef.buildRanges + 1] = {
                        minBuild = min_b,
                        maxBuild = max_b,
                    }
                end
            end
        elseif line:match("^BUILD") then
            ensure_vdef()
            local payload = line:sub(6):gsub("^%s+", "")
            local entries = split_csv(payload)

            for _, entry in ipairs(entries) do
                -- Detect an inline range: "3.3.3.11685-3.3.5.12340"
                local min_s, max_s = entry:match("^(.-)%-+(.+)$")
                if min_s and max_s then
                    local min_b = parse_build(min_s)
                    local max_b = parse_build(max_s)
                    if min_b and max_b then
                        cur_vdef.buildRanges[#cur_vdef.buildRanges + 1] = {
                            minBuild = min_b,
                            maxBuild = max_b,
                        }
                    end
                else
                    local parsed = parse_build(entry)
                    if parsed then
                        cur_vdef.builds[#cur_vdef.builds + 1] = parsed
                    end
                end
            end
        elseif line:match("^COMMENT") then
            ensure_vdef()
            cur_vdef.comment = line:sub(9):gsub("^%s+", "")
        else
            ensure_vdef()
            local def = parse_definition_line(line)
            if def then
                cur_vdef.definitions[#cur_vdef.definitions + 1] = def
            end
        end
    end
    flush_vdef()

    return {
        columnDefinitions = col_defs,
        versionDefinitions = vdefs,
    }
end

-- ---------------------------------------------------------------------------
-- File processing
-- ---------------------------------------------------------------------------

--- Converts one .dbd file to a .json file. Returns true on success.
---@param input_path string
---@param output_path string
---@return boolean ok
---@return string|nil err
local function convert_file(input_path, output_path)
    local content = fs.read(input_path)
    if not content then
        return false, "cannot read input file"
    end

    local parsed, err = parse_dbd(content)
    if not parsed then
        return false, err or "parse error"
    end

    local encoded = json.encode(parsed, true)
    if not fs.write(output_path, encoded) then
        return false, "cannot write output file"
    end

    return true, nil
end

-- ---------------------------------------------------------------------------
-- Main
-- ---------------------------------------------------------------------------

local function main(argv)
    local opts = parse_args(argv)

    if not opts.input then
        print("Usage: luajit tools/dbd_to_json.lua <dbd_path_or_dir> [output_dir] [--jobs N]")
        os.exit(1)
    end

    local input = opts.input
    local output_dir = opts.output

    if not fs.isdir(output_dir) then
        fs.mkdir(output_dir)
    end

    -- Collect input files
    local files = {}
    if fs.isdir(input) then
        for _, name in ipairs(fs.listdir(input, ".dbd")) do
            files[#files + 1] = fs.join(input, name)
        end
    elseif fs.exists(input) then
        files[#files + 1] = input
    else
        print("[" .. LOG .. "] ERROR: input path does not exist: " .. input)
        os.exit(1)
    end

    if #files == 0 then
        print("[" .. LOG .. "] No .dbd file found in " .. input)
        return
    end

    cli.log(LOG, "Converting %d .dbd files to %s", #files, output_dir)

    local total = 0
    local failed = 0

    for _, path in ipairs(files) do
        local base = path:match("([^/\\]+)%.dbd$")
        if base then
            local out_path = fs.join(output_dir, base .. ".json")
            local ok, err = convert_file(path, out_path)
            if ok then
                total = total + 1
            else
                failed = failed + 1
                cli.log(LOG, "  [skip] %s: %s", base, err or "unknown error")
            end
        end
    end

    cli.log(LOG, "Done. %d converted, %d failed.", total, failed)
end

main(arg or {})