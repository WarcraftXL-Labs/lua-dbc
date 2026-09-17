---@meta
-- Generated LuaLS annotations for SpellMechanic (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SpellMechanic in build 3.3.5.12340.
---@class dbc.row.v335.SpellMechanic : RowProxy
---@field ID integer
---@field StateName_lang string
---@field StateName string Localized string alias without _lang.

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SpellMechanic self
function row:SetID(value) end

---Gets the localized value of field 'StateName'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetStateName(locale) end

---Sets the localized value of field 'StateName'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.SpellMechanic self
function row:SetStateName(value, locale) end

---Gets the value of field 'StateName_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetStateName_lang(locale) end

---Sets the value of field 'StateName_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.SpellMechanic self
function row:SetStateName_lang(value, locale) end

---Table container for SpellMechanic (Build 3.3.5.12340).
---@class dbc.Table.v335.SpellMechanic : DbcTable
---@field [integer] dbc.row.v335.SpellMechanic
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SpellMechanic
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SpellMechanic|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SpellMechanic
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SpellMechanic>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SpellMechanic[]
function tbl:GetByRelation(foreign_id) end

return {}
