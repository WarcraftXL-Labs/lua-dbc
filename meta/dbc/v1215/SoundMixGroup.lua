---@meta
-- Generated LuaLS annotations for SoundMixGroup (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SoundMixGroup in build 12.1.5.69594.
---@class dbc.row.v1215.SoundMixGroup : RowProxy
---@field ID integer
---@field Field_10_0_2_45779_000 string
---@field Field_10_0_2_45779_001 string
---@field Field_10_0_2_45779_002 integer
---@field Field_10_0_2_45779_003 integer
---@field Field_10_0_2_45779_004 number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SoundMixGroup self
function row:SetID(value) end

---Gets the value of field 'Field_10_0_2_45779_000'.
---@return string value
function row:GetField_10_0_2_45779_000() end

---Sets the value of field 'Field_10_0_2_45779_000'.
---@param value string
---@return dbc.row.v1215.SoundMixGroup self
function row:SetField_10_0_2_45779_000(value) end

---Gets the value of field 'Field_10_0_2_45779_001'.
---@return string value
function row:GetField_10_0_2_45779_001() end

---Sets the value of field 'Field_10_0_2_45779_001'.
---@param value string
---@return dbc.row.v1215.SoundMixGroup self
function row:SetField_10_0_2_45779_001(value) end

---Gets the value of field 'Field_10_0_2_45779_002'.
---@return integer value
function row:GetField_10_0_2_45779_002() end

---Sets the value of field 'Field_10_0_2_45779_002'.
---@param value integer
---@return dbc.row.v1215.SoundMixGroup self
function row:SetField_10_0_2_45779_002(value) end

---Gets the value of field 'Field_10_0_2_45779_003'.
---@return integer value
function row:GetField_10_0_2_45779_003() end

---Sets the value of field 'Field_10_0_2_45779_003'.
---@param value integer
---@return dbc.row.v1215.SoundMixGroup self
function row:SetField_10_0_2_45779_003(value) end

---Gets the value of field 'Field_10_0_2_45779_004'.
---@return number value
function row:GetField_10_0_2_45779_004() end

---Sets the value of field 'Field_10_0_2_45779_004'.
---@param value number
---@return dbc.row.v1215.SoundMixGroup self
function row:SetField_10_0_2_45779_004(value) end

---Table container for SoundMixGroup (Build 12.1.5.69594).
---@class dbc.Table.v1215.SoundMixGroup : DbcTable
---@field [integer] dbc.row.v1215.SoundMixGroup
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SoundMixGroup
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SoundMixGroup|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SoundMixGroup
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SoundMixGroup>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SoundMixGroup[]
function tbl:GetByRelation(foreign_id) end

return {}
