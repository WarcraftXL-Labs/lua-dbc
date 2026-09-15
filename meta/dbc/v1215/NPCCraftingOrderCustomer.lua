---@meta
-- Generated LuaLS annotations for NPCCraftingOrderCustomer (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of NPCCraftingOrderCustomer in build 12.1.5.69594.
---@class dbc.row.v1215.NPCCraftingOrderCustomer : RowProxy
---@field ID integer
---@field CreatureID integer
---@field ReagentChance number
---@field Field_11_0_0_54605_002 number
---@field Field_11_0_0_54605_003 integer
---@field CommissionMultiplier number
---@field TreasureID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.NPCCraftingOrderCustomer self
function row:SetID(value) end

---Gets the value of field 'CreatureID'.
---@return integer value
function row:GetCreatureID() end

---Sets the value of field 'CreatureID'.
---@param value integer
---@return dbc.row.v1215.NPCCraftingOrderCustomer self
function row:SetCreatureID(value) end

---Navigates foreign relationship to 'Creature' via 'CreatureID'.
---@return dbc.row.v1215.Creature|nil
function row:GetCreature() end

---Creates a related 'Creature' row and automatically links 'CreatureID'.
---@param data? table
---@return dbc.row.v1215.Creature
function row:CreateRelated(data) end

---Gets the value of field 'ReagentChance'.
---@return number value
function row:GetReagentChance() end

---Sets the value of field 'ReagentChance'.
---@param value number
---@return dbc.row.v1215.NPCCraftingOrderCustomer self
function row:SetReagentChance(value) end

---Gets the value of field 'Field_11_0_0_54605_002'.
---@return number value
function row:GetField_11_0_0_54605_002() end

---Sets the value of field 'Field_11_0_0_54605_002'.
---@param value number
---@return dbc.row.v1215.NPCCraftingOrderCustomer self
function row:SetField_11_0_0_54605_002(value) end

---Gets the value of field 'Field_11_0_0_54605_003'.
---@return integer value
function row:GetField_11_0_0_54605_003() end

---Sets the value of field 'Field_11_0_0_54605_003'.
---@param value integer
---@return dbc.row.v1215.NPCCraftingOrderCustomer self
function row:SetField_11_0_0_54605_003(value) end

---Gets the value of field 'CommissionMultiplier'.
---@return number value
function row:GetCommissionMultiplier() end

---Sets the value of field 'CommissionMultiplier'.
---@param value number
---@return dbc.row.v1215.NPCCraftingOrderCustomer self
function row:SetCommissionMultiplier(value) end

---Gets the value of field 'TreasureID'.
---@return integer value
function row:GetTreasureID() end

---Sets the value of field 'TreasureID'.
---@param value integer
---@return dbc.row.v1215.NPCCraftingOrderCustomer self
function row:SetTreasureID(value) end

---Navigates foreign relationship to 'Treasure' via 'TreasureID'.
---@return dbc.row.v1215.Treasure|nil
function row:GetTreasure() end

---Creates a related 'Treasure' row and automatically links 'TreasureID'.
---@param data? table
---@return dbc.row.v1215.Treasure
function row:CreateRelated(data) end

---Table container for NPCCraftingOrderCustomer (Build 12.1.5.69594).
---@class dbc.Table.v1215.NPCCraftingOrderCustomer : DbcTable
---@field [integer] dbc.row.v1215.NPCCraftingOrderCustomer
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.NPCCraftingOrderCustomer
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.NPCCraftingOrderCustomer|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.NPCCraftingOrderCustomer
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.NPCCraftingOrderCustomer>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.NPCCraftingOrderCustomer[]
function tbl:GetByRelation(foreign_id) end

return {}
