---@meta
-- Generated LuaLS annotations for ItemClass (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of ItemClass in build 3.3.5.12340.
---@class dbc.row.v335.ItemClass : RowProxy
---@field ClassID integer
---@field SubclassMapID integer
---@field Flags integer
---@field ClassName_lang string
---@field ClassName string Localized string alias without _lang.

local row = {}

---Gets the value of field 'ClassID'.
---@return integer value
function row:GetClassID() end

---Sets the value of field 'ClassID'.
---@param value integer
---@return dbc.row.v335.ItemClass self
function row:SetClassID(value) end

---Navigates foreign relationship to 'Class' via 'ClassID'.
---@return dbc.row.v335.Class|nil
function row:GetClass() end

---Creates a related 'Class' row and automatically links 'ClassID'.
---@param data? table
---@return dbc.row.v335.Class
function row:CreateRelated(data) end

---Gets the value of field 'SubclassMapID'.
---@return integer value
function row:GetSubclassMapID() end

---Sets the value of field 'SubclassMapID'.
---@param value integer
---@return dbc.row.v335.ItemClass self
function row:SetSubclassMapID(value) end

---Navigates foreign relationship to 'SubclassMap' via 'SubclassMapID'.
---@return dbc.row.v335.SubclassMap|nil
function row:GetSubclassMap() end

---Creates a related 'SubclassMap' row and automatically links 'SubclassMapID'.
---@param data? table
---@return dbc.row.v335.SubclassMap
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.ItemClass self
function row:SetFlags(value) end

---Gets the localized value of field 'ClassName'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetClassName(locale) end

---Sets the localized value of field 'ClassName'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.ItemClass self
function row:SetClassName(value, locale) end

---Gets the value of field 'ClassName_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetClassName_lang(locale) end

---Sets the value of field 'ClassName_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.ItemClass self
function row:SetClassName_lang(value, locale) end

---Table container for ItemClass (Build 3.3.5.12340).
---@class dbc.Table.v335.ItemClass : DbcTable
---@field [integer] dbc.row.v335.ItemClass
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.ItemClass
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.ItemClass|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.ItemClass
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.ItemClass>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.ItemClass[]
function tbl:GetByRelation(foreign_id) end

return {}
