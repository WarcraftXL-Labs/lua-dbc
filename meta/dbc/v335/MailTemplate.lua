---@meta
-- Generated LuaLS annotations for MailTemplate (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of MailTemplate in build 3.3.5.12340.
---@class dbc.row.v335.MailTemplate : RowProxy
---@field ID integer
---@field Subject_lang string
---@field Subject string Localized string alias without _lang.
---@field Body_lang string
---@field Body string Localized string alias without _lang.

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.MailTemplate self
function row:SetID(value) end

---Gets the localized value of field 'Subject'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetSubject(locale) end

---Sets the localized value of field 'Subject'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.MailTemplate self
function row:SetSubject(value, locale) end

---Gets the value of field 'Subject_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetSubject_lang(locale) end

---Sets the value of field 'Subject_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.MailTemplate self
function row:SetSubject_lang(value, locale) end

---Gets the localized value of field 'Body'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetBody(locale) end

---Sets the localized value of field 'Body'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.MailTemplate self
function row:SetBody(value, locale) end

---Gets the value of field 'Body_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetBody_lang(locale) end

---Sets the value of field 'Body_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.MailTemplate self
function row:SetBody_lang(value, locale) end

---Table container for MailTemplate (Build 3.3.5.12340).
---@class dbc.Table.v335.MailTemplate : DbcTable
---@field [integer] dbc.row.v335.MailTemplate
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.MailTemplate
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.MailTemplate|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.MailTemplate
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.MailTemplate>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.MailTemplate[]
function tbl:GetByRelation(foreign_id) end

return {}
