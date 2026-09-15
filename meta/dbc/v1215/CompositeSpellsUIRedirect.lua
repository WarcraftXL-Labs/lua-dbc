---@meta
-- Generated LuaLS annotations for CompositeSpellsUIRedirect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CompositeSpellsUIRedirect in build 12.1.5.69594.
---@class dbc.row.v1215.CompositeSpellsUIRedirect : RowProxy
---@field ID integer
---@field ParentSpellID integer
---@field ChildSpellID integer
---@field Field_12_0_1_64889_002 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CompositeSpellsUIRedirect self
function row:SetID(value) end

---Gets the value of field 'ParentSpellID'.
---@return integer value
function row:GetParentSpellID() end

---Sets the value of field 'ParentSpellID'.
---@param value integer
---@return dbc.row.v1215.CompositeSpellsUIRedirect self
function row:SetParentSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'ParentSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetParentSpell() end

---Creates a related 'Spell' row and automatically links 'ParentSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'ChildSpellID'.
---@return integer value
function row:GetChildSpellID() end

---Sets the value of field 'ChildSpellID'.
---@param value integer
---@return dbc.row.v1215.CompositeSpellsUIRedirect self
function row:SetChildSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'ChildSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetChildSpell() end

---Creates a related 'Spell' row and automatically links 'ChildSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_0_1_64889_002'.
---@return integer value
function row:GetField_12_0_1_64889_002() end

---Sets the value of field 'Field_12_0_1_64889_002'.
---@param value integer
---@return dbc.row.v1215.CompositeSpellsUIRedirect self
function row:SetField_12_0_1_64889_002(value) end

---Table container for CompositeSpellsUIRedirect (Build 12.1.5.69594).
---@class dbc.Table.v1215.CompositeSpellsUIRedirect : DbcTable
---@field [integer] dbc.row.v1215.CompositeSpellsUIRedirect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CompositeSpellsUIRedirect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CompositeSpellsUIRedirect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CompositeSpellsUIRedirect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CompositeSpellsUIRedirect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CompositeSpellsUIRedirect[]
function tbl:GetByRelation(foreign_id) end

return {}
