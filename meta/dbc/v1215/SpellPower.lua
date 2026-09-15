---@meta
-- Generated LuaLS annotations for SpellPower (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellPower in build 12.1.5.69594.
---@class dbc.row.v1215.SpellPower : RowProxy
---@field ID integer
---@field OrderIndex integer
---@field ManaCost integer
---@field ManaCostPerLevel integer
---@field ManaPerSecond integer
---@field PowerDisplayID integer
---@field AltPowerBarID integer
---@field PowerCostPct number
---@field PowerCostMaxPct number
---@field OptionalCostPct number
---@field PowerPctPerSecond number
---@field PowerType integer
---@field RequiredAuraSpellID integer
---@field OptionalCost integer
---@field SpellID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellPower self
function row:SetID(value) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.SpellPower self
function row:SetOrderIndex(value) end

---Gets the value of field 'ManaCost'.
---@return integer value
function row:GetManaCost() end

---Sets the value of field 'ManaCost'.
---@param value integer
---@return dbc.row.v1215.SpellPower self
function row:SetManaCost(value) end

---Gets the value of field 'ManaCostPerLevel'.
---@return integer value
function row:GetManaCostPerLevel() end

---Sets the value of field 'ManaCostPerLevel'.
---@param value integer
---@return dbc.row.v1215.SpellPower self
function row:SetManaCostPerLevel(value) end

---Gets the value of field 'ManaPerSecond'.
---@return integer value
function row:GetManaPerSecond() end

---Sets the value of field 'ManaPerSecond'.
---@param value integer
---@return dbc.row.v1215.SpellPower self
function row:SetManaPerSecond(value) end

---Gets the value of field 'PowerDisplayID'.
---@return integer value
function row:GetPowerDisplayID() end

---Sets the value of field 'PowerDisplayID'.
---@param value integer
---@return dbc.row.v1215.SpellPower self
function row:SetPowerDisplayID(value) end

---Navigates foreign relationship to 'PowerDisplay' via 'PowerDisplayID'.
---@return dbc.row.v1215.PowerDisplay|nil
function row:GetPowerDisplay() end

---Creates a related 'PowerDisplay' row and automatically links 'PowerDisplayID'.
---@param data? table
---@return dbc.row.v1215.PowerDisplay
function row:CreateRelated(data) end

---Gets the value of field 'AltPowerBarID'.
---@return integer value
function row:GetAltPowerBarID() end

---Sets the value of field 'AltPowerBarID'.
---@param value integer
---@return dbc.row.v1215.SpellPower self
function row:SetAltPowerBarID(value) end

---Navigates foreign relationship to 'AltPowerBar' via 'AltPowerBarID'.
---@return dbc.row.v1215.AltPowerBar|nil
function row:GetAltPowerBar() end

---Creates a related 'AltPowerBar' row and automatically links 'AltPowerBarID'.
---@param data? table
---@return dbc.row.v1215.AltPowerBar
function row:CreateRelated(data) end

---Gets the value of field 'PowerCostPct'.
---@return number value
function row:GetPowerCostPct() end

---Sets the value of field 'PowerCostPct'.
---@param value number
---@return dbc.row.v1215.SpellPower self
function row:SetPowerCostPct(value) end

---Gets the value of field 'PowerCostMaxPct'.
---@return number value
function row:GetPowerCostMaxPct() end

---Sets the value of field 'PowerCostMaxPct'.
---@param value number
---@return dbc.row.v1215.SpellPower self
function row:SetPowerCostMaxPct(value) end

---Gets the value of field 'OptionalCostPct'.
---@return number value
function row:GetOptionalCostPct() end

---Sets the value of field 'OptionalCostPct'.
---@param value number
---@return dbc.row.v1215.SpellPower self
function row:SetOptionalCostPct(value) end

---Gets the value of field 'PowerPctPerSecond'.
---@return number value
function row:GetPowerPctPerSecond() end

---Sets the value of field 'PowerPctPerSecond'.
---@param value number
---@return dbc.row.v1215.SpellPower self
function row:SetPowerPctPerSecond(value) end

---Gets the value of field 'PowerType'.
---@return integer value
function row:GetPowerType() end

---Sets the value of field 'PowerType'.
---@param value integer
---@return dbc.row.v1215.SpellPower self
function row:SetPowerType(value) end

---Navigates foreign relationship to 'PowerType' via 'PowerType'.
---@return dbc.row.v1215.PowerType|nil
function row:GetPowerType() end

---Creates a related 'PowerType' row and automatically links 'PowerType'.
---@param data? table
---@return dbc.row.v1215.PowerType
function row:CreateRelated(data) end

---Gets the value of field 'RequiredAuraSpellID'.
---@return integer value
function row:GetRequiredAuraSpellID() end

---Sets the value of field 'RequiredAuraSpellID'.
---@param value integer
---@return dbc.row.v1215.SpellPower self
function row:SetRequiredAuraSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'RequiredAuraSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetRequiredAuraSpell() end

---Creates a related 'Spell' row and automatically links 'RequiredAuraSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'OptionalCost'.
---@return integer value
function row:GetOptionalCost() end

---Sets the value of field 'OptionalCost'.
---@param value integer
---@return dbc.row.v1215.SpellPower self
function row:SetOptionalCost(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.SpellPower self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Table container for SpellPower (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellPower : DbcTable
---@field [integer] dbc.row.v1215.SpellPower
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellPower
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellPower|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellPower
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellPower>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellPower[]
function tbl:GetByRelation(foreign_id) end

return {}
