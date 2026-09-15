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

local function load_base()
    local ok, mod = pcall(require, "dbc.formats.base")
    if ok then return mod end
    ok, mod = pcall(require, "src.dbc.formats.base")
    if ok then return mod end
    return require("formats.base")
end

local base_mod = load_base()
local BaseFormatDriver = base_mod.BaseFormatDriver
local READ = base_mod.READ
local WRITE = base_mod.WRITE

local cast = ffi.cast
local copy = ffi.copy
local math_max = math.max
local math_floor = math.floor
local string_sub = string.sub
local band = bit.band
local bor = bit.bor
local rshift = bit.rshift
local lshift = bit.lshift

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

    -- Form a 64-bit uint from bytes
    local low32 = bor(b0, lshift(b1, 8), lshift(b2, 16), lshift(b3, 24))
    local val = rshift(low32, bit_shift)
    if bit_shift > 0 and bit_width > (32 - bit_shift) then
        local high_bits = lshift(b4, 32 - bit_shift)
        val = bor(val, high_bits)
    end

    -- Mask to bit_width
    if bit_width < 32 then
        local mask = lshift(1, bit_width) - 1
        val = band(val, mask)
        if is_signed and band(val, lshift(1, bit_width - 1)) ~= 0 then
            val = val - lshift(1, bit_width)
        end
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
    local string_size = tonumber(head_u32[3])
    self.table_hash = tonumber(head_u32[4])
    self.layout_hash = tonumber(head_u32[5])
    self.min_id = tonumber(head_u32[6])
    self.max_id = tonumber(head_u32[7])
    self.locale = tonumber(head_u32[8])
    self.copy_table_size = tonumber(head_u32[9])

    local head_u16 = cast("const uint16_t*", cast("const char*", data) + cursor + 40)
    self.flags = tonumber(head_u16[0])
    self.id_index = tonumber(head_u16[1])

    local head2_u32 = cast("const uint32_t*", cast("const char*", data) + cursor + 44)
    self.total_field_count = tonumber(head2_u32[0])
    local bitpacked_data_offset = tonumber(head2_u32[1])
    local lookup_column_count = tonumber(head2_u32[2])

    local field_storage_info_size = 0
    local common_data_size = 0
    local pallet_data_size = 0
    local section_count = 1

    if magic == "WDC1" then
        local offset_map_offset = tonumber(head2_u32[3])
        local id_list_size = tonumber(head2_u32[4])
        field_storage_info_size = tonumber(head2_u32[5])
        common_data_size = tonumber(head2_u32[6])
        pallet_data_size = tonumber(head2_u32[7])
        self.relationship_data_size = tonumber(head2_u32[8])
        cursor = cursor + 80
    else
        -- WDC2, WDC3, WDC4, WDC5
        field_storage_info_size = tonumber(head2_u32[3])
        common_data_size = tonumber(head2_u32[4])
        pallet_data_size = tonumber(head2_u32[5])
        section_count = tonumber(head2_u32[6])
        cursor = cursor + 72 - 4 -- 4-byte magic was consumed
    end

    self.section_count = math_max(section_count, 1)

    -- Parse section headers (WDC2+)
    self.section_headers = {}
    if magic ~= "WDC1" then
        for i = 0, self.section_count - 1 do
            local sec_ptr = cast("const uint32_t*", cast("const char*", data) + cursor + i * 40)
            -- 8 bytes tact_key_hash, followed by 8 uint32
            table.insert(self.section_headers, {
                tact_key_hash = cast("const uint64_t*", sec_ptr)[0],
                file_offset = tonumber(sec_ptr[2]),
                record_count = tonumber(sec_ptr[3]),
                string_table_size = tonumber(sec_ptr[4]),
                offset_records_end = tonumber(sec_ptr[5]),
                id_list_size = tonumber(sec_ptr[6]),
                relationship_data_size = tonumber(sec_ptr[7]),
                offset_map_id_list_size = tonumber(sec_ptr[8]),
                offset_map_data_size = tonumber(sec_ptr[9]),
            })
        end
        cursor = cursor + self.section_count * 40
    end

    -- Parse field structures: array of { int16 size, uint16 position }
    self.field_structures = {}
    local struct_ptr = cast("const int16_t*", cast("const char*", data) + cursor)
    for i = 0, self.field_count - 1 do
        local raw_size = tonumber(struct_ptr[i * 2])
        local pos = tonumber(cast("const uint16_t*", struct_ptr + i * 2)[1])
        local bit_width = raw_size < 0 and (32 - raw_size) or raw_size
        table.insert(self.field_structures, {
            size = bit_width,
            position = pos,
        })
    end
    cursor = cursor + self.field_count * 4

    -- Parse field storage info: entries of 24 bytes
    self.field_storage_info = {}
    local num_storage_entries = math_floor(field_storage_info_size / 24)
    local storage_ptr = cast("const char*", data) + cursor
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

        table.insert(self.field_storage_info, {
            offset = off,
            size = sz,
            additional_data_size = add_sz,
            compression_type = comp_type,
            val1 = val1,
            val2 = val2,
            val3 = val3,
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
        local common_end = cursor + common_data_size
        -- Parse common data column maps
        for f_idx, sinfo in ipairs(self.field_storage_info) do
            if sinfo.compression_type == 2 and sinfo.additional_data_size > 0 then
                self.common_data[f_idx] = {}
                local num_common = math_floor(sinfo.additional_data_size / 8)
                if cursor + num_common * 8 <= common_end then
                    local c_ptr = cast("const uint32_t*", cast("const char*", data) + cursor)
                    for k = 0, num_common - 1 do
                        local record_id = tonumber(c_ptr[k * 2])
                        local val = tonumber(c_ptr[k * 2 + 1])
                        self.common_data[f_idx][record_id] = val
                    end
                    cursor = cursor + num_common * 8
                end
            end
        end
        cursor = common_end
    end

    -- Sections reading
    self.id_list = {}
    self.relationship_map = {}
    self.copy_table = {}
    self.str_orig = "\0"

    if magic == "WDC1" then
        -- Single section in WDC1
        self.capacity = math_max(self.record_count, 1)
        self.records = ffi.new("uint8_t[?]", self.capacity * self.record_size)
        if self.record_size > 0 and self.record_count > 0 and cursor + self.record_count * self.record_size <= #data then
            local rec_start = cast("const char*", data) + cursor
            copy(self.records, rec_start, self.record_count * self.record_size)
            cursor = cursor + self.record_count * self.record_size
        end

        if string_size > 0 and cursor + string_size <= #data then
            self.str_orig = string_sub(data, cursor + 1, cursor + string_size)
            cursor = cursor + string_size
        end

        local has_noninline = band(self.flags, 0x01) ~= 0
        if has_noninline and cursor + self.record_count * 4 <= #data then
            local id_ptr = cast("const uint32_t*", cast("const char*", data) + cursor)
            for i = 0, self.record_count - 1 do
                table.insert(self.id_list, tonumber(id_ptr[i]))
            end
            cursor = cursor + self.record_count * 4
        end

        if self.copy_table_size > 0 and cursor + self.copy_table_size <= #data then
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

        self.capacity = math_max(total_records, 1)
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

        if #self.id_list == 0 and band(self.flags, 0x01) == 0 then
            self.id_list = nil
        end
    end

    self.str_extra = {}
    self.str_extra_len = 0
    self.dirty = false

    if schema then
        self:AttachSchema(schema)
    end

    return self
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

--- Reads a field from a given row, decoding any bitpacking, pallet, or common data compression.
--- @param row integer 1-based row index.
--- @param field_def_or_idx table|integer Field definition or 1-based field index.
--- @return any value
function WdcDriver:ReadField(row, field_def_or_idx)
    local f_idx = type(field_def_or_idx) == "number" and field_def_or_idx or nil
    local field_def = type(field_def_or_idx) == "table" and field_def_or_idx or nil

    if not f_idx and field_def and self.schema then
        -- Find index in schema fields
        for idx, f in ipairs(self.schema.fields) do
            if f.name == field_def.name then
                f_idx = idx
                break
            end
        end
    end
    f_idx = f_idx or 1

    -- If primary key ID and non-inline IDs exist:
    if field_def and field_def.kind == "key" and self.id_list then
        return self.id_list[row]
    end

    local sinfo = self.field_storage_info[f_idx]
    if not sinfo then
        -- Fallback to standard memory reading if no storage info
        local offset = field_def and field_def.offset or 0
        local kind = field_def and field_def.kind or "u32"
        local addr = self:GetAddress(row, offset)
        if kind == "str" then
            return self:GetString(READ.u32(addr))
        end
        return READ[kind] and READ[kind](addr) or READ.u32(addr)
    end

    local ctype = sinfo.compression_type

    -- Compression Type 0: None (standard uncompressed inline field)
    if ctype == 0 then
        local byte_offset = math_floor(sinfo.offset / 8)
        local addr = self:GetAddress(row, byte_offset)
        local kind = field_def and field_def.kind or "u32"
        if kind == "str" then
            local str_off = READ.u32(addr)
            return self:GetString(str_off)
        end
        if sinfo.size == 8 then return READ.byte(addr)
        elseif sinfo.size == 16 then return cast("const uint16_t*", addr)[0]
        elseif sinfo.size == 64 then return READ.u64(addr)
        else return READ.u32(addr)
        end
    end

    -- Compression Type 1: Bitpacked (inline bitpacked within the record)
    if ctype == 1 then
        local rec_ptr = cast("const uint8_t*", self:GetAddress(row, 0))
        local is_signed = sinfo.val3 == 1
        local val = unpack_bits(rec_ptr, sinfo.offset, sinfo.size, is_signed)
        if field_def and field_def.kind == "str" then
            return self:GetString(val)
        end
        return val
    end

    -- Compression Type 2: Common Data (sparse column with default fallback)
    if ctype == 2 then
        local record_id = self:GetRowId(row)
        if self.common_data[f_idx] and self.common_data[f_idx][record_id] ~= nil then
            return self.common_data[f_idx][record_id]
        end
        return sinfo.val1 -- default_value
    end

    -- Compression Type 3: Pallet (index into pallet array)
    if ctype == 3 then
        local rec_ptr = cast("const uint8_t*", self:GetAddress(row, 0))
        local pallet_idx = unpack_bits(rec_ptr, sinfo.offset, sinfo.size, false)
        local pallet_offset = sinfo.val1
        local item_size = 4 -- standard 32-bit pallet items
        local p_addr = cast("const uint32_t*", cast("const char*", self.pallet_data) + pallet_offset)
        local val = tonumber(p_addr[pallet_idx])
        if field_def and field_def.kind == "str" then
            return self:GetString(val)
        end
        return val
    end

    -- Compression Type 4: Pallet Array (index into array pallet)
    if ctype == 4 then
        local rec_ptr = cast("const uint8_t*", self:GetAddress(row, 0))
        local pallet_idx = unpack_bits(rec_ptr, sinfo.offset, sinfo.size, false)
        local pallet_offset = sinfo.val1
        local array_count = sinfo.val3 or 1
        local p_addr = cast("const uint32_t*", cast("const char*", self.pallet_data) + pallet_offset)
        local res = {}
        for k = 0, array_count - 1 do
            table.insert(res, tonumber(p_addr[pallet_idx * array_count + k]))
        end
        return res
    end

    return 0
end

return WdcDriver
