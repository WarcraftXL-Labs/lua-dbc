---@meta
-- Generated LuaLS annotations for ItemSetSpell (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemSetSpell in build 12.1.5.69594.
---@class dbc.row.v1215.ItemSetSpell : RowProxy
---@field ID integer
---@field ChrSpecID integer
---@field SpellID integer
---@field TraitSubTreeID integer
---@field Threshold integer
---@field ItemSetID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemSetSpell self
function row:SetID(value) end

---Gets the value of field 'ChrSpecID'.
---@return integer value
function row:GetChrSpecID() end

---Sets the value of field 'ChrSpecID'.
---@param value integer
---@return dbc.row.v1215.ItemSetSpell self
function row:SetChrSpecID(value) end

---Navigates foreign relationship to 'ChrSpecialization' via 'ChrSpecID'.
---@return dbc.row.v1215.ChrSpecialization|nil
function row:GetChrSpec() end

---Creates a related 'ChrSpecialization' row and automatically links 'ChrSpecID'.
---@param data? table
---@return dbc.row.v1215.ChrSpecialization
function row:CreateRelated(data) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.ItemSetSpell self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'TraitSubTreeID'.
---@return integer value
function row:GetTraitSubTreeID() end

---Sets the value of field 'TraitSubTreeID'.
---@param value integer
---@return dbc.row.v1215.ItemSetSpell self
function row:SetTraitSubTreeID(value) end

---Navigates foreign relationship to 'TraitSubTree' via 'TraitSubTreeID'.
---@return dbc.row.v1215.TraitSubTree|nil
function row:GetTraitSubTree() end

---Creates a related 'TraitSubTree' row and automatically links 'TraitSubTreeID'.
---@param data? table
---@return dbc.row.v1215.TraitSubTree
function row:CreateRelated(data) end

---Gets the value of field 'Threshold'.
---@return integer value
function row:GetThreshold() end

---Sets the value of field 'Threshold'.
---@param value integer
---@return dbc.row.v1215.ItemSetSpell self
function row:SetThreshold(value) end

---Gets the value of field 'ItemSetID'.
---@return integer value
function row:GetItemSetID() end

---Sets the value of field 'ItemSetID'.
---@param value integer
---@return dbc.row.v1215.ItemSetSpell self
function row:SetItemSetID(value) end

---Navigates foreign relationship to 'ItemSet' via 'ItemSetID'.
---@return dbc.row.v1215.ItemSet|nil
function row:GetItemSet() end

---Creates a related 'ItemSet' row and automatically links 'ItemSetID'.
---@param data? table
---@return dbc.row.v1215.ItemSet
function row:CreateRelated(data) end

---Table container for ItemSetSpell (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemSetSpell : DbcTable
---@field [integer] dbc.row.v1215.ItemSetSpell
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemSetSpell
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemSetSpell|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemSetSpell
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemSetSpell>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemSetSpell[]
function tbl:GetByRelation(foreign_id) end

return {}
