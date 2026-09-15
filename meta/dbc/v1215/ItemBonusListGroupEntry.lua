---@meta
-- Generated LuaLS annotations for ItemBonusListGroupEntry (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemBonusListGroupEntry in build 12.1.5.69594.
---@class dbc.row.v1215.ItemBonusListGroupEntry : RowProxy
---@field ID integer
---@field ItemBonusListGroupID integer
---@field ItemBonusListID integer
---@field ItemLevelSelectorID integer
---@field SequenceValue integer
---@field ItemExtendedCostID integer
---@field PlayerConditionID integer
---@field Flags integer
---@field ItemLogicalCostGroupID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusListGroupEntry self
function row:SetID(value) end

---Gets the value of field 'ItemBonusListGroupID'.
---@return integer value
function row:GetItemBonusListGroupID() end

---Sets the value of field 'ItemBonusListGroupID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusListGroupEntry self
function row:SetItemBonusListGroupID(value) end

---Navigates foreign relationship to 'ItemBonusListGroup' via 'ItemBonusListGroupID'.
---@return dbc.row.v1215.ItemBonusListGroup|nil
function row:GetItemBonusListGroup() end

---Creates a related 'ItemBonusListGroup' row and automatically links 'ItemBonusListGroupID'.
---@param data? table
---@return dbc.row.v1215.ItemBonusListGroup
function row:CreateRelated(data) end

---Gets the value of field 'ItemBonusListID'.
---@return integer value
function row:GetItemBonusListID() end

---Sets the value of field 'ItemBonusListID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusListGroupEntry self
function row:SetItemBonusListID(value) end

---Navigates foreign relationship to 'ItemBonusList' via 'ItemBonusListID'.
---@return dbc.row.v1215.ItemBonusList|nil
function row:GetItemBonusList() end

---Creates a related 'ItemBonusList' row and automatically links 'ItemBonusListID'.
---@param data? table
---@return dbc.row.v1215.ItemBonusList
function row:CreateRelated(data) end

---Gets the value of field 'ItemLevelSelectorID'.
---@return integer value
function row:GetItemLevelSelectorID() end

---Sets the value of field 'ItemLevelSelectorID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusListGroupEntry self
function row:SetItemLevelSelectorID(value) end

---Navigates foreign relationship to 'ItemLevelSelector' via 'ItemLevelSelectorID'.
---@return dbc.row.v1215.ItemLevelSelector|nil
function row:GetItemLevelSelector() end

---Creates a related 'ItemLevelSelector' row and automatically links 'ItemLevelSelectorID'.
---@param data? table
---@return dbc.row.v1215.ItemLevelSelector
function row:CreateRelated(data) end

---Gets the value of field 'SequenceValue'.
---@return integer value
function row:GetSequenceValue() end

---Sets the value of field 'SequenceValue'.
---@param value integer
---@return dbc.row.v1215.ItemBonusListGroupEntry self
function row:SetSequenceValue(value) end

---Gets the value of field 'ItemExtendedCostID'.
---@return integer value
function row:GetItemExtendedCostID() end

---Sets the value of field 'ItemExtendedCostID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusListGroupEntry self
function row:SetItemExtendedCostID(value) end

---Navigates foreign relationship to 'ItemExtendedCost' via 'ItemExtendedCostID'.
---@return dbc.row.v1215.ItemExtendedCost|nil
function row:GetItemExtendedCost() end

---Creates a related 'ItemExtendedCost' row and automatically links 'ItemExtendedCostID'.
---@param data? table
---@return dbc.row.v1215.ItemExtendedCost
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusListGroupEntry self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ItemBonusListGroupEntry self
function row:SetFlags(value) end

---Gets the value of field 'ItemLogicalCostGroupID'.
---@return integer value
function row:GetItemLogicalCostGroupID() end

---Sets the value of field 'ItemLogicalCostGroupID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusListGroupEntry self
function row:SetItemLogicalCostGroupID(value) end

---Navigates foreign relationship to 'ItemLogicalCostGroup' via 'ItemLogicalCostGroupID'.
---@return dbc.row.v1215.ItemLogicalCostGroup|nil
function row:GetItemLogicalCostGroup() end

---Creates a related 'ItemLogicalCostGroup' row and automatically links 'ItemLogicalCostGroupID'.
---@param data? table
---@return dbc.row.v1215.ItemLogicalCostGroup
function row:CreateRelated(data) end

---Table container for ItemBonusListGroupEntry (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemBonusListGroupEntry : DbcTable
---@field [integer] dbc.row.v1215.ItemBonusListGroupEntry
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemBonusListGroupEntry
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemBonusListGroupEntry|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemBonusListGroupEntry
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemBonusListGroupEntry>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemBonusListGroupEntry[]
function tbl:GetByRelation(foreign_id) end

return {}
