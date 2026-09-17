---@meta
-- Generated LuaLS annotations for SkillLine (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SkillLine in build 3.3.5.12340.
---@class dbc.row.v335.SkillLine : RowProxy
---@field ID integer
---@field CategoryID integer
---@field SkillCostsID integer
---@field DisplayName_lang string
---@field DisplayName string Localized string alias without _lang.
---@field Description_lang string
---@field Description string Localized string alias without _lang.
---@field SpellIconID integer
---@field AlternateVerb_lang string
---@field AlternateVerb string Localized string alias without _lang.
---@field CanLink integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SkillLine self
function row:SetID(value) end

---Gets the value of field 'CategoryID'.
---@return integer value
function row:GetCategoryID() end

---Sets the value of field 'CategoryID'.
---@param value integer
---@return dbc.row.v335.SkillLine self
function row:SetCategoryID(value) end

---Navigates foreign relationship to 'SkillLineCategory' via 'CategoryID'.
---@return dbc.row.v335.SkillLineCategory|nil
function row:GetCategory() end

---Creates a related 'SkillLineCategory' row and automatically links 'CategoryID'.
---@param data? table
---@return dbc.row.v335.SkillLineCategory
function row:CreateRelated(data) end

---Gets the value of field 'SkillCostsID'.
---@return integer value
function row:GetSkillCostsID() end

---Sets the value of field 'SkillCostsID'.
---@param value integer
---@return dbc.row.v335.SkillLine self
function row:SetSkillCostsID(value) end

---Navigates foreign relationship to 'SkillCosts' via 'SkillCostsID'.
---@return dbc.row.v335.SkillCosts|nil
function row:GetSkillCosts() end

---Creates a related 'SkillCosts' row and automatically links 'SkillCostsID'.
---@param data? table
---@return dbc.row.v335.SkillCosts
function row:CreateRelated(data) end

---Gets the localized value of field 'DisplayName'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetDisplayName(locale) end

---Sets the localized value of field 'DisplayName'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.SkillLine self
function row:SetDisplayName(value, locale) end

---Gets the value of field 'DisplayName_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetDisplayName_lang(locale) end

---Sets the value of field 'DisplayName_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.SkillLine self
function row:SetDisplayName_lang(value, locale) end

---Gets the localized value of field 'Description'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetDescription(locale) end

---Sets the localized value of field 'Description'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.SkillLine self
function row:SetDescription(value, locale) end

---Gets the value of field 'Description_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetDescription_lang(locale) end

---Sets the value of field 'Description_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.SkillLine self
function row:SetDescription_lang(value, locale) end

---Gets the value of field 'SpellIconID'.
---@return integer value
function row:GetSpellIconID() end

---Sets the value of field 'SpellIconID'.
---@param value integer
---@return dbc.row.v335.SkillLine self
function row:SetSpellIconID(value) end

---Navigates foreign relationship to 'SpellIcon' via 'SpellIconID'.
---@return dbc.row.v335.SpellIcon|nil
function row:GetSpellIcon() end

---Creates a related 'SpellIcon' row and automatically links 'SpellIconID'.
---@param data? table
---@return dbc.row.v335.SpellIcon
function row:CreateRelated(data) end

---Gets the localized value of field 'AlternateVerb'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetAlternateVerb(locale) end

---Sets the localized value of field 'AlternateVerb'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.SkillLine self
function row:SetAlternateVerb(value, locale) end

---Gets the value of field 'AlternateVerb_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetAlternateVerb_lang(locale) end

---Sets the value of field 'AlternateVerb_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.SkillLine self
function row:SetAlternateVerb_lang(value, locale) end

---Gets the value of field 'CanLink'.
---@return integer value
function row:GetCanLink() end

---Sets the value of field 'CanLink'.
---@param value integer
---@return dbc.row.v335.SkillLine self
function row:SetCanLink(value) end

---Table container for SkillLine (Build 3.3.5.12340).
---@class dbc.Table.v335.SkillLine : DbcTable
---@field [integer] dbc.row.v335.SkillLine
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SkillLine
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SkillLine|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SkillLine
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SkillLine>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SkillLine[]
function tbl:GetByRelation(foreign_id) end

return {}
