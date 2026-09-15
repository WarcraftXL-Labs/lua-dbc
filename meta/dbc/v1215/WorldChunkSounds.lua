---@meta
-- Generated LuaLS annotations for WorldChunkSounds (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of WorldChunkSounds in build 12.1.5.69594.
---@class dbc.row.v1215.WorldChunkSounds : RowProxy
---@field ID integer
---@field MapID integer
---@field SoundOverrideID integer
---@field MusicOverrideID integer
---@field ChunkX integer
---@field ChunkY integer
---@field SubchunkX integer
---@field SubchunkY integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.WorldChunkSounds self
function row:SetID(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.WorldChunkSounds self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'SoundOverrideID'.
---@return integer value
function row:GetSoundOverrideID() end

---Sets the value of field 'SoundOverrideID'.
---@param value integer
---@return dbc.row.v1215.WorldChunkSounds self
function row:SetSoundOverrideID(value) end

---Navigates foreign relationship to 'SoundOverride' via 'SoundOverrideID'.
---@return dbc.row.v1215.SoundOverride|nil
function row:GetSoundOverride() end

---Creates a related 'SoundOverride' row and automatically links 'SoundOverrideID'.
---@param data? table
---@return dbc.row.v1215.SoundOverride
function row:CreateRelated(data) end

---Gets the value of field 'MusicOverrideID'.
---@return integer value
function row:GetMusicOverrideID() end

---Sets the value of field 'MusicOverrideID'.
---@param value integer
---@return dbc.row.v1215.WorldChunkSounds self
function row:SetMusicOverrideID(value) end

---Navigates foreign relationship to 'MusicOverride' via 'MusicOverrideID'.
---@return dbc.row.v1215.MusicOverride|nil
function row:GetMusicOverride() end

---Creates a related 'MusicOverride' row and automatically links 'MusicOverrideID'.
---@param data? table
---@return dbc.row.v1215.MusicOverride
function row:CreateRelated(data) end

---Gets the value of field 'ChunkX'.
---@return integer value
function row:GetChunkX() end

---Sets the value of field 'ChunkX'.
---@param value integer
---@return dbc.row.v1215.WorldChunkSounds self
function row:SetChunkX(value) end

---Gets the value of field 'ChunkY'.
---@return integer value
function row:GetChunkY() end

---Sets the value of field 'ChunkY'.
---@param value integer
---@return dbc.row.v1215.WorldChunkSounds self
function row:SetChunkY(value) end

---Gets the value of field 'SubchunkX'.
---@return integer value
function row:GetSubchunkX() end

---Sets the value of field 'SubchunkX'.
---@param value integer
---@return dbc.row.v1215.WorldChunkSounds self
function row:SetSubchunkX(value) end

---Gets the value of field 'SubchunkY'.
---@return integer value
function row:GetSubchunkY() end

---Sets the value of field 'SubchunkY'.
---@param value integer
---@return dbc.row.v1215.WorldChunkSounds self
function row:SetSubchunkY(value) end

---Table container for WorldChunkSounds (Build 12.1.5.69594).
---@class dbc.Table.v1215.WorldChunkSounds : DbcTable
---@field [integer] dbc.row.v1215.WorldChunkSounds
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.WorldChunkSounds
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.WorldChunkSounds|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.WorldChunkSounds
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.WorldChunkSounds>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.WorldChunkSounds[]
function tbl:GetByRelation(foreign_id) end

return {}
