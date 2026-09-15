---@meta
-- Generated LuaLS annotations for ModifiedCraftingSpellSlot (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ModifiedCraftingSpellSlot in build 12.1.5.69594.
---@class dbc.row.v1215.ModifiedCraftingSpellSlot : RowProxy
---@field ID integer
---@field SpellID integer
---@field Slot integer unique-ascending per SpellID
---@field ModifiedCraftingReagentSlotID integer
---@field Field_9_0_1_35679_003 integer
---@field ReagentCount integer
---@field ReagentReCraftCount integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ModifiedCraftingSpellSlot self
function row:SetID(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.ModifiedCraftingSpellSlot self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'Slot'.
---@return integer value
function row:GetSlot() end

---Sets the value of field 'Slot'.
---@param value integer
---@return dbc.row.v1215.ModifiedCraftingSpellSlot self
function row:SetSlot(value) end

---Gets the value of field 'ModifiedCraftingReagentSlotID'.
---@return integer value
function row:GetModifiedCraftingReagentSlotID() end

---Sets the value of field 'ModifiedCraftingReagentSlotID'.
---@param value integer
---@return dbc.row.v1215.ModifiedCraftingSpellSlot self
function row:SetModifiedCraftingReagentSlotID(value) end

---Navigates foreign relationship to 'ModifiedCraftingReagentSlot' via 'ModifiedCraftingReagentSlotID'.
---@return dbc.row.v1215.ModifiedCraftingReagentSlot|nil
function row:GetModifiedCraftingReagentSlot() end

---Creates a related 'ModifiedCraftingReagentSlot' row and automatically links 'ModifiedCraftingReagentSlotID'.
---@param data? table
---@return dbc.row.v1215.ModifiedCraftingReagentSlot
function row:CreateRelated(data) end

---Gets the value of field 'Field_9_0_1_35679_003'.
---@return integer value
function row:GetField_9_0_1_35679_003() end

---Sets the value of field 'Field_9_0_1_35679_003'.
---@param value integer
---@return dbc.row.v1215.ModifiedCraftingSpellSlot self
function row:SetField_9_0_1_35679_003(value) end

---Gets the value of field 'ReagentCount'.
---@return integer value
function row:GetReagentCount() end

---Sets the value of field 'ReagentCount'.
---@param value integer
---@return dbc.row.v1215.ModifiedCraftingSpellSlot self
function row:SetReagentCount(value) end

---Gets the value of field 'ReagentReCraftCount'.
---@return integer value
function row:GetReagentReCraftCount() end

---Sets the value of field 'ReagentReCraftCount'.
---@param value integer
---@return dbc.row.v1215.ModifiedCraftingSpellSlot self
function row:SetReagentReCraftCount(value) end

---Table container for ModifiedCraftingSpellSlot (Build 12.1.5.69594).
---@class dbc.Table.v1215.ModifiedCraftingSpellSlot : DbcTable
---@field [integer] dbc.row.v1215.ModifiedCraftingSpellSlot
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ModifiedCraftingSpellSlot
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ModifiedCraftingSpellSlot|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ModifiedCraftingSpellSlot
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ModifiedCraftingSpellSlot>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ModifiedCraftingSpellSlot[]
function tbl:GetByRelation(foreign_id) end

return {}
