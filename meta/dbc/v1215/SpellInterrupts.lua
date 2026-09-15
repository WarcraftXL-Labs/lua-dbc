---@meta
-- Generated LuaLS annotations for SpellInterrupts (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellInterrupts in build 12.1.5.69594.
---@class dbc.row.v1215.SpellInterrupts : RowProxy
---@field ID integer
---@field DifficultyID integer
---@field InterruptFlags integer
---@field AuraInterruptFlags integer[]
---@field ChannelInterruptFlags integer[]
---@field SpellID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellInterrupts self
function row:SetID(value) end

---Gets the value of field 'DifficultyID'.
---@return integer value
function row:GetDifficultyID() end

---Sets the value of field 'DifficultyID'.
---@param value integer
---@return dbc.row.v1215.SpellInterrupts self
function row:SetDifficultyID(value) end

---Navigates foreign relationship to 'Difficulty' via 'DifficultyID'.
---@return dbc.row.v1215.Difficulty|nil
function row:GetDifficulty() end

---Creates a related 'Difficulty' row and automatically links 'DifficultyID'.
---@param data? table
---@return dbc.row.v1215.Difficulty
function row:CreateRelated(data) end

---Gets the value of field 'InterruptFlags'.
---@return integer value
function row:GetInterruptFlags() end

---Sets the value of field 'InterruptFlags'.
---@param value integer
---@return dbc.row.v1215.SpellInterrupts self
function row:SetInterruptFlags(value) end

---Gets the value of field 'AuraInterruptFlags'.
---@return integer[] value
function row:GetAuraInterruptFlags() end

---Sets the value of field 'AuraInterruptFlags'.
---@param value integer[]
---@return dbc.row.v1215.SpellInterrupts self
function row:SetAuraInterruptFlags(value) end

---Gets element at 1-based index in 'AuraInterruptFlags'.
---@param index integer
---@return integer value
function row:GetAuraInterruptFlagsItem(index) end

---Gets the value of field 'ChannelInterruptFlags'.
---@return integer[] value
function row:GetChannelInterruptFlags() end

---Sets the value of field 'ChannelInterruptFlags'.
---@param value integer[]
---@return dbc.row.v1215.SpellInterrupts self
function row:SetChannelInterruptFlags(value) end

---Gets element at 1-based index in 'ChannelInterruptFlags'.
---@param index integer
---@return integer value
function row:GetChannelInterruptFlagsItem(index) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.SpellInterrupts self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Table container for SpellInterrupts (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellInterrupts : DbcTable
---@field [integer] dbc.row.v1215.SpellInterrupts
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellInterrupts
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellInterrupts|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellInterrupts
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellInterrupts>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellInterrupts[]
function tbl:GetByRelation(foreign_id) end

return {}
