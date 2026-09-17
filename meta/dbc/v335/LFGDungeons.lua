---@meta
-- Generated LuaLS annotations for LFGDungeons (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of LFGDungeons in build 3.3.5.12340.
---@class dbc.row.v335.LFGDungeons : RowProxy
---@field ID integer
---@field Name_lang string
---@field Name string Localized string alias without _lang.
---@field MinLevel integer
---@field MaxLevel integer
---@field Target_level integer
---@field Target_level_min integer
---@field Target_level_max integer
---@field MapID integer
---@field Difficulty integer
---@field Flags integer
---@field TypeID integer
---@field Faction integer
---@field TextureFilename string
---@field ExpansionLevel integer
---@field Order_index integer
---@field Group_ID integer
---@field Description_lang string
---@field Description string Localized string alias without _lang.

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.LFGDungeons self
function row:SetID(value) end

---Gets the localized value of field 'Name'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetName(locale) end

---Sets the localized value of field 'Name'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.LFGDungeons self
function row:SetName(value, locale) end

---Gets the value of field 'Name_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetName_lang(locale) end

---Sets the value of field 'Name_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.LFGDungeons self
function row:SetName_lang(value, locale) end

---Gets the value of field 'MinLevel'.
---@return integer value
function row:GetMinLevel() end

---Sets the value of field 'MinLevel'.
---@param value integer
---@return dbc.row.v335.LFGDungeons self
function row:SetMinLevel(value) end

---Gets the value of field 'MaxLevel'.
---@return integer value
function row:GetMaxLevel() end

---Sets the value of field 'MaxLevel'.
---@param value integer
---@return dbc.row.v335.LFGDungeons self
function row:SetMaxLevel(value) end

---Gets the value of field 'Target_level'.
---@return integer value
function row:GetTarget_level() end

---Sets the value of field 'Target_level'.
---@param value integer
---@return dbc.row.v335.LFGDungeons self
function row:SetTarget_level(value) end

---Gets the value of field 'Target_level_min'.
---@return integer value
function row:GetTarget_level_min() end

---Sets the value of field 'Target_level_min'.
---@param value integer
---@return dbc.row.v335.LFGDungeons self
function row:SetTarget_level_min(value) end

---Gets the value of field 'Target_level_max'.
---@return integer value
function row:GetTarget_level_max() end

---Sets the value of field 'Target_level_max'.
---@param value integer
---@return dbc.row.v335.LFGDungeons self
function row:SetTarget_level_max(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v335.LFGDungeons self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v335.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v335.Map
function row:CreateRelated(data) end

---Gets the value of field 'Difficulty'.
---@return integer value
function row:GetDifficulty() end

---Sets the value of field 'Difficulty'.
---@param value integer
---@return dbc.row.v335.LFGDungeons self
function row:SetDifficulty(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.LFGDungeons self
function row:SetFlags(value) end

---Gets the value of field 'TypeID'.
---@return integer value
function row:GetTypeID() end

---Sets the value of field 'TypeID'.
---@param value integer
---@return dbc.row.v335.LFGDungeons self
function row:SetTypeID(value) end

---Navigates foreign relationship to 'Type' via 'TypeID'.
---@return dbc.row.v335.Type|nil
function row:GetType() end

---Creates a related 'Type' row and automatically links 'TypeID'.
---@param data? table
---@return dbc.row.v335.Type
function row:CreateRelated(data) end

---Gets the value of field 'Faction'.
---@return integer value
function row:GetFaction() end

---Sets the value of field 'Faction'.
---@param value integer
---@return dbc.row.v335.LFGDungeons self
function row:SetFaction(value) end

---Navigates foreign relationship to 'Faction' via 'Faction'.
---@return dbc.row.v335.Faction|nil
function row:GetFaction() end

---Creates a related 'Faction' row and automatically links 'Faction'.
---@param data? table
---@return dbc.row.v335.Faction
function row:CreateRelated(data) end

---Gets the value of field 'TextureFilename'.
---@return string value
function row:GetTextureFilename() end

---Sets the value of field 'TextureFilename'.
---@param value string
---@return dbc.row.v335.LFGDungeons self
function row:SetTextureFilename(value) end

---Gets the value of field 'ExpansionLevel'.
---@return integer value
function row:GetExpansionLevel() end

---Sets the value of field 'ExpansionLevel'.
---@param value integer
---@return dbc.row.v335.LFGDungeons self
function row:SetExpansionLevel(value) end

---Gets the value of field 'Order_index'.
---@return integer value
function row:GetOrder_index() end

---Sets the value of field 'Order_index'.
---@param value integer
---@return dbc.row.v335.LFGDungeons self
function row:SetOrder_index(value) end

---Gets the value of field 'Group_ID'.
---@return integer value
function row:GetGroup_ID() end

---Sets the value of field 'Group_ID'.
---@param value integer
---@return dbc.row.v335.LFGDungeons self
function row:SetGroup_ID(value) end

---Navigates foreign relationship to 'Group_' via 'Group_ID'.
---@return dbc.row.v335.Group_|nil
function row:GetGroup_() end

---Creates a related 'Group_' row and automatically links 'Group_ID'.
---@param data? table
---@return dbc.row.v335.Group_
function row:CreateRelated(data) end

---Gets the localized value of field 'Description'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetDescription(locale) end

---Sets the localized value of field 'Description'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.LFGDungeons self
function row:SetDescription(value, locale) end

---Gets the value of field 'Description_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetDescription_lang(locale) end

---Sets the value of field 'Description_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.LFGDungeons self
function row:SetDescription_lang(value, locale) end

---Table container for LFGDungeons (Build 3.3.5.12340).
---@class dbc.Table.v335.LFGDungeons : DbcTable
---@field [integer] dbc.row.v335.LFGDungeons
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.LFGDungeons
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.LFGDungeons|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.LFGDungeons
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.LFGDungeons>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.LFGDungeons[]
function tbl:GetByRelation(foreign_id) end

return {}
