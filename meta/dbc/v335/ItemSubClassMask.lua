---@meta
-- Generated LuaLS annotations for ItemSubClassMask (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of ItemSubClassMask in build 3.3.5.12340.
---@class dbc.row.v335.ItemSubClassMask : RowProxy
---@field ClassID integer
---@field Mask integer
---@field Name_lang string
---@field Name string Localized string alias without _lang.

local row = {}

---Gets the value of field 'ClassID'.
---@return integer value
function row:GetClassID() end

---Sets the value of field 'ClassID'.
---@param value integer
---@return dbc.row.v335.ItemSubClassMask self
function row:SetClassID(value) end

---Navigates foreign relationship to 'ItemClass' via 'ClassID'.
---@return dbc.row.v335.ItemClass|nil
function row:GetClass() end

---Creates a related 'ItemClass' row and automatically links 'ClassID'.
---@param data? table
---@return dbc.row.v335.ItemClass
function row:CreateRelated(data) end

---Gets the value of field 'Mask'.
---@return integer value
function row:GetMask() end

---Sets the value of field 'Mask'.
---@param value integer
---@return dbc.row.v335.ItemSubClassMask self
function row:SetMask(value) end

---Gets the localized value of field 'Name'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetName(locale) end

---Sets the localized value of field 'Name'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.ItemSubClassMask self
function row:SetName(value, locale) end

---Gets the value of field 'Name_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetName_lang(locale) end

---Sets the value of field 'Name_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.ItemSubClassMask self
function row:SetName_lang(value, locale) end

---Table container for ItemSubClassMask (Build 3.3.5.12340).
---@class dbc.Table.v335.ItemSubClassMask : DbcTable
---@field [integer] dbc.row.v335.ItemSubClassMask
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.ItemSubClassMask
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.ItemSubClassMask|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.ItemSubClassMask
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.ItemSubClassMask>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.ItemSubClassMask[]
function tbl:GetByRelation(foreign_id) end

return {}
