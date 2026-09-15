---@meta
-- Generated LuaLS annotations for CooldownSetLinkedSpell (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CooldownSetLinkedSpell in build 12.1.5.69594.
---@class dbc.row.v1215.CooldownSetLinkedSpell : RowProxy
---@field ID integer
---@field SpellID integer
---@field Field_11_1_5_59571_001 integer
---@field CooldownSetSpellID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CooldownSetLinkedSpell self
function row:SetID(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.CooldownSetLinkedSpell self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'Field_11_1_5_59571_001'.
---@return integer value
function row:GetField_11_1_5_59571_001() end

---Sets the value of field 'Field_11_1_5_59571_001'.
---@param value integer
---@return dbc.row.v1215.CooldownSetLinkedSpell self
function row:SetField_11_1_5_59571_001(value) end

---Gets the value of field 'CooldownSetSpellID'.
---@return integer value
function row:GetCooldownSetSpellID() end

---Sets the value of field 'CooldownSetSpellID'.
---@param value integer
---@return dbc.row.v1215.CooldownSetLinkedSpell self
function row:SetCooldownSetSpellID(value) end

---Navigates foreign relationship to 'CooldownSetSpell' via 'CooldownSetSpellID'.
---@return dbc.row.v1215.CooldownSetSpell|nil
function row:GetCooldownSetSpell() end

---Creates a related 'CooldownSetSpell' row and automatically links 'CooldownSetSpellID'.
---@param data? table
---@return dbc.row.v1215.CooldownSetSpell
function row:CreateRelated(data) end

---Table container for CooldownSetLinkedSpell (Build 12.1.5.69594).
---@class dbc.Table.v1215.CooldownSetLinkedSpell : DbcTable
---@field [integer] dbc.row.v1215.CooldownSetLinkedSpell
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CooldownSetLinkedSpell
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CooldownSetLinkedSpell|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CooldownSetLinkedSpell
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CooldownSetLinkedSpell>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CooldownSetLinkedSpell[]
function tbl:GetByRelation(foreign_id) end

return {}
