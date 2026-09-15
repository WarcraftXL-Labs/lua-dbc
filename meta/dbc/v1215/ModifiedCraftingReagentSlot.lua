---@meta
-- Generated LuaLS annotations for ModifiedCraftingReagentSlot (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ModifiedCraftingReagentSlot in build 12.1.5.69594.
---@class dbc.row.v1215.ModifiedCraftingReagentSlot : RowProxy
---@field Name_lang string
---@field ID integer
---@field Flags integer
---@field PlayerConditionID integer
---@field ReagentType integer 1 is material, 2 is finishing reagent
---@field ReagentSource integer
---@field Field_11_2_0_61476_006 integer
---@field Field_12_0_0_63534_007 number

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.ModifiedCraftingReagentSlot self
function row:SetName_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ModifiedCraftingReagentSlot self
function row:SetID(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ModifiedCraftingReagentSlot self
function row:SetFlags(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.ModifiedCraftingReagentSlot self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'ReagentType'.
---@return integer value
function row:GetReagentType() end

---Sets the value of field 'ReagentType'.
---@param value integer
---@return dbc.row.v1215.ModifiedCraftingReagentSlot self
function row:SetReagentType(value) end

---Gets the value of field 'ReagentSource'.
---@return integer value
function row:GetReagentSource() end

---Sets the value of field 'ReagentSource'.
---@param value integer
---@return dbc.row.v1215.ModifiedCraftingReagentSlot self
function row:SetReagentSource(value) end

---Gets the value of field 'Field_11_2_0_61476_006'.
---@return integer value
function row:GetField_11_2_0_61476_006() end

---Sets the value of field 'Field_11_2_0_61476_006'.
---@param value integer
---@return dbc.row.v1215.ModifiedCraftingReagentSlot self
function row:SetField_11_2_0_61476_006(value) end

---Gets the value of field 'Field_12_0_0_63534_007'.
---@return number value
function row:GetField_12_0_0_63534_007() end

---Sets the value of field 'Field_12_0_0_63534_007'.
---@param value number
---@return dbc.row.v1215.ModifiedCraftingReagentSlot self
function row:SetField_12_0_0_63534_007(value) end

---Table container for ModifiedCraftingReagentSlot (Build 12.1.5.69594).
---@class dbc.Table.v1215.ModifiedCraftingReagentSlot : DbcTable
---@field [integer] dbc.row.v1215.ModifiedCraftingReagentSlot
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ModifiedCraftingReagentSlot
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ModifiedCraftingReagentSlot|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ModifiedCraftingReagentSlot
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ModifiedCraftingReagentSlot>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ModifiedCraftingReagentSlot[]
function tbl:GetByRelation(foreign_id) end

return {}
