---@meta
-- Generated LuaLS annotations for SpellDifficulty (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SpellDifficulty in build 3.3.5.12340.
---@class dbc.row.v335.SpellDifficulty : RowProxy
---@field ID integer
---@field DifficultySpellID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SpellDifficulty self
function row:SetID(value) end

---Gets the value of field 'DifficultySpellID'.
---@return integer[] value
function row:GetDifficultySpellID() end

---Sets the value of field 'DifficultySpellID'.
---@param value integer[]
---@return dbc.row.v335.SpellDifficulty self
function row:SetDifficultySpellID(value) end

---Gets element at 1-based index in 'DifficultySpellID'.
---@param index integer
---@return integer value
function row:GetDifficultySpellIDItem(index) end

---Navigates foreign relationship to 'Spell' via 'DifficultySpellID'.
---@return dbc.row.v335.Spell|nil
function row:GetDifficultySpell() end

---Creates a related 'Spell' row and automatically links 'DifficultySpellID'.
---@param data? table
---@return dbc.row.v335.Spell
function row:CreateRelated(data) end

---Table container for SpellDifficulty (Build 3.3.5.12340).
---@class dbc.Table.v335.SpellDifficulty : DbcTable
---@field [integer] dbc.row.v335.SpellDifficulty
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SpellDifficulty
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SpellDifficulty|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SpellDifficulty
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SpellDifficulty>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SpellDifficulty[]
function tbl:GetByRelation(foreign_id) end

return {}
