---@meta
-- Generated LuaLS annotations for TransmogIllusion (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TransmogIllusion in build 12.1.5.69594.
---@class dbc.row.v1215.TransmogIllusion : RowProxy
---@field ID integer
---@field UnlockConditionID integer
---@field TransmogCost integer
---@field SpellItemEnchantmentID integer
---@field Flags integer TransmogIllisionFlags (sic) | HideUntilCollected: 1; PlayerConditionGrantsOnLogin: 2

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TransmogIllusion self
function row:SetID(value) end

---Gets the value of field 'UnlockConditionID'.
---@return integer value
function row:GetUnlockConditionID() end

---Sets the value of field 'UnlockConditionID'.
---@param value integer
---@return dbc.row.v1215.TransmogIllusion self
function row:SetUnlockConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'UnlockConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetUnlockCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'UnlockConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'TransmogCost'.
---@return integer value
function row:GetTransmogCost() end

---Sets the value of field 'TransmogCost'.
---@param value integer
---@return dbc.row.v1215.TransmogIllusion self
function row:SetTransmogCost(value) end

---Gets the value of field 'SpellItemEnchantmentID'.
---@return integer value
function row:GetSpellItemEnchantmentID() end

---Sets the value of field 'SpellItemEnchantmentID'.
---@param value integer
---@return dbc.row.v1215.TransmogIllusion self
function row:SetSpellItemEnchantmentID(value) end

---Navigates foreign relationship to 'SpellItemEnchantment' via 'SpellItemEnchantmentID'.
---@return dbc.row.v1215.SpellItemEnchantment|nil
function row:GetSpellItemEnchantment() end

---Creates a related 'SpellItemEnchantment' row and automatically links 'SpellItemEnchantmentID'.
---@param data? table
---@return dbc.row.v1215.SpellItemEnchantment
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.TransmogIllusion self
function row:SetFlags(value) end

---Table container for TransmogIllusion (Build 12.1.5.69594).
---@class dbc.Table.v1215.TransmogIllusion : DbcTable
---@field [integer] dbc.row.v1215.TransmogIllusion
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TransmogIllusion
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TransmogIllusion|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TransmogIllusion
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TransmogIllusion>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TransmogIllusion[]
function tbl:GetByRelation(foreign_id) end

return {}
