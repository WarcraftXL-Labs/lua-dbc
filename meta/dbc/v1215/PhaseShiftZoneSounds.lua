---@meta
-- Generated LuaLS annotations for PhaseShiftZoneSounds (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PhaseShiftZoneSounds in build 12.1.5.69594.
---@class dbc.row.v1215.PhaseShiftZoneSounds : RowProxy
---@field ID integer
---@field AreaID integer
---@field WMOAreaID integer
---@field PhaseID integer
---@field PhaseGroupID integer
---@field PhaseUseFlags integer
---@field ZoneIntroMusicID integer
---@field ZoneMusicID integer
---@field SoundAmbienceID integer
---@field SoundProviderPreferencesID integer
---@field UWZoneIntroMusicID integer
---@field UWZoneMusicID integer
---@field UWSoundAmbienceID integer
---@field UWSoundProviderPreferencesID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PhaseShiftZoneSounds self
function row:SetID(value) end

---Gets the value of field 'AreaID'.
---@return integer value
function row:GetAreaID() end

---Sets the value of field 'AreaID'.
---@param value integer
---@return dbc.row.v1215.PhaseShiftZoneSounds self
function row:SetAreaID(value) end

---Navigates foreign relationship to 'AreaTable' via 'AreaID'.
---@return dbc.row.v1215.AreaTable|nil
function row:GetArea() end

---Creates a related 'AreaTable' row and automatically links 'AreaID'.
---@param data? table
---@return dbc.row.v1215.AreaTable
function row:CreateRelated(data) end

---Gets the value of field 'WMOAreaID'.
---@return integer value
function row:GetWMOAreaID() end

---Sets the value of field 'WMOAreaID'.
---@param value integer
---@return dbc.row.v1215.PhaseShiftZoneSounds self
function row:SetWMOAreaID(value) end

---Navigates foreign relationship to 'WMOAreaTable' via 'WMOAreaID'.
---@return dbc.row.v1215.WMOAreaTable|nil
function row:GetWMOArea() end

---Creates a related 'WMOAreaTable' row and automatically links 'WMOAreaID'.
---@param data? table
---@return dbc.row.v1215.WMOAreaTable
function row:CreateRelated(data) end

---Gets the value of field 'PhaseID'.
---@return integer value
function row:GetPhaseID() end

---Sets the value of field 'PhaseID'.
---@param value integer
---@return dbc.row.v1215.PhaseShiftZoneSounds self
function row:SetPhaseID(value) end

---Navigates foreign relationship to 'Phase' via 'PhaseID'.
---@return dbc.row.v1215.Phase|nil
function row:GetPhase() end

---Creates a related 'Phase' row and automatically links 'PhaseID'.
---@param data? table
---@return dbc.row.v1215.Phase
function row:CreateRelated(data) end

---Gets the value of field 'PhaseGroupID'.
---@return integer value
function row:GetPhaseGroupID() end

---Sets the value of field 'PhaseGroupID'.
---@param value integer
---@return dbc.row.v1215.PhaseShiftZoneSounds self
function row:SetPhaseGroupID(value) end

---Navigates foreign relationship to 'PhaseXPhaseGroup' via 'PhaseGroupID'.
---@return dbc.row.v1215.PhaseXPhaseGroup|nil
function row:GetPhaseGroup() end

---Creates a related 'PhaseXPhaseGroup' row and automatically links 'PhaseGroupID'.
---@param data? table
---@return dbc.row.v1215.PhaseXPhaseGroup
function row:CreateRelated(data) end

---Gets the value of field 'PhaseUseFlags'.
---@return integer value
function row:GetPhaseUseFlags() end

---Sets the value of field 'PhaseUseFlags'.
---@param value integer
---@return dbc.row.v1215.PhaseShiftZoneSounds self
function row:SetPhaseUseFlags(value) end

---Gets the value of field 'ZoneIntroMusicID'.
---@return integer value
function row:GetZoneIntroMusicID() end

---Sets the value of field 'ZoneIntroMusicID'.
---@param value integer
---@return dbc.row.v1215.PhaseShiftZoneSounds self
function row:SetZoneIntroMusicID(value) end

---Navigates foreign relationship to 'ZoneIntroMusicTable' via 'ZoneIntroMusicID'.
---@return dbc.row.v1215.ZoneIntroMusicTable|nil
function row:GetZoneIntroMusic() end

---Creates a related 'ZoneIntroMusicTable' row and automatically links 'ZoneIntroMusicID'.
---@param data? table
---@return dbc.row.v1215.ZoneIntroMusicTable
function row:CreateRelated(data) end

---Gets the value of field 'ZoneMusicID'.
---@return integer value
function row:GetZoneMusicID() end

---Sets the value of field 'ZoneMusicID'.
---@param value integer
---@return dbc.row.v1215.PhaseShiftZoneSounds self
function row:SetZoneMusicID(value) end

---Navigates foreign relationship to 'ZoneMusic' via 'ZoneMusicID'.
---@return dbc.row.v1215.ZoneMusic|nil
function row:GetZoneMusic() end

---Creates a related 'ZoneMusic' row and automatically links 'ZoneMusicID'.
---@param data? table
---@return dbc.row.v1215.ZoneMusic
function row:CreateRelated(data) end

---Gets the value of field 'SoundAmbienceID'.
---@return integer value
function row:GetSoundAmbienceID() end

---Sets the value of field 'SoundAmbienceID'.
---@param value integer
---@return dbc.row.v1215.PhaseShiftZoneSounds self
function row:SetSoundAmbienceID(value) end

---Navigates foreign relationship to 'SoundAmbience' via 'SoundAmbienceID'.
---@return dbc.row.v1215.SoundAmbience|nil
function row:GetSoundAmbience() end

---Creates a related 'SoundAmbience' row and automatically links 'SoundAmbienceID'.
---@param data? table
---@return dbc.row.v1215.SoundAmbience
function row:CreateRelated(data) end

---Gets the value of field 'SoundProviderPreferencesID'.
---@return integer value
function row:GetSoundProviderPreferencesID() end

---Sets the value of field 'SoundProviderPreferencesID'.
---@param value integer
---@return dbc.row.v1215.PhaseShiftZoneSounds self
function row:SetSoundProviderPreferencesID(value) end

---Navigates foreign relationship to 'SoundProviderPreferences' via 'SoundProviderPreferencesID'.
---@return dbc.row.v1215.SoundProviderPreferences|nil
function row:GetSoundProviderPreferences() end

---Creates a related 'SoundProviderPreferences' row and automatically links 'SoundProviderPreferencesID'.
---@param data? table
---@return dbc.row.v1215.SoundProviderPreferences
function row:CreateRelated(data) end

---Gets the value of field 'UWZoneIntroMusicID'.
---@return integer value
function row:GetUWZoneIntroMusicID() end

---Sets the value of field 'UWZoneIntroMusicID'.
---@param value integer
---@return dbc.row.v1215.PhaseShiftZoneSounds self
function row:SetUWZoneIntroMusicID(value) end

---Navigates foreign relationship to 'ZoneIntroMusicTable' via 'UWZoneIntroMusicID'.
---@return dbc.row.v1215.ZoneIntroMusicTable|nil
function row:GetUWZoneIntroMusic() end

---Creates a related 'ZoneIntroMusicTable' row and automatically links 'UWZoneIntroMusicID'.
---@param data? table
---@return dbc.row.v1215.ZoneIntroMusicTable
function row:CreateRelated(data) end

---Gets the value of field 'UWZoneMusicID'.
---@return integer value
function row:GetUWZoneMusicID() end

---Sets the value of field 'UWZoneMusicID'.
---@param value integer
---@return dbc.row.v1215.PhaseShiftZoneSounds self
function row:SetUWZoneMusicID(value) end

---Navigates foreign relationship to 'ZoneMusic' via 'UWZoneMusicID'.
---@return dbc.row.v1215.ZoneMusic|nil
function row:GetUWZoneMusic() end

---Creates a related 'ZoneMusic' row and automatically links 'UWZoneMusicID'.
---@param data? table
---@return dbc.row.v1215.ZoneMusic
function row:CreateRelated(data) end

---Gets the value of field 'UWSoundAmbienceID'.
---@return integer value
function row:GetUWSoundAmbienceID() end

---Sets the value of field 'UWSoundAmbienceID'.
---@param value integer
---@return dbc.row.v1215.PhaseShiftZoneSounds self
function row:SetUWSoundAmbienceID(value) end

---Navigates foreign relationship to 'SoundAmbience' via 'UWSoundAmbienceID'.
---@return dbc.row.v1215.SoundAmbience|nil
function row:GetUWSoundAmbience() end

---Creates a related 'SoundAmbience' row and automatically links 'UWSoundAmbienceID'.
---@param data? table
---@return dbc.row.v1215.SoundAmbience
function row:CreateRelated(data) end

---Gets the value of field 'UWSoundProviderPreferencesID'.
---@return integer value
function row:GetUWSoundProviderPreferencesID() end

---Sets the value of field 'UWSoundProviderPreferencesID'.
---@param value integer
---@return dbc.row.v1215.PhaseShiftZoneSounds self
function row:SetUWSoundProviderPreferencesID(value) end

---Navigates foreign relationship to 'SoundProviderPreferences' via 'UWSoundProviderPreferencesID'.
---@return dbc.row.v1215.SoundProviderPreferences|nil
function row:GetUWSoundProviderPreferences() end

---Creates a related 'SoundProviderPreferences' row and automatically links 'UWSoundProviderPreferencesID'.
---@param data? table
---@return dbc.row.v1215.SoundProviderPreferences
function row:CreateRelated(data) end

---Table container for PhaseShiftZoneSounds (Build 12.1.5.69594).
---@class dbc.Table.v1215.PhaseShiftZoneSounds : DbcTable
---@field [integer] dbc.row.v1215.PhaseShiftZoneSounds
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PhaseShiftZoneSounds
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PhaseShiftZoneSounds|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PhaseShiftZoneSounds
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PhaseShiftZoneSounds>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PhaseShiftZoneSounds[]
function tbl:GetByRelation(foreign_id) end

return {}
