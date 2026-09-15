---@meta
-- Generated LuaLS annotations for FootstepTerrainLookup (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of FootstepTerrainLookup in build 12.1.5.69594.
---@class dbc.row.v1215.FootstepTerrainLookup : RowProxy
---@field ID integer
---@field CreatureFootstepID integer
---@field TerrainSoundID integer
---@field SoundID integer
---@field SoundIDSplash integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.FootstepTerrainLookup self
function row:SetID(value) end

---Gets the value of field 'CreatureFootstepID'.
---@return integer value
function row:GetCreatureFootstepID() end

---Sets the value of field 'CreatureFootstepID'.
---@param value integer
---@return dbc.row.v1215.FootstepTerrainLookup self
function row:SetCreatureFootstepID(value) end

---Navigates foreign relationship to 'SpellVisualEffectName' via 'CreatureFootstepID'.
---@return dbc.row.v1215.SpellVisualEffectName|nil
function row:GetCreatureFootstep() end

---Creates a related 'SpellVisualEffectName' row and automatically links 'CreatureFootstepID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualEffectName
function row:CreateRelated(data) end

---Gets the value of field 'TerrainSoundID'.
---@return integer value
function row:GetTerrainSoundID() end

---Sets the value of field 'TerrainSoundID'.
---@param value integer
---@return dbc.row.v1215.FootstepTerrainLookup self
function row:SetTerrainSoundID(value) end

---Navigates foreign relationship to 'TerrainTypeSounds' via 'TerrainSoundID'.
---@return dbc.row.v1215.TerrainTypeSounds|nil
function row:GetTerrainSound() end

---Creates a related 'TerrainTypeSounds' row and automatically links 'TerrainSoundID'.
---@param data? table
---@return dbc.row.v1215.TerrainTypeSounds
function row:CreateRelated(data) end

---Gets the value of field 'SoundID'.
---@return integer value
function row:GetSoundID() end

---Sets the value of field 'SoundID'.
---@param value integer
---@return dbc.row.v1215.FootstepTerrainLookup self
function row:SetSoundID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundID'.
---@return dbc.row.v1215.SoundEntries|nil
function row:GetSound() end

---Creates a related 'SoundEntries' row and automatically links 'SoundID'.
---@param data? table
---@return dbc.row.v1215.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'SoundIDSplash'.
---@return integer value
function row:GetSoundIDSplash() end

---Sets the value of field 'SoundIDSplash'.
---@param value integer
---@return dbc.row.v1215.FootstepTerrainLookup self
function row:SetSoundIDSplash(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundIDSplash'.
---@return dbc.row.v1215.SoundEntries|nil
function row:GetSoundIDSplash() end

---Creates a related 'SoundEntries' row and automatically links 'SoundIDSplash'.
---@param data? table
---@return dbc.row.v1215.SoundEntries
function row:CreateRelated(data) end

---Table container for FootstepTerrainLookup (Build 12.1.5.69594).
---@class dbc.Table.v1215.FootstepTerrainLookup : DbcTable
---@field [integer] dbc.row.v1215.FootstepTerrainLookup
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.FootstepTerrainLookup
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.FootstepTerrainLookup|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.FootstepTerrainLookup
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.FootstepTerrainLookup>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.FootstepTerrainLookup[]
function tbl:GetByRelation(foreign_id) end

return {}
