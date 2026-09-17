---@meta
-- Generated LuaLS annotations for TaxiNodes (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of TaxiNodes in build 3.3.5.12340.
---@class dbc.row.v335.TaxiNodes : RowProxy
---@field ID integer
---@field ContinentID integer
---@field Pos number[]
---@field Name_lang string
---@field Name string Localized string alias without _lang.
---@field MountCreatureID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.TaxiNodes self
function row:SetID(value) end

---Gets the value of field 'ContinentID'.
---@return integer value
function row:GetContinentID() end

---Sets the value of field 'ContinentID'.
---@param value integer
---@return dbc.row.v335.TaxiNodes self
function row:SetContinentID(value) end

---Navigates foreign relationship to 'Map' via 'ContinentID'.
---@return dbc.row.v335.Map|nil
function row:GetContinent() end

---Creates a related 'Map' row and automatically links 'ContinentID'.
---@param data? table
---@return dbc.row.v335.Map
function row:CreateRelated(data) end

---Gets the value of field 'Pos'.
---@return number[] value
function row:GetPos() end

---Sets the value of field 'Pos'.
---@param value number[]
---@return dbc.row.v335.TaxiNodes self
function row:SetPos(value) end

---Gets element at 1-based index in 'Pos'.
---@param index integer
---@return number value
function row:GetPosItem(index) end

---Gets the localized value of field 'Name'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetName(locale) end

---Sets the localized value of field 'Name'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.TaxiNodes self
function row:SetName(value, locale) end

---Gets the value of field 'Name_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetName_lang(locale) end

---Sets the value of field 'Name_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.TaxiNodes self
function row:SetName_lang(value, locale) end

---Gets the value of field 'MountCreatureID'.
---@return integer[] value
function row:GetMountCreatureID() end

---Sets the value of field 'MountCreatureID'.
---@param value integer[]
---@return dbc.row.v335.TaxiNodes self
function row:SetMountCreatureID(value) end

---Gets element at 1-based index in 'MountCreatureID'.
---@param index integer
---@return integer value
function row:GetMountCreatureIDItem(index) end

---Navigates foreign relationship to 'Creature' via 'MountCreatureID'.
---@return dbc.row.v335.Creature|nil
function row:GetMountCreature() end

---Creates a related 'Creature' row and automatically links 'MountCreatureID'.
---@param data? table
---@return dbc.row.v335.Creature
function row:CreateRelated(data) end

---Table container for TaxiNodes (Build 3.3.5.12340).
---@class dbc.Table.v335.TaxiNodes : DbcTable
---@field [integer] dbc.row.v335.TaxiNodes
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.TaxiNodes
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.TaxiNodes|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.TaxiNodes
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.TaxiNodes>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.TaxiNodes[]
function tbl:GetByRelation(foreign_id) end

return {}
