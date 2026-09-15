---@meta
-- Generated LuaLS annotations for SpellAuraOptions (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellAuraOptions in build 12.1.5.69594.
---@class dbc.row.v1215.SpellAuraOptions : RowProxy
---@field ID integer
---@field DifficultyID integer
---@field CumulativeAura integer
---@field ProcCategoryRecovery integer
---@field ProcChance integer
---@field ProcCharges integer
---@field SpellProcsPerMinuteID integer
---@field ProcTypeMask integer[]
---@field SpellID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellAuraOptions self
function row:SetID(value) end

---Gets the value of field 'DifficultyID'.
---@return integer value
function row:GetDifficultyID() end

---Sets the value of field 'DifficultyID'.
---@param value integer
---@return dbc.row.v1215.SpellAuraOptions self
function row:SetDifficultyID(value) end

---Navigates foreign relationship to 'Difficulty' via 'DifficultyID'.
---@return dbc.row.v1215.Difficulty|nil
function row:GetDifficulty() end

---Creates a related 'Difficulty' row and automatically links 'DifficultyID'.
---@param data? table
---@return dbc.row.v1215.Difficulty
function row:CreateRelated(data) end

---Gets the value of field 'CumulativeAura'.
---@return integer value
function row:GetCumulativeAura() end

---Sets the value of field 'CumulativeAura'.
---@param value integer
---@return dbc.row.v1215.SpellAuraOptions self
function row:SetCumulativeAura(value) end

---Gets the value of field 'ProcCategoryRecovery'.
---@return integer value
function row:GetProcCategoryRecovery() end

---Sets the value of field 'ProcCategoryRecovery'.
---@param value integer
---@return dbc.row.v1215.SpellAuraOptions self
function row:SetProcCategoryRecovery(value) end

---Gets the value of field 'ProcChance'.
---@return integer value
function row:GetProcChance() end

---Sets the value of field 'ProcChance'.
---@param value integer
---@return dbc.row.v1215.SpellAuraOptions self
function row:SetProcChance(value) end

---Gets the value of field 'ProcCharges'.
---@return integer value
function row:GetProcCharges() end

---Sets the value of field 'ProcCharges'.
---@param value integer
---@return dbc.row.v1215.SpellAuraOptions self
function row:SetProcCharges(value) end

---Gets the value of field 'SpellProcsPerMinuteID'.
---@return integer value
function row:GetSpellProcsPerMinuteID() end

---Sets the value of field 'SpellProcsPerMinuteID'.
---@param value integer
---@return dbc.row.v1215.SpellAuraOptions self
function row:SetSpellProcsPerMinuteID(value) end

---Navigates foreign relationship to 'SpellProcsPerMinute' via 'SpellProcsPerMinuteID'.
---@return dbc.row.v1215.SpellProcsPerMinute|nil
function row:GetSpellProcsPerMinute() end

---Creates a related 'SpellProcsPerMinute' row and automatically links 'SpellProcsPerMinuteID'.
---@param data? table
---@return dbc.row.v1215.SpellProcsPerMinute
function row:CreateRelated(data) end

---Gets the value of field 'ProcTypeMask'.
---@return integer[] value
function row:GetProcTypeMask() end

---Sets the value of field 'ProcTypeMask'.
---@param value integer[]
---@return dbc.row.v1215.SpellAuraOptions self
function row:SetProcTypeMask(value) end

---Gets element at 1-based index in 'ProcTypeMask'.
---@param index integer
---@return integer value
function row:GetProcTypeMaskItem(index) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.SpellAuraOptions self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Table container for SpellAuraOptions (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellAuraOptions : DbcTable
---@field [integer] dbc.row.v1215.SpellAuraOptions
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellAuraOptions
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellAuraOptions|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellAuraOptions
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellAuraOptions>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellAuraOptions[]
function tbl:GetByRelation(foreign_id) end

return {}
