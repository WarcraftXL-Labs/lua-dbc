---@meta
-- Generated LuaLS annotations for SpecializationSpells (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpecializationSpells in build 12.1.5.69594.
---@class dbc.row.v1215.SpecializationSpells : RowProxy
---@field Description_lang string
---@field ID integer
---@field SpecID integer
---@field SpellID integer
---@field OverridesSpellID integer
---@field DisplayOrder integer

local row = {}

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.SpecializationSpells self
function row:SetDescription_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpecializationSpells self
function row:SetID(value) end

---Gets the value of field 'SpecID'.
---@return integer value
function row:GetSpecID() end

---Sets the value of field 'SpecID'.
---@param value integer
---@return dbc.row.v1215.SpecializationSpells self
function row:SetSpecID(value) end

---Navigates foreign relationship to 'ChrSpecialization' via 'SpecID'.
---@return dbc.row.v1215.ChrSpecialization|nil
function row:GetSpec() end

---Creates a related 'ChrSpecialization' row and automatically links 'SpecID'.
---@param data? table
---@return dbc.row.v1215.ChrSpecialization
function row:CreateRelated(data) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.SpecializationSpells self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'OverridesSpellID'.
---@return integer value
function row:GetOverridesSpellID() end

---Sets the value of field 'OverridesSpellID'.
---@param value integer
---@return dbc.row.v1215.SpecializationSpells self
function row:SetOverridesSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'OverridesSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetOverridesSpell() end

---Creates a related 'Spell' row and automatically links 'OverridesSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'DisplayOrder'.
---@return integer value
function row:GetDisplayOrder() end

---Sets the value of field 'DisplayOrder'.
---@param value integer
---@return dbc.row.v1215.SpecializationSpells self
function row:SetDisplayOrder(value) end

---Table container for SpecializationSpells (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpecializationSpells : DbcTable
---@field [integer] dbc.row.v1215.SpecializationSpells
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpecializationSpells
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpecializationSpells|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpecializationSpells
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpecializationSpells>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpecializationSpells[]
function tbl:GetByRelation(foreign_id) end

return {}
