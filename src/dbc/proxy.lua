--[[
    proxy.lua
    Provides the RowProxy class for high-level, fluent, and cached dynamic reflection.
    Implements PascalCase method calls (Get..., Set..., Has..., Add..., Remove...),
    localized strings (loc), arrays, foreign key relation resolution, and cascading row creation.
]]

local ffi = require("ffi")
local bit = require("bit")

-- Localized imports for performance
local cast = ffi.cast
local copy = ffi.copy
local string_sub = string.sub
local string_find = string.find
local string_match = string.match
local string_lower = string.lower
local math_min = math.min

-- Resolve file module dependencies
local function load_module(name)
    local ok, mod = pcall(require, "dbc." .. name)
    if ok then return mod end
    ok, mod = pcall(require, "src.dbc." .. name)
    if ok then return mod end
    return require(name)
end

local file_mod = load_module("file")
local relations_mod = load_module("relations")

local READ = file_mod.READ
local WRITE = file_mod.WRITE
local KIND_WIDTH = file_mod.KIND_WIDTH
local LOCALE = file_mod.LOCALE
local LOCALE_SLOTS = file_mod.LOCALE_SLOTS or 16
local Relations = relations_mod

--- Split a 64-bit value into two 32-bit words (low and high) for bitwise logic.
--- @param val number|cdata 64-bit integer
--- @return number low, number high
local function split_u64(val)
    local c = cast("uint64_t", val)
    local low = cast("uint32_t", c)
    local high = cast("uint32_t", c / 0x100000000ULL)
    return tonumber(low), tonumber(high)
end

--- Cache of dynamically compiled methods per schema name.
--- Schema-specific method caching ensures zero reflection overhead after the first call.
local method_cache = {}

--- Known WoW WotLK relation overrides where field names differ from target tables.
local SPECIAL_RELATIONS = {
    CastingTimeIndex = "SpellCastTimes",
    DurationIndex = "SpellDuration",
    RangeIndex = "SpellRange",
    SpellVisual = "SpellVisual",
    SpellVisualID = "SpellVisual",
    SpellDescriptionVariableID = "SpellDescriptionVariables",
    AreaID = "AreaTable",
    AreaTableID = "AreaTable",
    ModelID = "CreatureModelData",
    DisplayID = "CreatureDisplayInfo",
    CreatureDisplayInfoID = "CreatureDisplayInfo",
    TotemCategory = "TotemCategory",
    ItemClass = "ItemClass",
    ItemSubClass = "ItemSubClass",
}

--- @class RowProxy
--- Represents a fluent, high-level wrapper around a single DBC record.
--- @field _file DbcFile The parent DbcFile instance.
--- @field _table table|nil The optional parent DbcTable instance.
--- @field _row integer 1-based index of the row inside the DBC memory block.
--- @field _schema table The schema definition attached to the DBC file.
local RowProxy = {}
RowProxy.__index = RowProxy

--- Creates a new RowProxy instance for a specific row in a DBC file.
--- @param file DbcFile The parent DBC file.
--- @param row integer 1-based row index.
--- @param table_ref table|nil Optional reference to the parent DbcTable.
--- @return RowProxy proxy The initialized row proxy.
function RowProxy.new(file, row, table_ref)
    local self = setmetatable({}, RowProxy)
    self._file = file
    self._table = table_ref
    self._row = row
    self._schema = file.schema
    return self
end

--- Returns the raw FFI memory address for an offset within this row.
--- @param offset number Byte offset within the row.
--- @return cdata pointer Pointer to the requested memory location.
function RowProxy:GetAddress(offset)
    return self._file:GetAddress(self._row, offset)
end

--- Returns the 1-based index of this row within the DBC file.
--- @return integer row The 1-based row index.
function RowProxy:GetIndex()
    return self._row
end

--- Returns the parent DbcFile instance.
--- @return DbcFile file
function RowProxy:GetFile()
    return self._file
end

--- Returns the parent DbcTable instance, if attached.
--- @return table|nil table
function RowProxy:GetTable()
    return self._table
end

--- Returns the attached schema definition.
--- @return table schema
function RowProxy:GetSchema()
    return self._schema or (self._file and self._file.schema)
end

--- Checks if this row proxy still points to a valid row in the DBC file.
--- @return boolean is_valid
function RowProxy:IsValid()
    return self._file ~= nil and self._row >= 1 and self._row <= self._file.record_count
end

--------------------------------------------------------------------------------
-- Primary Key Operations
--------------------------------------------------------------------------------

--- Reads the primary key (ID) of this row.
--- @return integer id The primary key ID value.
function RowProxy:GetID()
    local offset = self._file:GetIdOffset()
    return READ.u32(self:GetAddress(offset))
end

--- Writes a new primary key (ID) to this row and updates any parent table index.
--- @param id integer The new primary key value.
--- @return RowProxy self For fluent chaining.
function RowProxy:SetID(id)
    local offset = self._file:GetIdOffset()
    local old_id = READ.u32(self:GetAddress(offset))
    WRITE.u32(self:GetAddress(offset), id)
    
    if self._table and self._table._id_map then
        self._table._id_map[old_id] = nil
        self._table._id_map[id] = self._row
    end
    
    self._file.dirty = true
    return self
end

--------------------------------------------------------------------------------
-- Localized String Handling (loc)
--------------------------------------------------------------------------------

--- Reads a localized string from a field.
--- @param f table Field definition.
--- @param locale string|integer|nil Optional locale string (e.g. "frFR") or slot index (0..15).
--- @return string text
function RowProxy:_ReadLoc(f, locale)
    local base_addr = self:GetAddress(f.offset)
    
    if locale ~= nil then
        local slot
        if type(locale) == "number" then
            slot = locale
        else
            slot = LOCALE[locale]
        end
        if not slot or slot < 0 or slot >= LOCALE_SLOTS then
            error(string.format("Invalid locale identifier: %s", tostring(locale)))
        end
        local str_offset = READ.u32(base_addr + slot * 4)
        return self._file:GetString(str_offset)
    end

    -- Default lookup: check slot 0 (enGB) first
    local default_offset = READ.u32(base_addr)
    if default_offset ~= 0 then
        local text = self._file:GetString(default_offset)
        if text ~= "" then return text end
    end

    -- Fallback: check other locale slots
    for slot = 1, LOCALE_SLOTS - 1 do
        local offset = READ.u32(base_addr + slot * 4)
        if offset ~= 0 then
            local text = self._file:GetString(offset)
            if text ~= "" then return text end
        end
    end

    return ""
end

--- Writes a localized string into a field.
--- @param f table Field definition.
--- @param value string The text to store.
--- @param locale string|integer|nil Optional locale string or slot index. If nil, sets for all locales.
function RowProxy:_WriteLoc(f, value, locale)
    local str_val = tostring(value or "")
    local str_offset = self._file:InternString(str_val)
    local base_addr = self:GetAddress(f.offset)
    local flags_addr = base_addr + LOCALE_SLOTS * 4

    if locale ~= nil then
        local slot
        if type(locale) == "number" then
            slot = locale
        else
            slot = LOCALE[locale]
        end
        if not slot or slot < 0 or slot >= LOCALE_SLOTS then
            error(string.format("Invalid locale identifier: %s", tostring(locale)))
        end
        WRITE.u32(base_addr + slot * 4, str_offset)
        local cur_flags = READ.u32(flags_addr)
        local slot_mask = bit.lshift(1, slot)
        WRITE.u32(flags_addr, bit.bor(cur_flags, slot_mask))
    else
        -- Populate all 16 slots with the string
        for slot = 0, LOCALE_SLOTS - 1 do
            WRITE.u32(base_addr + slot * 4, str_offset)
        end
        WRITE.u32(flags_addr, 0xFFFFFFFF)
    end

    self._file.dirty = true
end

--------------------------------------------------------------------------------
-- Array Field Handling (count > 1)
--------------------------------------------------------------------------------

--- Reads an array element or the full table of elements.
--- @param f table Field definition.
--- @param index integer|nil 1-based element index. If nil, returns full array table.
--- @return any value_or_table
function RowProxy:_ReadArray(f, index)
    local width = KIND_WIDTH[f.kind] or 4
    local read_fn = READ[f.kind] or READ.u32
    local is_str = (f.kind == "str")
    local is_bool = (f.kind == "bool")

    if index ~= nil then
        if index < 1 or index > f.count then
            error(string.format("Index %d out of range for array %q (1..%d)", index, f.name, f.count))
        end
        local addr = self:GetAddress(f.offset + (index - 1) * width)
        if is_str then
            return self._file:GetString(READ.u32(addr))
        elseif is_bool then
            return READ.u32(addr) ~= 0
        else
            return read_fn(addr)
        end
    end

    -- Return all elements as a 1-based table
    local result = {}
    for i = 1, f.count do
        local addr = self:GetAddress(f.offset + (i - 1) * width)
        if is_str then
            result[i] = self._file:GetString(READ.u32(addr))
        elseif is_bool then
            result[i] = (READ.u32(addr) ~= 0)
        else
            result[i] = read_fn(addr)
        end
    end
    return result
end

--- Writes to an array element or populates multiple elements from a table.
--- @param f table Field definition.
--- @param value any Value to set or table of values.
--- @param index integer|nil 1-based element index.
function RowProxy:_WriteArray(f, value, index)
    local width = KIND_WIDTH[f.kind] or 4
    local write_fn = WRITE[f.kind] or WRITE.u32
    local is_str = (f.kind == "str")
    local is_bool = (f.kind == "bool")

    if index ~= nil then
        if index < 1 or index > f.count then
            error(string.format("Index %d out of range for array %q (1..%d)", index, f.name, f.count))
        end
        local addr = self:GetAddress(f.offset + (index - 1) * width)
        if is_str then
            local off = self._file:InternString(tostring(value or ""))
            WRITE.u32(addr, off)
        elseif is_bool then
            local num = (value and value ~= 0) and 1 or 0
            WRITE.u32(addr, num)
        else
            write_fn(addr, value)
        end
    elseif type(value) == "table" then
        local max_items = math_min(#value, f.count)
        for i = 1, max_items do
            local addr = self:GetAddress(f.offset + (i - 1) * width)
            if is_str then
                local off = self._file:InternString(tostring(value[i] or ""))
                WRITE.u32(addr, off)
            elseif is_bool then
                local num = (value[i] and value[i] ~= 0) and 1 or 0
                WRITE.u32(addr, num)
            else
                write_fn(addr, value[i])
            end
        end
    else
        error(string.format("Expected table or specify index for array field %q", f.name))
    end

    self._file.dirty = true
end

--------------------------------------------------------------------------------
-- Bitwise Flags Operations
--------------------------------------------------------------------------------

--- Checks if a flag bitmask is set on this row.
--- @param f table Field definition.
--- @param flag number|cdata Bitmask flag to check.
--- @return boolean has_flag
function RowProxy:_HasFlag(f, flag)
    local addr = self:GetAddress(f.offset)
    if f.kind == "u64" then
        local val_low = READ.u32(addr)
        local val_high = READ.u32(addr + 4)
        local flag_low, flag_high = split_u64(flag)
        return (bit.band(val_low, flag_low) == flag_low) and (bit.band(val_high, flag_high) == flag_high)
    else
        local val = READ.u32(addr)
        local num_flag = tonumber(flag) or 0
        return bit.band(val, num_flag) == num_flag
    end
end

--- Adds a bitmask flag to a field on this row.
--- @param f table Field definition.
--- @param flag number|cdata Bitmask flag to add.
function RowProxy:_AddFlag(f, flag)
    local addr = self:GetAddress(f.offset)
    if f.kind == "u64" then
        local val_low = READ.u32(addr)
        local val_high = READ.u32(addr + 4)
        local flag_low, flag_high = split_u64(flag)
        WRITE.u32(addr, bit.bor(val_low, flag_low))
        WRITE.u32(addr + 4, bit.bor(val_high, flag_high))
    else
        local val = READ.u32(addr)
        local num_flag = tonumber(flag) or 0
        WRITE.u32(addr, bit.bor(val, num_flag))
    end
    self._file.dirty = true
end

--- Removes a bitmask flag from a field on this row.
--- @param f table Field definition.
--- @param flag number|cdata Bitmask flag to remove.
function RowProxy:_RemoveFlag(f, flag)
    local addr = self:GetAddress(f.offset)
    if f.kind == "u64" then
        local val_low = READ.u32(addr)
        local val_high = READ.u32(addr + 4)
        local flag_low, flag_high = split_u64(flag)
        WRITE.u32(addr, bit.band(val_low, bit.bnot(flag_low)))
        WRITE.u32(addr + 4, bit.band(val_high, bit.bnot(flag_high)))
    else
        local val = READ.u32(addr)
        local num_flag = tonumber(flag) or 0
        WRITE.u32(addr, bit.band(val, bit.bnot(num_flag)))
    end
    self._file.dirty = true
end

--------------------------------------------------------------------------------
-- Generic Field Access
--------------------------------------------------------------------------------

--- Reads a field value by its schema name.
--- @param name string The name of the field.
--- @param extra any Optional array index or locale identifier.
--- @return any value
function RowProxy:GetField(name, extra)
    local f = self._file:GetField(name)
    if f.kind == "loc" then
        return self:_ReadLoc(f, extra)
    elseif f.count > 1 then
        return self:_ReadArray(f, extra)
    elseif f.kind == "str" then
        return self._file:GetString(READ.u32(self:GetAddress(f.offset)))
    elseif f.kind == "bool" then
        return READ.u32(self:GetAddress(f.offset)) ~= 0
    else
        local read_fn = READ[f.kind] or READ.u32
        return read_fn(self:GetAddress(f.offset))
    end
end

--- Writes a field value by its schema name.
--- @param name string The name of the field.
--- @param value any The value to set.
--- @param extra any Optional array index or locale identifier.
--- @return RowProxy self For fluent chaining.
function RowProxy:SetField(name, value, extra)
    local f = self._file:GetField(name)
    if f.kind == "loc" then
        self:_WriteLoc(f, value, extra)
    elseif f.count > 1 then
        self:_WriteArray(f, value, extra)
    elseif f.kind == "str" then
        local off = self._file:InternString(tostring(value or ""))
        WRITE.u32(self:GetAddress(f.offset), off)
        self._file.dirty = true
    elseif f.kind == "bool" then
        local num = (value and value ~= 0) and 1 or 0
        WRITE.u32(self:GetAddress(f.offset), num)
        self._file.dirty = true
    else
        local write_fn = WRITE[f.kind] or WRITE.u32
        write_fn(self:GetAddress(f.offset), value)
        self._file.dirty = true
    end
    return self
end

--------------------------------------------------------------------------------
-- Cloning, Conversion, and Deletion
--------------------------------------------------------------------------------

--- Duplicates this row into a new row in the same DBC file.
--- @param new_id integer|nil Optional new ID for the cloned row.
--- @return RowProxy cloned_proxy The newly cloned row proxy.
function RowProxy:Clone(new_id)
    if self._table and self._table.CloneRow then
        return self._table:CloneRow(self._row, new_id)
    end

    local new_row = self._file:AppendRow()
    copy(self._file:GetAddress(new_row, 0), self:GetAddress(0), self._file.record_size)
    local clone = RowProxy.new(self._file, new_row, self._table)
    
    if new_id ~= nil then
        clone:SetID(new_id)
    end
    return clone
end

--- Converts this row into a plain Lua table of key-value pairs.
--- @return table data
function RowProxy:ToTable()
    local result = {}
    local schema = self:GetSchema()
    if not schema then return result end

    for _, f in ipairs(schema.fields) do
        result[f.name] = self:GetField(f.name)
    end
    return result
end

--- Populates multiple fields on this row from a key-value Lua table.
--- @param data table Table of field values.
--- @return RowProxy self For fluent chaining.
function RowProxy:FromTable(data)
    for k, v in pairs(data) do
        local ok, _ = pcall(self.SetField, self, k, v)
        if not ok then
            -- Fallback: try PascalCase setter if method exists
            local setter = self["Set" .. k]
            if type(setter) == "function" then
                setter(self, v)
            end
        end
    end
    return self
end

--------------------------------------------------------------------------------
-- Relation Resolution & Cascading Creation
--------------------------------------------------------------------------------

--- Resolves a foreign key relationship to an external DBC row.
--- @param target_table string Name of the target DBC table (e.g. "SpellIcon").
--- @param foreign_id integer The foreign key ID value.
--- @return RowProxy|nil row The referenced row proxy if found.
function RowProxy:ResolveRelation(target_table, foreign_id)
    if not foreign_id or foreign_id == 0 then
        return nil
    end

    local ws = (self._table and (self._table._workspace or self._table._session))
        or (self._file and (self._file._workspace or self._file._session))

    if ws and ws.GetTable then
        local tbl = ws:GetTable(target_table)
        if tbl then
            return tbl:FindById(foreign_id)
        end
    end

    return nil
end

--- Resolves a relationship directly by field name (e.g. "SpellIconID").
--- @param field_name string The name of the foreign key field.
--- @return RowProxy|nil row The referenced row proxy if found.
function RowProxy:Resolve(field_name)
    local target_table = SPECIAL_RELATIONS[field_name]
    if not target_table then
        target_table = string_match(field_name, "^(.-)ID$")
            or string_match(field_name, "^(.-)_ID$")
            or field_name
    end

    local foreign_id = self:GetField(field_name)
    if type(foreign_id) == "number" then
        return self:ResolveRelation(target_table, foreign_id)
    end
    return nil
end

--- Resolves a related row using the relations catalog or field name.
--- @param target_table_or_field string Name of target table (e.g. "SpellIcon") or field ("SpellIconID").
--- @return RowProxy|nil row The related row proxy if found.
function RowProxy:GetRelated(target_table_or_field)
    local schema_name = self._schema and self._schema.name
    local rel = Relations and Relations.Find(schema_name, target_table_or_field)
    if rel then
        local foreign_id = self:GetField(rel.field)
        if type(foreign_id) == "number" then
            return self:ResolveRelation(rel.target, foreign_id)
        end
    end
    return self:Resolve(target_table_or_field)
end

--- Creates a new related row in the target table and automatically links its ID to this row.
--- Enables effortlessly creating related records across multiple DBC tables at once.
--- @param target_table_or_field string Target table name (e.g. "SpellIcon") or field ("SpellIconID").
--- @param row_data_or_id table|integer|nil Data table to populate or custom ID to assign.
--- @return RowProxy related_row The newly created and linked row proxy.
function RowProxy:CreateRelated(target_table_or_field, row_data_or_id)
    local schema_name = self._schema and self._schema.name
    if not schema_name then
        error("CreateRelated: row has no schema attached")
    end

    local rel = Relations and Relations.Find(schema_name, target_table_or_field)
    if not rel then
        error(string.format("CreateRelated: no relation found from %q to %q", schema_name, target_table_or_field))
    end

    local ws = (self._table and (self._table._workspace or self._table._session))
        or (self._file and (self._file._workspace or self._file._session))

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

    -- Automatically link the foreign key on this row
    self:SetField(rel.field, new_row:GetID())

    return new_row
end

--- Finds all child rows in another table that reference this row's primary key (has_many).
--- @param child_table_name string Name of the child DBC table (e.g. "SpellChainEffects").
--- @param child_field_name string|nil Optional foreign key field name in child table.
--- @return RowProxy[] children
function RowProxy:GetChildren(child_table_name, child_field_name)
    local schema_name = self._schema and self._schema.name
    local my_id = self:GetID()
    if not schema_name or not my_id then
        return {}
    end

    local ws = (self._table and (self._table._workspace or self._table._session))
        or (self._file and (self._file._workspace or self._file._session))

    if not ws then
        error("GetChildren: table is not associated with a DbcWorkspace")
    end

    local child_tbl = ws:Open(child_table_name)
    if not child_tbl then
        return {}
    end

    local fk_field = child_field_name
    if not fk_field and Relations then
        local inbounds = Relations.GetInbound(schema_name)
        for _, inb in ipairs(inbounds) do
            if inb.source_table == child_table_name then
                fk_field = inb.field
                break
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

--- Inspects this row and returns a list of all foreign key relationships with current values.
--- @return table relations List of relation descriptor tables.
function RowProxy:GetRelations()
    local relations = {}
    local schema = self:GetSchema()
    if not schema then return relations end

    local schema_name = schema.name
    local rels = Relations and Relations.Get(schema_name)
    if rels and #rels > 0 then
        for _, rel in ipairs(rels) do
            table.insert(relations, {
                field = rel.field,
                target_table = rel.target,
                target_field = rel.target_field or "ID",
                foreign_id = self:GetField(rel.field),
            })
        end
        return relations
    end

    -- Fallback dynamic scan
    for _, f in ipairs(schema.fields) do
        if f.name ~= "ID" then
            local target_table = SPECIAL_RELATIONS[f.name]
            if not target_table then
                target_table = string_match(f.name, "^(.-)ID$")
                    or string_match(f.name, "^(.-)_ID$")
            end

            if target_table then
                table.insert(relations, {
                    field = f.name,
                    target_table = target_table,
                    target_field = "ID",
                    foreign_id = self:GetField(f.name),
                })
            end
        end
    end

    return relations
end

--------------------------------------------------------------------------------
-- Dynamic Reflection & Metatable Setup
--------------------------------------------------------------------------------

--- Resolves or compiles a method closure for a given method name and schema.
--- @param schema table Schema definition.
--- @param key string Method name (e.g. "GetName", "SetSpellIconID", "HasAttributes").
--- @return function|nil method
local function resolve_method(schema, key)
    local by_name = schema.by_name or {}

    -- 1. Getters: Get<Field>() or Get<Relation>()
    local get_name = string_match(key, "^Get(.+)$")
    if get_name then
        local f = by_name[get_name]
        if f then
            local off = f.offset
            local kind = f.kind
            local count = f.count
            if kind == "loc" then
                return function(self, locale)
                    return self:_ReadLoc(f, locale)
                end
            elseif count > 1 then
                return function(self, index)
                    return self:_ReadArray(f, index)
                end
            elseif kind == "str" then
                return function(self)
                    local str_off = READ.u32(self:GetAddress(off))
                    return self._file:GetString(str_off)
                end
            elseif kind == "bool" then
                return function(self)
                    return READ.u32(self:GetAddress(off)) ~= 0
                end
            else
                local read_fn = READ[kind] or READ.u32
                return function(self)
                    return read_fn(self:GetAddress(off))
                end
            end
        end

        -- Check if it is a relation getter (e.g. GetSpellIcon() -> SpellIconID)
        local fk_name = get_name .. "ID"
        local fk_f = by_name[fk_name] or by_name[get_name .. "_ID"]
        local target_table = SPECIAL_RELATIONS[get_name] or get_name
        if fk_f then
            local off = fk_f.offset
            return function(self)
                local fid = READ.u32(self:GetAddress(off))
                return self:ResolveRelation(target_table, fid)
            end
        end
    end

    -- 2. Setters: Set<Field>(value) or Set<Relation>(row_or_id)
    local set_name = string_match(key, "^Set(.+)$")
    if set_name then
        local f = by_name[set_name]
        if f then
            local off = f.offset
            local kind = f.kind
            local count = f.count
            if kind == "loc" then
                return function(self, value, locale)
                    self:_WriteLoc(f, value, locale)
                    return self
                end
            elseif count > 1 then
                return function(self, value, index)
                    self:_WriteArray(f, value, index)
                    return self
                end
            elseif kind == "str" then
                return function(self, value)
                    local str_off = self._file:InternString(tostring(value or ""))
                    WRITE.u32(self:GetAddress(off), str_off)
                    self._file.dirty = true
                    return self
                end
            elseif kind == "bool" then
                return function(self, value)
                    local num = (value and value ~= 0) and 1 or 0
                    WRITE.u32(self:GetAddress(off), num)
                    self._file.dirty = true
                    return self
                end
            else
                local write_fn = WRITE[kind] or WRITE.u32
                return function(self, value)
                    write_fn(self:GetAddress(off), value)
                    self._file.dirty = true
                    return self
                end
            end
        end

        -- Check if it is a relation setter (e.g. SetSpellIcon(row_or_id))
        local fk_name = set_name .. "ID"
        local fk_f = by_name[fk_name] or by_name[set_name .. "_ID"]
        if fk_f then
            local off = fk_f.offset
            return function(self, target)
                local id
                if type(target) == "table" and target.GetID then
                    id = target:GetID()
                else
                    id = tonumber(target) or 0
                end
                WRITE.u32(self:GetAddress(off), id)
                self._file.dirty = true
                return self
            end
        end
    end

    -- 3. Flag check: Has<Field>(flag)
    local has_name = string_match(key, "^Has(.+)$")
    if has_name then
        local f = by_name[has_name]
        if f then
            return function(self, flag)
                return self:_HasFlag(f, flag)
            end
        end
    end

    -- 4. Flag addition: Add<Field>(flag)
    local add_name = string_match(key, "^Add(.+)$")
    if add_name then
        local f = by_name[add_name]
        if f then
            return function(self, flag)
                self:_AddFlag(f, flag)
                return self
            end
        end
    end

    -- 5. Flag removal: Remove<Field>(flag)
    local rem_name = string_match(key, "^Remove(.+)$")
    if rem_name then
        local f = by_name[rem_name]
        if f then
            return function(self, flag)
                self:_RemoveFlag(f, flag)
                return self
            end
        end
    end

    return nil
end

--- Metatable __index interceptor.
--- First checks the RowProxy prototype, then cached reflection methods, then compiles new methods,
--- and finally falls back to direct field property access.
local function row_index_handler(self, key)
    -- Check prototype methods first
    local proto = RowProxy[key]
    if proto ~= nil then
        return proto
    end

    local schema = self._schema or (self._file and self._file.schema)
    if not schema then
        return nil
    end

    local schema_name = schema.name or "__global"
    local cache = method_cache[schema_name]
    if not cache then
        cache = {}
        method_cache[schema_name] = cache
    end

    -- Check cache
    local cached = cache[key]
    if cached ~= nil then
        return cached
    end

    -- Resolve and compile method
    local resolved = resolve_method(schema, key)
    if resolved ~= nil then
        cache[key] = resolved
        return resolved
    end

    -- Fallback: Direct property reading (e.g. row.Name or row.Category)
    if schema.by_name and schema.by_name[key] then
        return self:GetField(key)
    end

    return nil
end

--- Metatable __newindex interceptor.
--- Allows direct property writing (e.g. row.Name = "Text" or row.Category = 12).
local function row_newindex_handler(self, key, value)
    local schema = self._schema or (self._file and self._file.schema)
    if schema and schema.by_name and schema.by_name[key] then
        self:SetField(key, value)
    else
        rawset(self, key, value)
    end
end

-- Attach metatable handlers
local mt = {
    __index = row_index_handler,
    __newindex = row_newindex_handler,
    __tostring = function(self)
        local schema_name = (self._schema and self._schema.name) or "Unknown"
        local id = "?"
        local ok, val = pcall(self.GetID, self)
        if ok then id = tostring(val) end
        return string.format("<RowProxy %s ID=%s row=%d>", schema_name, id, self._row)
    end
}

setmetatable(RowProxy, {
    __call = function(_, file, row, table_ref)
        return RowProxy.new(file, row, table_ref)
    end
})

-- Override instance metatable
RowProxy.__metatable = mt
local original_new = RowProxy.new
function RowProxy.new(file, row, table_ref)
    local self = {
        _file = file,
        _table = table_ref,
        _row = row,
        _schema = file.schema
    }
    return setmetatable(self, mt)
end

return {
    RowProxy = RowProxy,
    SPECIAL_RELATIONS = SPECIAL_RELATIONS,
    method_cache = method_cache,
}
