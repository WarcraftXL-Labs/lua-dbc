---@meta
-- Generated LuaLS annotations for SpellVisual (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellVisual in build 12.1.5.69594.
---@class dbc.row.v1215.SpellVisual : RowProxy
---@field ID integer
---@field MissileCastOffset number[]
---@field MissileImpactOffset number[]
---@field StateKit integer
---@field AnimEventSoundID integer
---@field Flags integer
---@field MissileAttachment integer
---@field MissileDestinationAttachment integer
---@field MissileCastPositionerID integer
---@field MissileImpactPositionerID integer
---@field MissileTargetingKit integer
---@field HostileSpellVisualID integer
---@field CasterSpellVisualID integer
---@field SpellVisualMissileSetID integer
---@field DamageNumberDelay integer
---@field LowViolenceSpellVisualID integer
---@field RaidSpellVisualMissileSetID integer
---@field ReducedUnexpectedCameraMovementSpellVisualID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellVisual self
function row:SetID(value) end

---Gets the value of field 'MissileCastOffset'.
---@return number[] value
function row:GetMissileCastOffset() end

---Sets the value of field 'MissileCastOffset'.
---@param value number[]
---@return dbc.row.v1215.SpellVisual self
function row:SetMissileCastOffset(value) end

---Gets element at 1-based index in 'MissileCastOffset'.
---@param index integer
---@return number value
function row:GetMissileCastOffsetItem(index) end

---Gets the value of field 'MissileImpactOffset'.
---@return number[] value
function row:GetMissileImpactOffset() end

---Sets the value of field 'MissileImpactOffset'.
---@param value number[]
---@return dbc.row.v1215.SpellVisual self
function row:SetMissileImpactOffset(value) end

---Gets element at 1-based index in 'MissileImpactOffset'.
---@param index integer
---@return number value
function row:GetMissileImpactOffsetItem(index) end

---Gets the value of field 'StateKit'.
---@return integer value
function row:GetStateKit() end

---Sets the value of field 'StateKit'.
---@param value integer
---@return dbc.row.v1215.SpellVisual self
function row:SetStateKit(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'StateKit'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetStateKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'StateKit'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'AnimEventSoundID'.
---@return integer value
function row:GetAnimEventSoundID() end

---Sets the value of field 'AnimEventSoundID'.
---@param value integer
---@return dbc.row.v1215.SpellVisual self
function row:SetAnimEventSoundID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'AnimEventSoundID'.
---@return dbc.row.v1215.SoundEntries|nil
function row:GetAnimEventSound() end

---Creates a related 'SoundEntries' row and automatically links 'AnimEventSoundID'.
---@param data? table
---@return dbc.row.v1215.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.SpellVisual self
function row:SetFlags(value) end

---Gets the value of field 'MissileAttachment'.
---@return integer value
function row:GetMissileAttachment() end

---Sets the value of field 'MissileAttachment'.
---@param value integer
---@return dbc.row.v1215.SpellVisual self
function row:SetMissileAttachment(value) end

---Gets the value of field 'MissileDestinationAttachment'.
---@return integer value
function row:GetMissileDestinationAttachment() end

---Sets the value of field 'MissileDestinationAttachment'.
---@param value integer
---@return dbc.row.v1215.SpellVisual self
function row:SetMissileDestinationAttachment(value) end

---Gets the value of field 'MissileCastPositionerID'.
---@return integer value
function row:GetMissileCastPositionerID() end

---Sets the value of field 'MissileCastPositionerID'.
---@param value integer
---@return dbc.row.v1215.SpellVisual self
function row:SetMissileCastPositionerID(value) end

---Navigates foreign relationship to 'MissileCastPositioner' via 'MissileCastPositionerID'.
---@return dbc.row.v1215.MissileCastPositioner|nil
function row:GetMissileCastPositioner() end

---Creates a related 'MissileCastPositioner' row and automatically links 'MissileCastPositionerID'.
---@param data? table
---@return dbc.row.v1215.MissileCastPositioner
function row:CreateRelated(data) end

---Gets the value of field 'MissileImpactPositionerID'.
---@return integer value
function row:GetMissileImpactPositionerID() end

---Sets the value of field 'MissileImpactPositionerID'.
---@param value integer
---@return dbc.row.v1215.SpellVisual self
function row:SetMissileImpactPositionerID(value) end

---Navigates foreign relationship to 'MissileImpactPositioner' via 'MissileImpactPositionerID'.
---@return dbc.row.v1215.MissileImpactPositioner|nil
function row:GetMissileImpactPositioner() end

---Creates a related 'MissileImpactPositioner' row and automatically links 'MissileImpactPositionerID'.
---@param data? table
---@return dbc.row.v1215.MissileImpactPositioner
function row:CreateRelated(data) end

---Gets the value of field 'MissileTargetingKit'.
---@return integer value
function row:GetMissileTargetingKit() end

---Sets the value of field 'MissileTargetingKit'.
---@param value integer
---@return dbc.row.v1215.SpellVisual self
function row:SetMissileTargetingKit(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'MissileTargetingKit'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetMissileTargetingKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'MissileTargetingKit'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'HostileSpellVisualID'.
---@return integer value
function row:GetHostileSpellVisualID() end

---Sets the value of field 'HostileSpellVisualID'.
---@param value integer
---@return dbc.row.v1215.SpellVisual self
function row:SetHostileSpellVisualID(value) end

---Navigates foreign relationship to 'SpellVisual' via 'HostileSpellVisualID'.
---@return dbc.row.v1215.SpellVisual|nil
function row:GetHostileSpellVisual() end

---Creates a related 'SpellVisual' row and automatically links 'HostileSpellVisualID'.
---@param data? table
---@return dbc.row.v1215.SpellVisual
function row:CreateRelated(data) end

---Gets the value of field 'CasterSpellVisualID'.
---@return integer value
function row:GetCasterSpellVisualID() end

---Sets the value of field 'CasterSpellVisualID'.
---@param value integer
---@return dbc.row.v1215.SpellVisual self
function row:SetCasterSpellVisualID(value) end

---Navigates foreign relationship to 'SpellVisual' via 'CasterSpellVisualID'.
---@return dbc.row.v1215.SpellVisual|nil
function row:GetCasterSpellVisual() end

---Creates a related 'SpellVisual' row and automatically links 'CasterSpellVisualID'.
---@param data? table
---@return dbc.row.v1215.SpellVisual
function row:CreateRelated(data) end

---Gets the value of field 'SpellVisualMissileSetID'.
---@return integer value
function row:GetSpellVisualMissileSetID() end

---Sets the value of field 'SpellVisualMissileSetID'.
---@param value integer
---@return dbc.row.v1215.SpellVisual self
function row:SetSpellVisualMissileSetID(value) end

---Navigates foreign relationship to 'SpellVisualMissile' via 'SpellVisualMissileSetID'.
---@return dbc.row.v1215.SpellVisualMissile|nil
function row:GetSpellVisualMissileSet() end

---Creates a related 'SpellVisualMissile' row and automatically links 'SpellVisualMissileSetID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualMissile
function row:CreateRelated(data) end

---Gets the value of field 'DamageNumberDelay'.
---@return integer value
function row:GetDamageNumberDelay() end

---Sets the value of field 'DamageNumberDelay'.
---@param value integer
---@return dbc.row.v1215.SpellVisual self
function row:SetDamageNumberDelay(value) end

---Gets the value of field 'LowViolenceSpellVisualID'.
---@return integer value
function row:GetLowViolenceSpellVisualID() end

---Sets the value of field 'LowViolenceSpellVisualID'.
---@param value integer
---@return dbc.row.v1215.SpellVisual self
function row:SetLowViolenceSpellVisualID(value) end

---Navigates foreign relationship to 'SpellVisual' via 'LowViolenceSpellVisualID'.
---@return dbc.row.v1215.SpellVisual|nil
function row:GetLowViolenceSpellVisual() end

---Creates a related 'SpellVisual' row and automatically links 'LowViolenceSpellVisualID'.
---@param data? table
---@return dbc.row.v1215.SpellVisual
function row:CreateRelated(data) end

---Gets the value of field 'RaidSpellVisualMissileSetID'.
---@return integer value
function row:GetRaidSpellVisualMissileSetID() end

---Sets the value of field 'RaidSpellVisualMissileSetID'.
---@param value integer
---@return dbc.row.v1215.SpellVisual self
function row:SetRaidSpellVisualMissileSetID(value) end

---Navigates foreign relationship to 'RaidSpellVisualMissileSet' via 'RaidSpellVisualMissileSetID'.
---@return dbc.row.v1215.RaidSpellVisualMissileSet|nil
function row:GetRaidSpellVisualMissileSet() end

---Creates a related 'RaidSpellVisualMissileSet' row and automatically links 'RaidSpellVisualMissileSetID'.
---@param data? table
---@return dbc.row.v1215.RaidSpellVisualMissileSet
function row:CreateRelated(data) end

---Gets the value of field 'ReducedUnexpectedCameraMovementSpellVisualID'.
---@return integer value
function row:GetReducedUnexpectedCameraMovementSpellVisualID() end

---Sets the value of field 'ReducedUnexpectedCameraMovementSpellVisualID'.
---@param value integer
---@return dbc.row.v1215.SpellVisual self
function row:SetReducedUnexpectedCameraMovementSpellVisualID(value) end

---Navigates foreign relationship to 'SpellVisual' via 'ReducedUnexpectedCameraMovementSpellVisualID'.
---@return dbc.row.v1215.SpellVisual|nil
function row:GetReducedUnexpectedCameraMovementSpellVisual() end

---Creates a related 'SpellVisual' row and automatically links 'ReducedUnexpectedCameraMovementSpellVisualID'.
---@param data? table
---@return dbc.row.v1215.SpellVisual
function row:CreateRelated(data) end

---Table container for SpellVisual (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellVisual : DbcTable
---@field [integer] dbc.row.v1215.SpellVisual
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellVisual
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellVisual|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellVisual
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellVisual>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellVisual[]
function tbl:GetByRelation(foreign_id) end

return {}
