---@meta
-- Generated LuaLS annotations for DeathThudLookups (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of DeathThudLookups in build 12.1.5.69594.
---@class dbc.row.v1215.DeathThudLookups : RowProxy
---@field ID integer
---@field SizeClass integer
---@field TerrainTypeSoundID integer
---@field SoundEntryID integer
---@field SoundEntryIDWater integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.DeathThudLookups self
function row:SetID(value) end

---Gets the value of field 'SizeClass'.
---@return integer value
function row:GetSizeClass() end

---Sets the value of field 'SizeClass'.
---@param value integer
---@return dbc.row.v1215.DeathThudLookups self
function row:SetSizeClass(value) end

---Gets the value of field 'TerrainTypeSoundID'.
---@return integer value
function row:GetTerrainTypeSoundID() end

---Sets the value of field 'TerrainTypeSoundID'.
---@param value integer
---@return dbc.row.v1215.DeathThudLookups self
function row:SetTerrainTypeSoundID(value) end

---Navigates foreign relationship to 'TerrainTypeSounds' via 'TerrainTypeSoundID'.
---@return dbc.row.v1215.TerrainTypeSounds|nil
function row:GetTerrainTypeSound() end

---Creates a related 'TerrainTypeSounds' row and automatically links 'TerrainTypeSoundID'.
---@param data? table
---@return dbc.row.v1215.TerrainTypeSounds
function row:CreateRelated(data) end

---Gets the value of field 'SoundEntryID'.
---@return integer value
function row:GetSoundEntryID() end

---Sets the value of field 'SoundEntryID'.
---@param value integer
---@return dbc.row.v1215.DeathThudLookups self
function row:SetSoundEntryID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundEntryID'.
---@return dbc.row.v1215.SoundEntries|nil
function row:GetSoundEntry() end

---Creates a related 'SoundEntries' row and automatically links 'SoundEntryID'.
---@param data? table
---@return dbc.row.v1215.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'SoundEntryIDWater'.
---@return integer value
function row:GetSoundEntryIDWater() end

---Sets the value of field 'SoundEntryIDWater'.
---@param value integer
---@return dbc.row.v1215.DeathThudLookups self
function row:SetSoundEntryIDWater(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundEntryIDWater'.
---@return dbc.row.v1215.SoundEntries|nil
function row:GetSoundEntryIDWater() end

---Creates a related 'SoundEntries' row and automatically links 'SoundEntryIDWater'.
---@param data? table
---@return dbc.row.v1215.SoundEntries
function row:CreateRelated(data) end

---Table container for DeathThudLookups (Build 12.1.5.69594).
---@class dbc.Table.v1215.DeathThudLookups : DbcTable
---@field [integer] dbc.row.v1215.DeathThudLookups
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.DeathThudLookups
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.DeathThudLookups|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.DeathThudLookups
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.DeathThudLookups>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.DeathThudLookups[]
function tbl:GetByRelation(foreign_id) end

return {}
