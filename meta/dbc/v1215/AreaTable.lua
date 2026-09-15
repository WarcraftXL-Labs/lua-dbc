---@meta
-- Generated LuaLS annotations for AreaTable (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AreaTable in build 12.1.5.69594.
---@class dbc.row.v1215.AreaTable : RowProxy
---@field ID integer
---@field ZoneName string
---@field AreaName_lang string
---@field ContinentID integer
---@field ParentAreaID integer
---@field AreaBit integer
---@field SoundProviderPref integer
---@field SoundProviderPrefUnderwater integer
---@field AmbienceID integer
---@field UwAmbience integer
---@field ZoneMusic integer
---@field UwZoneMusic integer
---@field IntroSound integer
---@field UwIntroSound integer
---@field FactionGroupMask integer
---@field Ambient_multiplier number
---@field MountFlags integer
---@field PvpCombatWorldStateID integer
---@field WildBattlePetLevelMin integer
---@field WildBattlePetLevelMax integer
---@field WindSettingsID integer
---@field ContentTuningID integer
---@field Flags integer[]
---@field LiquidTypeID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AreaTable self
function row:SetID(value) end

---Gets the value of field 'ZoneName'.
---@return string value
function row:GetZoneName() end

---Sets the value of field 'ZoneName'.
---@param value string
---@return dbc.row.v1215.AreaTable self
function row:SetZoneName(value) end

---Gets the value of field 'AreaName_lang'.
---@return string value
function row:GetAreaName_lang() end

---Sets the value of field 'AreaName_lang'.
---@param value string
---@return dbc.row.v1215.AreaTable self
function row:SetAreaName_lang(value) end

---Gets the value of field 'ContinentID'.
---@return integer value
function row:GetContinentID() end

---Sets the value of field 'ContinentID'.
---@param value integer
---@return dbc.row.v1215.AreaTable self
function row:SetContinentID(value) end

---Navigates foreign relationship to 'Map' via 'ContinentID'.
---@return dbc.row.v1215.Map|nil
function row:GetContinent() end

---Creates a related 'Map' row and automatically links 'ContinentID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'ParentAreaID'.
---@return integer value
function row:GetParentAreaID() end

---Sets the value of field 'ParentAreaID'.
---@param value integer
---@return dbc.row.v1215.AreaTable self
function row:SetParentAreaID(value) end

---Navigates foreign relationship to 'AreaTable' via 'ParentAreaID'.
---@return dbc.row.v1215.AreaTable|nil
function row:GetParentArea() end

---Creates a related 'AreaTable' row and automatically links 'ParentAreaID'.
---@param data? table
---@return dbc.row.v1215.AreaTable
function row:CreateRelated(data) end

---Gets the value of field 'AreaBit'.
---@return integer value
function row:GetAreaBit() end

---Sets the value of field 'AreaBit'.
---@param value integer
---@return dbc.row.v1215.AreaTable self
function row:SetAreaBit(value) end

---Gets the value of field 'SoundProviderPref'.
---@return integer value
function row:GetSoundProviderPref() end

---Sets the value of field 'SoundProviderPref'.
---@param value integer
---@return dbc.row.v1215.AreaTable self
function row:SetSoundProviderPref(value) end

---Navigates foreign relationship to 'SoundProviderPreferences' via 'SoundProviderPref'.
---@return dbc.row.v1215.SoundProviderPreferences|nil
function row:GetSoundProviderPref() end

---Creates a related 'SoundProviderPreferences' row and automatically links 'SoundProviderPref'.
---@param data? table
---@return dbc.row.v1215.SoundProviderPreferences
function row:CreateRelated(data) end

---Gets the value of field 'SoundProviderPrefUnderwater'.
---@return integer value
function row:GetSoundProviderPrefUnderwater() end

---Sets the value of field 'SoundProviderPrefUnderwater'.
---@param value integer
---@return dbc.row.v1215.AreaTable self
function row:SetSoundProviderPrefUnderwater(value) end

---Navigates foreign relationship to 'SoundProviderPreferences' via 'SoundProviderPrefUnderwater'.
---@return dbc.row.v1215.SoundProviderPreferences|nil
function row:GetSoundProviderPrefUnderwater() end

---Creates a related 'SoundProviderPreferences' row and automatically links 'SoundProviderPrefUnderwater'.
---@param data? table
---@return dbc.row.v1215.SoundProviderPreferences
function row:CreateRelated(data) end

---Gets the value of field 'AmbienceID'.
---@return integer value
function row:GetAmbienceID() end

---Sets the value of field 'AmbienceID'.
---@param value integer
---@return dbc.row.v1215.AreaTable self
function row:SetAmbienceID(value) end

---Navigates foreign relationship to 'SoundAmbience' via 'AmbienceID'.
---@return dbc.row.v1215.SoundAmbience|nil
function row:GetAmbience() end

---Creates a related 'SoundAmbience' row and automatically links 'AmbienceID'.
---@param data? table
---@return dbc.row.v1215.SoundAmbience
function row:CreateRelated(data) end

---Gets the value of field 'UwAmbience'.
---@return integer value
function row:GetUwAmbience() end

---Sets the value of field 'UwAmbience'.
---@param value integer
---@return dbc.row.v1215.AreaTable self
function row:SetUwAmbience(value) end

---Navigates foreign relationship to 'SoundAmbience' via 'UwAmbience'.
---@return dbc.row.v1215.SoundAmbience|nil
function row:GetUwAmbience() end

---Creates a related 'SoundAmbience' row and automatically links 'UwAmbience'.
---@param data? table
---@return dbc.row.v1215.SoundAmbience
function row:CreateRelated(data) end

---Gets the value of field 'ZoneMusic'.
---@return integer value
function row:GetZoneMusic() end

---Sets the value of field 'ZoneMusic'.
---@param value integer
---@return dbc.row.v1215.AreaTable self
function row:SetZoneMusic(value) end

---Navigates foreign relationship to 'ZoneMusic' via 'ZoneMusic'.
---@return dbc.row.v1215.ZoneMusic|nil
function row:GetZoneMusic() end

---Creates a related 'ZoneMusic' row and automatically links 'ZoneMusic'.
---@param data? table
---@return dbc.row.v1215.ZoneMusic
function row:CreateRelated(data) end

---Gets the value of field 'UwZoneMusic'.
---@return integer value
function row:GetUwZoneMusic() end

---Sets the value of field 'UwZoneMusic'.
---@param value integer
---@return dbc.row.v1215.AreaTable self
function row:SetUwZoneMusic(value) end

---Navigates foreign relationship to 'ZoneMusic' via 'UwZoneMusic'.
---@return dbc.row.v1215.ZoneMusic|nil
function row:GetUwZoneMusic() end

---Creates a related 'ZoneMusic' row and automatically links 'UwZoneMusic'.
---@param data? table
---@return dbc.row.v1215.ZoneMusic
function row:CreateRelated(data) end

---Gets the value of field 'IntroSound'.
---@return integer value
function row:GetIntroSound() end

---Sets the value of field 'IntroSound'.
---@param value integer
---@return dbc.row.v1215.AreaTable self
function row:SetIntroSound(value) end

---Navigates foreign relationship to 'ZoneIntroMusicTable' via 'IntroSound'.
---@return dbc.row.v1215.ZoneIntroMusicTable|nil
function row:GetIntroSound() end

---Creates a related 'ZoneIntroMusicTable' row and automatically links 'IntroSound'.
---@param data? table
---@return dbc.row.v1215.ZoneIntroMusicTable
function row:CreateRelated(data) end

---Gets the value of field 'UwIntroSound'.
---@return integer value
function row:GetUwIntroSound() end

---Sets the value of field 'UwIntroSound'.
---@param value integer
---@return dbc.row.v1215.AreaTable self
function row:SetUwIntroSound(value) end

---Navigates foreign relationship to 'ZoneIntroMusicTable' via 'UwIntroSound'.
---@return dbc.row.v1215.ZoneIntroMusicTable|nil
function row:GetUwIntroSound() end

---Creates a related 'ZoneIntroMusicTable' row and automatically links 'UwIntroSound'.
---@param data? table
---@return dbc.row.v1215.ZoneIntroMusicTable
function row:CreateRelated(data) end

---Gets the value of field 'FactionGroupMask'.
---@return integer value
function row:GetFactionGroupMask() end

---Sets the value of field 'FactionGroupMask'.
---@param value integer
---@return dbc.row.v1215.AreaTable self
function row:SetFactionGroupMask(value) end

---Gets the value of field 'Ambient_multiplier'.
---@return number value
function row:GetAmbient_multiplier() end

---Sets the value of field 'Ambient_multiplier'.
---@param value number
---@return dbc.row.v1215.AreaTable self
function row:SetAmbient_multiplier(value) end

---Gets the value of field 'MountFlags'.
---@return integer value
function row:GetMountFlags() end

---Sets the value of field 'MountFlags'.
---@param value integer
---@return dbc.row.v1215.AreaTable self
function row:SetMountFlags(value) end

---Gets the value of field 'PvpCombatWorldStateID'.
---@return integer value
function row:GetPvpCombatWorldStateID() end

---Sets the value of field 'PvpCombatWorldStateID'.
---@param value integer
---@return dbc.row.v1215.AreaTable self
function row:SetPvpCombatWorldStateID(value) end

---Navigates foreign relationship to 'WorldState' via 'PvpCombatWorldStateID'.
---@return dbc.row.v1215.WorldState|nil
function row:GetPvpCombatWorldState() end

---Creates a related 'WorldState' row and automatically links 'PvpCombatWorldStateID'.
---@param data? table
---@return dbc.row.v1215.WorldState
function row:CreateRelated(data) end

---Gets the value of field 'WildBattlePetLevelMin'.
---@return integer value
function row:GetWildBattlePetLevelMin() end

---Sets the value of field 'WildBattlePetLevelMin'.
---@param value integer
---@return dbc.row.v1215.AreaTable self
function row:SetWildBattlePetLevelMin(value) end

---Gets the value of field 'WildBattlePetLevelMax'.
---@return integer value
function row:GetWildBattlePetLevelMax() end

---Sets the value of field 'WildBattlePetLevelMax'.
---@param value integer
---@return dbc.row.v1215.AreaTable self
function row:SetWildBattlePetLevelMax(value) end

---Gets the value of field 'WindSettingsID'.
---@return integer value
function row:GetWindSettingsID() end

---Sets the value of field 'WindSettingsID'.
---@param value integer
---@return dbc.row.v1215.AreaTable self
function row:SetWindSettingsID(value) end

---Navigates foreign relationship to 'WindSettings' via 'WindSettingsID'.
---@return dbc.row.v1215.WindSettings|nil
function row:GetWindSettings() end

---Creates a related 'WindSettings' row and automatically links 'WindSettingsID'.
---@param data? table
---@return dbc.row.v1215.WindSettings
function row:CreateRelated(data) end

---Gets the value of field 'ContentTuningID'.
---@return integer value
function row:GetContentTuningID() end

---Sets the value of field 'ContentTuningID'.
---@param value integer
---@return dbc.row.v1215.AreaTable self
function row:SetContentTuningID(value) end

---Navigates foreign relationship to 'ContentTuning' via 'ContentTuningID'.
---@return dbc.row.v1215.ContentTuning|nil
function row:GetContentTuning() end

---Creates a related 'ContentTuning' row and automatically links 'ContentTuningID'.
---@param data? table
---@return dbc.row.v1215.ContentTuning
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer[] value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer[]
---@return dbc.row.v1215.AreaTable self
function row:SetFlags(value) end

---Gets element at 1-based index in 'Flags'.
---@param index integer
---@return integer value
function row:GetFlagsItem(index) end

---Gets the value of field 'LiquidTypeID'.
---@return integer[] value
function row:GetLiquidTypeID() end

---Sets the value of field 'LiquidTypeID'.
---@param value integer[]
---@return dbc.row.v1215.AreaTable self
function row:SetLiquidTypeID(value) end

---Gets element at 1-based index in 'LiquidTypeID'.
---@param index integer
---@return integer value
function row:GetLiquidTypeIDItem(index) end

---Navigates foreign relationship to 'LiquidType' via 'LiquidTypeID'.
---@return dbc.row.v1215.LiquidType|nil
function row:GetLiquidType() end

---Creates a related 'LiquidType' row and automatically links 'LiquidTypeID'.
---@param data? table
---@return dbc.row.v1215.LiquidType
function row:CreateRelated(data) end

---Table container for AreaTable (Build 12.1.5.69594).
---@class dbc.Table.v1215.AreaTable : DbcTable
---@field [integer] dbc.row.v1215.AreaTable
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AreaTable
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AreaTable|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AreaTable
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AreaTable>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AreaTable[]
function tbl:GetByRelation(foreign_id) end

return {}
