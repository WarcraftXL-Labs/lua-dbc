---@meta
-- Generated LuaLS annotations for SpellMissile (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellMissile in build 12.1.5.69594.
---@class dbc.row.v1215.SpellMissile : RowProxy
---@field ID integer
---@field SpellID integer
---@field Flags integer
---@field DefaultPitchMin number
---@field DefaultPitchMax number
---@field DefaultSpeedMin number
---@field DefaultSpeedMax number
---@field RandomizeFacingMin number
---@field RandomizeFacingMax number
---@field RandomizePitchMin number
---@field RandomizePitchMax number
---@field RandomizeSpeedMin number
---@field RandomizeSpeedMax number
---@field Gravity number
---@field MaxDuration number
---@field CollisionRadius number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellMissile self
function row:SetID(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.SpellMissile self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.SpellMissile self
function row:SetFlags(value) end

---Gets the value of field 'DefaultPitchMin'.
---@return number value
function row:GetDefaultPitchMin() end

---Sets the value of field 'DefaultPitchMin'.
---@param value number
---@return dbc.row.v1215.SpellMissile self
function row:SetDefaultPitchMin(value) end

---Gets the value of field 'DefaultPitchMax'.
---@return number value
function row:GetDefaultPitchMax() end

---Sets the value of field 'DefaultPitchMax'.
---@param value number
---@return dbc.row.v1215.SpellMissile self
function row:SetDefaultPitchMax(value) end

---Gets the value of field 'DefaultSpeedMin'.
---@return number value
function row:GetDefaultSpeedMin() end

---Sets the value of field 'DefaultSpeedMin'.
---@param value number
---@return dbc.row.v1215.SpellMissile self
function row:SetDefaultSpeedMin(value) end

---Gets the value of field 'DefaultSpeedMax'.
---@return number value
function row:GetDefaultSpeedMax() end

---Sets the value of field 'DefaultSpeedMax'.
---@param value number
---@return dbc.row.v1215.SpellMissile self
function row:SetDefaultSpeedMax(value) end

---Gets the value of field 'RandomizeFacingMin'.
---@return number value
function row:GetRandomizeFacingMin() end

---Sets the value of field 'RandomizeFacingMin'.
---@param value number
---@return dbc.row.v1215.SpellMissile self
function row:SetRandomizeFacingMin(value) end

---Gets the value of field 'RandomizeFacingMax'.
---@return number value
function row:GetRandomizeFacingMax() end

---Sets the value of field 'RandomizeFacingMax'.
---@param value number
---@return dbc.row.v1215.SpellMissile self
function row:SetRandomizeFacingMax(value) end

---Gets the value of field 'RandomizePitchMin'.
---@return number value
function row:GetRandomizePitchMin() end

---Sets the value of field 'RandomizePitchMin'.
---@param value number
---@return dbc.row.v1215.SpellMissile self
function row:SetRandomizePitchMin(value) end

---Gets the value of field 'RandomizePitchMax'.
---@return number value
function row:GetRandomizePitchMax() end

---Sets the value of field 'RandomizePitchMax'.
---@param value number
---@return dbc.row.v1215.SpellMissile self
function row:SetRandomizePitchMax(value) end

---Gets the value of field 'RandomizeSpeedMin'.
---@return number value
function row:GetRandomizeSpeedMin() end

---Sets the value of field 'RandomizeSpeedMin'.
---@param value number
---@return dbc.row.v1215.SpellMissile self
function row:SetRandomizeSpeedMin(value) end

---Gets the value of field 'RandomizeSpeedMax'.
---@return number value
function row:GetRandomizeSpeedMax() end

---Sets the value of field 'RandomizeSpeedMax'.
---@param value number
---@return dbc.row.v1215.SpellMissile self
function row:SetRandomizeSpeedMax(value) end

---Gets the value of field 'Gravity'.
---@return number value
function row:GetGravity() end

---Sets the value of field 'Gravity'.
---@param value number
---@return dbc.row.v1215.SpellMissile self
function row:SetGravity(value) end

---Gets the value of field 'MaxDuration'.
---@return number value
function row:GetMaxDuration() end

---Sets the value of field 'MaxDuration'.
---@param value number
---@return dbc.row.v1215.SpellMissile self
function row:SetMaxDuration(value) end

---Gets the value of field 'CollisionRadius'.
---@return number value
function row:GetCollisionRadius() end

---Sets the value of field 'CollisionRadius'.
---@param value number
---@return dbc.row.v1215.SpellMissile self
function row:SetCollisionRadius(value) end

---Table container for SpellMissile (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellMissile : DbcTable
---@field [integer] dbc.row.v1215.SpellMissile
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellMissile
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellMissile|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellMissile
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellMissile>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellMissile[]
function tbl:GetByRelation(foreign_id) end

return {}
