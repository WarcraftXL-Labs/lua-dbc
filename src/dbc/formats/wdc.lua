--[[
    wdc.lua
    Universal Format driver for modern World of Warcraft client database files:
    - WDC1 (Battle for Azeroth 8.0 alpha)
    - WDC2 (Battle for Azeroth 8.0 - 8.3)
    - WDC3 (Shadowlands 9.0 - 9.2)
    - WDC4 (Dragonflight 10.0 - 10.2)
    - WDC5 (The War Within 11.0+ and Midnight 12.x)

    Supports multi-section files, bitpacked column unpacking, pallet compression,
    pallet array compression, common data (sparse fallback), non-inline ID lists,
    and foreign-key relationship mapping.
]]

local ffi = require("ffi")
local bit = require("bit")

local load = require("dbc._loader")
local base_mod = load("formats.base")
local BaseFormatDriver = base_mod.BaseFormatDriver
local READ = base_mod.READ
local WRITE = base_mod.WRITE
local LOCALE = base_mod.LOCALE

local cast = ffi.cast
local copy = ffi.copy
local math_max = math.max
local math_floor = math.floor
local string_sub = string.sub
local band = bit.band
local bor = bit.bor
local rshift = bit.rshift
local lshift = bit.lshift

local function match_wdc_locale(self_locale, requested_locale)
    if requested_locale == nil then return true end
    if not self_locale or self_locale == 0 or self_locale == 0xFFFFFFFF then return true end
    local slot = type(requested_locale) == "number" and requested_locale or (LOCALE and LOCALE[requested_locale])
    if not slot or slot < 0 then return true end
    local mask = lshift(1, slot)
    return band(self_locale, mask) ~= 0
end

-- Fast uint32 to float converter using preallocated buffer
local float_cast_buf = ffi.new("uint32_t[1]")
local float_cast_ptr = cast("float*", float_cast_buf)
local function u32_to_f32(u)
    float_cast_buf[0] = u
    return tonumber(float_cast_ptr[0])
end

--- Bit unpacking from a raw byte buffer.
--- Extracts `width` bits starting at `bit_offset`.
--- @param buf any const uint8_t* pointer to record data.
--- @param bit_offset integer Bit offset within the buffer.
--- @param bit_width integer Number of bits to read (1..32).
--- @param is_signed boolean Whether to sign-extend the extracted integer.
--- @return integer value
local function unpack_bits(buf, bit_offset, bit_width, is_signed)
    if bit_width == 0 then return 0 end
    local byte_start = math_floor(bit_offset / 8)
    local bit_shift = bit_offset % 8

    -- Read 5 contiguous bytes to safely cover any 32-bit value spanning across byte boundaries
    local b0 = buf[byte_start]
    local b1 = buf[byte_start + 1]
    local b2 = buf[byte_start + 2]
    local b3 = buf[byte_start + 3]
    local b4 = buf[byte_start + 4]

    local low32 = bor(b0, lshift(b1, 8), lshift(b2, 16), lshift(b3, 24))
    local val = rshift(low32, bit_shift)
    if bit_shift > 0 and bit_width > (32 - bit_shift) then
        local high_bits = lshift(b4, 32 - bit_shift)
        val = bor(val, high_bits)
    end

    -- Mask to bit_width and sign-extend if requested
    if bit_width < 32 then
        local mask = lshift(1, bit_width) - 1
        val = band(val, mask)
        if is_signed and band(val, lshift(1, bit_width - 1)) ~= 0 then
            val = val - lshift(1, bit_width)
        end
    elseif is_signed then
        val = tonumber(cast("int32_t", val))
    else
        val = tonumber(cast("uint32_t", val))
    end

    return val
end

---@class FieldStorageInfo
---@field offset integer
---@field size integer
---@field additional_data_size integer
---@field compression_type integer 0=none, 1=bitpacked, 2=common, 3=pallet, 4=pallet_array
---@field val1 integer
---@field val2 integer
---@field val3 integer

---@class SectionHeader
---@field tact_key_hash number|cdata
---@field file_offset integer
---@field record_count integer
---@field string_table_size integer
---@field offset_records_end integer
---@field id_list_size integer
---@field relationship_data_size integer
---@field offset_map_id_list_size integer
---@field offset_map_data_size integer

---@class WdcDriver : BaseFormatDriver
---@field layout_hash integer
---@field flags integer
---@field id_index integer
---@field total_field_count integer
---@field section_count integer
---@field section_headers SectionHeader[]
---@field field_structures FieldStructure[]
---@field field_storage_info FieldStorageInfo[]
---@field pallet_data string
---@field common_data table<integer, table<integer, integer>>
---@field schema_string string|nil
local WdcDriver = setmetatable({}, { __index = BaseFormatDriver })
WdcDriver.__index = WdcDriver

--- Parses raw binary WDC1..WDC5 data.
--- @param data string Raw binary string.
--- @param schema table|nil Optional schema.
--- @param origin string|nil Label or file path.
--- @return WdcDriver driver
function WdcDriver.new(data, schema, origin)
    origin = origin or "<memory>"
    local magic = string_sub(data, 1, 4)
    if not string.match(magic, "^WDC[1-5]$") then
        error(origin .. ": not a valid WDC file (magic: " .. tostring(magic) .. ")")
    end

    local self = setmetatable({}, WdcDriver)
    self:Init(magic, origin)

    local cursor = 4
    local version_num = nil
    local schema_string = nil

    if magic == "WDC5" then
        local v_ptr = cast("const uint32_t*", cast("const char*", data) + cursor)
        version_num = tonumber(v_ptr[0])
        cursor = cursor + 4
        schema_string = string.gsub(string_sub(data, cursor + 1, cursor + 128), "%z+$", "")
        cursor = cursor + 128
        self.schema_string = schema_string
    end

    local head_u32 = cast("const uint32_t*", cast("const char*", data) + cursor)
    self.record_count = tonumber(head_u32[0])
    self.field_count = tonumber(head_u32[1])
    self.record_size = tonumber(head_u32[2])
    self.string_table_size = tonumber(head_u32[3])
    self.table_hash = tonumber(head_u32[4])
    self.layout_hash = tonumber(head_u32[5])
    self.min_id = tonumber(head_u32[6])
    self.max_id = tonumber(head_u32[7])
    self.locale = tonumber(head_u32[8])

    local field_storage_info_size = 0
    local common_data_size = 0
    local pallet_data_size = 0
    local section_count = 1

    if magic == "WDC1" then
        self.copy_table_size = tonumber(head_u32[9])
        local head_u16 = cast("const uint16_t*", cast("const char*", data) + cursor + 40)
        self.flags = tonumber(head_u16[0])
        self.id_index = tonumber(head_u16[1])

        local head2_u32 = cast("const uint32_t*", cast("const char*", data) + cursor + 44)
        self.total_field_count = tonumber(head2_u32[0])
        local bitpacked_data_offset = tonumber(head2_u32[1])
        local lookup_column_count = tonumber(head2_u32[2])
        local offset_map_offset = tonumber(head2_u32[3])
        local id_list_size = tonumber(head2_u32[4])
        field_storage_info_size = tonumber(head2_u32[5])
        common_data_size = tonumber(head2_u32[6])
        pallet_data_size = tonumber(head2_u32[7])
        self.relationship_data_size = tonumber(head2_u32[8])
        cursor = cursor + 80
    else
        -- WDC2, WDC3, WDC4, WDC5 (no copy_table_size in main header)
        local head_u16 = cast("const uint16_t*", cast("const char*", data) + cursor + 36)
        self.flags = tonumber(head_u16[0])
        self.id_index = tonumber(head_u16[1])

        local head2_u32 = cast("const uint32_t*", cast("const char*", data) + cursor + 40)
        self.total_field_count = tonumber(head2_u32[0])
        local bitpacked_data_offset = tonumber(head2_u32[1])
        local lookup_column_count = tonumber(head2_u32[2])
        field_storage_info_size = tonumber(head2_u32[3])
        common_data_size = tonumber(head2_u32[4])
        pallet_data_size = tonumber(head2_u32[5])
        section_count = tonumber(head2_u32[6])
        cursor = cursor + 68
    end

    self.section_count = math_max(section_count, 1)

    -- Parse section headers (WDC2+)
    self.section_headers = {}
    if magic == "WDC1" then
        -- Single section in WDC1
    elseif magic == "WDC2" then
        for i = 0, self.section_count - 1 do
            local sec_ptr = cast("const uint32_t*", cast("const char*", data) + cursor + i * 40)
            table.insert(self.section_headers, {
                tact_key_hash = cast("const uint64_t*", sec_ptr)[0],
                file_offset = tonumber(sec_ptr[2]),
                record_count = tonumber(sec_ptr[3]),
                string_table_size = tonumber(sec_ptr[4]),
                copy_table_size = tonumber(sec_ptr[5]),
                offset_map_offset = tonumber(sec_ptr[6]),
                id_list_size = tonumber(sec_ptr[7]),
                relationship_data_size = tonumber(sec_ptr[8]),
            })
        end
        cursor = cursor + self.section_count * 40
    else
        -- WDC3, WDC4, WDC5
        for i = 0, self.section_count - 1 do
            local sec_ptr = cast("const uint32_t*", cast("const char*", data) + cursor + i * 40)
            table.insert(self.section_headers, {
                tact_key_hash = cast("const uint64_t*", sec_ptr)[0],
                file_offset = tonumber(sec_ptr[2]),
                record_count = tonumber(sec_ptr[3]),
                string_table_size = tonumber(sec_ptr[4]),
                offset_records_end = tonumber(sec_ptr[5]),
                id_list_size = tonumber(sec_ptr[6]),
                relationship_data_size = tonumber(sec_ptr[7]),
                offset_map_id_count = tonumber(sec_ptr[8]),
                copy_table_count = tonumber(sec_ptr[9]),
            })
        end
        cursor = cursor + self.section_count * 40
    end

    -- Parse field structures: array of { int16 size, uint16 position }
    self.field_structures = {}
    local num_struct_fields = self.total_field_count or self.field_count
    local struct_ptr = cast("const int16_t*", cast("const char*", data) + cursor)
    for i = 0, num_struct_fields - 1 do
        local raw_size = tonumber(struct_ptr[i * 2])
        local pos = tonumber(cast("const uint16_t*", struct_ptr + i * 2)[1])
        local bit_width = raw_size < 0 and (32 - raw_size) or raw_size
        table.insert(self.field_structures, {
            size = bit_width,
            position = pos,
        })
    end
    cursor = cursor + num_struct_fields * 4

    -- Parse field storage info: entries of 24 bytes
    self.field_storage_info = {}
    local num_storage_entries = math_floor(field_storage_info_size / 24)
    local storage_ptr = cast("const char*", data) + cursor
    local running_common_offset = 0
    local running_pallet_offset = 0

    for i = 0, num_storage_entries - 1 do
        local entry_ptr = storage_ptr + i * 24
        local u16_ptr = cast("const uint16_t*", entry_ptr)
        local u32_ptr = cast("const uint32_t*", entry_ptr)
        local off = tonumber(u16_ptr[0])
        local sz = tonumber(u16_ptr[1])
        local add_sz = tonumber(u32_ptr[1])
        local comp_type = tonumber(u32_ptr[2])
        local val1 = tonumber(u32_ptr[3])
        local val2 = tonumber(u32_ptr[4])
        local val3 = tonumber(u32_ptr[5])

        local col_common_offset = 0
        local col_pallet_offset = 0
        if comp_type == 2 then
            col_common_offset = running_common_offset
            running_common_offset = running_common_offset + add_sz
        elseif comp_type == 3 or comp_type == 4 then
            col_pallet_offset = running_pallet_offset
            running_pallet_offset = running_pallet_offset + add_sz
        end

        table.insert(self.field_storage_info, {
            offset = off,
            size = sz,
            additional_data_size = add_sz,
            compression_type = comp_type,
            val1 = val1,
            val2 = val2,
            val3 = val3,
            common_offset = col_common_offset,
            pallet_offset = col_pallet_offset,
        })
    end
    cursor = cursor + field_storage_info_size

    -- Pallet data block
    if pallet_data_size > 0 then
        self.pallet_data = string_sub(data, cursor + 1, cursor + pallet_data_size)
        cursor = cursor + pallet_data_size
    else
        self.pallet_data = ""
    end

    -- Common data block
    self.common_data = {}
    if common_data_size > 0 then
        local common_start = cursor
        for f_idx, sinfo in ipairs(self.field_storage_info) do
            if sinfo.compression_type == 2 and sinfo.additional_data_size > 0 then
                self.common_data[f_idx] = {}
                local num_common = math_floor(sinfo.additional_data_size / 8)
                local c_ptr = cast("const uint32_t*", cast("const char*", data) + common_start + sinfo.common_offset)
                for k = 0, num_common - 1 do
                    local record_id = tonumber(c_ptr[k * 2])
                    local val = tonumber(c_ptr[k * 2 + 1])
                    self.common_data[f_idx][record_id] = val
                end
            end
        end
        cursor = cursor + common_data_size
    end

    -- Encrypted status block (WDC4 / WDC5):
    -- Follows common_data for sections where tact_key_hash ~= 0
    if magic == "WDC4" or magic == "WDC5" then
        for _, sec in ipairs(self.section_headers) do
            if sec.tact_key_hash ~= 0ULL and sec.tact_key_hash ~= 0 then
                if cursor + 4 <= #data then
                    local enc_cnt = tonumber(cast("const uint32_t*", cast("const char*", data) + cursor)[0])
                    cursor = cursor + 4 + enc_cnt * 4
                end
            end
        end
    end

    -- Sections reading
    self.id_list = {}
    self.relationship_map = {}
    self.copy_table = {}
    self.str_orig = ""

    if magic == "WDC1" then
        self.capacity = math_max(self.record_count, 1)
        self.total_recs_size = self.record_count * self.record_size
        self.records = ffi.new("uint8_t[?]", self.capacity * self.record_size)
        if self.record_size > 0 and self.record_count > 0 and cursor + self.record_count * self.record_size <= #data then
            local rec_start = cast("const char*", data) + cursor
            copy(self.records, rec_start, self.record_count * self.record_size)
            cursor = cursor + self.record_count * self.record_size
        end

        if self.string_table_size > 0 and cursor + self.string_table_size <= #data then
            self.str_orig = string_sub(data, cursor + 1, cursor + self.string_table_size)
            cursor = cursor + self.string_table_size
        end

        local has_noninline = band(self.flags or 0, 0x01) ~= 0
        if has_noninline and cursor + self.record_count * 4 <= #data then
            local id_ptr = cast("const uint32_t*", cast("const char*", data) + cursor)
            for i = 0, self.record_count - 1 do
                table.insert(self.id_list, tonumber(id_ptr[i]))
            end
            cursor = cursor + self.record_count * 4
        end

        if self.copy_table_size and self.copy_table_size > 0 and cursor + self.copy_table_size <= #data then
            local copy_ptr = cast("const uint32_t*", cast("const char*", data) + cursor)
            local num_entries = math_floor(self.copy_table_size / 8)
            for i = 0, num_entries - 1 do
                local new_id = tonumber(copy_ptr[i * 2])
                local source_id = tonumber(copy_ptr[i * 2 + 1])
                self.copy_table[new_id] = source_id
            end
            cursor = cursor + self.copy_table_size
        end

        if self.relationship_data_size and self.relationship_data_size > 0 and cursor + 12 <= #data then
            local rel_head = cast("const uint32_t*", cast("const char*", data) + cursor)
            local rel_count = tonumber(rel_head[0])
            cursor = cursor + 12
            if cursor + rel_count * 8 <= #data then
                local rel_ptr = cast("const uint32_t*", cast("const char*", data) + cursor)
                for i = 0, rel_count - 1 do
                    local foreign_id = tonumber(rel_ptr[i * 2])
                    local record_idx = tonumber(rel_ptr[i * 2 + 1]) + 1
                    self.relationship_map[foreign_id] = self.relationship_map[foreign_id] or {}
                    table.insert(self.relationship_map[foreign_id], record_idx)
                end
            end
        end
    else
        -- Multi-section (WDC2, WDC3, WDC4, WDC5)
        local total_records = 0
        for _, sec in ipairs(self.section_headers) do
            total_records = total_records + sec.record_count
        end
        if total_records == 0 then total_records = self.record_count end
        self.record_count = total_records
        self.capacity = math_max(total_records, 1)

        self.total_recs_size = total_records * self.record_size
        self.records = ffi.new("uint8_t[?]", self.capacity * self.record_size)

        local record_write_cursor = 0
        local section_row_offset = 0

        for _, sec in ipairs(self.section_headers) do
            local sec_offset = sec.file_offset > 0 and sec.file_offset or cursor
            local sec_rec_bytes = sec.record_count * self.record_size

            if sec_rec_bytes > 0 and sec_offset + sec_rec_bytes <= #data then
                local rec_start = cast("const char*", data) + sec_offset
                copy(self.records + record_write_cursor, rec_start, sec_rec_bytes)
                record_write_cursor = record_write_cursor + sec_rec_bytes
            end

            local s_cursor = sec_offset + sec_rec_bytes

            -- Section string table
            if sec.string_table_size > 0 and s_cursor + sec.string_table_size <= #data then
                self.str_orig = self.str_orig .. string_sub(data, s_cursor + 1, s_cursor + sec.string_table_size)
                s_cursor = s_cursor + sec.string_table_size
            end

            -- Section non-inline ID list
            if sec.id_list_size > 0 and s_cursor + sec.id_list_size <= #data then
                local num_ids = math_floor(sec.id_list_size / 4)
                local id_ptr = cast("const uint32_t*", cast("const char*", data) + s_cursor)
                for i = 0, num_ids - 1 do
                    table.insert(self.id_list, tonumber(id_ptr[i]))
                end
                s_cursor = s_cursor + sec.id_list_size
            end

            -- Section copy table
            local copy_count = sec.copy_table_count or (sec.copy_table_size and math_floor(sec.copy_table_size / 8)) or 0
            if copy_count > 0 and s_cursor + copy_count * 8 <= #data then
                local copy_ptr = cast("const uint32_t*", cast("const char*", data) + s_cursor)
                for i = 0, copy_count - 1 do
                    local new_id = tonumber(copy_ptr[i * 2])
                    local source_id = tonumber(copy_ptr[i * 2 + 1])
                    self.copy_table[new_id] = source_id
                end
                s_cursor = s_cursor + copy_count * 8
            end

            -- Section relationship data
            if sec.relationship_data_size > 0 and s_cursor + 12 <= #data then
                local rel_head = cast("const uint32_t*", cast("const char*", data) + s_cursor)
                local rel_count = tonumber(rel_head[0])
                s_cursor = s_cursor + 12
                if s_cursor + rel_count * 8 <= #data then
                    local rel_ptr = cast("const uint32_t*", cast("const char*", data) + s_cursor)
                    for i = 0, rel_count - 1 do
                        local foreign_id = tonumber(rel_ptr[i * 2])
                        local record_idx = tonumber(rel_ptr[i * 2 + 1]) + section_row_offset + 1
                        self.relationship_map[foreign_id] = self.relationship_map[foreign_id] or {}
                        table.insert(self.relationship_map[foreign_id], record_idx)
                    end
                end
            end

            section_row_offset = section_row_offset + sec.record_count
        end
    end

    if #self.id_list == 0 and band(self.flags or 0, 0x04) == 0 then
        self.id_list = nil
    end

    self.str_extra = {}
    self.str_extra_len = 0
    self.dirty = false

    -- Auto-resolve schema by layout hash if needed
    if self.layout_hash and self.layout_hash ~= 0 and origin then
        local hash_str = string.format("%08X", self.layout_hash)
        if not schema or (not schema.layout_hash) or (string.upper(schema.layout_hash) ~= hash_str) then
            local table_name = string.match(origin, "([^/\\]+)%.db[c2]$")
            if table_name then
                local ok, auto_schema = pcall(function()
                    local s_mod = load("schema")
                    return s_mod.Get(table_name, hash_str)
                end)
                if ok and auto_schema then
                    schema = auto_schema
                end
            end
        end
    end

    if schema then
        self:AttachSchema(schema)
    end

    return self
end

--- Validates and binds a schema definition to the driver without enforcing strict record byte sizes.
--- @param schema table Schema definition.
function WdcDriver:AttachSchema(schema)
    self.schema = schema
    self.by_name = {}

    local has_noninline = band(self.flags or 0, 0x04) ~= 0
    local storage_idx = 1

    for _, f in ipairs(schema.fields) do
        self.by_name[f.name] = f
        if (f.name == "ID" or f.is_id) and has_noninline then
            f._wdc_storage_index = 0 -- non-inline ID
        else
            f._wdc_storage_index = storage_idx
            storage_idx = storage_idx + 1
        end
    end
end

--- Returns the primary key ID for a given 1-based row index.
--- @param row integer 1-based row index.
--- @return integer id
function WdcDriver:GetRowId(row)
    if self.id_list and self.id_list[row] then
        return self.id_list[row]
    end
    if self.id_index and self.field_storage_info and self.field_storage_info[self.id_index + 1] then
        return self:ReadField(row, self.id_index + 1)
    end
    local id_offset = self:GetIdOffset()
    if not id_offset then return row end
    local addr = self:GetAddress(row, id_offset)
    return READ.u32(addr)
end

--- Retrieves the memory pointer address for a given row and byte offset.
--- @param row integer 1-based row index.
--- @param offset integer Byte offset within the record.
--- @return any pointer FFI memory pointer.
function WdcDriver:GetAddress(row, offset)
    if row < 1 or row > self.record_count then
        error(string.format("%s: row %d out of range (1..%d)", self.origin, row, self.record_count))
    end
    return self.records + (row - 1) * self.record_size + offset
end

--- Retrieves a null-terminated string from string storage.
--- In WDC2..WDC5, raw offsets stored in records are relative to the field position
--- inside the concatenated record buffer.
--- @param raw_offset integer Offset value read from the record field.
--- @param row integer|nil 1-based row index.
--- @param field_byte_offset integer|nil Byte offset of the field within the record.
--- @return string
function WdcDriver:GetString(raw_offset, row, field_byte_offset)
    if not raw_offset or raw_offset == 0 then return "" end

    if self.format == "WDC1" then
        if raw_offset < 0 or raw_offset >= #self.str_orig then return "" end
        local sub = string_sub(self.str_orig, raw_offset + 1, raw_offset + 512)
        return string.match(sub, "^([^%z]*)") or ""
    end

    -- WDC2..WDC5: string offsets are relative to field inside concatenated records blob
    row = row or 1
    field_byte_offset = field_byte_offset or 0
    local field_buf_pos = (row - 1) * self.record_size + field_byte_offset
    local str_buf_pos = field_buf_pos + raw_offset
    local str_offset = str_buf_pos - (self.total_recs_size or 0)

    if str_offset < 0 or str_offset >= #self.str_orig then
        return ""
    end

    local sub = string_sub(self.str_orig, str_offset + 1, str_offset + 512)
    return string.match(sub, "^([^%z]*)") or ""
end

--- Reads a field from a given row, decoding bitpacking, pallet, common data, or pallet arrays.
--- @param row integer 1-based row index.
--- @param field_def_or_idx table|integer Field definition or 1-based field index.
--- @param extra any Optional array index (1-based) or locale slot.
--- @return any value
function WdcDriver:ReadField(row, field_def_or_idx, extra)
    local field_def = type(field_def_or_idx) == "table" and field_def_or_idx or nil
    local f_idx = type(field_def_or_idx) == "number" and field_def_or_idx or nil

    if field_def then
        if field_def._wdc_storage_index == 0 or (field_def.name == "ID" and self.id_list and #self.id_list > 0) then
            return self:GetRowId(row)
        end
        f_idx = field_def._wdc_storage_index
        if not f_idx and self.schema then
            for idx, f in ipairs(self.schema.fields) do
                if f.name == field_def.name then
                    f_idx = f._wdc_storage_index or idx
                    break
                end
            end
        end
    end
    f_idx = f_idx or 1

    local sinfo = self.field_storage_info and self.field_storage_info[f_idx]
    if not sinfo then
        local offset = field_def and field_def.offset or 0
        local kind = field_def and field_def.kind or "u32"
        local addr = self:GetAddress(row, offset)
        if kind == "str" or kind == "loc" then
            if not match_wdc_locale(self.locale, extra) then return "" end
            return self:GetString(READ.u32(addr), row, offset)
        end
        return READ[kind] and READ[kind](addr) or READ.u32(addr)
    end

    local ctype = sinfo.compression_type
    local kind = field_def and field_def.kind or "u32"
    local field_byte_offset = math_floor(sinfo.offset / 8)

    -- Compression Type 0: None (standard uncompressed inline field)
    if ctype == 0 then
        local addr = self:GetAddress(row, field_byte_offset)
        if kind == "str" or kind == "loc" then
            if not match_wdc_locale(self.locale, extra) then return "" end
            local raw_str_off = READ.u32(addr)
            return self:GetString(raw_str_off, row, field_byte_offset)
        end
        if kind == "f32" then
            return READ.f32(addr)
        end
        if sinfo.size == 8 then
            return READ.byte(addr)
        elseif sinfo.size == 16 then
            local is_signed = field_def and (field_def.kind == "i16")
            return is_signed and cast("const int16_t*", addr)[0] or cast("const uint16_t*", addr)[0]
        elseif sinfo.size == 64 then
            return READ.u64(addr)
        else
            local is_signed = field_def and (field_def.kind == "i32")
            return is_signed and READ.i32(addr) or READ.u32(addr)
        end
    end

    -- Compression Type 1 & 5: Bitpacked (1=unsigned, 5=signed)
    if ctype == 1 or ctype == 5 then
        local rec_ptr = cast("const uint8_t*", self:GetAddress(row, 0))
        local is_signed = (ctype == 5) or (sinfo.val3 == 1) or (field_def and (field_def.kind == "i8" or field_def.kind == "i16" or field_def.kind == "i32"))
        local val = unpack_bits(rec_ptr, sinfo.offset, sinfo.size, is_signed)
        if kind == "str" or kind == "loc" then
            if not match_wdc_locale(self.locale, extra) then return "" end
            return self:GetString(val, row, field_byte_offset)
        end
        if kind == "f32" then
            return u32_to_f32(val)
        end
        return val
    end

    -- Compression Type 2: Common Data (sparse column with default fallback)
    if ctype == 2 then
        local record_id = self:GetRowId(row)
        if self.common_data[f_idx] and self.common_data[f_idx][record_id] ~= nil then
            local raw = self.common_data[f_idx][record_id]
            if kind == "f32" then return u32_to_f32(raw) end
            return raw
        end
        local def_val = sinfo.val1
        if kind == "f32" then return u32_to_f32(def_val) end
        return def_val
    end

    -- Compression Type 3: Pallet (index into pallet array)
    if ctype == 3 then
        local rec_ptr = cast("const uint8_t*", self:GetAddress(row, 0))
        local pallet_idx = unpack_bits(rec_ptr, sinfo.offset, sinfo.size, false)
        local p_ptr = cast("const char*", self.pallet_data) + sinfo.pallet_offset + pallet_idx * 4
        local u_val = cast("const uint32_t*", p_ptr)[0]
        if kind == "str" or kind == "loc" then
            if not match_wdc_locale(self.locale, extra) then return "" end
            return self:GetString(u_val, row, field_byte_offset)
        end
        if kind == "f32" then
            return cast("const float*", p_ptr)[0]
        end
        return tonumber(u_val)
    end

    -- Compression Type 4: Pallet Array (index into array pallet)
    if ctype == 4 then
        local rec_ptr = cast("const uint8_t*", self:GetAddress(row, 0))
        local pallet_idx = unpack_bits(rec_ptr, sinfo.offset, sinfo.size, false)
        local array_count = sinfo.val3 or 1
        local p_ptr = cast("const uint32_t*", cast("const char*", self.pallet_data) + sinfo.pallet_offset + pallet_idx * array_count * 4)
        if extra ~= nil and type(extra) == "number" then
            if extra >= 1 and extra <= array_count then
                local raw = p_ptr[extra - 1]
                if kind == "f32" then return u32_to_f32(raw) end
                return tonumber(raw)
            end
            return 0
        end
        local res = {}
        for k = 0, array_count - 1 do
            local raw = p_ptr[k]
            res[k + 1] = (kind == "f32") and u32_to_f32(raw) or tonumber(raw)
        end
        return res
    end

    return 0
end

return WdcDriver
