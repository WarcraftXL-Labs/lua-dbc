---@meta
-- Generated LuaLS annotations for AreaTable (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of AreaTable in build 3.3.5.12340.
---@class dbc.row.v335.AreaTable : RowProxy
---@field ID integer
---@field ContinentID integer
---@field ParentAreaID integer
---@field AreaBit integer
---@field Flags integer
---@field SoundProviderPref integer
---@field SoundProviderPrefUnderwater integer
---@field AmbienceID integer
---@field ZoneMusic integer
---@field IntroSound integer
---@field ExplorationLevel integer
---@field AreaName_lang string
---@field AreaName string Localized string alias without _lang.
---@field FactionGroupMask integer
---@field LiquidTypeID integer[]
---@field MinElevation number
---@field Ambient_multiplier number
---@field LightID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.AreaTable self
function row:SetID(value) end

---Gets the value of field 'ContinentID'.
---@return integer value
function row:GetContinentID() end

---Sets the value of field 'ContinentID'.
---@param value integer
---@return dbc.row.v335.AreaTable self
function row:SetContinentID(value) end

---Navigates foreign relationship to 'Map' via 'ContinentID'.
---@return dbc.row.v335.Map|nil
function row:GetContinent() end

---Creates a related 'Map' row and automatically links 'ContinentID'.
---@param data? table
---@return dbc.row.v335.Map
function row:CreateRelated(data) end

---Gets the value of field 'ParentAreaID'.
---@return integer value
function row:GetParentAreaID() end

---Sets the value of field 'ParentAreaID'.
---@param value integer
---@return dbc.row.v335.AreaTable self
function row:SetParentAreaID(value) end

---Navigates foreign relationship to 'AreaTable' via 'ParentAreaID'.
---@return dbc.row.v335.AreaTable|nil
function row:GetParentArea() end

---Creates a related 'AreaTable' row and automatically links 'ParentAreaID'.
---@param data? table
---@return dbc.row.v335.AreaTable
function row:CreateRelated(data) end

---Gets the value of field 'AreaBit'.
---@return integer value
function row:GetAreaBit() end

---Sets the value of field 'AreaBit'.
---@param value integer
---@return dbc.row.v335.AreaTable self
function row:SetAreaBit(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.AreaTable self
function row:SetFlags(value) end

---Gets the value of field 'SoundProviderPref'.
---@return integer value
function row:GetSoundProviderPref() end

---Sets the value of field 'SoundProviderPref'.
---@param value integer
---@return dbc.row.v335.AreaTable self
function row:SetSoundProviderPref(value) end

---Navigates foreign relationship to 'SoundProviderPreferences' via 'SoundProviderPref'.
---@return dbc.row.v335.SoundProviderPreferences|nil
function row:GetSoundProviderPref() end

---Creates a related 'SoundProviderPreferences' row and automatically links 'SoundProviderPref'.
---@param data? table
---@return dbc.row.v335.SoundProviderPreferences
function row:CreateRelated(data) end

---Gets the value of field 'SoundProviderPrefUnderwater'.
---@return integer value
function row:GetSoundProviderPrefUnderwater() end

---Sets the value of field 'SoundProviderPrefUnderwater'.
---@param value integer
---@return dbc.row.v335.AreaTable self
function row:SetSoundProviderPrefUnderwater(value) end

---Navigates foreign relationship to 'SoundProviderPreferences' via 'SoundProviderPrefUnderwater'.
---@return dbc.row.v335.SoundProviderPreferences|nil
function row:GetSoundProviderPrefUnderwater() end

---Creates a related 'SoundProviderPreferences' row and automatically links 'SoundProviderPrefUnderwater'.
---@param data? table
---@return dbc.row.v335.SoundProviderPreferences
function row:CreateRelated(data) end

---Gets the value of field 'AmbienceID'.
---@return integer value
function row:GetAmbienceID() end

---Sets the value of field 'AmbienceID'.
---@param value integer
---@return dbc.row.v335.AreaTable self
function row:SetAmbienceID(value) end

---Navigates foreign relationship to 'SoundAmbience' via 'AmbienceID'.
---@return dbc.row.v335.SoundAmbience|nil
function row:GetAmbience() end

---Creates a related 'SoundAmbience' row and automatically links 'AmbienceID'.
---@param data? table
---@return dbc.row.v335.SoundAmbience
function row:CreateRelated(data) end

---Gets the value of field 'ZoneMusic'.
---@return integer value
function row:GetZoneMusic() end

---Sets the value of field 'ZoneMusic'.
---@param value integer
---@return dbc.row.v335.AreaTable self
function row:SetZoneMusic(value) end

---Navigates foreign relationship to 'ZoneMusic' via 'ZoneMusic'.
---@return dbc.row.v335.ZoneMusic|nil
function row:GetZoneMusic() end

---Creates a related 'ZoneMusic' row and automatically links 'ZoneMusic'.
---@param data? table
---@return dbc.row.v335.ZoneMusic
function row:CreateRelated(data) end

---Gets the value of field 'IntroSound'.
---@return integer value
function row:GetIntroSound() end

---Sets the value of field 'IntroSound'.
---@param value integer
---@return dbc.row.v335.AreaTable self
function row:SetIntroSound(value) end

---Navigates foreign relationship to 'ZoneIntroMusicTable' via 'IntroSound'.
---@return dbc.row.v335.ZoneIntroMusicTable|nil
function row:GetIntroSound() end

---Creates a related 'ZoneIntroMusicTable' row and automatically links 'IntroSound'.
---@param data? table
---@return dbc.row.v335.ZoneIntroMusicTable
function row:CreateRelated(data) end

---Gets the value of field 'ExplorationLevel'.
---@return integer value
function row:GetExplorationLevel() end

---Sets the value of field 'ExplorationLevel'.
---@param value integer
---@return dbc.row.v335.AreaTable self
function row:SetExplorationLevel(value) end

---Gets the localized value of field 'AreaName'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetAreaName(locale) end

---Sets the localized value of field 'AreaName'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.AreaTable self
function row:SetAreaName(value, locale) end

---Gets the value of field 'AreaName_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetAreaName_lang(locale) end

---Sets the value of field 'AreaName_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.AreaTable self
function row:SetAreaName_lang(value, locale) end

---Gets the value of field 'FactionGroupMask'.
---@return integer value
function row:GetFactionGroupMask() end

---Sets the value of field 'FactionGroupMask'.
---@param value integer
---@return dbc.row.v335.AreaTable self
function row:SetFactionGroupMask(value) end

---Gets the value of field 'LiquidTypeID'.
---@return integer[] value
function row:GetLiquidTypeID() end

---Sets the value of field 'LiquidTypeID'.
---@param value integer[]
---@return dbc.row.v335.AreaTable self
function row:SetLiquidTypeID(value) end

---Gets element at 1-based index in 'LiquidTypeID'.
---@param index integer
---@return integer value
function row:GetLiquidTypeIDItem(index) end

---Navigates foreign relationship to 'LiquidType' via 'LiquidTypeID'.
---@return dbc.row.v335.LiquidType|nil
function row:GetLiquidType() end

---Creates a related 'LiquidType' row and automatically links 'LiquidTypeID'.
---@param data? table
---@return dbc.row.v335.LiquidType
function row:CreateRelated(data) end

---Gets the value of field 'MinElevation'.
---@return number value
function row:GetMinElevation() end

---Sets the value of field 'MinElevation'.
---@param value number
---@return dbc.row.v335.AreaTable self
function row:SetMinElevation(value) end

---Gets the value of field 'Ambient_multiplier'.
---@return number value
function row:GetAmbient_multiplier() end

---Sets the value of field 'Ambient_multiplier'.
---@param value number
---@return dbc.row.v335.AreaTable self
function row:SetAmbient_multiplier(value) end

---Gets the value of field 'LightID'.
---@return integer value
function row:GetLightID() end

---Sets the value of field 'LightID'.
---@param value integer
---@return dbc.row.v335.AreaTable self
function row:SetLightID(value) end

---Navigates foreign relationship to 'Light' via 'LightID'.
---@return dbc.row.v335.Light|nil
function row:GetLight() end

---Creates a related 'Light' row and automatically links 'LightID'.
---@param data? table
---@return dbc.row.v335.Light
function row:CreateRelated(data) end

---Table container for AreaTable (Build 3.3.5.12340).
---@class dbc.Table.v335.AreaTable : DbcTable
---@field [integer] dbc.row.v335.AreaTable
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.AreaTable
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.AreaTable|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.AreaTable
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.AreaTable>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.AreaTable[]
function tbl:GetByRelation(foreign_id) end

return {}
