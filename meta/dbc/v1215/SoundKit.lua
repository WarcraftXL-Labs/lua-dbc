---@meta
-- Generated LuaLS annotations for SoundKit (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SoundKit in build 12.1.5.69594.
---@class dbc.row.v1215.SoundKit : RowProxy
---@field ID integer
---@field SoundType integer 0: Unused/Miscellaneous, 1: Spells, 2: UI, 3: Footsteps, 4: Weapons/Impact, 6: Weapons/Miss, 7: Greetings, 8: Casting, 9: Pick Up/Put Down, 10: NPC Combat, 12: Errors, 13: Ambient FX, 14: Objects, 16: Death, 17: NPC Greetings, 18: Test/Temporary, 19: Armor/Foley, 20: Footsteps, 21: Water/Character, 22: Water/Liquid, 23: Tradeskills, 24: Misc. FX, 25: Doodads, 26: Spell Fizzle, 27: NPC Loops, 28: Zone Music, 29: Emotes, 30: Narration Music, 31: Narration, 50: Zone Ambience, 52: Zone Emitters, 53: Vehicle
---@field VolumeFloat number
---@field Flags integer 0x20: no duplicates, 0x200: looping, 0x400: vary pitch, 0x800: vary volume
---@field MinDistance number
---@field DistanceCutoff number
---@field EAXDef integer
---@field SoundKitAdvancedID integer
---@field VolumeVariationPlus number
---@field VolumeVariationMinus number
---@field PitchVariationPlus number
---@field PitchVariationMinus number
---@field DialogType integer
---@field PitchAdjust number
---@field BusOverwriteID integer
---@field MaxInstances integer
---@field SoundMixGroupID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SoundKit self
function row:SetID(value) end

---Navigates foreign relationship to 'SoundKitName' via 'ID'.
---@return dbc.row.v1215.SoundKitName|nil
function row:GetID() end

---Creates a related 'SoundKitName' row and automatically links 'ID'.
---@param data? table
---@return dbc.row.v1215.SoundKitName
function row:CreateRelated(data) end

---Gets the value of field 'SoundType'.
---@return integer value
function row:GetSoundType() end

---Sets the value of field 'SoundType'.
---@param value integer
---@return dbc.row.v1215.SoundKit self
function row:SetSoundType(value) end

---Gets the value of field 'VolumeFloat'.
---@return number value
function row:GetVolumeFloat() end

---Sets the value of field 'VolumeFloat'.
---@param value number
---@return dbc.row.v1215.SoundKit self
function row:SetVolumeFloat(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.SoundKit self
function row:SetFlags(value) end

---Gets the value of field 'MinDistance'.
---@return number value
function row:GetMinDistance() end

---Sets the value of field 'MinDistance'.
---@param value number
---@return dbc.row.v1215.SoundKit self
function row:SetMinDistance(value) end

---Gets the value of field 'DistanceCutoff'.
---@return number value
function row:GetDistanceCutoff() end

---Sets the value of field 'DistanceCutoff'.
---@param value number
---@return dbc.row.v1215.SoundKit self
function row:SetDistanceCutoff(value) end

---Gets the value of field 'EAXDef'.
---@return integer value
function row:GetEAXDef() end

---Sets the value of field 'EAXDef'.
---@param value integer
---@return dbc.row.v1215.SoundKit self
function row:SetEAXDef(value) end

---Gets the value of field 'SoundKitAdvancedID'.
---@return integer value
function row:GetSoundKitAdvancedID() end

---Sets the value of field 'SoundKitAdvancedID'.
---@param value integer
---@return dbc.row.v1215.SoundKit self
function row:SetSoundKitAdvancedID(value) end

---Navigates foreign relationship to 'SoundKitAdvanced' via 'SoundKitAdvancedID'.
---@return dbc.row.v1215.SoundKitAdvanced|nil
function row:GetSoundKitAdvanced() end

---Creates a related 'SoundKitAdvanced' row and automatically links 'SoundKitAdvancedID'.
---@param data? table
---@return dbc.row.v1215.SoundKitAdvanced
function row:CreateRelated(data) end

---Gets the value of field 'VolumeVariationPlus'.
---@return number value
function row:GetVolumeVariationPlus() end

---Sets the value of field 'VolumeVariationPlus'.
---@param value number
---@return dbc.row.v1215.SoundKit self
function row:SetVolumeVariationPlus(value) end

---Gets the value of field 'VolumeVariationMinus'.
---@return number value
function row:GetVolumeVariationMinus() end

---Sets the value of field 'VolumeVariationMinus'.
---@param value number
---@return dbc.row.v1215.SoundKit self
function row:SetVolumeVariationMinus(value) end

---Gets the value of field 'PitchVariationPlus'.
---@return number value
function row:GetPitchVariationPlus() end

---Sets the value of field 'PitchVariationPlus'.
---@param value number
---@return dbc.row.v1215.SoundKit self
function row:SetPitchVariationPlus(value) end

---Gets the value of field 'PitchVariationMinus'.
---@return number value
function row:GetPitchVariationMinus() end

---Sets the value of field 'PitchVariationMinus'.
---@param value number
---@return dbc.row.v1215.SoundKit self
function row:SetPitchVariationMinus(value) end

---Gets the value of field 'DialogType'.
---@return integer value
function row:GetDialogType() end

---Sets the value of field 'DialogType'.
---@param value integer
---@return dbc.row.v1215.SoundKit self
function row:SetDialogType(value) end

---Gets the value of field 'PitchAdjust'.
---@return number value
function row:GetPitchAdjust() end

---Sets the value of field 'PitchAdjust'.
---@param value number
---@return dbc.row.v1215.SoundKit self
function row:SetPitchAdjust(value) end

---Gets the value of field 'BusOverwriteID'.
---@return integer value
function row:GetBusOverwriteID() end

---Sets the value of field 'BusOverwriteID'.
---@param value integer
---@return dbc.row.v1215.SoundKit self
function row:SetBusOverwriteID(value) end

---Navigates foreign relationship to 'BusOverwrite' via 'BusOverwriteID'.
---@return dbc.row.v1215.BusOverwrite|nil
function row:GetBusOverwrite() end

---Creates a related 'BusOverwrite' row and automatically links 'BusOverwriteID'.
---@param data? table
---@return dbc.row.v1215.BusOverwrite
function row:CreateRelated(data) end

---Gets the value of field 'MaxInstances'.
---@return integer value
function row:GetMaxInstances() end

---Sets the value of field 'MaxInstances'.
---@param value integer
---@return dbc.row.v1215.SoundKit self
function row:SetMaxInstances(value) end

---Gets the value of field 'SoundMixGroupID'.
---@return integer value
function row:GetSoundMixGroupID() end

---Sets the value of field 'SoundMixGroupID'.
---@param value integer
---@return dbc.row.v1215.SoundKit self
function row:SetSoundMixGroupID(value) end

---Navigates foreign relationship to 'SoundMixGroup' via 'SoundMixGroupID'.
---@return dbc.row.v1215.SoundMixGroup|nil
function row:GetSoundMixGroup() end

---Creates a related 'SoundMixGroup' row and automatically links 'SoundMixGroupID'.
---@param data? table
---@return dbc.row.v1215.SoundMixGroup
function row:CreateRelated(data) end

---Table container for SoundKit (Build 12.1.5.69594).
---@class dbc.Table.v1215.SoundKit : DbcTable
---@field [integer] dbc.row.v1215.SoundKit
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SoundKit
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SoundKit|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SoundKit
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SoundKit>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SoundKit[]
function tbl:GetByRelation(foreign_id) end

return {}
