---@meta
-- Generated LuaLS annotations for ItemBonusListGroup (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemBonusListGroup in build 12.1.5.69594.
---@class dbc.row.v1215.ItemBonusListGroup : RowProxy
---@field ID integer
---@field SequenceSpellID integer
---@field PlayerConditionID integer
---@field ItemExtendedCostID integer
---@field ItemLogicalCostGroupID integer
---@field ItemGroupIlvlScalingID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusListGroup self
function row:SetID(value) end

---Gets the value of field 'SequenceSpellID'.
---@return integer value
function row:GetSequenceSpellID() end

---Sets the value of field 'SequenceSpellID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusListGroup self
function row:SetSequenceSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SequenceSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSequenceSpell() end

---Creates a related 'Spell' row and automatically links 'SequenceSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusListGroup self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'ItemExtendedCostID'.
---@return integer value
function row:GetItemExtendedCostID() end

---Sets the value of field 'ItemExtendedCostID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusListGroup self
function row:SetItemExtendedCostID(value) end

---Navigates foreign relationship to 'ItemExtendedCost' via 'ItemExtendedCostID'.
---@return dbc.row.v1215.ItemExtendedCost|nil
function row:GetItemExtendedCost() end

---Creates a related 'ItemExtendedCost' row and automatically links 'ItemExtendedCostID'.
---@param data? table
---@return dbc.row.v1215.ItemExtendedCost
function row:CreateRelated(data) end

---Gets the value of field 'ItemLogicalCostGroupID'.
---@return integer value
function row:GetItemLogicalCostGroupID() end

---Sets the value of field 'ItemLogicalCostGroupID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusListGroup self
function row:SetItemLogicalCostGroupID(value) end

---Navigates foreign relationship to 'ItemLogicalCostGroup' via 'ItemLogicalCostGroupID'.
---@return dbc.row.v1215.ItemLogicalCostGroup|nil
function row:GetItemLogicalCostGroup() end

---Creates a related 'ItemLogicalCostGroup' row and automatically links 'ItemLogicalCostGroupID'.
---@param data? table
---@return dbc.row.v1215.ItemLogicalCostGroup
function row:CreateRelated(data) end

---Gets the value of field 'ItemGroupIlvlScalingID'.
---@return integer value
function row:GetItemGroupIlvlScalingID() end

---Sets the value of field 'ItemGroupIlvlScalingID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusListGroup self
function row:SetItemGroupIlvlScalingID(value) end

---Navigates foreign relationship to 'ItemGroupIlvlScalingEntry' via 'ItemGroupIlvlScalingID'.
---@return dbc.row.v1215.ItemGroupIlvlScalingEntry|nil
function row:GetItemGroupIlvlScaling() end

---Creates a related 'ItemGroupIlvlScalingEntry' row and automatically links 'ItemGroupIlvlScalingID'.
---@param data? table
---@return dbc.row.v1215.ItemGroupIlvlScalingEntry
function row:CreateRelated(data) end

---Table container for ItemBonusListGroup (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemBonusListGroup : DbcTable
---@field [integer] dbc.row.v1215.ItemBonusListGroup
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemBonusListGroup
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemBonusListGroup|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemBonusListGroup
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemBonusListGroup>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemBonusListGroup[]
function tbl:GetByRelation(foreign_id) end

return {}
