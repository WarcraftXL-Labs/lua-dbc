---@meta
-- Generated LuaLS annotations for SoundParameter (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SoundParameter in build 12.1.5.69594.
---@class dbc.row.v1215.SoundParameter : RowProxy
---@field ID integer
---@field Field_9_0_1_33978_000 integer 0: require Field_9_0_1_33978_001 <= 6, 1: require Field_9_0_1_33978_001 = 7 || 0
---@field Field_9_0_1_33978_001 integer Determines RTPC curve interpretation, 0: pow(10, v * 0.05), 1: pow (2^(1/12), v), else: v
---@field Field_9_0_1_33978_002 number
---@field Field_9_0_1_33978_003 number
---@field Field_9_0_1_33978_004 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SoundParameter self
function row:SetID(value) end

---Gets the value of field 'Field_9_0_1_33978_000'.
---@return integer value
function row:GetField_9_0_1_33978_000() end

---Sets the value of field 'Field_9_0_1_33978_000'.
---@param value integer
---@return dbc.row.v1215.SoundParameter self
function row:SetField_9_0_1_33978_000(value) end

---Gets the value of field 'Field_9_0_1_33978_001'.
---@return integer value
function row:GetField_9_0_1_33978_001() end

---Sets the value of field 'Field_9_0_1_33978_001'.
---@param value integer
---@return dbc.row.v1215.SoundParameter self
function row:SetField_9_0_1_33978_001(value) end

---Gets the value of field 'Field_9_0_1_33978_002'.
---@return number value
function row:GetField_9_0_1_33978_002() end

---Sets the value of field 'Field_9_0_1_33978_002'.
---@param value number
---@return dbc.row.v1215.SoundParameter self
function row:SetField_9_0_1_33978_002(value) end

---Gets the value of field 'Field_9_0_1_33978_003'.
---@return number value
function row:GetField_9_0_1_33978_003() end

---Sets the value of field 'Field_9_0_1_33978_003'.
---@param value number
---@return dbc.row.v1215.SoundParameter self
function row:SetField_9_0_1_33978_003(value) end

---Gets the value of field 'Field_9_0_1_33978_004'.
---@return integer value
function row:GetField_9_0_1_33978_004() end

---Sets the value of field 'Field_9_0_1_33978_004'.
---@param value integer
---@return dbc.row.v1215.SoundParameter self
function row:SetField_9_0_1_33978_004(value) end

---Table container for SoundParameter (Build 12.1.5.69594).
---@class dbc.Table.v1215.SoundParameter : DbcTable
---@field [integer] dbc.row.v1215.SoundParameter
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SoundParameter
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SoundParameter|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SoundParameter
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SoundParameter>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SoundParameter[]
function tbl:GetByRelation(foreign_id) end

return {}
