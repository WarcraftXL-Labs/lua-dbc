---@meta
-- Generated LuaLS annotations for AssistedCombatStep (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AssistedCombatStep in build 12.1.5.69594.
---@class dbc.row.v1215.AssistedCombatStep : RowProxy
---@field ID integer
---@field SpellID integer
---@field AssistedCombatID integer
---@field OrderIndex integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AssistedCombatStep self
function row:SetID(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.AssistedCombatStep self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'AssistedCombatID'.
---@return integer value
function row:GetAssistedCombatID() end

---Sets the value of field 'AssistedCombatID'.
---@param value integer
---@return dbc.row.v1215.AssistedCombatStep self
function row:SetAssistedCombatID(value) end

---Navigates foreign relationship to 'AssistedCombat' via 'AssistedCombatID'.
---@return dbc.row.v1215.AssistedCombat|nil
function row:GetAssistedCombat() end

---Creates a related 'AssistedCombat' row and automatically links 'AssistedCombatID'.
---@param data? table
---@return dbc.row.v1215.AssistedCombat
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.AssistedCombatStep self
function row:SetOrderIndex(value) end

---Table container for AssistedCombatStep (Build 12.1.5.69594).
---@class dbc.Table.v1215.AssistedCombatStep : DbcTable
---@field [integer] dbc.row.v1215.AssistedCombatStep
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AssistedCombatStep
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AssistedCombatStep|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AssistedCombatStep
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AssistedCombatStep>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AssistedCombatStep[]
function tbl:GetByRelation(foreign_id) end

return {}
