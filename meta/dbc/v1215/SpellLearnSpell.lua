---@meta
-- Generated LuaLS annotations for SpellLearnSpell (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellLearnSpell in build 12.1.5.69594.
---@class dbc.row.v1215.SpellLearnSpell : RowProxy
---@field ID integer
---@field SpellID integer
---@field LearnSpellID integer
---@field OverridesSpellID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellLearnSpell self
function row:SetID(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.SpellLearnSpell self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'LearnSpellID'.
---@return integer value
function row:GetLearnSpellID() end

---Sets the value of field 'LearnSpellID'.
---@param value integer
---@return dbc.row.v1215.SpellLearnSpell self
function row:SetLearnSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'LearnSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetLearnSpell() end

---Creates a related 'Spell' row and automatically links 'LearnSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'OverridesSpellID'.
---@return integer value
function row:GetOverridesSpellID() end

---Sets the value of field 'OverridesSpellID'.
---@param value integer
---@return dbc.row.v1215.SpellLearnSpell self
function row:SetOverridesSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'OverridesSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetOverridesSpell() end

---Creates a related 'Spell' row and automatically links 'OverridesSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Table container for SpellLearnSpell (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellLearnSpell : DbcTable
---@field [integer] dbc.row.v1215.SpellLearnSpell
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellLearnSpell
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellLearnSpell|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellLearnSpell
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellLearnSpell>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellLearnSpell[]
function tbl:GetByRelation(foreign_id) end

return {}
