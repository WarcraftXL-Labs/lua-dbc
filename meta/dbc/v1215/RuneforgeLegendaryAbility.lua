---@meta
-- Generated LuaLS annotations for RuneforgeLegendaryAbility (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of RuneforgeLegendaryAbility in build 12.1.5.69594.
---@class dbc.row.v1215.RuneforgeLegendaryAbility : RowProxy
---@field Name_lang string
---@field ID integer
---@field SpecSetID integer
---@field InventoryTypeMask integer 1 << Item::InventoryType
---@field SpellID integer
---@field ItemBonusListID integer
---@field PlayerConditionID integer
---@field Field_9_0_1_34972_007 integer
---@field UnlockItemID integer
---@field CovenantID integer
---@field Field_9_1_0_38549_010 integer

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.RuneforgeLegendaryAbility self
function row:SetName_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.RuneforgeLegendaryAbility self
function row:SetID(value) end

---Gets the value of field 'SpecSetID'.
---@return integer value
function row:GetSpecSetID() end

---Sets the value of field 'SpecSetID'.
---@param value integer
---@return dbc.row.v1215.RuneforgeLegendaryAbility self
function row:SetSpecSetID(value) end

---Navigates foreign relationship to 'SpecSetMember' via 'SpecSetID'.
---@return dbc.row.v1215.SpecSetMember|nil
function row:GetSpecSet() end

---Creates a related 'SpecSetMember' row and automatically links 'SpecSetID'.
---@param data? table
---@return dbc.row.v1215.SpecSetMember
function row:CreateRelated(data) end

---Gets the value of field 'InventoryTypeMask'.
---@return integer value
function row:GetInventoryTypeMask() end

---Sets the value of field 'InventoryTypeMask'.
---@param value integer
---@return dbc.row.v1215.RuneforgeLegendaryAbility self
function row:SetInventoryTypeMask(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.RuneforgeLegendaryAbility self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'ItemBonusListID'.
---@return integer value
function row:GetItemBonusListID() end

---Sets the value of field 'ItemBonusListID'.
---@param value integer
---@return dbc.row.v1215.RuneforgeLegendaryAbility self
function row:SetItemBonusListID(value) end

---Navigates foreign relationship to 'ItemBonusList' via 'ItemBonusListID'.
---@return dbc.row.v1215.ItemBonusList|nil
function row:GetItemBonusList() end

---Creates a related 'ItemBonusList' row and automatically links 'ItemBonusListID'.
---@param data? table
---@return dbc.row.v1215.ItemBonusList
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.RuneforgeLegendaryAbility self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'Field_9_0_1_34972_007'.
---@return integer value
function row:GetField_9_0_1_34972_007() end

---Sets the value of field 'Field_9_0_1_34972_007'.
---@param value integer
---@return dbc.row.v1215.RuneforgeLegendaryAbility self
function row:SetField_9_0_1_34972_007(value) end

---Gets the value of field 'UnlockItemID'.
---@return integer value
function row:GetUnlockItemID() end

---Sets the value of field 'UnlockItemID'.
---@param value integer
---@return dbc.row.v1215.RuneforgeLegendaryAbility self
function row:SetUnlockItemID(value) end

---Navigates foreign relationship to 'Item' via 'UnlockItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetUnlockItem() end

---Creates a related 'Item' row and automatically links 'UnlockItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'CovenantID'.
---@return integer value
function row:GetCovenantID() end

---Sets the value of field 'CovenantID'.
---@param value integer
---@return dbc.row.v1215.RuneforgeLegendaryAbility self
function row:SetCovenantID(value) end

---Navigates foreign relationship to 'Covenant' via 'CovenantID'.
---@return dbc.row.v1215.Covenant|nil
function row:GetCovenant() end

---Creates a related 'Covenant' row and automatically links 'CovenantID'.
---@param data? table
---@return dbc.row.v1215.Covenant
function row:CreateRelated(data) end

---Gets the value of field 'Field_9_1_0_38549_010'.
---@return integer value
function row:GetField_9_1_0_38549_010() end

---Sets the value of field 'Field_9_1_0_38549_010'.
---@param value integer
---@return dbc.row.v1215.RuneforgeLegendaryAbility self
function row:SetField_9_1_0_38549_010(value) end

---Table container for RuneforgeLegendaryAbility (Build 12.1.5.69594).
---@class dbc.Table.v1215.RuneforgeLegendaryAbility : DbcTable
---@field [integer] dbc.row.v1215.RuneforgeLegendaryAbility
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.RuneforgeLegendaryAbility
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.RuneforgeLegendaryAbility|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.RuneforgeLegendaryAbility
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.RuneforgeLegendaryAbility>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.RuneforgeLegendaryAbility[]
function tbl:GetByRelation(foreign_id) end

return {}
