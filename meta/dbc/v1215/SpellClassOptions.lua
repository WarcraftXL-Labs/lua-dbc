---@meta
-- Generated LuaLS annotations for SpellClassOptions (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellClassOptions in build 12.1.5.69594.
---@class dbc.row.v1215.SpellClassOptions : RowProxy
---@field ID integer
---@field SpellID integer
---@field ModalNextSpell integer
---@field SpellClassSet integer
---@field SpellClassMask integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellClassOptions self
function row:SetID(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.SpellClassOptions self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'ModalNextSpell'.
---@return integer value
function row:GetModalNextSpell() end

---Sets the value of field 'ModalNextSpell'.
---@param value integer
---@return dbc.row.v1215.SpellClassOptions self
function row:SetModalNextSpell(value) end

---Navigates foreign relationship to 'Spell' via 'ModalNextSpell'.
---@return dbc.row.v1215.Spell|nil
function row:GetModalNextSpell() end

---Creates a related 'Spell' row and automatically links 'ModalNextSpell'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'SpellClassSet'.
---@return integer value
function row:GetSpellClassSet() end

---Sets the value of field 'SpellClassSet'.
---@param value integer
---@return dbc.row.v1215.SpellClassOptions self
function row:SetSpellClassSet(value) end

---Gets the value of field 'SpellClassMask'.
---@return integer[] value
function row:GetSpellClassMask() end

---Sets the value of field 'SpellClassMask'.
---@param value integer[]
---@return dbc.row.v1215.SpellClassOptions self
function row:SetSpellClassMask(value) end

---Gets element at 1-based index in 'SpellClassMask'.
---@param index integer
---@return integer value
function row:GetSpellClassMaskItem(index) end

---Table container for SpellClassOptions (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellClassOptions : DbcTable
---@field [integer] dbc.row.v1215.SpellClassOptions
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellClassOptions
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellClassOptions|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellClassOptions
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellClassOptions>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellClassOptions[]
function tbl:GetByRelation(foreign_id) end

return {}
