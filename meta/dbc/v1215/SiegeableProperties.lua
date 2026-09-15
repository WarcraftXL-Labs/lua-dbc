---@meta
-- Generated LuaLS annotations for SiegeableProperties (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SiegeableProperties in build 12.1.5.69594.
---@class dbc.row.v1215.SiegeableProperties : RowProxy
---@field ID integer
---@field Health integer
---@field DamageSpellVisualKitID integer
---@field HealingSpellVisualKitID integer
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SiegeableProperties self
function row:SetID(value) end

---Gets the value of field 'Health'.
---@return integer value
function row:GetHealth() end

---Sets the value of field 'Health'.
---@param value integer
---@return dbc.row.v1215.SiegeableProperties self
function row:SetHealth(value) end

---Gets the value of field 'DamageSpellVisualKitID'.
---@return integer value
function row:GetDamageSpellVisualKitID() end

---Sets the value of field 'DamageSpellVisualKitID'.
---@param value integer
---@return dbc.row.v1215.SiegeableProperties self
function row:SetDamageSpellVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'DamageSpellVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetDamageSpellVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'DamageSpellVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'HealingSpellVisualKitID'.
---@return integer value
function row:GetHealingSpellVisualKitID() end

---Sets the value of field 'HealingSpellVisualKitID'.
---@param value integer
---@return dbc.row.v1215.SiegeableProperties self
function row:SetHealingSpellVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'HealingSpellVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetHealingSpellVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'HealingSpellVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.SiegeableProperties self
function row:SetFlags(value) end

---Table container for SiegeableProperties (Build 12.1.5.69594).
---@class dbc.Table.v1215.SiegeableProperties : DbcTable
---@field [integer] dbc.row.v1215.SiegeableProperties
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SiegeableProperties
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SiegeableProperties|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SiegeableProperties
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SiegeableProperties>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SiegeableProperties[]
function tbl:GetByRelation(foreign_id) end

return {}
