---@meta
-- Generated LuaLS annotations for SpellVisualMissile (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellVisualMissile in build 12.1.5.69594.
---@class dbc.row.v1215.SpellVisualMissile : RowProxy
---@field CastOffset number[]
---@field ImpactOffset number[]
---@field ID integer
---@field SpellVisualEffectNameID integer
---@field SoundEntriesID integer
---@field Attachment integer
---@field DestinationAttachment integer
---@field CastPositionerID integer
---@field ImpactPositionerID integer
---@field FollowGroundHeight integer
---@field FollowGroundDropSpeed integer
---@field FollowGroundApproach integer
---@field Flags integer
---@field SpellMissileMotionID integer
---@field AnimKitID integer
---@field ClutterLevel integer See SpellVisualKit::ClutterLevel.
---@field DecayTimeAfterImpact integer defaults to 5000 if not set here - read in CMissile::HitTarget, stored in CMissile::AttachToVictim, checked by CUnitDisplay::UpdateDecayMissiles
---@field Field_12_1_5_69594_017 integer
---@field Field_12_1_5_69594_018 integer
---@field Field_12_1_5_69594_019 integer
---@field Field_12_1_5_69594_020 integer
---@field Field_12_1_5_69594_021 integer
---@field SpellVisualMissileSetID integer

local row = {}

---Gets the value of field 'CastOffset'.
---@return number[] value
function row:GetCastOffset() end

---Sets the value of field 'CastOffset'.
---@param value number[]
---@return dbc.row.v1215.SpellVisualMissile self
function row:SetCastOffset(value) end

---Gets element at 1-based index in 'CastOffset'.
---@param index integer
---@return number value
function row:GetCastOffsetItem(index) end

---Gets the value of field 'ImpactOffset'.
---@return number[] value
function row:GetImpactOffset() end

---Sets the value of field 'ImpactOffset'.
---@param value number[]
---@return dbc.row.v1215.SpellVisualMissile self
function row:SetImpactOffset(value) end

---Gets element at 1-based index in 'ImpactOffset'.
---@param index integer
---@return number value
function row:GetImpactOffsetItem(index) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualMissile self
function row:SetID(value) end

---Gets the value of field 'SpellVisualEffectNameID'.
---@return integer value
function row:GetSpellVisualEffectNameID() end

---Sets the value of field 'SpellVisualEffectNameID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualMissile self
function row:SetSpellVisualEffectNameID(value) end

---Navigates foreign relationship to 'SpellVisualEffectName' via 'SpellVisualEffectNameID'.
---@return dbc.row.v1215.SpellVisualEffectName|nil
function row:GetSpellVisualEffectName() end

---Creates a related 'SpellVisualEffectName' row and automatically links 'SpellVisualEffectNameID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualEffectName
function row:CreateRelated(data) end

---Gets the value of field 'SoundEntriesID'.
---@return integer value
function row:GetSoundEntriesID() end

---Sets the value of field 'SoundEntriesID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualMissile self
function row:SetSoundEntriesID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundEntriesID'.
---@return dbc.row.v1215.SoundEntries|nil
function row:GetSoundEntries() end

---Creates a related 'SoundEntries' row and automatically links 'SoundEntriesID'.
---@param data? table
---@return dbc.row.v1215.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'Attachment'.
---@return integer value
function row:GetAttachment() end

---Sets the value of field 'Attachment'.
---@param value integer
---@return dbc.row.v1215.SpellVisualMissile self
function row:SetAttachment(value) end

---Gets the value of field 'DestinationAttachment'.
---@return integer value
function row:GetDestinationAttachment() end

---Sets the value of field 'DestinationAttachment'.
---@param value integer
---@return dbc.row.v1215.SpellVisualMissile self
function row:SetDestinationAttachment(value) end

---Gets the value of field 'CastPositionerID'.
---@return integer value
function row:GetCastPositionerID() end

---Sets the value of field 'CastPositionerID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualMissile self
function row:SetCastPositionerID(value) end

---Navigates foreign relationship to 'CastPositioner' via 'CastPositionerID'.
---@return dbc.row.v1215.CastPositioner|nil
function row:GetCastPositioner() end

---Creates a related 'CastPositioner' row and automatically links 'CastPositionerID'.
---@param data? table
---@return dbc.row.v1215.CastPositioner
function row:CreateRelated(data) end

---Gets the value of field 'ImpactPositionerID'.
---@return integer value
function row:GetImpactPositionerID() end

---Sets the value of field 'ImpactPositionerID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualMissile self
function row:SetImpactPositionerID(value) end

---Navigates foreign relationship to 'ImpactPositioner' via 'ImpactPositionerID'.
---@return dbc.row.v1215.ImpactPositioner|nil
function row:GetImpactPositioner() end

---Creates a related 'ImpactPositioner' row and automatically links 'ImpactPositionerID'.
---@param data? table
---@return dbc.row.v1215.ImpactPositioner
function row:CreateRelated(data) end

---Gets the value of field 'FollowGroundHeight'.
---@return integer value
function row:GetFollowGroundHeight() end

---Sets the value of field 'FollowGroundHeight'.
---@param value integer
---@return dbc.row.v1215.SpellVisualMissile self
function row:SetFollowGroundHeight(value) end

---Gets the value of field 'FollowGroundDropSpeed'.
---@return integer value
function row:GetFollowGroundDropSpeed() end

---Sets the value of field 'FollowGroundDropSpeed'.
---@param value integer
---@return dbc.row.v1215.SpellVisualMissile self
function row:SetFollowGroundDropSpeed(value) end

---Gets the value of field 'FollowGroundApproach'.
---@return integer value
function row:GetFollowGroundApproach() end

---Sets the value of field 'FollowGroundApproach'.
---@param value integer
---@return dbc.row.v1215.SpellVisualMissile self
function row:SetFollowGroundApproach(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.SpellVisualMissile self
function row:SetFlags(value) end

---Gets the value of field 'SpellMissileMotionID'.
---@return integer value
function row:GetSpellMissileMotionID() end

---Sets the value of field 'SpellMissileMotionID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualMissile self
function row:SetSpellMissileMotionID(value) end

---Navigates foreign relationship to 'SpellMissileMotion' via 'SpellMissileMotionID'.
---@return dbc.row.v1215.SpellMissileMotion|nil
function row:GetSpellMissileMotion() end

---Creates a related 'SpellMissileMotion' row and automatically links 'SpellMissileMotionID'.
---@param data? table
---@return dbc.row.v1215.SpellMissileMotion
function row:CreateRelated(data) end

---Gets the value of field 'AnimKitID'.
---@return integer value
function row:GetAnimKitID() end

---Sets the value of field 'AnimKitID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualMissile self
function row:SetAnimKitID(value) end

---Navigates foreign relationship to 'AnimKit' via 'AnimKitID'.
---@return dbc.row.v1215.AnimKit|nil
function row:GetAnimKit() end

---Creates a related 'AnimKit' row and automatically links 'AnimKitID'.
---@param data? table
---@return dbc.row.v1215.AnimKit
function row:CreateRelated(data) end

---Gets the value of field 'ClutterLevel'.
---@return integer value
function row:GetClutterLevel() end

---Sets the value of field 'ClutterLevel'.
---@param value integer
---@return dbc.row.v1215.SpellVisualMissile self
function row:SetClutterLevel(value) end

---Gets the value of field 'DecayTimeAfterImpact'.
---@return integer value
function row:GetDecayTimeAfterImpact() end

---Sets the value of field 'DecayTimeAfterImpact'.
---@param value integer
---@return dbc.row.v1215.SpellVisualMissile self
function row:SetDecayTimeAfterImpact(value) end

---Gets the value of field 'Field_12_1_5_69594_017'.
---@return integer value
function row:GetField_12_1_5_69594_017() end

---Sets the value of field 'Field_12_1_5_69594_017'.
---@param value integer
---@return dbc.row.v1215.SpellVisualMissile self
function row:SetField_12_1_5_69594_017(value) end

---Gets the value of field 'Field_12_1_5_69594_018'.
---@return integer value
function row:GetField_12_1_5_69594_018() end

---Sets the value of field 'Field_12_1_5_69594_018'.
---@param value integer
---@return dbc.row.v1215.SpellVisualMissile self
function row:SetField_12_1_5_69594_018(value) end

---Gets the value of field 'Field_12_1_5_69594_019'.
---@return integer value
function row:GetField_12_1_5_69594_019() end

---Sets the value of field 'Field_12_1_5_69594_019'.
---@param value integer
---@return dbc.row.v1215.SpellVisualMissile self
function row:SetField_12_1_5_69594_019(value) end

---Gets the value of field 'Field_12_1_5_69594_020'.
---@return integer value
function row:GetField_12_1_5_69594_020() end

---Sets the value of field 'Field_12_1_5_69594_020'.
---@param value integer
---@return dbc.row.v1215.SpellVisualMissile self
function row:SetField_12_1_5_69594_020(value) end

---Gets the value of field 'Field_12_1_5_69594_021'.
---@return integer value
function row:GetField_12_1_5_69594_021() end

---Sets the value of field 'Field_12_1_5_69594_021'.
---@param value integer
---@return dbc.row.v1215.SpellVisualMissile self
function row:SetField_12_1_5_69594_021(value) end

---Gets the value of field 'SpellVisualMissileSetID'.
---@return integer value
function row:GetSpellVisualMissileSetID() end

---Sets the value of field 'SpellVisualMissileSetID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualMissile self
function row:SetSpellVisualMissileSetID(value) end

---Navigates foreign relationship to 'SpellVisualMissileSet' via 'SpellVisualMissileSetID'.
---@return dbc.row.v1215.SpellVisualMissileSet|nil
function row:GetSpellVisualMissileSet() end

---Creates a related 'SpellVisualMissileSet' row and automatically links 'SpellVisualMissileSetID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualMissileSet
function row:CreateRelated(data) end

---Table container for SpellVisualMissile (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellVisualMissile : DbcTable
---@field [integer] dbc.row.v1215.SpellVisualMissile
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellVisualMissile
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellVisualMissile|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellVisualMissile
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellVisualMissile>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellVisualMissile[]
function tbl:GetByRelation(foreign_id) end

return {}
