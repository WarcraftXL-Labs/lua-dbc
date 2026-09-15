---@meta
-- Generated LuaLS annotations for ItemGroupIlvlScalingEntry (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemGroupIlvlScalingEntry in build 12.1.5.69594.
---@class dbc.row.v1215.ItemGroupIlvlScalingEntry : RowProxy
---@field ID integer
---@field CurrencyTypeID integer
---@field ItemID integer
---@field CostScaling number
---@field Flags integer some kind of account wide flag
---@field PlayerConditionID integer
---@field ConditionalCostScaling number
---@field ItemGroupIlvlScalingID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemGroupIlvlScalingEntry self
function row:SetID(value) end

---Gets the value of field 'CurrencyTypeID'.
---@return integer value
function row:GetCurrencyTypeID() end

---Sets the value of field 'CurrencyTypeID'.
---@param value integer
---@return dbc.row.v1215.ItemGroupIlvlScalingEntry self
function row:SetCurrencyTypeID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'CurrencyTypeID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetCurrencyType() end

---Creates a related 'CurrencyTypes' row and automatically links 'CurrencyTypeID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.ItemGroupIlvlScalingEntry self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'CostScaling'.
---@return number value
function row:GetCostScaling() end

---Sets the value of field 'CostScaling'.
---@param value number
---@return dbc.row.v1215.ItemGroupIlvlScalingEntry self
function row:SetCostScaling(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ItemGroupIlvlScalingEntry self
function row:SetFlags(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.ItemGroupIlvlScalingEntry self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'ConditionalCostScaling'.
---@return number value
function row:GetConditionalCostScaling() end

---Sets the value of field 'ConditionalCostScaling'.
---@param value number
---@return dbc.row.v1215.ItemGroupIlvlScalingEntry self
function row:SetConditionalCostScaling(value) end

---Gets the value of field 'ItemGroupIlvlScalingID'.
---@return integer value
function row:GetItemGroupIlvlScalingID() end

---Sets the value of field 'ItemGroupIlvlScalingID'.
---@param value integer
---@return dbc.row.v1215.ItemGroupIlvlScalingEntry self
function row:SetItemGroupIlvlScalingID(value) end

---Navigates foreign relationship to 'ItemGroupIlvlScaling' via 'ItemGroupIlvlScalingID'.
---@return dbc.row.v1215.ItemGroupIlvlScaling|nil
function row:GetItemGroupIlvlScaling() end

---Creates a related 'ItemGroupIlvlScaling' row and automatically links 'ItemGroupIlvlScalingID'.
---@param data? table
---@return dbc.row.v1215.ItemGroupIlvlScaling
function row:CreateRelated(data) end

---Table container for ItemGroupIlvlScalingEntry (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemGroupIlvlScalingEntry : DbcTable
---@field [integer] dbc.row.v1215.ItemGroupIlvlScalingEntry
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemGroupIlvlScalingEntry
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemGroupIlvlScalingEntry|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemGroupIlvlScalingEntry
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemGroupIlvlScalingEntry>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemGroupIlvlScalingEntry[]
function tbl:GetByRelation(foreign_id) end

return {}
