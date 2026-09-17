---@meta
-- Generated LuaLS annotations for BattlemasterList (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of BattlemasterList in build 3.3.5.12340.
---@class dbc.row.v335.BattlemasterList : RowProxy
---@field ID integer
---@field MapID integer[]
---@field InstanceType integer
---@field GroupsAllowed integer
---@field Name_lang string
---@field Name string Localized string alias without _lang.
---@field MaxGroupSize integer
---@field HolidayWorldState integer
---@field MinLevel integer
---@field MaxLevel integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.BattlemasterList self
function row:SetID(value) end

---Gets the value of field 'MapID'.
---@return integer[] value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer[]
---@return dbc.row.v335.BattlemasterList self
function row:SetMapID(value) end

---Gets element at 1-based index in 'MapID'.
---@param index integer
---@return integer value
function row:GetMapIDItem(index) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v335.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v335.Map
function row:CreateRelated(data) end

---Gets the value of field 'InstanceType'.
---@return integer value
function row:GetInstanceType() end

---Sets the value of field 'InstanceType'.
---@param value integer
---@return dbc.row.v335.BattlemasterList self
function row:SetInstanceType(value) end

---Gets the value of field 'GroupsAllowed'.
---@return integer value
function row:GetGroupsAllowed() end

---Sets the value of field 'GroupsAllowed'.
---@param value integer
---@return dbc.row.v335.BattlemasterList self
function row:SetGroupsAllowed(value) end

---Gets the localized value of field 'Name'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetName(locale) end

---Sets the localized value of field 'Name'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.BattlemasterList self
function row:SetName(value, locale) end

---Gets the value of field 'Name_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetName_lang(locale) end

---Sets the value of field 'Name_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.BattlemasterList self
function row:SetName_lang(value, locale) end

---Gets the value of field 'MaxGroupSize'.
---@return integer value
function row:GetMaxGroupSize() end

---Sets the value of field 'MaxGroupSize'.
---@param value integer
---@return dbc.row.v335.BattlemasterList self
function row:SetMaxGroupSize(value) end

---Gets the value of field 'HolidayWorldState'.
---@return integer value
function row:GetHolidayWorldState() end

---Sets the value of field 'HolidayWorldState'.
---@param value integer
---@return dbc.row.v335.BattlemasterList self
function row:SetHolidayWorldState(value) end

---Navigates foreign relationship to 'WorldState' via 'HolidayWorldState'.
---@return dbc.row.v335.WorldState|nil
function row:GetHolidayWorldState() end

---Creates a related 'WorldState' row and automatically links 'HolidayWorldState'.
---@param data? table
---@return dbc.row.v335.WorldState
function row:CreateRelated(data) end

---Gets the value of field 'MinLevel'.
---@return integer value
function row:GetMinLevel() end

---Sets the value of field 'MinLevel'.
---@param value integer
---@return dbc.row.v335.BattlemasterList self
function row:SetMinLevel(value) end

---Gets the value of field 'MaxLevel'.
---@return integer value
function row:GetMaxLevel() end

---Sets the value of field 'MaxLevel'.
---@param value integer
---@return dbc.row.v335.BattlemasterList self
function row:SetMaxLevel(value) end

---Table container for BattlemasterList (Build 3.3.5.12340).
---@class dbc.Table.v335.BattlemasterList : DbcTable
---@field [integer] dbc.row.v335.BattlemasterList
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.BattlemasterList
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.BattlemasterList|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.BattlemasterList
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.BattlemasterList>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.BattlemasterList[]
function tbl:GetByRelation(foreign_id) end

return {}
