---@meta
-- Generated LuaLS annotations for SpellAuraRestrictions (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellAuraRestrictions in build 12.1.5.69594.
---@class dbc.row.v1215.SpellAuraRestrictions : RowProxy
---@field ID integer
---@field DifficultyID integer
---@field CasterAuraState integer
---@field TargetAuraState integer
---@field ExcludeCasterAuraState integer
---@field ExcludeTargetAuraState integer
---@field CasterAuraSpell integer
---@field TargetAuraSpell integer
---@field ExcludeCasterAuraSpell integer
---@field ExcludeTargetAuraSpell integer
---@field CasterAuraType integer
---@field TargetAuraType integer
---@field ExcludeCasterAuraType integer
---@field ExcludeTargetAuraType integer
---@field SpellID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellAuraRestrictions self
function row:SetID(value) end

---Gets the value of field 'DifficultyID'.
---@return integer value
function row:GetDifficultyID() end

---Sets the value of field 'DifficultyID'.
---@param value integer
---@return dbc.row.v1215.SpellAuraRestrictions self
function row:SetDifficultyID(value) end

---Navigates foreign relationship to 'Difficulty' via 'DifficultyID'.
---@return dbc.row.v1215.Difficulty|nil
function row:GetDifficulty() end

---Creates a related 'Difficulty' row and automatically links 'DifficultyID'.
---@param data? table
---@return dbc.row.v1215.Difficulty
function row:CreateRelated(data) end

---Gets the value of field 'CasterAuraState'.
---@return integer value
function row:GetCasterAuraState() end

---Sets the value of field 'CasterAuraState'.
---@param value integer
---@return dbc.row.v1215.SpellAuraRestrictions self
function row:SetCasterAuraState(value) end

---Gets the value of field 'TargetAuraState'.
---@return integer value
function row:GetTargetAuraState() end

---Sets the value of field 'TargetAuraState'.
---@param value integer
---@return dbc.row.v1215.SpellAuraRestrictions self
function row:SetTargetAuraState(value) end

---Gets the value of field 'ExcludeCasterAuraState'.
---@return integer value
function row:GetExcludeCasterAuraState() end

---Sets the value of field 'ExcludeCasterAuraState'.
---@param value integer
---@return dbc.row.v1215.SpellAuraRestrictions self
function row:SetExcludeCasterAuraState(value) end

---Gets the value of field 'ExcludeTargetAuraState'.
---@return integer value
function row:GetExcludeTargetAuraState() end

---Sets the value of field 'ExcludeTargetAuraState'.
---@param value integer
---@return dbc.row.v1215.SpellAuraRestrictions self
function row:SetExcludeTargetAuraState(value) end

---Gets the value of field 'CasterAuraSpell'.
---@return integer value
function row:GetCasterAuraSpell() end

---Sets the value of field 'CasterAuraSpell'.
---@param value integer
---@return dbc.row.v1215.SpellAuraRestrictions self
function row:SetCasterAuraSpell(value) end

---Navigates foreign relationship to 'Spell' via 'CasterAuraSpell'.
---@return dbc.row.v1215.Spell|nil
function row:GetCasterAuraSpell() end

---Creates a related 'Spell' row and automatically links 'CasterAuraSpell'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'TargetAuraSpell'.
---@return integer value
function row:GetTargetAuraSpell() end

---Sets the value of field 'TargetAuraSpell'.
---@param value integer
---@return dbc.row.v1215.SpellAuraRestrictions self
function row:SetTargetAuraSpell(value) end

---Gets the value of field 'ExcludeCasterAuraSpell'.
---@return integer value
function row:GetExcludeCasterAuraSpell() end

---Sets the value of field 'ExcludeCasterAuraSpell'.
---@param value integer
---@return dbc.row.v1215.SpellAuraRestrictions self
function row:SetExcludeCasterAuraSpell(value) end

---Navigates foreign relationship to 'Spell' via 'ExcludeCasterAuraSpell'.
---@return dbc.row.v1215.Spell|nil
function row:GetExcludeCasterAuraSpell() end

---Creates a related 'Spell' row and automatically links 'ExcludeCasterAuraSpell'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'ExcludeTargetAuraSpell'.
---@return integer value
function row:GetExcludeTargetAuraSpell() end

---Sets the value of field 'ExcludeTargetAuraSpell'.
---@param value integer
---@return dbc.row.v1215.SpellAuraRestrictions self
function row:SetExcludeTargetAuraSpell(value) end

---Navigates foreign relationship to 'Spell' via 'ExcludeTargetAuraSpell'.
---@return dbc.row.v1215.Spell|nil
function row:GetExcludeTargetAuraSpell() end

---Creates a related 'Spell' row and automatically links 'ExcludeTargetAuraSpell'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'CasterAuraType'.
---@return integer value
function row:GetCasterAuraType() end

---Sets the value of field 'CasterAuraType'.
---@param value integer
---@return dbc.row.v1215.SpellAuraRestrictions self
function row:SetCasterAuraType(value) end

---Gets the value of field 'TargetAuraType'.
---@return integer value
function row:GetTargetAuraType() end

---Sets the value of field 'TargetAuraType'.
---@param value integer
---@return dbc.row.v1215.SpellAuraRestrictions self
function row:SetTargetAuraType(value) end

---Gets the value of field 'ExcludeCasterAuraType'.
---@return integer value
function row:GetExcludeCasterAuraType() end

---Sets the value of field 'ExcludeCasterAuraType'.
---@param value integer
---@return dbc.row.v1215.SpellAuraRestrictions self
function row:SetExcludeCasterAuraType(value) end

---Gets the value of field 'ExcludeTargetAuraType'.
---@return integer value
function row:GetExcludeTargetAuraType() end

---Sets the value of field 'ExcludeTargetAuraType'.
---@param value integer
---@return dbc.row.v1215.SpellAuraRestrictions self
function row:SetExcludeTargetAuraType(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.SpellAuraRestrictions self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Table container for SpellAuraRestrictions (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellAuraRestrictions : DbcTable
---@field [integer] dbc.row.v1215.SpellAuraRestrictions
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellAuraRestrictions
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellAuraRestrictions|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellAuraRestrictions
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellAuraRestrictions>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellAuraRestrictions[]
function tbl:GetByRelation(foreign_id) end

return {}
