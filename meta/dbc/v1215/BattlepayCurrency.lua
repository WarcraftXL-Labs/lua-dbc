---@meta
-- Generated LuaLS annotations for BattlepayCurrency (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of BattlepayCurrency in build 12.1.5.69594.
---@class dbc.row.v1215.BattlepayCurrency : RowProxy
---@field Code string
---@field FormatShort_lang string
---@field FormatLong_lang string
---@field LicenseAcceptText_lang string
---@field ID integer
---@field NumericCode integer
---@field Field_1_15_1_53009_006 integer
---@field Field_1_15_1_53009_007 integer

local row = {}

---Gets the value of field 'Code'.
---@return string value
function row:GetCode() end

---Sets the value of field 'Code'.
---@param value string
---@return dbc.row.v1215.BattlepayCurrency self
function row:SetCode(value) end

---Gets the value of field 'FormatShort_lang'.
---@return string value
function row:GetFormatShort_lang() end

---Sets the value of field 'FormatShort_lang'.
---@param value string
---@return dbc.row.v1215.BattlepayCurrency self
function row:SetFormatShort_lang(value) end

---Gets the value of field 'FormatLong_lang'.
---@return string value
function row:GetFormatLong_lang() end

---Sets the value of field 'FormatLong_lang'.
---@param value string
---@return dbc.row.v1215.BattlepayCurrency self
function row:SetFormatLong_lang(value) end

---Gets the value of field 'LicenseAcceptText_lang'.
---@return string value
function row:GetLicenseAcceptText_lang() end

---Sets the value of field 'LicenseAcceptText_lang'.
---@param value string
---@return dbc.row.v1215.BattlepayCurrency self
function row:SetLicenseAcceptText_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.BattlepayCurrency self
function row:SetID(value) end

---Gets the value of field 'NumericCode'.
---@return integer value
function row:GetNumericCode() end

---Sets the value of field 'NumericCode'.
---@param value integer
---@return dbc.row.v1215.BattlepayCurrency self
function row:SetNumericCode(value) end

---Gets the value of field 'Field_1_15_1_53009_006'.
---@return integer value
function row:GetField_1_15_1_53009_006() end

---Sets the value of field 'Field_1_15_1_53009_006'.
---@param value integer
---@return dbc.row.v1215.BattlepayCurrency self
function row:SetField_1_15_1_53009_006(value) end

---Gets the value of field 'Field_1_15_1_53009_007'.
---@return integer value
function row:GetField_1_15_1_53009_007() end

---Sets the value of field 'Field_1_15_1_53009_007'.
---@param value integer
---@return dbc.row.v1215.BattlepayCurrency self
function row:SetField_1_15_1_53009_007(value) end

---Table container for BattlepayCurrency (Build 12.1.5.69594).
---@class dbc.Table.v1215.BattlepayCurrency : DbcTable
---@field [integer] dbc.row.v1215.BattlepayCurrency
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.BattlepayCurrency
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.BattlepayCurrency|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.BattlepayCurrency
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.BattlepayCurrency>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.BattlepayCurrency[]
function tbl:GetByRelation(foreign_id) end

return {}
