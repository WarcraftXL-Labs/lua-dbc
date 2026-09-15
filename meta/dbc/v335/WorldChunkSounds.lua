---@meta
-- Generated LuaLS annotations for WorldChunkSounds (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of WorldChunkSounds in build 3.3.5.12340.
---@class dbc.row.v335.WorldChunkSounds : RowProxy
---@field ID integer
---@field ChunkX integer
---@field ChunkY integer
---@field SubchunkX integer
---@field SubchunkY integer
---@field ZoneIntroMusicID integer
---@field ZoneMusicID integer
---@field SoundAmbienceID integer
---@field SoundProviderPreferencesID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.WorldChunkSounds self
function row:SetID(value) end

---Gets the value of field 'ChunkX'.
---@return integer value
function row:GetChunkX() end

---Sets the value of field 'ChunkX'.
---@param value integer
---@return dbc.row.v335.WorldChunkSounds self
function row:SetChunkX(value) end

---Gets the value of field 'ChunkY'.
---@return integer value
function row:GetChunkY() end

---Sets the value of field 'ChunkY'.
---@param value integer
---@return dbc.row.v335.WorldChunkSounds self
function row:SetChunkY(value) end

---Gets the value of field 'SubchunkX'.
---@return integer value
function row:GetSubchunkX() end

---Sets the value of field 'SubchunkX'.
---@param value integer
---@return dbc.row.v335.WorldChunkSounds self
function row:SetSubchunkX(value) end

---Gets the value of field 'SubchunkY'.
---@return integer value
function row:GetSubchunkY() end

---Sets the value of field 'SubchunkY'.
---@param value integer
---@return dbc.row.v335.WorldChunkSounds self
function row:SetSubchunkY(value) end

---Gets the value of field 'ZoneIntroMusicID'.
---@return integer value
function row:GetZoneIntroMusicID() end

---Sets the value of field 'ZoneIntroMusicID'.
---@param value integer
---@return dbc.row.v335.WorldChunkSounds self
function row:SetZoneIntroMusicID(value) end

---Navigates foreign relationship to 'ZoneIntroMusic' via 'ZoneIntroMusicID'.
---@return dbc.row.v335.ZoneIntroMusic|nil
function row:GetZoneIntroMusic() end

---Creates a related 'ZoneIntroMusic' row and automatically links 'ZoneIntroMusicID'.
---@param data? table
---@return dbc.row.v335.ZoneIntroMusic
function row:CreateRelated(data) end

---Gets the value of field 'ZoneMusicID'.
---@return integer value
function row:GetZoneMusicID() end

---Sets the value of field 'ZoneMusicID'.
---@param value integer
---@return dbc.row.v335.WorldChunkSounds self
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
---@return dbc.row.v335.WorldChunkSounds self
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
---@return dbc.row.v335.WorldChunkSounds self
function row:SetSoundProviderPreferencesID(value) end

---Navigates foreign relationship to 'SoundProviderPreferences' via 'SoundProviderPreferencesID'.
---@return dbc.row.v335.SoundProviderPreferences|nil
function row:GetSoundProviderPreferences() end

---Creates a related 'SoundProviderPreferences' row and automatically links 'SoundProviderPreferencesID'.
---@param data? table
---@return dbc.row.v335.SoundProviderPreferences
function row:CreateRelated(data) end

---Table container for WorldChunkSounds (Build 3.3.5.12340).
---@class dbc.Table.v335.WorldChunkSounds : DbcTable
---@field [integer] dbc.row.v335.WorldChunkSounds
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.WorldChunkSounds
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.WorldChunkSounds|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.WorldChunkSounds
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.WorldChunkSounds>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.WorldChunkSounds[]
function tbl:GetByRelation(foreign_id) end

return {}
