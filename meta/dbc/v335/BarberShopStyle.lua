---@meta
-- Generated LuaLS annotations for BarberShopStyle (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of BarberShopStyle in build 3.3.5.12340.
---@class dbc.row.v335.BarberShopStyle : RowProxy
---@field ID integer
---@field Type integer 1: hair style, 2: hair color, 3: facial hair, 4: skin, 5: face, 6: custom display 1, 7: custom display 2, 8: custom display 3, 9: custom display 4
---@field DisplayName_lang string
---@field DisplayName string Localized string alias without _lang.
---@field Description_lang string
---@field Description string Localized string alias without _lang.
---@field Cost_Modifier number
---@field Race integer
---@field Sex integer
---@field Data integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.BarberShopStyle self
function row:SetID(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v335.BarberShopStyle self
function row:SetType(value) end

---Gets the localized value of field 'DisplayName'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetDisplayName(locale) end

---Sets the localized value of field 'DisplayName'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.BarberShopStyle self
function row:SetDisplayName(value, locale) end

---Gets the value of field 'DisplayName_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetDisplayName_lang(locale) end

---Sets the value of field 'DisplayName_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.BarberShopStyle self
function row:SetDisplayName_lang(value, locale) end

---Gets the localized value of field 'Description'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetDescription(locale) end

---Sets the localized value of field 'Description'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.BarberShopStyle self
function row:SetDescription(value, locale) end

---Gets the value of field 'Description_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetDescription_lang(locale) end

---Sets the value of field 'Description_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.BarberShopStyle self
function row:SetDescription_lang(value, locale) end

---Gets the value of field 'Cost_Modifier'.
---@return number value
function row:GetCost_Modifier() end

---Sets the value of field 'Cost_Modifier'.
---@param value number
---@return dbc.row.v335.BarberShopStyle self
function row:SetCost_Modifier(value) end

---Gets the value of field 'Race'.
---@return integer value
function row:GetRace() end

---Sets the value of field 'Race'.
---@param value integer
---@return dbc.row.v335.BarberShopStyle self
function row:SetRace(value) end

---Navigates foreign relationship to 'ChrRaces' via 'Race'.
---@return dbc.row.v335.ChrRaces|nil
function row:GetRace() end

---Creates a related 'ChrRaces' row and automatically links 'Race'.
---@param data? table
---@return dbc.row.v335.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'Sex'.
---@return integer value
function row:GetSex() end

---Sets the value of field 'Sex'.
---@param value integer
---@return dbc.row.v335.BarberShopStyle self
function row:SetSex(value) end

---Gets the value of field 'Data'.
---@return integer value
function row:GetData() end

---Sets the value of field 'Data'.
---@param value integer
---@return dbc.row.v335.BarberShopStyle self
function row:SetData(value) end

---Table container for BarberShopStyle (Build 3.3.5.12340).
---@class dbc.Table.v335.BarberShopStyle : DbcTable
---@field [integer] dbc.row.v335.BarberShopStyle
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.BarberShopStyle
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.BarberShopStyle|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.BarberShopStyle
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.BarberShopStyle>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.BarberShopStyle[]
function tbl:GetByRelation(foreign_id) end

return {}
