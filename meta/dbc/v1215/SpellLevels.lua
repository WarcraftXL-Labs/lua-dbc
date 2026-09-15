---@meta
-- Generated LuaLS annotations for SpellLevels (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellLevels in build 12.1.5.69594.
---@class dbc.row.v1215.SpellLevels : RowProxy
---@field ID integer
---@field DifficultyID integer
---@field MaxLevel integer
---@field MaxPassiveAuraLevel integer
---@field BaseLevel integer
---@field SpellLevel integer
---@field SpellID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellLevels self
function row:SetID(value) end

---Gets the value of field 'DifficultyID'.
---@return integer value
function row:GetDifficultyID() end

---Sets the value of field 'DifficultyID'.
---@param value integer
---@return dbc.row.v1215.SpellLevels self
function row:SetDifficultyID(value) end

---Navigates foreign relationship to 'Difficulty' via 'DifficultyID'.
---@return dbc.row.v1215.Difficulty|nil
function row:GetDifficulty() end

---Creates a related 'Difficulty' row and automatically links 'DifficultyID'.
---@param data? table
---@return dbc.row.v1215.Difficulty
function row:CreateRelated(data) end

---Gets the value of field 'MaxLevel'.
---@return integer value
function row:GetMaxLevel() end

---Sets the value of field 'MaxLevel'.
---@param value integer
---@return dbc.row.v1215.SpellLevels self
function row:SetMaxLevel(value) end

---Gets the value of field 'MaxPassiveAuraLevel'.
---@return integer value
function row:GetMaxPassiveAuraLevel() end

---Sets the value of field 'MaxPassiveAuraLevel'.
---@param value integer
---@return dbc.row.v1215.SpellLevels self
function row:SetMaxPassiveAuraLevel(value) end

---Gets the value of field 'BaseLevel'.
---@return integer value
function row:GetBaseLevel() end

---Sets the value of field 'BaseLevel'.
---@param value integer
---@return dbc.row.v1215.SpellLevels self
function row:SetBaseLevel(value) end

---Gets the value of field 'SpellLevel'.
---@return integer value
function row:GetSpellLevel() end

---Sets the value of field 'SpellLevel'.
---@param value integer
---@return dbc.row.v1215.SpellLevels self
function row:SetSpellLevel(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.SpellLevels self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Table container for SpellLevels (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellLevels : DbcTable
---@field [integer] dbc.row.v1215.SpellLevels
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellLevels
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellLevels|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellLevels
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellLevels>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellLevels[]
function tbl:GetByRelation(foreign_id) end

return {}
