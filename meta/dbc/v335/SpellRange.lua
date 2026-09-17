---@meta
-- Generated LuaLS annotations for SpellRange (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SpellRange in build 3.3.5.12340.
---@class dbc.row.v335.SpellRange : RowProxy
---@field ID integer
---@field RangeMin number[] RangeMin[0] = Enemy, RangeMin[1] Friendly
---@field RangeMax number[] RangeMax[0] = Enemy, RangeMax[1] Friendly
---@field Flags integer &1: Melee (ignore RangeMin, set to 0); &2: Ranged (add 5 to RangeMin)
---@field DisplayName_lang string
---@field DisplayName string Localized string alias without _lang.
---@field DisplayNameShort_lang string
---@field DisplayNameShort string Localized string alias without _lang.

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SpellRange self
function row:SetID(value) end

---Gets the value of field 'RangeMin'.
---@return number[] value
function row:GetRangeMin() end

---Sets the value of field 'RangeMin'.
---@param value number[]
---@return dbc.row.v335.SpellRange self
function row:SetRangeMin(value) end

---Gets element at 1-based index in 'RangeMin'.
---@param index integer
---@return number value
function row:GetRangeMinItem(index) end

---Gets the value of field 'RangeMax'.
---@return number[] value
function row:GetRangeMax() end

---Sets the value of field 'RangeMax'.
---@param value number[]
---@return dbc.row.v335.SpellRange self
function row:SetRangeMax(value) end

---Gets element at 1-based index in 'RangeMax'.
---@param index integer
---@return number value
function row:GetRangeMaxItem(index) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.SpellRange self
function row:SetFlags(value) end

---Gets the localized value of field 'DisplayName'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetDisplayName(locale) end

---Sets the localized value of field 'DisplayName'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.SpellRange self
function row:SetDisplayName(value, locale) end

---Gets the value of field 'DisplayName_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetDisplayName_lang(locale) end

---Sets the value of field 'DisplayName_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.SpellRange self
function row:SetDisplayName_lang(value, locale) end

---Gets the localized value of field 'DisplayNameShort'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetDisplayNameShort(locale) end

---Sets the localized value of field 'DisplayNameShort'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.SpellRange self
function row:SetDisplayNameShort(value, locale) end

---Gets the value of field 'DisplayNameShort_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetDisplayNameShort_lang(locale) end

---Sets the value of field 'DisplayNameShort_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.SpellRange self
function row:SetDisplayNameShort_lang(value, locale) end

---Table container for SpellRange (Build 3.3.5.12340).
---@class dbc.Table.v335.SpellRange : DbcTable
---@field [integer] dbc.row.v335.SpellRange
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SpellRange
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SpellRange|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SpellRange
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SpellRange>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SpellRange[]
function tbl:GetByRelation(foreign_id) end

return {}
