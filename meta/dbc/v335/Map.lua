---@meta
-- Generated LuaLS annotations for Map (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of Map in build 3.3.5.12340.
---@class dbc.row.v335.Map : RowProxy
---@field ID integer
---@field Directory string reference to World\Map\ [...] \
---@field InstanceType integer Integer 0: none, 1: party, 2: raid, 3: pvp, 4: arena, >=5: none (official from "IsInInstance()")
---@field Flags integer &0x100: CanChangeDifficulty
---@field PVP integer
---@field MapName_lang string
---@field MapName string Localized string alias without _lang.
---@field AreaTableID integer
---@field MapDescription0_lang string Horde
---@field MapDescription0 string Localized string alias without _lang.
---@field MapDescription1_lang string Alliance
---@field MapDescription1 string Localized string alias without _lang.
---@field LoadingScreenID integer
---@field MinimapIconScale number
---@field CorpseMapID integer
---@field Corpse number[] Array of CorpsePosX/CorpsePosY
---@field TimeOfDayOverride integer Set to -1 for everything but Orgrimmar and Dalaran arena. For those, the time of day will change to this.
---@field ExpansionID integer Vanilla: 0, BC: 1, WotLK: 2 # todo enum
---@field RaidOffset integer
---@field MaxPlayers integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.Map self
function row:SetID(value) end

---Gets the value of field 'Directory'.
---@return string value
function row:GetDirectory() end

---Sets the value of field 'Directory'.
---@param value string
---@return dbc.row.v335.Map self
function row:SetDirectory(value) end

---Gets the value of field 'InstanceType'.
---@return integer value
function row:GetInstanceType() end

---Sets the value of field 'InstanceType'.
---@param value integer
---@return dbc.row.v335.Map self
function row:SetInstanceType(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.Map self
function row:SetFlags(value) end

---Gets the value of field 'PVP'.
---@return integer value
function row:GetPVP() end

---Sets the value of field 'PVP'.
---@param value integer
---@return dbc.row.v335.Map self
function row:SetPVP(value) end

---Gets the localized value of field 'MapName'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetMapName(locale) end

---Sets the localized value of field 'MapName'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.Map self
function row:SetMapName(value, locale) end

---Gets the value of field 'MapName_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetMapName_lang(locale) end

---Sets the value of field 'MapName_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.Map self
function row:SetMapName_lang(value, locale) end

---Gets the value of field 'AreaTableID'.
---@return integer value
function row:GetAreaTableID() end

---Sets the value of field 'AreaTableID'.
---@param value integer
---@return dbc.row.v335.Map self
function row:SetAreaTableID(value) end

---Navigates foreign relationship to 'AreaTable' via 'AreaTableID'.
---@return dbc.row.v335.AreaTable|nil
function row:GetAreaTable() end

---Creates a related 'AreaTable' row and automatically links 'AreaTableID'.
---@param data? table
---@return dbc.row.v335.AreaTable
function row:CreateRelated(data) end

---Gets the localized value of field 'MapDescription0'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetMapDescription0(locale) end

---Sets the localized value of field 'MapDescription0'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.Map self
function row:SetMapDescription0(value, locale) end

---Gets the value of field 'MapDescription0_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetMapDescription0_lang(locale) end

---Sets the value of field 'MapDescription0_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.Map self
function row:SetMapDescription0_lang(value, locale) end

---Gets the localized value of field 'MapDescription1'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetMapDescription1(locale) end

---Sets the localized value of field 'MapDescription1'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.Map self
function row:SetMapDescription1(value, locale) end

---Gets the value of field 'MapDescription1_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetMapDescription1_lang(locale) end

---Sets the value of field 'MapDescription1_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.Map self
function row:SetMapDescription1_lang(value, locale) end

---Gets the value of field 'LoadingScreenID'.
---@return integer value
function row:GetLoadingScreenID() end

---Sets the value of field 'LoadingScreenID'.
---@param value integer
---@return dbc.row.v335.Map self
function row:SetLoadingScreenID(value) end

---Navigates foreign relationship to 'LoadingScreens' via 'LoadingScreenID'.
---@return dbc.row.v335.LoadingScreens|nil
function row:GetLoadingScreen() end

---Creates a related 'LoadingScreens' row and automatically links 'LoadingScreenID'.
---@param data? table
---@return dbc.row.v335.LoadingScreens
function row:CreateRelated(data) end

---Gets the value of field 'MinimapIconScale'.
---@return number value
function row:GetMinimapIconScale() end

---Sets the value of field 'MinimapIconScale'.
---@param value number
---@return dbc.row.v335.Map self
function row:SetMinimapIconScale(value) end

---Gets the value of field 'CorpseMapID'.
---@return integer value
function row:GetCorpseMapID() end

---Sets the value of field 'CorpseMapID'.
---@param value integer
---@return dbc.row.v335.Map self
function row:SetCorpseMapID(value) end

---Navigates foreign relationship to 'Map' via 'CorpseMapID'.
---@return dbc.row.v335.Map|nil
function row:GetCorpseMap() end

---Creates a related 'Map' row and automatically links 'CorpseMapID'.
---@param data? table
---@return dbc.row.v335.Map
function row:CreateRelated(data) end

---Gets the value of field 'Corpse'.
---@return number[] value
function row:GetCorpse() end

---Sets the value of field 'Corpse'.
---@param value number[]
---@return dbc.row.v335.Map self
function row:SetCorpse(value) end

---Gets element at 1-based index in 'Corpse'.
---@param index integer
---@return number value
function row:GetCorpseItem(index) end

---Gets the value of field 'TimeOfDayOverride'.
---@return integer value
function row:GetTimeOfDayOverride() end

---Sets the value of field 'TimeOfDayOverride'.
---@param value integer
---@return dbc.row.v335.Map self
function row:SetTimeOfDayOverride(value) end

---Gets the value of field 'ExpansionID'.
---@return integer value
function row:GetExpansionID() end

---Sets the value of field 'ExpansionID'.
---@param value integer
---@return dbc.row.v335.Map self
function row:SetExpansionID(value) end

---Navigates foreign relationship to 'Expansion' via 'ExpansionID'.
---@return dbc.row.v335.Expansion|nil
function row:GetExpansion() end

---Creates a related 'Expansion' row and automatically links 'ExpansionID'.
---@param data? table
---@return dbc.row.v335.Expansion
function row:CreateRelated(data) end

---Gets the value of field 'RaidOffset'.
---@return integer value
function row:GetRaidOffset() end

---Sets the value of field 'RaidOffset'.
---@param value integer
---@return dbc.row.v335.Map self
function row:SetRaidOffset(value) end

---Gets the value of field 'MaxPlayers'.
---@return integer value
function row:GetMaxPlayers() end

---Sets the value of field 'MaxPlayers'.
---@param value integer
---@return dbc.row.v335.Map self
function row:SetMaxPlayers(value) end

---Table container for Map (Build 3.3.5.12340).
---@class dbc.Table.v335.Map : DbcTable
---@field [integer] dbc.row.v335.Map
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.Map
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.Map|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.Map
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.Map>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.Map[]
function tbl:GetByRelation(foreign_id) end

return {}
