---@meta
-- Generated LuaLS annotations for SpellVisual (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SpellVisual in build 3.3.5.12340.
---@class dbc.row.v335.SpellVisual : RowProxy
---@field ID integer
---@field PrecastKit integer
---@field CastKit integer
---@field ImpactKit integer
---@field StateKit integer
---@field StateDoneKit integer
---@field ChannelKit integer
---@field HasMissile integer
---@field MissileModel integer
---@field MissilePathType integer
---@field MissileDestinationAttachment integer
---@field MissileSound integer
---@field AnimEventSoundID integer
---@field Flags integer
---@field CasterImpactKit integer
---@field TargetImpactKit integer
---@field MissileAttachment integer
---@field MissileFollowGroundHeight integer
---@field MissileFollowGroundDropSpeed integer
---@field MissileFollowGroundApproach integer
---@field MissileFollowGroundFlags integer
---@field MissileMotion integer
---@field MissileTargetingKit integer
---@field InstantAreaKit integer
---@field ImpactAreaKit integer
---@field PersistentAreaKit integer
---@field MissileCastOffset number[]
---@field MissileImpactOffset number[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SpellVisual self
function row:SetID(value) end

---Gets the value of field 'PrecastKit'.
---@return integer value
function row:GetPrecastKit() end

---Sets the value of field 'PrecastKit'.
---@param value integer
---@return dbc.row.v335.SpellVisual self
function row:SetPrecastKit(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'PrecastKit'.
---@return dbc.row.v335.SpellVisualKit|nil
function row:GetPrecastKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'PrecastKit'.
---@param data? table
---@return dbc.row.v335.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'CastKit'.
---@return integer value
function row:GetCastKit() end

---Sets the value of field 'CastKit'.
---@param value integer
---@return dbc.row.v335.SpellVisual self
function row:SetCastKit(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'CastKit'.
---@return dbc.row.v335.SpellVisualKit|nil
function row:GetCastKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'CastKit'.
---@param data? table
---@return dbc.row.v335.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'ImpactKit'.
---@return integer value
function row:GetImpactKit() end

---Sets the value of field 'ImpactKit'.
---@param value integer
---@return dbc.row.v335.SpellVisual self
function row:SetImpactKit(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'ImpactKit'.
---@return dbc.row.v335.SpellVisualKit|nil
function row:GetImpactKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'ImpactKit'.
---@param data? table
---@return dbc.row.v335.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'StateKit'.
---@return integer value
function row:GetStateKit() end

---Sets the value of field 'StateKit'.
---@param value integer
---@return dbc.row.v335.SpellVisual self
function row:SetStateKit(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'StateKit'.
---@return dbc.row.v335.SpellVisualKit|nil
function row:GetStateKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'StateKit'.
---@param data? table
---@return dbc.row.v335.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'StateDoneKit'.
---@return integer value
function row:GetStateDoneKit() end

---Sets the value of field 'StateDoneKit'.
---@param value integer
---@return dbc.row.v335.SpellVisual self
function row:SetStateDoneKit(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'StateDoneKit'.
---@return dbc.row.v335.SpellVisualKit|nil
function row:GetStateDoneKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'StateDoneKit'.
---@param data? table
---@return dbc.row.v335.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'ChannelKit'.
---@return integer value
function row:GetChannelKit() end

---Sets the value of field 'ChannelKit'.
---@param value integer
---@return dbc.row.v335.SpellVisual self
function row:SetChannelKit(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'ChannelKit'.
---@return dbc.row.v335.SpellVisualKit|nil
function row:GetChannelKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'ChannelKit'.
---@param data? table
---@return dbc.row.v335.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'HasMissile'.
---@return integer value
function row:GetHasMissile() end

---Sets the value of field 'HasMissile'.
---@param value integer
---@return dbc.row.v335.SpellVisual self
function row:SetHasMissile(value) end

---Gets the value of field 'MissileModel'.
---@return integer value
function row:GetMissileModel() end

---Sets the value of field 'MissileModel'.
---@param value integer
---@return dbc.row.v335.SpellVisual self
function row:SetMissileModel(value) end

---Gets the value of field 'MissilePathType'.
---@return integer value
function row:GetMissilePathType() end

---Sets the value of field 'MissilePathType'.
---@param value integer
---@return dbc.row.v335.SpellVisual self
function row:SetMissilePathType(value) end

---Gets the value of field 'MissileDestinationAttachment'.
---@return integer value
function row:GetMissileDestinationAttachment() end

---Sets the value of field 'MissileDestinationAttachment'.
---@param value integer
---@return dbc.row.v335.SpellVisual self
function row:SetMissileDestinationAttachment(value) end

---Gets the value of field 'MissileSound'.
---@return integer value
function row:GetMissileSound() end

---Sets the value of field 'MissileSound'.
---@param value integer
---@return dbc.row.v335.SpellVisual self
function row:SetMissileSound(value) end

---Gets the value of field 'AnimEventSoundID'.
---@return integer value
function row:GetAnimEventSoundID() end

---Sets the value of field 'AnimEventSoundID'.
---@param value integer
---@return dbc.row.v335.SpellVisual self
function row:SetAnimEventSoundID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'AnimEventSoundID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetAnimEventSound() end

---Creates a related 'SoundEntries' row and automatically links 'AnimEventSoundID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.SpellVisual self
function row:SetFlags(value) end

---Gets the value of field 'CasterImpactKit'.
---@return integer value
function row:GetCasterImpactKit() end

---Sets the value of field 'CasterImpactKit'.
---@param value integer
---@return dbc.row.v335.SpellVisual self
function row:SetCasterImpactKit(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'CasterImpactKit'.
---@return dbc.row.v335.SpellVisualKit|nil
function row:GetCasterImpactKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'CasterImpactKit'.
---@param data? table
---@return dbc.row.v335.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'TargetImpactKit'.
---@return integer value
function row:GetTargetImpactKit() end

---Sets the value of field 'TargetImpactKit'.
---@param value integer
---@return dbc.row.v335.SpellVisual self
function row:SetTargetImpactKit(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'TargetImpactKit'.
---@return dbc.row.v335.SpellVisualKit|nil
function row:GetTargetImpactKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'TargetImpactKit'.
---@param data? table
---@return dbc.row.v335.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'MissileAttachment'.
---@return integer value
function row:GetMissileAttachment() end

---Sets the value of field 'MissileAttachment'.
---@param value integer
---@return dbc.row.v335.SpellVisual self
function row:SetMissileAttachment(value) end

---Gets the value of field 'MissileFollowGroundHeight'.
---@return integer value
function row:GetMissileFollowGroundHeight() end

---Sets the value of field 'MissileFollowGroundHeight'.
---@param value integer
---@return dbc.row.v335.SpellVisual self
function row:SetMissileFollowGroundHeight(value) end

---Gets the value of field 'MissileFollowGroundDropSpeed'.
---@return integer value
function row:GetMissileFollowGroundDropSpeed() end

---Sets the value of field 'MissileFollowGroundDropSpeed'.
---@param value integer
---@return dbc.row.v335.SpellVisual self
function row:SetMissileFollowGroundDropSpeed(value) end

---Gets the value of field 'MissileFollowGroundApproach'.
---@return integer value
function row:GetMissileFollowGroundApproach() end

---Sets the value of field 'MissileFollowGroundApproach'.
---@param value integer
---@return dbc.row.v335.SpellVisual self
function row:SetMissileFollowGroundApproach(value) end

---Gets the value of field 'MissileFollowGroundFlags'.
---@return integer value
function row:GetMissileFollowGroundFlags() end

---Sets the value of field 'MissileFollowGroundFlags'.
---@param value integer
---@return dbc.row.v335.SpellVisual self
function row:SetMissileFollowGroundFlags(value) end

---Gets the value of field 'MissileMotion'.
---@return integer value
function row:GetMissileMotion() end

---Sets the value of field 'MissileMotion'.
---@param value integer
---@return dbc.row.v335.SpellVisual self
function row:SetMissileMotion(value) end

---Gets the value of field 'MissileTargetingKit'.
---@return integer value
function row:GetMissileTargetingKit() end

---Sets the value of field 'MissileTargetingKit'.
---@param value integer
---@return dbc.row.v335.SpellVisual self
function row:SetMissileTargetingKit(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'MissileTargetingKit'.
---@return dbc.row.v335.SpellVisualKit|nil
function row:GetMissileTargetingKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'MissileTargetingKit'.
---@param data? table
---@return dbc.row.v335.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'InstantAreaKit'.
---@return integer value
function row:GetInstantAreaKit() end

---Sets the value of field 'InstantAreaKit'.
---@param value integer
---@return dbc.row.v335.SpellVisual self
function row:SetInstantAreaKit(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'InstantAreaKit'.
---@return dbc.row.v335.SpellVisualKit|nil
function row:GetInstantAreaKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'InstantAreaKit'.
---@param data? table
---@return dbc.row.v335.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'ImpactAreaKit'.
---@return integer value
function row:GetImpactAreaKit() end

---Sets the value of field 'ImpactAreaKit'.
---@param value integer
---@return dbc.row.v335.SpellVisual self
function row:SetImpactAreaKit(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'ImpactAreaKit'.
---@return dbc.row.v335.SpellVisualKit|nil
function row:GetImpactAreaKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'ImpactAreaKit'.
---@param data? table
---@return dbc.row.v335.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'PersistentAreaKit'.
---@return integer value
function row:GetPersistentAreaKit() end

---Sets the value of field 'PersistentAreaKit'.
---@param value integer
---@return dbc.row.v335.SpellVisual self
function row:SetPersistentAreaKit(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'PersistentAreaKit'.
---@return dbc.row.v335.SpellVisualKit|nil
function row:GetPersistentAreaKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'PersistentAreaKit'.
---@param data? table
---@return dbc.row.v335.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'MissileCastOffset'.
---@return number[] value
function row:GetMissileCastOffset() end

---Sets the value of field 'MissileCastOffset'.
---@param value number[]
---@return dbc.row.v335.SpellVisual self
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
---@return dbc.row.v335.SpellVisual self
function row:SetMissileImpactOffset(value) end

---Gets element at 1-based index in 'MissileImpactOffset'.
---@param index integer
---@return number value
function row:GetMissileImpactOffsetItem(index) end

---Table container for SpellVisual (Build 3.3.5.12340).
---@class dbc.Table.v335.SpellVisual : DbcTable
---@field [integer] dbc.row.v335.SpellVisual
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SpellVisual
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SpellVisual|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SpellVisual
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SpellVisual>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SpellVisual[]
function tbl:GetByRelation(foreign_id) end

return {}
