---@meta
-- Generated LuaLS annotations for CooldownSetSpell (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CooldownSetSpell in build 12.1.5.69594.
---@class dbc.row.v1215.CooldownSetSpell : RowProxy
---@field ID integer
---@field CooldownSetID integer
---@field SpellID integer
---@field Category integer 0 = Essential, 1 = Utility, 2 = TrackedBuff, 3 = TrackedBar
---@field PlayerConditionID integer
---@field OrderIndex integer
---@field Flags integer
---@field SpellCategoryID integer
---@field EquipSlot integer
---@field Field_12_1_0_68209_009 integer Same as CooldownViewerItemSpell::Field_12_1_0_68209_002

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CooldownSetSpell self
function row:SetID(value) end

---Gets the value of field 'CooldownSetID'.
---@return integer value
function row:GetCooldownSetID() end

---Sets the value of field 'CooldownSetID'.
---@param value integer
---@return dbc.row.v1215.CooldownSetSpell self
function row:SetCooldownSetID(value) end

---Navigates foreign relationship to 'CooldownSet' via 'CooldownSetID'.
---@return dbc.row.v1215.CooldownSet|nil
function row:GetCooldownSet() end

---Creates a related 'CooldownSet' row and automatically links 'CooldownSetID'.
---@param data? table
---@return dbc.row.v1215.CooldownSet
function row:CreateRelated(data) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.CooldownSetSpell self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'Category'.
---@return integer value
function row:GetCategory() end

---Sets the value of field 'Category'.
---@param value integer
---@return dbc.row.v1215.CooldownSetSpell self
function row:SetCategory(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.CooldownSetSpell self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.CooldownSetSpell self
function row:SetOrderIndex(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.CooldownSetSpell self
function row:SetFlags(value) end

---Gets the value of field 'SpellCategoryID'.
---@return integer value
function row:GetSpellCategoryID() end

---Sets the value of field 'SpellCategoryID'.
---@param value integer
---@return dbc.row.v1215.CooldownSetSpell self
function row:SetSpellCategoryID(value) end

---Navigates foreign relationship to 'SpellCategory' via 'SpellCategoryID'.
---@return dbc.row.v1215.SpellCategory|nil
function row:GetSpellCategory() end

---Creates a related 'SpellCategory' row and automatically links 'SpellCategoryID'.
---@param data? table
---@return dbc.row.v1215.SpellCategory
function row:CreateRelated(data) end

---Gets the value of field 'EquipSlot'.
---@return integer value
function row:GetEquipSlot() end

---Sets the value of field 'EquipSlot'.
---@param value integer
---@return dbc.row.v1215.CooldownSetSpell self
function row:SetEquipSlot(value) end

---Gets the value of field 'Field_12_1_0_68209_009'.
---@return integer value
function row:GetField_12_1_0_68209_009() end

---Sets the value of field 'Field_12_1_0_68209_009'.
---@param value integer
---@return dbc.row.v1215.CooldownSetSpell self
function row:SetField_12_1_0_68209_009(value) end

---Table container for CooldownSetSpell (Build 12.1.5.69594).
---@class dbc.Table.v1215.CooldownSetSpell : DbcTable
---@field [integer] dbc.row.v1215.CooldownSetSpell
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CooldownSetSpell
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CooldownSetSpell|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CooldownSetSpell
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CooldownSetSpell>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CooldownSetSpell[]
function tbl:GetByRelation(foreign_id) end

return {}
