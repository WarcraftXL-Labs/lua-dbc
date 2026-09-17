---@meta
-- Generated LuaLS annotations for WorldStateUI (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of WorldStateUI in build 3.3.5.12340.
---@class dbc.row.v335.WorldStateUI : RowProxy
---@field ID integer
---@field MapID integer
---@field AreaID integer
---@field PhaseShift integer
---@field Icon string
---@field String_lang string
---@field String string Localized string alias without _lang.
---@field Tooltip_lang string
---@field Tooltip string Localized string alias without _lang.
---@field StateVariable integer
---@field Type integer
---@field DynamicIcon string
---@field DynamicTooltip_lang string
---@field DynamicTooltip string Localized string alias without _lang.
---@field ExtendedUI string
---@field ExtendedUIStateVariable integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.WorldStateUI self
function row:SetID(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v335.WorldStateUI self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v335.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v335.Map
function row:CreateRelated(data) end

---Gets the value of field 'AreaID'.
---@return integer value
function row:GetAreaID() end

---Sets the value of field 'AreaID'.
---@param value integer
---@return dbc.row.v335.WorldStateUI self
function row:SetAreaID(value) end

---Navigates foreign relationship to 'AreaTable' via 'AreaID'.
---@return dbc.row.v335.AreaTable|nil
function row:GetArea() end

---Creates a related 'AreaTable' row and automatically links 'AreaID'.
---@param data? table
---@return dbc.row.v335.AreaTable
function row:CreateRelated(data) end

---Gets the value of field 'PhaseShift'.
---@return integer value
function row:GetPhaseShift() end

---Sets the value of field 'PhaseShift'.
---@param value integer
---@return dbc.row.v335.WorldStateUI self
function row:SetPhaseShift(value) end

---Gets the value of field 'Icon'.
---@return string value
function row:GetIcon() end

---Sets the value of field 'Icon'.
---@param value string
---@return dbc.row.v335.WorldStateUI self
function row:SetIcon(value) end

---Gets the localized value of field 'String'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetString(locale) end

---Sets the localized value of field 'String'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.WorldStateUI self
function row:SetString(value, locale) end

---Gets the value of field 'String_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetString_lang(locale) end

---Sets the value of field 'String_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.WorldStateUI self
function row:SetString_lang(value, locale) end

---Gets the localized value of field 'Tooltip'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetTooltip(locale) end

---Sets the localized value of field 'Tooltip'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.WorldStateUI self
function row:SetTooltip(value, locale) end

---Gets the value of field 'Tooltip_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetTooltip_lang(locale) end

---Sets the value of field 'Tooltip_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.WorldStateUI self
function row:SetTooltip_lang(value, locale) end

---Gets the value of field 'StateVariable'.
---@return integer value
function row:GetStateVariable() end

---Sets the value of field 'StateVariable'.
---@param value integer
---@return dbc.row.v335.WorldStateUI self
function row:SetStateVariable(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v335.WorldStateUI self
function row:SetType(value) end

---Gets the value of field 'DynamicIcon'.
---@return string value
function row:GetDynamicIcon() end

---Sets the value of field 'DynamicIcon'.
---@param value string
---@return dbc.row.v335.WorldStateUI self
function row:SetDynamicIcon(value) end

---Gets the localized value of field 'DynamicTooltip'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetDynamicTooltip(locale) end

---Sets the localized value of field 'DynamicTooltip'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.WorldStateUI self
function row:SetDynamicTooltip(value, locale) end

---Gets the value of field 'DynamicTooltip_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetDynamicTooltip_lang(locale) end

---Sets the value of field 'DynamicTooltip_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.WorldStateUI self
function row:SetDynamicTooltip_lang(value, locale) end

---Gets the value of field 'ExtendedUI'.
---@return string value
function row:GetExtendedUI() end

---Sets the value of field 'ExtendedUI'.
---@param value string
---@return dbc.row.v335.WorldStateUI self
function row:SetExtendedUI(value) end

---Gets the value of field 'ExtendedUIStateVariable'.
---@return integer[] value
function row:GetExtendedUIStateVariable() end

---Sets the value of field 'ExtendedUIStateVariable'.
---@param value integer[]
---@return dbc.row.v335.WorldStateUI self
function row:SetExtendedUIStateVariable(value) end

---Gets element at 1-based index in 'ExtendedUIStateVariable'.
---@param index integer
---@return integer value
function row:GetExtendedUIStateVariableItem(index) end

---Table container for WorldStateUI (Build 3.3.5.12340).
---@class dbc.Table.v335.WorldStateUI : DbcTable
---@field [integer] dbc.row.v335.WorldStateUI
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.WorldStateUI
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.WorldStateUI|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.WorldStateUI
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.WorldStateUI>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.WorldStateUI[]
function tbl:GetByRelation(foreign_id) end

return {}
