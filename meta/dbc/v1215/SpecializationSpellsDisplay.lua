---@meta
-- Generated LuaLS annotations for SpecializationSpellsDisplay (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpecializationSpellsDisplay in build 12.1.5.69594.
---@class dbc.row.v1215.SpecializationSpellsDisplay : RowProxy
---@field ID integer
---@field SpecializationID integer
---@field SpellID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpecializationSpellsDisplay self
function row:SetID(value) end

---Gets the value of field 'SpecializationID'.
---@return integer value
function row:GetSpecializationID() end

---Sets the value of field 'SpecializationID'.
---@param value integer
---@return dbc.row.v1215.SpecializationSpellsDisplay self
function row:SetSpecializationID(value) end

---Navigates foreign relationship to 'Specialization' via 'SpecializationID'.
---@return dbc.row.v1215.Specialization|nil
function row:GetSpecialization() end

---Creates a related 'Specialization' row and automatically links 'SpecializationID'.
---@param data? table
---@return dbc.row.v1215.Specialization
function row:CreateRelated(data) end

---Gets the value of field 'SpellID'.
---@return integer[] value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer[]
---@return dbc.row.v1215.SpecializationSpellsDisplay self
function row:SetSpellID(value) end

---Gets element at 1-based index in 'SpellID'.
---@param index integer
---@return integer value
function row:GetSpellIDItem(index) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Table container for SpecializationSpellsDisplay (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpecializationSpellsDisplay : DbcTable
---@field [integer] dbc.row.v1215.SpecializationSpellsDisplay
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpecializationSpellsDisplay
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpecializationSpellsDisplay|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpecializationSpellsDisplay
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpecializationSpellsDisplay>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpecializationSpellsDisplay[]
function tbl:GetByRelation(foreign_id) end

return {}
