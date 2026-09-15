---@meta
-- Generated LuaLS annotations for ItemEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemEffect in build 12.1.5.69594.
---@class dbc.row.v1215.ItemEffect : RowProxy
---@field ID integer
---@field LegacySlotIndex integer
---@field TriggerType integer
---@field Charges integer
---@field CoolDownMSec integer
---@field CategoryCoolDownMSec integer
---@field SpellCategoryID integer
---@field SpellID integer
---@field ChrSpecializationID integer
---@field PlayerConditionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemEffect self
function row:SetID(value) end

---Gets the value of field 'LegacySlotIndex'.
---@return integer value
function row:GetLegacySlotIndex() end

---Sets the value of field 'LegacySlotIndex'.
---@param value integer
---@return dbc.row.v1215.ItemEffect self
function row:SetLegacySlotIndex(value) end

---Gets the value of field 'TriggerType'.
---@return integer value
function row:GetTriggerType() end

---Sets the value of field 'TriggerType'.
---@param value integer
---@return dbc.row.v1215.ItemEffect self
function row:SetTriggerType(value) end

---Gets the value of field 'Charges'.
---@return integer value
function row:GetCharges() end

---Sets the value of field 'Charges'.
---@param value integer
---@return dbc.row.v1215.ItemEffect self
function row:SetCharges(value) end

---Gets the value of field 'CoolDownMSec'.
---@return integer value
function row:GetCoolDownMSec() end

---Sets the value of field 'CoolDownMSec'.
---@param value integer
---@return dbc.row.v1215.ItemEffect self
function row:SetCoolDownMSec(value) end

---Gets the value of field 'CategoryCoolDownMSec'.
---@return integer value
function row:GetCategoryCoolDownMSec() end

---Sets the value of field 'CategoryCoolDownMSec'.
---@param value integer
---@return dbc.row.v1215.ItemEffect self
function row:SetCategoryCoolDownMSec(value) end

---Gets the value of field 'SpellCategoryID'.
---@return integer value
function row:GetSpellCategoryID() end

---Sets the value of field 'SpellCategoryID'.
---@param value integer
---@return dbc.row.v1215.ItemEffect self
function row:SetSpellCategoryID(value) end

---Navigates foreign relationship to 'SpellCategory' via 'SpellCategoryID'.
---@return dbc.row.v1215.SpellCategory|nil
function row:GetSpellCategory() end

---Creates a related 'SpellCategory' row and automatically links 'SpellCategoryID'.
---@param data? table
---@return dbc.row.v1215.SpellCategory
function row:CreateRelated(data) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.ItemEffect self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'ChrSpecializationID'.
---@return integer value
function row:GetChrSpecializationID() end

---Sets the value of field 'ChrSpecializationID'.
---@param value integer
---@return dbc.row.v1215.ItemEffect self
function row:SetChrSpecializationID(value) end

---Navigates foreign relationship to 'ChrSpecialization' via 'ChrSpecializationID'.
---@return dbc.row.v1215.ChrSpecialization|nil
function row:GetChrSpecialization() end

---Creates a related 'ChrSpecialization' row and automatically links 'ChrSpecializationID'.
---@param data? table
---@return dbc.row.v1215.ChrSpecialization
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.ItemEffect self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Table container for ItemEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemEffect : DbcTable
---@field [integer] dbc.row.v1215.ItemEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
