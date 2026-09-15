---@meta
-- Generated LuaLS annotations for ItemConversion (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemConversion in build 12.1.5.69594.
---@class dbc.row.v1215.ItemConversion : RowProxy
---@field ID integer
---@field Field_9_2_0_42069_001 integer
---@field ItemBonusTreeID integer
---@field ItemLogicalCostGroupID integer
---@field AlternateItemLogicalCostGroupID integer If PlayerConditionID is valid?
---@field PlayerConditionID integer
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemConversion self
function row:SetID(value) end

---Gets the value of field 'Field_9_2_0_42069_001'.
---@return integer value
function row:GetField_9_2_0_42069_001() end

---Sets the value of field 'Field_9_2_0_42069_001'.
---@param value integer
---@return dbc.row.v1215.ItemConversion self
function row:SetField_9_2_0_42069_001(value) end

---Gets the value of field 'ItemBonusTreeID'.
---@return integer value
function row:GetItemBonusTreeID() end

---Sets the value of field 'ItemBonusTreeID'.
---@param value integer
---@return dbc.row.v1215.ItemConversion self
function row:SetItemBonusTreeID(value) end

---Navigates foreign relationship to 'ItemBonusTree' via 'ItemBonusTreeID'.
---@return dbc.row.v1215.ItemBonusTree|nil
function row:GetItemBonusTree() end

---Creates a related 'ItemBonusTree' row and automatically links 'ItemBonusTreeID'.
---@param data? table
---@return dbc.row.v1215.ItemBonusTree
function row:CreateRelated(data) end

---Gets the value of field 'ItemLogicalCostGroupID'.
---@return integer value
function row:GetItemLogicalCostGroupID() end

---Sets the value of field 'ItemLogicalCostGroupID'.
---@param value integer
---@return dbc.row.v1215.ItemConversion self
function row:SetItemLogicalCostGroupID(value) end

---Navigates foreign relationship to 'ItemLogicalCost' via 'ItemLogicalCostGroupID'.
---@return dbc.row.v1215.ItemLogicalCost|nil
function row:GetItemLogicalCostGroup() end

---Creates a related 'ItemLogicalCost' row and automatically links 'ItemLogicalCostGroupID'.
---@param data? table
---@return dbc.row.v1215.ItemLogicalCost
function row:CreateRelated(data) end

---Gets the value of field 'AlternateItemLogicalCostGroupID'.
---@return integer value
function row:GetAlternateItemLogicalCostGroupID() end

---Sets the value of field 'AlternateItemLogicalCostGroupID'.
---@param value integer
---@return dbc.row.v1215.ItemConversion self
function row:SetAlternateItemLogicalCostGroupID(value) end

---Navigates foreign relationship to 'ItemLogicalCost' via 'AlternateItemLogicalCostGroupID'.
---@return dbc.row.v1215.ItemLogicalCost|nil
function row:GetAlternateItemLogicalCostGroup() end

---Creates a related 'ItemLogicalCost' row and automatically links 'AlternateItemLogicalCostGroupID'.
---@param data? table
---@return dbc.row.v1215.ItemLogicalCost
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.ItemConversion self
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
---@return dbc.row.v1215.ItemConversion self
function row:SetFlags(value) end

---Table container for ItemConversion (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemConversion : DbcTable
---@field [integer] dbc.row.v1215.ItemConversion
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemConversion
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemConversion|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemConversion
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemConversion>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemConversion[]
function tbl:GetByRelation(foreign_id) end

return {}
