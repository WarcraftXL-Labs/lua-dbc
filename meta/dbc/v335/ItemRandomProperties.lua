---@meta
-- Generated LuaLS annotations for ItemRandomProperties (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of ItemRandomProperties in build 3.3.5.12340.
---@class dbc.row.v335.ItemRandomProperties : RowProxy
---@field ID integer
---@field Name string
---@field Enchantment integer[]
---@field Name_lang string
---@field Name string Localized string alias without _lang.

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.ItemRandomProperties self
function row:SetID(value) end

---Gets the value of field 'Name'.
---@return string value
function row:GetName() end

---Sets the value of field 'Name'.
---@param value string
---@return dbc.row.v335.ItemRandomProperties self
function row:SetName(value) end

---Gets the value of field 'Enchantment'.
---@return integer[] value
function row:GetEnchantment() end

---Sets the value of field 'Enchantment'.
---@param value integer[]
---@return dbc.row.v335.ItemRandomProperties self
function row:SetEnchantment(value) end

---Gets element at 1-based index in 'Enchantment'.
---@param index integer
---@return integer value
function row:GetEnchantmentItem(index) end

---Navigates foreign relationship to 'SpellItemEnchantment' via 'Enchantment'.
---@return dbc.row.v335.SpellItemEnchantment|nil
function row:GetEnchantment() end

---Creates a related 'SpellItemEnchantment' row and automatically links 'Enchantment'.
---@param data? table
---@return dbc.row.v335.SpellItemEnchantment
function row:CreateRelated(data) end

---Gets the localized value of field 'Name'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetName(locale) end

---Sets the localized value of field 'Name'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.ItemRandomProperties self
function row:SetName(value, locale) end

---Gets the value of field 'Name_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetName_lang(locale) end

---Sets the value of field 'Name_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.ItemRandomProperties self
function row:SetName_lang(value, locale) end

---Table container for ItemRandomProperties (Build 3.3.5.12340).
---@class dbc.Table.v335.ItemRandomProperties : DbcTable
---@field [integer] dbc.row.v335.ItemRandomProperties
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.ItemRandomProperties
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.ItemRandomProperties|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.ItemRandomProperties
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.ItemRandomProperties>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.ItemRandomProperties[]
function tbl:GetByRelation(foreign_id) end

return {}
