---@meta
-- Generated LuaLS annotations for SpellCategories (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellCategories in build 12.1.5.69594.
---@class dbc.row.v1215.SpellCategories : RowProxy
---@field ID integer
---@field DifficultyID integer
---@field Category integer
---@field DefenseType integer = damage class; 0: none, 1: magic, 2: melee, 3: ranged
---@field DiminishType integer mask reference to SpellDiminish.db2 records
---@field DispelType integer 0: none, 1: magic, 2: curse, 3: disease, 4: poison, 5: stealth, 6: invisibility, 7: all, 8: spe npc only, 9: enrage, 10: zg ticket, 11: unused
---@field Mechanic integer
---@field PreventionType integer &1: silence, &2: pacify, &4: no actions
---@field StartRecoveryCategory integer
---@field ChargeCategory integer
---@field SpellID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellCategories self
function row:SetID(value) end

---Gets the value of field 'DifficultyID'.
---@return integer value
function row:GetDifficultyID() end

---Sets the value of field 'DifficultyID'.
---@param value integer
---@return dbc.row.v1215.SpellCategories self
function row:SetDifficultyID(value) end

---Navigates foreign relationship to 'Difficulty' via 'DifficultyID'.
---@return dbc.row.v1215.Difficulty|nil
function row:GetDifficulty() end

---Creates a related 'Difficulty' row and automatically links 'DifficultyID'.
---@param data? table
---@return dbc.row.v1215.Difficulty
function row:CreateRelated(data) end

---Gets the value of field 'Category'.
---@return integer value
function row:GetCategory() end

---Sets the value of field 'Category'.
---@param value integer
---@return dbc.row.v1215.SpellCategories self
function row:SetCategory(value) end

---Navigates foreign relationship to 'SpellCategory' via 'Category'.
---@return dbc.row.v1215.SpellCategory|nil
function row:GetCategory() end

---Creates a related 'SpellCategory' row and automatically links 'Category'.
---@param data? table
---@return dbc.row.v1215.SpellCategory
function row:CreateRelated(data) end

---Gets the value of field 'DefenseType'.
---@return integer value
function row:GetDefenseType() end

---Sets the value of field 'DefenseType'.
---@param value integer
---@return dbc.row.v1215.SpellCategories self
function row:SetDefenseType(value) end

---Gets the value of field 'DiminishType'.
---@return integer value
function row:GetDiminishType() end

---Sets the value of field 'DiminishType'.
---@param value integer
---@return dbc.row.v1215.SpellCategories self
function row:SetDiminishType(value) end

---Gets the value of field 'DispelType'.
---@return integer value
function row:GetDispelType() end

---Sets the value of field 'DispelType'.
---@param value integer
---@return dbc.row.v1215.SpellCategories self
function row:SetDispelType(value) end

---Gets the value of field 'Mechanic'.
---@return integer value
function row:GetMechanic() end

---Sets the value of field 'Mechanic'.
---@param value integer
---@return dbc.row.v1215.SpellCategories self
function row:SetMechanic(value) end

---Navigates foreign relationship to 'SpellMechanic' via 'Mechanic'.
---@return dbc.row.v1215.SpellMechanic|nil
function row:GetMechanic() end

---Creates a related 'SpellMechanic' row and automatically links 'Mechanic'.
---@param data? table
---@return dbc.row.v1215.SpellMechanic
function row:CreateRelated(data) end

---Gets the value of field 'PreventionType'.
---@return integer value
function row:GetPreventionType() end

---Sets the value of field 'PreventionType'.
---@param value integer
---@return dbc.row.v1215.SpellCategories self
function row:SetPreventionType(value) end

---Gets the value of field 'StartRecoveryCategory'.
---@return integer value
function row:GetStartRecoveryCategory() end

---Sets the value of field 'StartRecoveryCategory'.
---@param value integer
---@return dbc.row.v1215.SpellCategories self
function row:SetStartRecoveryCategory(value) end

---Navigates foreign relationship to 'SpellCategory' via 'StartRecoveryCategory'.
---@return dbc.row.v1215.SpellCategory|nil
function row:GetStartRecoveryCategory() end

---Creates a related 'SpellCategory' row and automatically links 'StartRecoveryCategory'.
---@param data? table
---@return dbc.row.v1215.SpellCategory
function row:CreateRelated(data) end

---Gets the value of field 'ChargeCategory'.
---@return integer value
function row:GetChargeCategory() end

---Sets the value of field 'ChargeCategory'.
---@param value integer
---@return dbc.row.v1215.SpellCategories self
function row:SetChargeCategory(value) end

---Navigates foreign relationship to 'SpellCategory' via 'ChargeCategory'.
---@return dbc.row.v1215.SpellCategory|nil
function row:GetChargeCategory() end

---Creates a related 'SpellCategory' row and automatically links 'ChargeCategory'.
---@param data? table
---@return dbc.row.v1215.SpellCategory
function row:CreateRelated(data) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.SpellCategories self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Table container for SpellCategories (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellCategories : DbcTable
---@field [integer] dbc.row.v1215.SpellCategories
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellCategories
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellCategories|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellCategories
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellCategories>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellCategories[]
function tbl:GetByRelation(foreign_id) end

return {}
