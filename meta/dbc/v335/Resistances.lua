---@meta
-- Generated LuaLS annotations for Resistances (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of Resistances in build 3.3.5.12340.
---@class dbc.row.v335.Resistances : RowProxy
---@field ID integer
---@field Flags integer
---@field FizzleSoundID integer
---@field Name_lang string
---@field Name string Localized string alias without _lang.

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.Resistances self
function row:SetID(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.Resistances self
function row:SetFlags(value) end

---Gets the value of field 'FizzleSoundID'.
---@return integer value
function row:GetFizzleSoundID() end

---Sets the value of field 'FizzleSoundID'.
---@param value integer
---@return dbc.row.v335.Resistances self
function row:SetFizzleSoundID(value) end

---Navigates foreign relationship to 'SoundKit' via 'FizzleSoundID'.
---@return dbc.row.v335.SoundKit|nil
function row:GetFizzleSound() end

---Creates a related 'SoundKit' row and automatically links 'FizzleSoundID'.
---@param data? table
---@return dbc.row.v335.SoundKit
function row:CreateRelated(data) end

---Gets the localized value of field 'Name'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetName(locale) end

---Sets the localized value of field 'Name'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.Resistances self
function row:SetName(value, locale) end

---Gets the value of field 'Name_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetName_lang(locale) end

---Sets the value of field 'Name_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.Resistances self
function row:SetName_lang(value, locale) end

---Table container for Resistances (Build 3.3.5.12340).
---@class dbc.Table.v335.Resistances : DbcTable
---@field [integer] dbc.row.v335.Resistances
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.Resistances
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.Resistances|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.Resistances
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.Resistances>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.Resistances[]
function tbl:GetByRelation(foreign_id) end

return {}
