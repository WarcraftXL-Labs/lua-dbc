---@meta
-- Generated LuaLS annotations for WMOAreaTable (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of WMOAreaTable in build 12.1.5.69594.
---@class dbc.row.v1215.WMOAreaTable : RowProxy
---@field AreaName_lang string
---@field ID integer
---@field WMOID integer
---@field NameSetID integer
---@field WMOGroupID integer
---@field SoundProviderPref integer
---@field SoundProviderPrefUnderwater integer
---@field AmbienceID integer
---@field UwAmbience integer
---@field ZoneMusic integer
---@field UwZoneMusic integer
---@field IntroSound integer
---@field UwIntroSound integer
---@field AreaTableID integer
---@field Flags integer

local row = {}

---Gets the value of field 'AreaName_lang'.
---@return string value
function row:GetAreaName_lang() end

---Sets the value of field 'AreaName_lang'.
---@param value string
---@return dbc.row.v1215.WMOAreaTable self
function row:SetAreaName_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.WMOAreaTable self
function row:SetID(value) end

---Gets the value of field 'WMOID'.
---@return integer value
function row:GetWMOID() end

---Sets the value of field 'WMOID'.
---@param value integer
---@return dbc.row.v1215.WMOAreaTable self
function row:SetWMOID(value) end

---Navigates foreign relationship to 'WMO' via 'WMOID'.
---@return dbc.row.v1215.WMO|nil
function row:GetWMO() end

---Creates a related 'WMO' row and automatically links 'WMOID'.
---@param data? table
---@return dbc.row.v1215.WMO
function row:CreateRelated(data) end

---Gets the value of field 'NameSetID'.
---@return integer value
function row:GetNameSetID() end

---Sets the value of field 'NameSetID'.
---@param value integer
---@return dbc.row.v1215.WMOAreaTable self
function row:SetNameSetID(value) end

---Navigates foreign relationship to 'NameSet' via 'NameSetID'.
---@return dbc.row.v1215.NameSet|nil
function row:GetNameSet() end

---Creates a related 'NameSet' row and automatically links 'NameSetID'.
---@param data? table
---@return dbc.row.v1215.NameSet
function row:CreateRelated(data) end

---Gets the value of field 'WMOGroupID'.
---@return integer value
function row:GetWMOGroupID() end

---Sets the value of field 'WMOGroupID'.
---@param value integer
---@return dbc.row.v1215.WMOAreaTable self
function row:SetWMOGroupID(value) end

---Navigates foreign relationship to 'WMOGroup' via 'WMOGroupID'.
---@return dbc.row.v1215.WMOGroup|nil
function row:GetWMOGroup() end

---Creates a related 'WMOGroup' row and automatically links 'WMOGroupID'.
---@param data? table
---@return dbc.row.v1215.WMOGroup
function row:CreateRelated(data) end

---Gets the value of field 'SoundProviderPref'.
---@return integer value
function row:GetSoundProviderPref() end

---Sets the value of field 'SoundProviderPref'.
---@param value integer
---@return dbc.row.v1215.WMOAreaTable self
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
---@return dbc.row.v1215.WMOAreaTable self
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
---@return dbc.row.v1215.WMOAreaTable self
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
---@return dbc.row.v1215.WMOAreaTable self
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
---@return dbc.row.v1215.WMOAreaTable self
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
---@return dbc.row.v1215.WMOAreaTable self
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
---@return dbc.row.v1215.WMOAreaTable self
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
---@return dbc.row.v1215.WMOAreaTable self
function row:SetUwIntroSound(value) end

---Navigates foreign relationship to 'ZoneIntroMusicTable' via 'UwIntroSound'.
---@return dbc.row.v1215.ZoneIntroMusicTable|nil
function row:GetUwIntroSound() end

---Creates a related 'ZoneIntroMusicTable' row and automatically links 'UwIntroSound'.
---@param data? table
---@return dbc.row.v1215.ZoneIntroMusicTable
function row:CreateRelated(data) end

---Gets the value of field 'AreaTableID'.
---@return integer value
function row:GetAreaTableID() end

---Sets the value of field 'AreaTableID'.
---@param value integer
---@return dbc.row.v1215.WMOAreaTable self
function row:SetAreaTableID(value) end

---Navigates foreign relationship to 'AreaTable' via 'AreaTableID'.
---@return dbc.row.v1215.AreaTable|nil
function row:GetAreaTable() end

---Creates a related 'AreaTable' row and automatically links 'AreaTableID'.
---@param data? table
---@return dbc.row.v1215.AreaTable
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.WMOAreaTable self
function row:SetFlags(value) end

---Table container for WMOAreaTable (Build 12.1.5.69594).
---@class dbc.Table.v1215.WMOAreaTable : DbcTable
---@field [integer] dbc.row.v1215.WMOAreaTable
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.WMOAreaTable
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.WMOAreaTable|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.WMOAreaTable
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.WMOAreaTable>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.WMOAreaTable[]
function tbl:GetByRelation(foreign_id) end

return {}
