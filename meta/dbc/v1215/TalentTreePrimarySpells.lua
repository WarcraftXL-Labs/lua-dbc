---@meta
-- Generated LuaLS annotations for TalentTreePrimarySpells (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TalentTreePrimarySpells in build 12.1.5.69594.
---@class dbc.row.v1215.TalentTreePrimarySpells : RowProxy
---@field ID integer
---@field TalentTabID integer
---@field SpellID integer
---@field Flags integer &0x1: learnable, &0x2: always visible

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TalentTreePrimarySpells self
function row:SetID(value) end

---Gets the value of field 'TalentTabID'.
---@return integer value
function row:GetTalentTabID() end

---Sets the value of field 'TalentTabID'.
---@param value integer
---@return dbc.row.v1215.TalentTreePrimarySpells self
function row:SetTalentTabID(value) end

---Navigates foreign relationship to 'TalentTab' via 'TalentTabID'.
---@return dbc.row.v1215.TalentTab|nil
function row:GetTalentTab() end

---Creates a related 'TalentTab' row and automatically links 'TalentTabID'.
---@param data? table
---@return dbc.row.v1215.TalentTab
function row:CreateRelated(data) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.TalentTreePrimarySpells self
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
---@return dbc.row.v1215.TalentTreePrimarySpells self
function row:SetFlags(value) end

---Table container for TalentTreePrimarySpells (Build 12.1.5.69594).
---@class dbc.Table.v1215.TalentTreePrimarySpells : DbcTable
---@field [integer] dbc.row.v1215.TalentTreePrimarySpells
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TalentTreePrimarySpells
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TalentTreePrimarySpells|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TalentTreePrimarySpells
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TalentTreePrimarySpells>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TalentTreePrimarySpells[]
function tbl:GetByRelation(foreign_id) end

return {}
