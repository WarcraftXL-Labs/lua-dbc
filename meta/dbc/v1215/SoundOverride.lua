---@meta
-- Generated LuaLS annotations for SoundOverride (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SoundOverride in build 12.1.5.69594.
---@class dbc.row.v1215.SoundOverride : RowProxy
---@field ID integer
---@field ZoneIntroMusicID integer
---@field ZoneMusicID integer
---@field SoundAmbienceID integer
---@field SoundProviderPreferencesID integer
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SoundOverride self
function row:SetID(value) end

---Gets the value of field 'ZoneIntroMusicID'.
---@return integer value
function row:GetZoneIntroMusicID() end

---Sets the value of field 'ZoneIntroMusicID'.
---@param value integer
---@return dbc.row.v1215.SoundOverride self
function row:SetZoneIntroMusicID(value) end

---Navigates foreign relationship to 'ZoneIntroMusic' via 'ZoneIntroMusicID'.
---@return dbc.row.v1215.ZoneIntroMusic|nil
function row:GetZoneIntroMusic() end

---Creates a related 'ZoneIntroMusic' row and automatically links 'ZoneIntroMusicID'.
---@param data? table
---@return dbc.row.v1215.ZoneIntroMusic
function row:CreateRelated(data) end

---Gets the value of field 'ZoneMusicID'.
---@return integer value
function row:GetZoneMusicID() end

---Sets the value of field 'ZoneMusicID'.
---@param value integer
---@return dbc.row.v1215.SoundOverride self
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
---@return dbc.row.v1215.SoundOverride self
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
---@return dbc.row.v1215.SoundOverride self
function row:SetSoundProviderPreferencesID(value) end

---Navigates foreign relationship to 'SoundProviderPreferences' via 'SoundProviderPreferencesID'.
---@return dbc.row.v1215.SoundProviderPreferences|nil
function row:GetSoundProviderPreferences() end

---Creates a related 'SoundProviderPreferences' row and automatically links 'SoundProviderPreferencesID'.
---@param data? table
---@return dbc.row.v1215.SoundProviderPreferences
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.SoundOverride self
function row:SetFlags(value) end

---Table container for SoundOverride (Build 12.1.5.69594).
---@class dbc.Table.v1215.SoundOverride : DbcTable
---@field [integer] dbc.row.v1215.SoundOverride
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SoundOverride
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SoundOverride|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SoundOverride
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SoundOverride>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SoundOverride[]
function tbl:GetByRelation(foreign_id) end

return {}
