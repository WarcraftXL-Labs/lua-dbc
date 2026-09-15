---@meta
-- Generated LuaLS annotations for ItemBonusSeasonUpgradeCost (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemBonusSeasonUpgradeCost in build 12.1.5.69594.
---@class dbc.row.v1215.ItemBonusSeasonUpgradeCost : RowProxy
---@field SourceText_lang string
---@field ID integer
---@field CostItemID integer
---@field CurrencyID integer
---@field OrderIndex integer
---@field ItemBonusSeasonID integer
---@field FragmentItemID integer
---@field FragmentsEarnedTrackingCurrencyID integer

local row = {}

---Gets the value of field 'SourceText_lang'.
---@return string value
function row:GetSourceText_lang() end

---Sets the value of field 'SourceText_lang'.
---@param value string
---@return dbc.row.v1215.ItemBonusSeasonUpgradeCost self
function row:SetSourceText_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusSeasonUpgradeCost self
function row:SetID(value) end

---Gets the value of field 'CostItemID'.
---@return integer value
function row:GetCostItemID() end

---Sets the value of field 'CostItemID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusSeasonUpgradeCost self
function row:SetCostItemID(value) end

---Navigates foreign relationship to 'Item' via 'CostItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetCostItem() end

---Creates a related 'Item' row and automatically links 'CostItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'CurrencyID'.
---@return integer value
function row:GetCurrencyID() end

---Sets the value of field 'CurrencyID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusSeasonUpgradeCost self
function row:SetCurrencyID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'CurrencyID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetCurrency() end

---Creates a related 'CurrencyTypes' row and automatically links 'CurrencyID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.ItemBonusSeasonUpgradeCost self
function row:SetOrderIndex(value) end

---Gets the value of field 'ItemBonusSeasonID'.
---@return integer value
function row:GetItemBonusSeasonID() end

---Sets the value of field 'ItemBonusSeasonID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusSeasonUpgradeCost self
function row:SetItemBonusSeasonID(value) end

---Navigates foreign relationship to 'ItemBonusSeason' via 'ItemBonusSeasonID'.
---@return dbc.row.v1215.ItemBonusSeason|nil
function row:GetItemBonusSeason() end

---Creates a related 'ItemBonusSeason' row and automatically links 'ItemBonusSeasonID'.
---@param data? table
---@return dbc.row.v1215.ItemBonusSeason
function row:CreateRelated(data) end

---Gets the value of field 'FragmentItemID'.
---@return integer value
function row:GetFragmentItemID() end

---Sets the value of field 'FragmentItemID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusSeasonUpgradeCost self
function row:SetFragmentItemID(value) end

---Navigates foreign relationship to 'Item' via 'FragmentItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetFragmentItem() end

---Creates a related 'Item' row and automatically links 'FragmentItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'FragmentsEarnedTrackingCurrencyID'.
---@return integer value
function row:GetFragmentsEarnedTrackingCurrencyID() end

---Sets the value of field 'FragmentsEarnedTrackingCurrencyID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusSeasonUpgradeCost self
function row:SetFragmentsEarnedTrackingCurrencyID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'FragmentsEarnedTrackingCurrencyID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetFragmentsEarnedTrackingCurrency() end

---Creates a related 'CurrencyTypes' row and automatically links 'FragmentsEarnedTrackingCurrencyID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Table container for ItemBonusSeasonUpgradeCost (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemBonusSeasonUpgradeCost : DbcTable
---@field [integer] dbc.row.v1215.ItemBonusSeasonUpgradeCost
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemBonusSeasonUpgradeCost
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemBonusSeasonUpgradeCost|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemBonusSeasonUpgradeCost
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemBonusSeasonUpgradeCost>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemBonusSeasonUpgradeCost[]
function tbl:GetByRelation(foreign_id) end

return {}
