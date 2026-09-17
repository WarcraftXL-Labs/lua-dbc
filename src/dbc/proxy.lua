--[[
    proxy.lua
    Fluent RowProxy wrapper around a single DBC record.

    Compiled accessors (Get<Field>, Set<Field>, Get<Relation>, Has<Flag>, ...)
    are memoized on the owning schema object. Since schemas are unique per
    (table name, build), this is safe for multi-build usage and eliminates a
    class of bugs where the same schema name across two builds would share
    stale offsets.

    Relation resolution prefers explicit `foreign_table` metadata from the
    schema, then the legacy name-based heuristics, then the relationship_map
    embedded in the binary (WDB5+, WDC*) when available.
]]

local ffi = require("ffi")
local bit = require("bit")

local load = require("dbc._loader")
local util = load("_util")

local file_mod      = load("file")
local relations_mod = load("relations")

local cast       = ffi.cast
local string_match = string.match
local math_min   = math.min

local READ        = file_mod.READ
local WRITE       = file_mod.WRITE
local KIND_WIDTH  = file_mod.KIND_WIDTH
local LOCALE      = file_mod.LOCALE
local LOCALE_SLOTS = file_mod.LOCALE_SLOTS or 16
local Relations   = relations_mod

-- ---------------------------------------------------------------------------
-- 64-bit split helper (preallocated buffer)
-- ---------------------------------------------------------------------------

local u64_buf = ffi.new("uint32_t[2]")
local function split_u64(val)
    cast("uint64_t*", u64_buf)[0] = cast("uint64_t", val)
    return tonumber(u64_buf[0]), tonumber(u64_buf[1])
end

-- ---------------------------------------------------------------------------
-- Legacy fallback relations
-- ---------------------------------------------------------------------------

-- Used only when a schema field has no `foreign_table` metadata AND the name
-- heuristic cannot recover a plausible target. This mostly matters for
-- hand-written schemas or older DBDs that predate columnDefinitions.foreignTable.
local LEGACY_RELATIONS = {
    CastingTimeIndex         = "SpellCastTimes",
    DurationIndex            = "SpellDuration",
    RangeIndex               = "SpellRange",
    SpellVisual              = "SpellVisual",
    SpellVisualID            = "SpellVisual",
    SpellDescriptionVariableID = "SpellDescriptionVariables",
    AreaID                   = "AreaTable",
    AreaTableID              = "AreaTable",
    ModelID                  = "CreatureModelData",
    DisplayID                = "CreatureDisplayInfo",
    CreatureDisplayInfoID    = "CreatureDisplayInfo",
    TotemCategory            = "TotemCategory",
    ItemClass                = "ItemClass",
    ItemSubClass             = "ItemSubClass",
}

-- ---------------------------------------------------------------------------
-- Helpers
-- ---------------------------------------------------------------------------

---Resolves the target table and target column for a FK field name.
---Prefers schema metadata, then legacy map, then name heuristic.
---@param self table RowProxy
---@param field_name string
---@return string|nil target_table
---@return string target_column
local function resolve_target(self, field_name)
    local schema = self:GetSchema()
    local f = schema and schema.by_name and schema.by_name[field_name]
    if f and f.foreign_table then
        return f.foreign_table, f.foreign_column or "ID"
    end

    local legacy = LEGACY_RELATIONS[field_name]
    if legacy then return legacy, "ID" end

    local target = string_match(field_name, "^(.-)ID$")
        or string_match(field_name, "^(.-)_ID$")
        or field_name
    return target, "ID"
end

---Returns the build this row is bound to, if any.
---@param self table
---@return string|nil
local function row_build(self)
    if not self._file then return nil end
    if self._file._build then return self._file._build end
    local ws = self._file._workspace
    if ws and ws.GetBuild then return ws:GetBuild() end
    return nil
end

---Returns the workspace this row belongs to, if any.
---@param self table
---@return table|nil
local function row_workspace(self)
    if self._table and self._table._workspace then
        return self._table._workspace
    end
    if self._file and self._file._workspace then
        return self._file._workspace
    end
    return nil
end

-- ---------------------------------------------------------------------------
-- RowProxy
-- ---------------------------------------------------------------------------

---@class RowProxy
local RowProxy = {}
RowProxy.__index = RowProxy

---@param file table Parent DbcFile driver.
---@param row integer 1-based row index.
---@param table_ref table|nil Parent DbcTable.
---@return RowProxy
function RowProxy.new(file, row, table_ref)
    local self = setmetatable({}, RowProxy)
    self._file = file
    self._table = table_ref
    self._row = row
    self._schema = file and file.schema
    return self
end

function RowProxy:GetAddress(offset) return self._file:GetAddress(self._row, offset) end
function RowProxy:GetIndex()         return self._row end
function RowProxy:GetFile()          return self._file end
function RowProxy:GetTable()         return self._table end
function RowProxy:GetSchema()        return self._schema or (self._file and self._file.schema) end
function RowProxy:IsValid()
    return self._file ~= nil and self._row >= 1 and self._row <= self._file.record_count
end

-- ---------------------------------------------------------------------------
-- Primary key
-- ---------------------------------------------------------------------------

function RowProxy:GetID()
    if self._id_override then return self._id_override end
    if self._file and self._file.GetRowId then
        return self._file:GetRowId(self._row)
    end
    local offset = self._file:GetIdOffset()
    return READ.u32(self:GetAddress(offset))
end

function RowProxy:SetID(id)
    local offset = self._file:GetIdOffset()
    local old_id = self:GetID()
    WRITE.u32(self:GetAddress(offset), id)

    if self._table and self._table._id_map then
        self._table._id_map[old_id] = nil
        self._table._id_map[id] = self._row
    end

    self._file.dirty = true
    return self
end

-- ---------------------------------------------------------------------------
-- Localized strings
-- ---------------------------------------------------------------------------

function RowProxy:_ReadLoc(f, locale)
    local base_addr = self:GetAddress(f.offset)

    if locale ~= nil then
        local slot = type(locale) == "number" and locale or LOCALE[locale]
        if not slot or slot < 0 or slot >= LOCALE_SLOTS then
            error(string.format("Invalid locale identifier: %s", tostring(locale)))
        end
        return self._file:GetString(READ.u32(base_addr + slot * 4))
    end

    for slot = 0, LOCALE_SLOTS - 1 do
        local str_offset = READ.u32(base_addr + slot * 4)
        if str_offset ~= 0 then
            local text = self._file:GetString(str_offset)
            if text and text ~= "" then return text end
        end
    end
    return ""
end

function RowProxy:_WriteLoc(f, text, locale)
    local base_addr = self:GetAddress(f.offset)
    local flags_addr = base_addr + LOCALE_SLOTS * 4
    local str_offset = self._file:InternString(text or "")

    if locale ~= nil then
        local slot = type(locale) == "number" and locale or LOCALE[locale]
        if not slot or slot < 0 or slot >= LOCALE_SLOTS then
            error(string.format("Invalid locale identifier: %s", tostring(locale)))
        end
        WRITE.u32(base_addr + slot * 4, str_offset)
        local cur_flags = READ.u32(flags_addr)
        WRITE.u32(flags_addr, bit.bor(cur_flags, bit.lshift(1, slot)))
    else
        for slot = 0, LOCALE_SLOTS - 1 do
            WRITE.u32(base_addr + slot * 4, str_offset)
        end
        WRITE.u32(flags_addr, 0xFFFFFFFF)
    end

    self._file.dirty = true
end

-- ---------------------------------------------------------------------------
-- Arrays
-- ---------------------------------------------------------------------------

function RowProxy:_ReadArray(f, index)
    local width    = KIND_WIDTH[f.kind] or 4
    local read_fn  = READ[f.kind] or READ.u32
    local is_str   = (f.kind == "str")
    local is_bool  = (f.kind == "bool")

    if index ~= nil then
        if index < 1 or index > f.count then
            error(string.format("Index %d out of range for array %q (1..%d)",
                index, f.name, f.count))
        end
        local addr = self:GetAddress(f.offset + (index - 1) * width)
        if is_str then return self._file:GetString(READ.u32(addr))
        elseif is_bool then return READ.u32(addr) ~= 0
        else return read_fn(addr) end
    end

    local result = {}
    for i = 1, f.count do
        local addr = self:GetAddress(f.offset + (i - 1) * width)
        if is_str then result[i] = self._file:GetString(READ.u32(addr))
        elseif is_bool then result[i] = (READ.u32(addr) ~= 0)
        else result[i] = read_fn(addr) end
    end
    return result
end

function RowProxy:_WriteArray(f, value, index)
    local width    = KIND_WIDTH[f.kind] or 4
    local write_fn = WRITE[f.kind] or WRITE.u32
    local is_str   = (f.kind == "str")
    local is_bool  = (f.kind == "bool")

    if index ~= nil then
        if index < 1 or index > f.count then
            error(string.format("Index %d out of range for array %q (1..%d)",
                index, f.name, f.count))
        end
        local addr = self:GetAddress(f.offset + (index - 1) * width)
        if is_str then WRITE.u32(addr, self._file:InternString(tostring(value or "")))
        elseif is_bool then WRITE.u32(addr, (value and value ~= 0) and 1 or 0)
        else write_fn(addr, value) end
    elseif type(value) == "table" then
        local max_items = math_min(#value, f.count)
        for i = 1, max_items do
            local addr = self:GetAddress(f.offset + (i - 1) * width)
            if is_str then WRITE.u32(addr, self._file:InternString(tostring(value[i] or "")))
            elseif is_bool then WRITE.u32(addr, (value[i] and value[i] ~= 0) and 1 or 0)
            else write_fn(addr, value[i]) end
        end
    else
        error(string.format("Expected table or specify index for array field %q", f.name))
    end
    self._file.dirty = true
end

-- ---------------------------------------------------------------------------
-- Flags
-- ---------------------------------------------------------------------------

function RowProxy:_HasFlag(f, flag)
    local addr = self:GetAddress(f.offset)
    local num_flag = tonumber(flag) or 0
    if num_flag == 0 then return false end

    if f.kind == "u64" then
        local val_low  = READ.u32(addr)
        local val_high = READ.u32(addr + 4)
        local flag_low, flag_high = split_u64(flag)
        return (bit.band(val_low, flag_low) == flag_low)
           and (bit.band(val_high, flag_high) == flag_high)
    else
        local val = READ.u32(addr)
        return bit.band(val, num_flag) == num_flag
    end
end

function RowProxy:_AddFlag(f, flag)
    local num_flag = tonumber(flag) or 0
    if num_flag == 0 then return end

    local addr = self:GetAddress(f.offset)
    if f.kind == "u64" then
        local val_low  = READ.u32(addr)
        local val_high = READ.u32(addr + 4)
        local flag_low, flag_high = split_u64(flag)
        WRITE.u32(addr,     bit.bor(val_low,  flag_low))
        WRITE.u32(addr + 4, bit.bor(val_high, flag_high))
    else
        local val = READ.u32(addr)
        WRITE.u32(addr, bit.bor(val, num_flag))
    end
    self._file.dirty = true
end

function RowProxy:_RemoveFlag(f, flag)
    local num_flag = tonumber(flag) or 0
    if num_flag == 0 then return end

    local addr = self:GetAddress(f.offset)
    if f.kind == "u64" then
        local val_low  = READ.u32(addr)
        local val_high = READ.u32(addr + 4)
        local flag_low, flag_high = split_u64(flag)
        WRITE.u32(addr,     bit.band(val_low,  bit.bnot(flag_low)))
        WRITE.u32(addr + 4, bit.band(val_high, bit.bnot(flag_high)))
    else
        local val = READ.u32(addr)
        WRITE.u32(addr, bit.band(val, bit.bnot(num_flag)))
    end
    self._file.dirty = true
end

-- ---------------------------------------------------------------------------
-- Generic field access (slow path)
-- ---------------------------------------------------------------------------

function RowProxy:GetField(name, extra)
    local f = self._file:GetField(name)

    if self._file.ReadField then
        return self._file:ReadField(self._row, f, extra)
    end

    if f.kind == "loc" then
        return self:_ReadLoc(f, extra)
    elseif f.count > 1 then
        return self:_ReadArray(f, extra)
    elseif f.kind == "str" then
        return self._file:GetString(READ.u32(self:GetAddress(f.offset)))
    elseif f.kind == "bool" then
        return READ.u32(self:GetAddress(f.offset)) ~= 0
    else
        return (READ[f.kind] or READ.u32)(self:GetAddress(f.offset))
    end
end

function RowProxy:SetField(name, value, extra)
    local f = self._file:GetField(name)

    if f.kind == "loc" then
        self:_WriteLoc(f, value, extra)
    elseif f.count > 1 then
        self:_WriteArray(f, value, extra)
    elseif f.kind == "str" then
        WRITE.u32(self:GetAddress(f.offset), self._file:InternString(tostring(value or "")))
        self._file.dirty = true
    elseif f.kind == "bool" then
        WRITE.u32(self:GetAddress(f.offset), (value and value ~= 0) and 1 or 0)
        self._file.dirty = true
    else
        (WRITE[f.kind] or WRITE.u32)(self:GetAddress(f.offset), value)
        self._file.dirty = true
    end
    return self
end

function RowProxy:Populate(values)
    for k, v in pairs(values) do
        if self._file.by_name and self._file.by_name[k] then
            self:SetField(k, v)
        else
            local setter = self["Set" .. k]
            if type(setter) == "function" then setter(self, v) end
        end
    end
    return self
end

-- ---------------------------------------------------------------------------
-- Relation resolution
-- ---------------------------------------------------------------------------

---Resolves a foreign key to a row in another table.
---@param target_table string
---@param foreign_id integer
---@param target_column string|nil Defaults to "ID".
---@return RowProxy|nil
function RowProxy:ResolveRelation(target_table, foreign_id, target_column)
    if not foreign_id or foreign_id == 0 then return nil end

    local ws = row_workspace(self)
    if not ws or not ws.GetTable then return nil end

    local tbl = ws:GetTable(target_table)
    if not tbl then return nil end

    if target_column and target_column ~= "ID" then
        return tbl:Query()
            :Where(function(r) return r:GetField(target_column) == foreign_id end)
            :FirstOrDefault(nil, nil)
    end
    return tbl:FindById(foreign_id)
end

---Resolves a relation by field name only (e.g. "SpellIconID").
---@param field_name string
---@return RowProxy|nil
function RowProxy:Resolve(field_name)
    local target_table, target_column = resolve_target(self, field_name)
    local foreign_id = self:GetField(field_name)
    if type(foreign_id) == "number" and target_table then
        return self:ResolveRelation(target_table, foreign_id, target_column)
    end
    return nil
end

---Resolves a relation by target table name or field name.
---@param target_table_or_field string
---@return RowProxy|nil
function RowProxy:GetRelated(target_table_or_field)
    local schema = self:GetSchema()
    local schema_name = schema and schema.name
    local build = row_build(self)

    if schema_name then
        local rel = Relations.Find(schema_name, target_table_or_field, build)
        if rel then
            local foreign_id = self:GetField(rel.field)
            if type(foreign_id) == "number" then
                return self:ResolveRelation(rel.target, foreign_id, rel.target_field)
            end
        end
    end

    return self:Resolve(target_table_or_field)
end

---Creates a related row in the target table and links this row's FK to it.
---@param target_table_or_field string
---@param row_data_or_id table|integer|nil
---@return RowProxy
function RowProxy:CreateRelated(target_table_or_field, row_data_or_id)
    local schema = self:GetSchema()
    local schema_name = schema and schema.name
    if not schema_name then
        error("CreateRelated: row has no schema attached")
    end

    local build = row_build(self)
    local rel = Relations.Find(schema_name, target_table_or_field, build)
    if not rel then
        local target, target_col = resolve_target(self, target_table_or_field)
        local field = self._file.by_name
            and (self._file.by_name[target .. "ID"] and (target .. "ID") or target_table_or_field)
        rel = { target = target, field = field, target_field = target_col or "ID" }
    end

    local ws = row_workspace(self)
    if not ws then
        error("CreateRelated: table is not associated with a DbcWorkspace")
    end

    local target_tbl = ws:Open(rel.target)
    if not target_tbl then
        error(string.format("CreateRelated: could not open target table %q", rel.target))
    end

    local new_row
    if type(row_data_or_id) == "number" then
        new_row = target_tbl:Create(row_data_or_id)
    else
        new_row = target_tbl:CreateNext(row_data_or_id)
    end

    self:SetField(rel.field, new_row:GetID())
    return new_row
end

---Returns child rows referencing this row's primary key.
---Uses the binary relationship_map when available (WDB5+, WDC*),
---otherwise falls back to a full scan filtered by the FK field.
---@param child_table_name string|nil
---@param child_field_name string|nil
---@return RowProxy[]
function RowProxy:GetChildren(child_table_name, child_field_name)
    local schema = self:GetSchema()
    local schema_name = schema and schema.name
    local my_id = self:GetID()
    if not schema_name or not my_id then return {} end

    local ws = row_workspace(self)
    if not ws then
        error("GetChildren: table is not associated with a DbcWorkspace")
    end

    local build = row_build(self)

    -- Single-child-table path
    if child_table_name then
        local child_tbl = ws:Open(child_table_name)
        if not child_tbl then return {} end

        -- Fast path: the binary file exposes a relationship_map (WDB5+ / WDC*).
        local child_file = child_tbl:GetFile()
        if child_file and child_file.GetRelationRows then
            local row_indices = child_file:GetRelationRows(my_id)
            if row_indices and #row_indices > 0 then
                local out = {}
                for i, r_idx in ipairs(row_indices) do
                    out[i] = child_tbl:GetRowByIndex(r_idx)
                end
                return out
            end
        end

        -- Determine FK field on the child table
        local fk_field = child_field_name
        if not fk_field then
            for _, inb in ipairs(Relations.GetInbound(schema_name, build)) do
                if inb.source_table == child_table_name then
                    fk_field = inb.field
                    break
                end
            end
        end

        if not fk_field then
            local child_schema = child_tbl:GetSchema()
            if child_schema then
                for _, f in ipairs(child_schema.fields) do
                    if f.foreign_table == schema_name then
                        fk_field = f.name
                        break
                    end
                end
            end
        end

        if not fk_field then
            fk_field = schema_name .. "ID"
        end

        return child_tbl:Query()
            :Where(function(r) return r:GetField(fk_field) == my_id end)
            :ToList()
    end

    -- No argument: use the full inbound index and query every child table
    local results = {}
    for _, inb in ipairs(Relations.GetInbound(schema_name, build)) do
        local child_tbl = ws:Open(inb.source_table)
        if child_tbl then
            local rows = child_tbl:Query()
                :Where(function(r) return r:GetField(inb.field) == my_id end)
                :ToList()
            for _, row in ipairs(rows) do
                results[#results + 1] = row
            end
        end
    end
    return results
end

---Returns all relations currently declared for this row.
---@return table[]
function RowProxy:GetRelations()
    local relations = {}
    local schema = self:GetSchema()
    if not schema then return relations end

    local build = row_build(self)
    local rels = Relations.Get(schema.name, build)
    if rels and #rels > 0 then
        for _, rel in ipairs(rels) do
            relations[#relations + 1] = {
                field        = rel.field,
                target_table = rel.target,
                target_field = rel.target_field or "ID",
                foreign_id   = self:GetField(rel.field),
            }
        end
        return relations
    end

    -- Fallback: derive from schema fields
    for _, f in ipairs(schema.fields) do
        if f.name ~= "ID" then
            local target_table = f.foreign_table
                or string_match(f.name, "^(.-)ID$")
                or string_match(f.name, "^(.-)_ID$")
            if target_table then
                relations[#relations + 1] = {
                    field        = f.name,
                    target_table = target_table,
                    target_field = f.foreign_column or "ID",
                    foreign_id   = self:GetField(f.name),
                }
            end
        end
    end
    return relations
end

-- ---------------------------------------------------------------------------
-- Dynamic method compilation
-- ---------------------------------------------------------------------------

---Compiles a method closure for a given method name and schema.
---@param schema table
---@param key string
---@return function|nil
local function resolve_method(schema, key)
    local by_name = schema.by_name or {}

    -- ---------- Getters: Get<Field>() or Get<Relation>() ----------
    local get_name = string_match(key, "^Get(.+)$")
    if get_name then
        local f = by_name[get_name]
        if f then
            if f.name == "ID" then
                return function(self) return self:GetID() end
            end

            local off   = f.offset
            local kind  = f.kind
            local count = f.count

            return function(self, extra)
                if self._file.ReadField then
                    return self._file:ReadField(self._row, f, extra)
                end
                if kind == "loc" then
                    return self:_ReadLoc(f, extra)
                elseif count > 1 then
                    return self:_ReadArray(f, extra)
                elseif kind == "str" then
                    return self._file:GetString(READ.u32(self:GetAddress(off)))
                elseif kind == "bool" then
                    return READ.u32(self:GetAddress(off)) ~= 0
                else
                    return (READ[kind] or READ.u32)(self:GetAddress(off))
                end
            end
        end

        -- Relation getter: GetSpellIcon() -> SpellIconID
        local fk_name = get_name .. "ID"
        local fk_f = by_name[fk_name] or by_name[get_name .. "_ID"]
        if fk_f then
            local off = fk_f.offset
            local target_table  = fk_f.foreign_table or LEGACY_RELATIONS[get_name] or get_name
            local target_column = fk_f.foreign_column or "ID"
            return function(self)
                local fid = READ.u32(self:GetAddress(off))
                return self:ResolveRelation(target_table, fid, target_column)
            end
        end
    end

    -- ---------- Setters: Set<Field>() or Set<Relation>() ----------
    local set_name = string_match(key, "^Set(.+)$")
    if set_name then
        local f = by_name[set_name] or by_name[set_name .. "_lang"]
        if f then
            local off   = f.offset
            local kind  = f.kind
            local count = f.count

            if kind == "loc" then
                return function(self, value, locale)
                    self:_WriteLoc(f, value, locale); return self
                end
            elseif count > 1 then
                return function(self, value, index)
                    self:_WriteArray(f, value, index); return self
                end
            elseif kind == "str" then
                return function(self, value)
                    WRITE.u32(self:GetAddress(off), self._file:InternString(tostring(value or "")))
                    self._file.dirty = true; return self
                end
            elseif kind == "bool" then
                return function(self, value)
                    WRITE.u32(self:GetAddress(off), (value and value ~= 0) and 1 or 0)
                    self._file.dirty = true; return self
                end
            else
                local write_fn = WRITE[kind] or WRITE.u32
                return function(self, value)
                    write_fn(self:GetAddress(off), value)
                    self._file.dirty = true; return self
                end
            end
        end

        local fk_name = set_name .. "ID"
        local fk_f = by_name[fk_name] or by_name[set_name .. "_ID"]
        if fk_f then
            local off = fk_f.offset
            return function(self, row_or_id)
                local id_val = type(row_or_id) == "table" and row_or_id:GetID() or row_or_id
                WRITE.u32(self:GetAddress(off), id_val)
                self._file.dirty = true; return self
            end
        end
    end

    -- ---------- Flags ----------
    local has_name = string_match(key, "^Has(.+)$")
    if has_name then
        local f = by_name[has_name]
        if f and (f.kind == "mask" or f.kind == "flag"
              or f.kind == "u32" or f.kind == "u64") then
            return function(self, flag) return self:_HasFlag(f, flag) end
        end
    end

    local add_name = string_match(key, "^Add(.+)$")
    if add_name then
        local f = by_name[add_name]
        if f and (f.kind == "mask" or f.kind == "flag"
              or f.kind == "u32" or f.kind == "u64") then
            return function(self, flag) self:_AddFlag(f, flag); return self end
        end
    end

    local rem_name = string_match(key, "^Remove(.+)$")
    if rem_name then
        local f = by_name[rem_name]
        if f and (f.kind == "mask" or f.kind == "flag"
              or f.kind == "u32" or f.kind == "u64") then
            return function(self, flag) self:_RemoveFlag(f, flag); return self end
        end
    end

    return nil
end

-- Per-schema method cache. Stored on the schema object so it is safely
-- scoped to a single (table, build) pair.
local function get_method_cache(schema)
    local cache = schema._method_cache
    if not cache then
        cache = {}
        schema._method_cache = cache
    end
    return cache
end

function RowProxy:__index(key)
    local explicit = rawget(RowProxy, key)
    if explicit ~= nil then return explicit end

    local file   = rawget(self, "_file")
    local schema = rawget(self, "_schema") or (file and file.schema)
    if not schema then return nil end

    local cache = get_method_cache(schema)

    local cached_fn = cache[key]
    if cached_fn ~= nil then return cached_fn end

    local compiled_fn = resolve_method(schema, key)
    if compiled_fn then
        cache[key] = compiled_fn
        return compiled_fn
    end

    if schema.by_name and schema.by_name[key] then
        return RowProxy.GetField(self, key)
    end

    return nil
end

function RowProxy:__newindex(key, value)
    local file   = rawget(self, "_file")
    local schema = rawget(self, "_schema") or (file and file.schema)
    if schema and schema.by_name and schema.by_name[key] then
        RowProxy.SetField(self, key, value)
        return
    end
    rawset(self, key, value)
end

return {
    RowProxy = RowProxy,
}