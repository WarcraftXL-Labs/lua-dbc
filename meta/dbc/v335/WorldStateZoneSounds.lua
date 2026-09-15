---@meta
-- Generated LuaLS annotations for WorldStateZoneSounds (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of WorldStateZoneSounds in build 3.3.5.12340.
---@class dbc.row.v335.WorldStateZoneSounds : RowProxy
---@field WorldStateID integer
---@field WorldStateValue integer
---@field AreaID integer
---@field WMOAreaID integer
---@field ZoneIntroMusicID integer
---@field ZoneMusicID integer
---@field SoundAmbienceID integer
---@field SoundProviderPreferencesID integer

local row = {}

---Gets the value of field 'WorldStateID'.
---@return integer value
function row:GetWorldStateID() end

---Sets the value of field 'WorldStateID'.
---@param value integer
---@return dbc.row.v335.WorldStateZoneSounds self
function row:SetWorldStateID(value) end

---Navigates foreign relationship to 'WorldState' via 'WorldStateID'.
---@return dbc.row.v335.WorldState|nil
function row:GetWorldState() end

---Creates a related 'WorldState' row and automatically links 'WorldStateID'.
---@param data? table
---@return dbc.row.v335.WorldState
function row:CreateRelated(data) end

---Gets the value of field 'WorldStateValue'.
---@return integer value
function row:GetWorldStateValue() end

---Sets the value of field 'WorldStateValue'.
---@param value integer
---@return dbc.row.v335.WorldStateZoneSounds self
function row:SetWorldStateValue(value) end

---Gets the value of field 'AreaID'.
---@return integer value
function row:GetAreaID() end

---Sets the value of field 'AreaID'.
---@param value integer
---@return dbc.row.v335.WorldStateZoneSounds self
function row:SetAreaID(value) end

---Navigates foreign relationship to 'AreaTable' via 'AreaID'.
---@return dbc.row.v335.AreaTable|nil
function row:GetArea() end

---Creates a related 'AreaTable' row and automatically links 'AreaID'.
---@param data? table
---@return dbc.row.v335.AreaTable
function row:CreateRelated(data) end

---Gets the value of field 'WMOAreaID'.
---@return integer value
function row:GetWMOAreaID() end

---Sets the value of field 'WMOAreaID'.
---@param value integer
---@return dbc.row.v335.WorldStateZoneSounds self
function row:SetWMOAreaID(value) end

---Navigates foreign relationship to 'WMOAreaTable' via 'WMOAreaID'.
---@return dbc.row.v335.WMOAreaTable|nil
function row:GetWMOArea() end

---Creates a related 'WMOAreaTable' row and automatically links 'WMOAreaID'.
---@param data? table
---@return dbc.row.v335.WMOAreaTable
function row:CreateRelated(data) end

---Gets the value of field 'ZoneIntroMusicID'.
---@return integer value
function row:GetZoneIntroMusicID() end

---Sets the value of field 'ZoneIntroMusicID'.
---@param value integer
---@return dbc.row.v335.WorldStateZoneSounds self
function row:SetZoneIntroMusicID(value) end

---Navigates foreign relationship to 'ZoneIntroMusicTable' via 'ZoneIntroMusicID'.
---@return dbc.row.v335.ZoneIntroMusicTable|nil
function row:GetZoneIntroMusic() end

---Creates a related 'ZoneIntroMusicTable' row and automatically links 'ZoneIntroMusicID'.
---@param data? table
---@return dbc.row.v335.ZoneIntroMusicTable
function row:CreateRelated(data) end

---Gets the value of field 'ZoneMusicID'.
---@return integer value
function row:GetZoneMusicID() end

---Sets the value of field 'ZoneMusicID'.
---@param value integer
---@return dbc.row.v335.WorldStateZoneSounds self
function row:SetZoneMusicID(value) end

---Navigates foreign relationship to 'ZoneMusic' via 'ZoneMusicID'.
---@return dbc.row.v335.ZoneMusic|nil
function row:GetZoneMusic() end

---Creates a related 'ZoneMusic' row and automatically links 'ZoneMusicID'.
---@param data? table
---@return dbc.row.v335.ZoneMusic
function row:CreateRelated(data) end

---Gets the value of field 'SoundAmbienceID'.
---@return integer value
function row:GetSoundAmbienceID() end

---Sets the value of field 'SoundAmbienceID'.
---@param value integer
---@return dbc.row.v335.WorldStateZoneSounds self
function row:SetSoundAmbienceID(value) end

---Navigates foreign relationship to 'SoundAmbience' via 'SoundAmbienceID'.
---@return dbc.row.v335.SoundAmbience|nil
function row:GetSoundAmbience() end

---Creates a related 'SoundAmbience' row and automatically links 'SoundAmbienceID'.
---@param data? table
---@return dbc.row.v335.SoundAmbience
function row:CreateRelated(data) end

---Gets the value of field 'SoundProviderPreferencesID'.
---@return integer value
function row:GetSoundProviderPreferencesID() end

---Sets the value of field 'SoundProviderPreferencesID'.
---@param value integer
---@return dbc.row.v335.WorldStateZoneSounds self
function row:SetSoundProviderPreferencesID(value) end

---Navigates foreign relationship to 'SoundProviderPreferences' via 'SoundProviderPreferencesID'.
---@return dbc.row.v335.SoundProviderPreferences|nil
function row:GetSoundProviderPreferences() end

---Creates a related 'SoundProviderPreferences' row and automatically links 'SoundProviderPreferencesID'.
---@param data? table
---@return dbc.row.v335.SoundProviderPreferences
function row:CreateRelated(data) end

---Table container for WorldStateZoneSounds (Build 3.3.5.12340).
---@class dbc.Table.v335.WorldStateZoneSounds : DbcTable
---@field [integer] dbc.row.v335.WorldStateZoneSounds
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.WorldStateZoneSounds
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.WorldStateZoneSounds|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.WorldStateZoneSounds
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.WorldStateZoneSounds>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.WorldStateZoneSounds[]
function tbl:GetByRelation(foreign_id) end

return {}
