---@meta
-- Generated LuaLS annotations for SpellCooldowns (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellCooldowns in build 12.1.5.69594.
---@class dbc.row.v1215.SpellCooldowns : RowProxy
---@field ID integer
---@field DifficultyID integer
---@field CategoryRecoveryTime integer
---@field RecoveryTime integer
---@field StartRecoveryTime integer
---@field AuraSpellID integer lockout if aura present
---@field SpellID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellCooldowns self
function row:SetID(value) end

---Gets the value of field 'DifficultyID'.
---@return integer value
function row:GetDifficultyID() end

---Sets the value of field 'DifficultyID'.
---@param value integer
---@return dbc.row.v1215.SpellCooldowns self
function row:SetDifficultyID(value) end

---Navigates foreign relationship to 'Difficulty' via 'DifficultyID'.
---@return dbc.row.v1215.Difficulty|nil
function row:GetDifficulty() end

---Creates a related 'Difficulty' row and automatically links 'DifficultyID'.
---@param data? table
---@return dbc.row.v1215.Difficulty
function row:CreateRelated(data) end

---Gets the value of field 'CategoryRecoveryTime'.
---@return integer value
function row:GetCategoryRecoveryTime() end

---Sets the value of field 'CategoryRecoveryTime'.
---@param value integer
---@return dbc.row.v1215.SpellCooldowns self
function row:SetCategoryRecoveryTime(value) end

---Gets the value of field 'RecoveryTime'.
---@return integer value
function row:GetRecoveryTime() end

---Sets the value of field 'RecoveryTime'.
---@param value integer
---@return dbc.row.v1215.SpellCooldowns self
function row:SetRecoveryTime(value) end

---Gets the value of field 'StartRecoveryTime'.
---@return integer value
function row:GetStartRecoveryTime() end

---Sets the value of field 'StartRecoveryTime'.
---@param value integer
---@return dbc.row.v1215.SpellCooldowns self
function row:SetStartRecoveryTime(value) end

---Gets the value of field 'AuraSpellID'.
---@return integer value
function row:GetAuraSpellID() end

---Sets the value of field 'AuraSpellID'.
---@param value integer
---@return dbc.row.v1215.SpellCooldowns self
function row:SetAuraSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'AuraSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetAuraSpell() end

---Creates a related 'Spell' row and automatically links 'AuraSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.SpellCooldowns self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Table container for SpellCooldowns (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellCooldowns : DbcTable
---@field [integer] dbc.row.v1215.SpellCooldowns
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellCooldowns
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellCooldowns|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellCooldowns
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellCooldowns>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellCooldowns[]
function tbl:GetByRelation(foreign_id) end

return {}
